/*
* TER-Server
*/

#include "ScriptMgr.h"
#include "ScriptedCreature.h"
#include "SpellScript.h"
#include "Player.h"
#include "MoveSplineInit.h"
#include "ScriptedEscortAI.h"

/*######
## Quest 25134: Lazy Peons
## npc_lazy_peon
######*/

class npc_lazy_peon : public CreatureScript
{
public:
	npc_lazy_peon() : CreatureScript("npc_lazy_peon") { }

	enum LazyPeon
	{
		SAY_SPELL_HIT     = 0,
		QUEST_LAZY_PEONS  = 25134,
		GO_LUMBERPILE     = 175784,
		SPELL_BUFF_SLEEP  = 17743,
		SPELL_AWAKEN_PEON = 19938
	};

	CreatureAI* GetAI(Creature* creature) const
	{
		return new npc_lazy_peonAI(creature);
	}

	struct npc_lazy_peonAI : public ScriptedAI
	{
		npc_lazy_peonAI(Creature* creature) : ScriptedAI(creature) {}

		uint64 PlayerGUID;

		uint32 RebuffTimer;
		bool work;

		void Reset()
		{
			PlayerGUID = 0;
			RebuffTimer = 0;
			work = false;
		}

		void MovementInform(uint32 /*type*/, uint32 id)
		{
			if (id == 1)
				work = true;
		}

		void SpellHit(Unit* caster, const SpellInfo* spell)
		{
			if (spell->Id == SPELL_AWAKEN_PEON && caster->GetTypeId() == TYPEID_PLAYER
				&& CAST_PLR(caster)->GetQuestStatus(QUEST_LAZY_PEONS) == QUEST_STATUS_INCOMPLETE)
			{
				caster->ToPlayer()->KilledMonsterCredit(me->GetEntry(), me->GetGUID());
				Talk(SAY_SPELL_HIT, caster->GetGUID());
				me->RemoveAllAuras();
				if (GameObject* Lumberpile = me->FindNearestGameObject(GO_LUMBERPILE, 20))
					me->GetMotionMaster()->MovePoint(1, Lumberpile->GetPositionX() - 1, Lumberpile->GetPositionY(), Lumberpile->GetPositionZ());
			}
		}

		void UpdateAI(uint32 Diff) override
		{
			if (work == true)
				me->HandleEmoteCommand(EMOTE_ONESHOT_WORK_CHOPWOOD);
			if (RebuffTimer <= Diff)
			{
				DoCast(me, SPELL_BUFF_SLEEP);
				RebuffTimer = urand(60000, 90000); //Rebuff again between 1min and 1min30
			}
			else
				RebuffTimer -= Diff;
			if (!UpdateVictim())
				return;
			DoMeleeAttackIfReady();
		}
	};
};

// 17009
class spell_voodoo : public SpellScriptLoader
{
public:
	spell_voodoo() : SpellScriptLoader("spell_voodoo") {}

	enum VoodooSpells
	{
		SPELL_BREW    = 16712, // Special Brew
		SPELL_GHOSTLY = 16713, // Ghostly
		SPELL_HEX1    = 16707, // Hex
		SPELL_HEX2    = 16708, // Hex
		SPELL_HEX3    = 16709, // Hex
		SPELL_GROW    = 16711, // Grow
		SPELL_LAUNCH  = 16716  // Launch (Whee!)
	};

	class spell_voodoo_SpellScript : public SpellScript
	{
		PrepareSpellScript(spell_voodoo_SpellScript);

		bool Validate(SpellInfo const* /*spell*/)
		{
			if (!sSpellMgr->GetSpellInfo(SPELL_BREW) || !sSpellMgr->GetSpellInfo(SPELL_GHOSTLY) ||
				!sSpellMgr->GetSpellInfo(SPELL_HEX1) || !sSpellMgr->GetSpellInfo(SPELL_HEX2) ||
				!sSpellMgr->GetSpellInfo(SPELL_HEX3) || !sSpellMgr->GetSpellInfo(SPELL_GROW) ||
				!sSpellMgr->GetSpellInfo(SPELL_LAUNCH))
				return false;
			return true;
		}

		void HandleDummy(SpellEffIndex /*effIndex*/)
		{
			uint32 spellid = RAND(SPELL_BREW, SPELL_GHOSTLY, RAND(SPELL_HEX1, SPELL_HEX2, SPELL_HEX3), SPELL_GROW, SPELL_LAUNCH);
			if (Unit* target = GetHitUnit())
				GetCaster()->CastSpell(target, spellid, false);
		}

		void Register()
		{
			OnEffectHitTarget += SpellEffectFn(spell_voodoo_SpellScript::HandleDummy, EFFECT_0, SPELL_EFFECT_DUMMY);
		}
	};

	SpellScript* GetSpellScript() const
	{
		return new spell_voodoo_SpellScript();
	}
};


/*####
# npc_darkspear_jailor
####*/

#define GOSSIP_ITEM_1 "I'm ready to face my challange."

class npc_darkspear_jailor : public CreatureScript
{
   public: npc_darkspear_jailor() : CreatureScript("npc_darkspear_jailor") { }

	 enum SayDarkspear
		{
		SAY_DARKSPERAR_1 = 0,
		SAY_SPITESCALE_1 = 1
		 };

	bool OnGossipHello(Player* Player, Creature* Creature)
	{
		if (Player)
		{
			Player->PrepareGossipMenu(Creature);
			if (Player->GetQuestStatus(24786) == QUEST_STATUS_INCOMPLETE || Player->GetQuestStatus(24754) == QUEST_STATUS_INCOMPLETE ||
				Player->GetQuestStatus(24762) == QUEST_STATUS_INCOMPLETE || Player->GetQuestStatus(24774) == QUEST_STATUS_INCOMPLETE ||
				Player->GetQuestStatus(26276) == QUEST_STATUS_INCOMPLETE || Player->GetQuestStatus(24642) == QUEST_STATUS_INCOMPLETE ||
				Player->GetQuestStatus(24768) == QUEST_STATUS_INCOMPLETE || Player->GetQuestStatus(24780) == QUEST_STATUS_INCOMPLETE)
				Player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, GOSSIP_ITEM_1, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF);

			Player->SEND_GOSSIP_MENU(DEFAULT_GOSSIP_MESSAGE, Creature->GetGUID());
		}
		return true;
	}

	bool OnGossipSelect(Player* Player, Creature* Creature, uint32 /*uiSender*/, uint32 uiAction)
	{
		Player->PlayerTalkClass->ClearMenus();

		switch (uiAction)
		{
		case GOSSIP_ACTION_INFO_DEF:
			if (Creature->GetGUIDLow() == 306002)
				Creature->GetMotionMaster()->MovePath(0, false);
			else if (Creature->GetGUIDLow() == 127668)
				Creature->GetMotionMaster()->MovePath(1, false);

			npc_darkspear_jailorAI* AI = CAST_AI(npc_darkspear_jailorAI, Creature->AI());
			if (AI)
				AI->StartMovingToCage();

			Player->KilledMonsterCredit(39062, Creature->GetGUID());

			Player->CLOSE_GOSSIP_MENU();
			break;
		}
		Player->CLOSE_GOSSIP_MENU();
		return true;
	}

	CreatureAI* GetAI(Creature* Creature) const
	{
		return new npc_darkspear_jailorAI(Creature);
	}

	struct npc_darkspear_jailorAI : public ScriptedAI
	{
		npc_darkspear_jailorAI(Creature* Creature) : ScriptedAI(Creature)
		{ }

		uint8 uiPhase;
		uint32 uiTimer;

		void Reset()
		{
			uiPhase = 0;
			uiTimer = 2000;
		}

		void StartMovingToCage()
		{
			uiPhase = 1;
			uiTimer = 8000;
			Talk(SAY_DARKSPERAR_1);
		}

		void UpdateAI(uint32 uiDiff) override
		{
			if (uiTimer <= uiDiff)
			{
				switch (uiPhase)
				{
				case 0:
					break;
				case 1:
					uiPhase = 2;
					uiTimer = 8000;
				case 2:
					if (GameObject* Cage = me->FindNearestGameObject(201968, 5.0f))
						Cage->SetGoState(GO_STATE_ACTIVE);

					if (Creature* Spitescale = me->FindNearestCreature(38142, 30.0f, true))
					{
						Talk(SAY_SPITESCALE_1);
						if (me->GetGUIDLow() == 306002)
							Spitescale->GetMotionMaster()->MovePoint(0, -1144.48f, -5414.22f, 10.59f);
						else if (me->GetGUIDLow() == 127668)
							Spitescale->GetMotionMaster()->MovePoint(0, -1149.88f, -5527.07f, 8.10f);

						Spitescale->setFaction(16);
						Spitescale->SetReactState(REACT_AGGRESSIVE);
						Spitescale->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE);
						Spitescale->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_IMMUNE_TO_PC);
					}
					uiPhase = 3;
					uiTimer = 2000;
					break;
				case 3:
					if (GameObject* Cage = me->FindNearestGameObject(201968, 5.0f))
						Cage->SetGoState(GO_STATE_READY);

					me->DealDamage(me, 10000);
					me->RemoveCorpse();
					uiPhase = 0;
					uiTimer = 1000;
					break;
				}
			}
			else
				uiTimer -= uiDiff;
		}
	};

};

/*######
## npc_jailor
######*/

enum ejailor
{
	GO_CAGE  = 201968,
	NPC_NAGA = 38142
};

float fNodeJailorPosition[2][3][3] =
{
	{
		{ -1132.875366f, -5425.658203f, 13.308554f },
		{ -1134.783813f, -5416.551270f, 13.269002f },
		{ -1132.472046f, -5424.702637f, 13.225397f },
	},
	{
		{ -1159.829956f, -5519.570313f, 12.126601f },
		{ -1153.379028f, -5518.994629f, 11.996062f },
		{ -1159.829956f, -5519.570313f, 12.126601f },
	},
};

float fNodeNagaPosition[2][3] =
{
	{ -1146.220581f, -5417.623047f, 10.597669f },
	{ -1150.114380f, -5527.809082f, 8.105021f },
};

#define GOSSIP_HELLO_PIT "I'm ready to face my challenge."

class npc_jailor : public CreatureScript
{
public:
	npc_jailor() : CreatureScript("npc_jailor") { }

	bool OnGossipHello(Player* pPlayer, Creature* pCreature)
	{
		if (CAST_AI(npc_jailor::npc_jailorAI, pCreature->AI())->uiStart == false)
		{
			if (pPlayer->GetQuestStatus(24774) == QUEST_STATUS_INCOMPLETE ||
				pPlayer->GetQuestStatus(26276) == QUEST_STATUS_INCOMPLETE ||
				pPlayer->GetQuestStatus(24754) == QUEST_STATUS_INCOMPLETE ||
				pPlayer->GetQuestStatus(24762) == QUEST_STATUS_INCOMPLETE ||
				pPlayer->GetQuestStatus(24786) == QUEST_STATUS_INCOMPLETE ||
				pPlayer->GetQuestStatus(24642) == QUEST_STATUS_INCOMPLETE ||
				pPlayer->GetQuestStatus(24768) == QUEST_STATUS_INCOMPLETE ||
				pPlayer->GetQuestStatus(24780) == QUEST_STATUS_INCOMPLETE)
			{
				pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, GOSSIP_HELLO_PIT, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
			}
		}

		pPlayer->SEND_GOSSIP_MENU(pPlayer->GetGossipTextId(pCreature), pCreature->GetGUID());

		return true;
	}

	bool OnGossipSelect(Player* pPlayer, Creature* pCreature, uint32 uiSender, uint32 uiAction)
	{
		pPlayer->PlayerTalkClass->ClearMenus();
		if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
		{
			uint8 Phase = 1;
			if (pCreature->GetDistance(-1143.18f, -5429.95f, 13.97f) < 20)
				Phase = 0;

			CAST_AI(npc_jailor::npc_jailorAI, pCreature->AI())->Phase = Phase;
			pCreature->MonsterSay("Get in the pit and show us your stuff, $N", LANG_UNIVERSAL, pPlayer->GetGUID());

			pPlayer->KilledMonsterCredit(pCreature->GetEntry(), 0);
			pPlayer->CLOSE_GOSSIP_MENU();
		}
		return true;
	}

	CreatureAI* GetAI(Creature* pCreature) const
	{
		return new npc_jailorAI(pCreature);
	}

	/*npc_jailor*/

	struct npc_jailorAI : public ScriptedAI
	{
		npc_jailorAI(Creature* pCreature) : ScriptedAI(pCreature) {}

		uint8 Phase;
		uint8 uiNode;
		uint32 uiTimer;
		bool uiStart;

		void Reset()
		{
			GameObject* pCage = me->FindNearestGameObject(GO_CAGE, 20.0f);
			pCage->Respawn();
			pCage->SetGoState(GO_STATE_READY);
			Phase = 5;
			uiNode = 0;
			uiTimer = 2000;
			uiStart = false;
		}

		void UpdateAI(uint32 uiDiff) override
		{
			if (me->isInCombat())
				return;

			if (Phase != 5)
			{
				uiStart = true;
				if (uiTimer <= uiDiff)
				{
					GoToTheNextNode();
					uiTimer = 2500;
					switch (uiNode)
					{
					case 1:
						uiTimer = 5000;
						uiNode++;
						break;
					case 3:
						uiTimer = 120000;
						uiNode++;
						break;
					case 4:
						if (Creature* pNaga = me->FindNearestCreature(NPC_NAGA, 30.0f))
						{
							pNaga->SetReactState(REACT_PASSIVE);
							pNaga->setFaction(634);
							pNaga->GetMotionMaster()->MoveTargetedHome();
						}
						uiTimer = 4000;
						uiNode++;
						break;
					case 5:
						if (GameObject*pCage = me->FindNearestGameObject(GO_CAGE, 30.0f))
						{
							pCage->Respawn();
							pCage->SetGoState(GO_STATE_READY);
						}
						uiNode = 0;
						Phase = 5;
						uiStart = false;
						uiTimer = 2000;
					default:
						uiNode++;
						break;
					}
				}
				else
					uiTimer -= uiDiff;
			}
		}

		void GoToTheNextNode()
		{
			if (uiNode >= 3)
				me->GetMotionMaster()->MoveTargetedHome();
			else
				me->GetMotionMaster()->MoveCharge(fNodeJailorPosition[Phase][uiNode][0], fNodeJailorPosition[Phase][uiNode][1], fNodeJailorPosition[Phase][uiNode][2], 5);
		}

		void MovementInform(uint32 uiType, uint32 uiPointId)
		{
			if (uiType != POINT_MOTION_TYPE)
				return;

			if (uiNode == 2)
			{
				if (GameObject*pCage = me->FindNearestGameObject(GO_CAGE, 15.0f))
				{
					pCage->SetGoType(GAMEOBJECT_TYPE_BUTTON);
					pCage->UseDoorOrButton();
				}
				if (Creature* pNaga = me->FindNearestCreature(NPC_NAGA, 15.0f))
				{
					pNaga->SetReactState(REACT_AGGRESSIVE);
					pNaga->setFaction(14);
					pNaga->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_IMMUNE_TO_PC | UNIT_FLAG_NOT_ATTACKABLE_1 | UNIT_FLAG_NON_ATTACKABLE);
					pNaga->MonsterSay("They sssend you to your death, youngling.", LANG_UNIVERSAL, NULL);
					pNaga->GetMotionMaster()->MoveCharge(fNodeNagaPosition[Phase][0], fNodeNagaPosition[Phase][1], fNodeNagaPosition[Phase][2], 5);
				}
			}
		}
	};
};

/*######
## npc_swiftclaw
######*/

enum eSwiftclaw
{
	SPELL_RIDE_VEHICLE_1 = 52391,
	SPELL_RIDE_VEHICLE_2 = 70925
};

class npc_swiftclaw : public CreatureScript
{
public:
	npc_swiftclaw() : CreatureScript("npc_swiftclaw") { }

	CreatureAI* GetAI(Creature* pCreature) const
	{
		return new npc_swiftclawAI(pCreature);
	}

	struct npc_swiftclawAI : public ScriptedAI
	{
		npc_swiftclawAI(Creature* pCreature) : ScriptedAI(pCreature) {}

		void Reset()
		{
			if (Unit *owner = me->ToCreature()->GetCharmerOrOwner())
				if (owner->GetTypeId() == TYPEID_PLAYER)
				{
					owner->CastSpell(me, SPELL_RIDE_VEHICLE_1, true);
					me->ToTempSummon()->GetSummoner()->GetGUID();
					me->SetFlag(UNIT_NPC_FLAGS, UNIT_NPC_FLAG_SPELLCLICK);
					me->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
				}
				else
					me->DespawnOrUnsummon();
		}

		void OnCharmed(bool /*apply*/) { }

		void PassengerBoarded(Unit * who, int8 /*seatId*/, bool apply)
		{
			if (Player * pWho = who->ToPlayer())
			{
				me->SetFlag(UNIT_FIELD_FLAGS_2, UNIT_FLAG2_FORCE_MOVEMENT);
				pWho->KilledMonsterCredit(37989, 0);
			}
		}

		void MoveInLineOfSight(Unit * who)
		{
			if (me->FindNearestCreature(38987, 5, true))
			{
				if (Player * pWho = who->ToPlayer())
				{
					pWho->KilledMonsterCredit(38002, 0);
				}
				me->DespawnOrUnsummon();
			}
		}
	};
};

class npc_swiftclaw2 : public CreatureScript
{
public:
	npc_swiftclaw2() : CreatureScript("npc_swiftclaw2") { }

	CreatureAI* GetAI(Creature* pCreature) const
	{
		return new  npc_swiftclaw2AI(pCreature);
	}

	struct npc_swiftclaw2AI : public ScriptedAI
	{
		npc_swiftclaw2AI(Creature* pCreature) : ScriptedAI(pCreature) { }

		void SpellHit(Unit* hitter, const SpellInfo* spell)
		{
			if (!hitter || !spell)
				return;

			if (spell->Id != 70927)
				return;
			Talk(0);
			hitter->SummonCreature(38002, hitter->GetPositionX(), hitter->GetPositionY(), hitter->GetPositionZ(), 0, TEMPSUMMON_TIMED_DESPAWN_OUT_OF_COMBAT, 100000);
			me->DespawnOrUnsummon();

		}

	};
};

enum Texts
{
	// Tiger Matriarch Credit
	SAY_MATRIARCH_AGGRO = 0,

	// Troll Volunteer
	SAY_VOLUNTEER_START = 0,
	SAY_VOLUNTEER_END   = 1
};

enum Spells
{
	// Tiger Matriarch Credit
	SPELL_SUMMON_MATRIARCH        = 75187,
	SPELL_NO_SUMMON_AURA          = 75213,
	SPELL_DETECT_INVIS            = 75180,
	SPELL_SUMMON_ZENTABRA_TRIGGER = 75212,

	// Tiger Matriarch
	SPELL_POUNCE                    = 61184,
	SPELL_FURIOUS_BITE              = 75164,
	SPELL_SUMMON_ZENTABRA           = 75181,
	SPELL_SPIRIT_OF_THE_TIGER_RIDER = 75166,
	SPELL_EJECT_PASSENGERS          = 50630,

	// Troll Volunteer
	SPELL_VOLUNTEER_AURA = 75076,
	SPELL_PETACT_AURA    = 74071,
	SPELL_QUEST_CREDIT   = 75106,
	SPELL_MOUNTING_CHECK = 75420,
	SPELL_TURNIN         = 73953,
	SPELL_AOE_TURNIN     = 75107,

	// Vol'jin War Drums
	SPELL_MOTIVATE_1 = 75088,
	SPELL_MOTIVATE_2 = 75086
};

enum Creatures
{
	// Tiger Matriarch Credit
	NPC_TIGER_VEHICLE = 40305,

	// Troll Volunteer
	NPC_URUZIN      = 40253,
	NPC_VOLUNTEER_1 = 40264,
	NPC_VOLUNTEER_2 = 40260,

	// Vol'jin War Drums
	NPC_CITIZEN_1 = 40256,
	NPC_CITIZEN_2 = 40257
};

enum Events
{
	// Tiger Matriarch Credit
	EVENT_CHECK_SUMMON_AURA = 1,

	// Tiger Matriarch
	EVENT_POUNCE   = 2,
	EVENT_NOSUMMON = 3
};

class npc_tiger_matriarch_credit : public CreatureScript
{
public:
	npc_tiger_matriarch_credit() : CreatureScript("npc_tiger_matriarch_credit") {}

	struct npc_tiger_matriarch_creditAI : public ScriptedAI
	{
		npc_tiger_matriarch_creditAI(Creature* creature) : ScriptedAI(creature)
		{
			SetCombatMovement(false);

			events.ScheduleEvent(EVENT_CHECK_SUMMON_AURA, 2000);
		}

		void UpdateAI(uint32 diff) override
		{
			events.Update(diff);

			if (events.ExecuteEvent() == EVENT_CHECK_SUMMON_AURA)
			{
				std::list<Creature*> tigers;
				GetCreatureListWithEntryInGrid(tigers, me, NPC_TIGER_VEHICLE, 15.0f);
				if (!tigers.empty())
				{
					for (std::list<Creature*>::iterator itr = tigers.begin(); itr != tigers.end(); ++itr)
					{
						if (!(*itr)->isSummon())
							continue;

						if (Unit* summoner = (*itr)->ToTempSummon()->GetSummoner())
							if (!summoner->HasAura(SPELL_NO_SUMMON_AURA) && !summoner->HasAura(SPELL_SUMMON_ZENTABRA_TRIGGER)
								&& !summoner->isInCombat())
							{
								me->AddAura(SPELL_NO_SUMMON_AURA, summoner);
								me->AddAura(SPELL_DETECT_INVIS, summoner);
								summoner->CastSpell(summoner, SPELL_SUMMON_MATRIARCH, true);
								Talk(SAY_MATRIARCH_AGGRO, summoner->GetGUID());
							}
					}
				}

				events.ScheduleEvent(EVENT_CHECK_SUMMON_AURA, 5000);
			}
		}

	private:
		EventMap events;
	};

	CreatureAI* GetAI(Creature* creature) const
	{
		return new npc_tiger_matriarch_creditAI(creature);
	}
};

class npc_tiger_matriarch : public CreatureScript
{
public:
	npc_tiger_matriarch() : CreatureScript("npc_tiger_matriarch") {}

	struct npc_tiger_matriarchAI : public ScriptedAI
	{
		npc_tiger_matriarchAI(Creature* creature) : ScriptedAI(creature),
			_tiger(NULL)
		{
		}

		void IsSummonedBy(Unit* summoner)
		{
			if (summoner->GetTypeId() != TYPEID_PLAYER)
				return;

			_tiger = summoner->GetVehicle()->GetBase();
			if (_tiger)
			{
				me->AddThreat(_tiger, 500000.0f);
				DoCast(me, SPELL_FURIOUS_BITE);
				events.ScheduleEvent(EVENT_POUNCE, 100);
				events.ScheduleEvent(EVENT_NOSUMMON, 50000);
			}
		}

		void KilledUnit(Unit* victim)
		{
			if (victim->GetTypeId() != TYPEID_UNIT || !victim->isSummon())
				return;

			if (Unit* vehSummoner = victim->ToTempSummon()->GetSummoner())
			{
				vehSummoner->RemoveAurasDueToSpell(SPELL_NO_SUMMON_AURA);
				vehSummoner->RemoveAurasDueToSpell(SPELL_DETECT_INVIS);
				vehSummoner->RemoveAurasDueToSpell(SPELL_SPIRIT_OF_THE_TIGER_RIDER);
				vehSummoner->RemoveAurasDueToSpell(SPELL_SUMMON_ZENTABRA_TRIGGER);
			}
			me->DespawnOrUnsummon();
		}

		void DamageTaken(Unit* attacker, uint32& damage)
		{
			if (!attacker->isSummon())
				return;

			if (HealthBelowPct(20))
			{
				damage = 0;
				me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE);
				if (Unit* vehSummoner = attacker->ToTempSummon()->GetSummoner())
				{
					vehSummoner->AddAura(SPELL_SUMMON_ZENTABRA_TRIGGER, vehSummoner);
					vehSummoner->CastSpell(vehSummoner, SPELL_SUMMON_ZENTABRA, true);
					attacker->CastSpell(attacker, SPELL_EJECT_PASSENGERS, true);
					vehSummoner->RemoveAurasDueToSpell(SPELL_NO_SUMMON_AURA);
					vehSummoner->RemoveAurasDueToSpell(SPELL_DETECT_INVIS);
					vehSummoner->RemoveAurasDueToSpell(SPELL_SPIRIT_OF_THE_TIGER_RIDER);
					vehSummoner->RemoveAurasDueToSpell(SPELL_SUMMON_ZENTABRA_TRIGGER);
				}

				me->DespawnOrUnsummon();
			}
		}

		void UpdateAI(uint32 diff) override
		{
			if (!UpdateVictim())
				return;

			if (!_tiger)
				return;

			events.Update(diff);

			while (uint32 eventId = events.ExecuteEvent())
			{
				switch (eventId)
				{
				case EVENT_POUNCE:
					DoCastVictim(SPELL_POUNCE);
					events.ScheduleEvent(EVENT_POUNCE, 30000);
					break;
				case EVENT_NOSUMMON: // Reapply SPELL_NO_SUMMON_AURA
					if (_tiger && _tiger->isSummon())
						if (Unit* vehSummoner = _tiger->ToTempSummon()->GetSummoner())
							me->AddAura(SPELL_NO_SUMMON_AURA, vehSummoner);
					events.ScheduleEvent(EVENT_NOSUMMON, 50000);
					break;
				default:
					break;
				}
			}

			DoMeleeAttackIfReady();
		}

	private:
		EventMap events;
		Unit* _tiger;
	};

	CreatureAI* GetAI(Creature* creature) const
	{
		return new npc_tiger_matriarchAI(creature);
	}
};

// These models was found in sniff.
// TODO: generalize these models with race from dbc
uint32 const trollmodel[] =
{
	11665, 11734, 11750, 12037, 12038, 12042, 12049, 12849, 13529, 14759, 15570, 15701,
	15702, 1882, 1897, 1976, 2025, 27286, 2734, 2735, 4084, 4085, 4087, 4089, 4231, 4357,
	4358, 4360, 4361, 4362, 4363, 4370, 4532, 4537, 4540, 4610, 6839, 7037, 9767, 9768
};

class npc_troll_volunteer : public CreatureScript
{
   public: npc_troll_volunteer() : CreatureScript("npc_troll_volunteer") { }

    enum Points
	{
		POINT_URUZIN = 3798900
	};

	struct npc_troll_volunteerAI : public ScriptedAI
	{
		npc_troll_volunteerAI(Creature* creature) : ScriptedAI(creature)
		{
			Reset();
			Player* player = me->GetOwner()->ToPlayer();

			switch (urand(1, 4))
			{
			case 1:
				_mountModel = 6471;
				break;
			case 2:
				_mountModel = 6473;
				break;
			case 3:
				_mountModel = 6469;
				break;
			case 4:
				_mountModel = 6472;
				break;
			}
			me->SetDisplayId(trollmodel[urand(0, 39)]);
			if (player)
				me->GetMotionMaster()->MoveFollow(player, 5.0f, float(rand_norm() + 1.0f) * M_PI / 3.0f * 4.0f);
		}

		void Reset()
		{
			_complete = false;
			me->AddAura(SPELL_VOLUNTEER_AURA, me);
			me->AddAura(SPELL_MOUNTING_CHECK, me);
			DoCast(me, SPELL_PETACT_AURA);
			me->SetReactState(REACT_PASSIVE);
			Talk(SAY_VOLUNTEER_START);
		}

		// This is needed for mount check aura to know what mountmodel the npc got stored
		uint32 GetMountId()
		{
			return _mountModel;
		}

		void MovementInform(uint32 type, uint32 id)
		{
			if (type != POINT_MOTION_TYPE)
				return;
			if (id == POINT_URUZIN)
				me->DespawnOrUnsummon();
		}

		void SpellHit(Unit* caster, SpellInfo const* spell)
		{
			if (spell->Id == SPELL_AOE_TURNIN && caster->GetEntry() == NPC_URUZIN && !_complete)
			{
				_complete = true;    // Preventing from giving credit twice
				DoCast(me, SPELL_TURNIN);
				DoCast(me, SPELL_QUEST_CREDIT);
				me->RemoveAurasDueToSpell(SPELL_MOUNTING_CHECK);
				me->Dismount();
				Talk(SAY_VOLUNTEER_END);
				me->GetMotionMaster()->MovePoint(POINT_URUZIN, caster->GetPositionX(), caster->GetPositionY(), caster->GetPositionZ());
			}
		}

	private:
		uint32 _mountModel;
		bool _complete;
	};

	CreatureAI* GetAI(Creature* creature) const
	{
		return new npc_troll_volunteerAI(creature);
	}
};

class spell_mount_check : public SpellScriptLoader
{
public:
	spell_mount_check() : SpellScriptLoader("spell_mount_check") {}

	class spell_mount_check_AuraScript : public AuraScript
	{
		PrepareAuraScript(spell_mount_check_AuraScript)
			bool Validate(SpellInfo const* /*spellEntry*/)
		{
			if (!sSpellMgr->GetSpellInfo(SPELL_MOUNTING_CHECK))
				return false;
			return true;
		}

		void HandleEffectPeriodic(AuraEffect const* /*aurEff*/)
		{
			Unit* target = GetTarget();
			Unit* owner = target->GetOwner();

			if (!owner)
				return;

			if (owner->IsMounted() && !target->IsMounted())
			{
				if (Creature* volunteer = target->ToCreature())
					if (uint32 mountid = CAST_AI(npc_troll_volunteer::npc_troll_volunteerAI, volunteer->AI())->GetMountId())
						target->Mount(mountid);
			}
			else if (!owner->IsMounted() && target->IsMounted())
				target->Dismount();

			target->SetSpeed(MOVE_RUN, owner->GetSpeedRate(MOVE_RUN));
			target->SetSpeed(MOVE_WALK, owner->GetSpeedRate(MOVE_WALK));
		}

		void Register()
		{
			OnEffectPeriodic += AuraEffectPeriodicFn(spell_mount_check_AuraScript::HandleEffectPeriodic, EFFECT_0, SPELL_AURA_PERIODIC_DUMMY);
		}
	};

	AuraScript* GetAuraScript() const
	{
		return new spell_mount_check_AuraScript();
	}
};

class spell_voljin_war_drums : public SpellScriptLoader
{
public:
	spell_voljin_war_drums() : SpellScriptLoader("spell_voljin_war_drums") {}

	class spell_voljin_war_drums_SpellScript : public SpellScript
	{
		PrepareSpellScript(spell_voljin_war_drums_SpellScript)
			bool Validate(SpellInfo const* /*spellEntry*/)
		{
			if (!sSpellMgr->GetSpellInfo(SPELL_MOTIVATE_1))
				return false;
			if (!sSpellMgr->GetSpellInfo(SPELL_MOTIVATE_2))
				return false;
			return true;
		}

		void HandleDummy(SpellEffIndex /*effIndex*/)
		{
			Unit* caster = GetCaster();
			if (Unit* target = GetHitUnit())
			{
				uint32 motivate = 0;
				if (target->GetEntry() == NPC_CITIZEN_1)
					motivate = SPELL_MOTIVATE_1;
				else if (target->GetEntry() == NPC_CITIZEN_2)
					motivate = SPELL_MOTIVATE_2;
				if (motivate)
					caster->CastSpell(target, motivate, true, NULL, NULL, caster->GetGUID());
			}
		}

		void Register()
		{
			OnEffectHitTarget += SpellEffectFn(spell_voljin_war_drums_SpellScript::HandleDummy, EFFECT_0, SPELL_EFFECT_DUMMY);
		}
	};

	SpellScript* GetSpellScript() const
	{
		return new spell_voljin_war_drums_SpellScript();
	}
};

enum VoodooSpells_2
{
	SPELL_BREW    = 16712, // Special Brew
	SPELL_GHOSTLY = 16713, // Ghostly
	SPELL_HEX1    = 16707, // Hex
	SPELL_HEX2    = 16708, // Hex
	SPELL_HEX3    = 16709, // Hex
	SPELL_GROW    = 16711, // Grow
	SPELL_LAUNCH  = 16716 // Launch (Whee!)
};

/*######
##Quest 25194: Unbidden Visitors
##npc_waystrider
######*/


enum Waystrider
{
	QUEST_UNBIDDEN_VISITORS = 25194,
	SPELL_WATER_WALK        = 73757,
	NPC_STRIDER             = 39337,
	GO_MARKER               = 3001657
};

class npc_waystrider : public CreatureScript
{
public:
	npc_waystrider() : CreatureScript("npc_waystrider") { }

	CreatureAI* GetAI(Creature* pCreature) const
	{
		return new npc_waystriderAI(pCreature);
	}

	struct npc_waystriderAI : public ScriptedAI
	{
		npc_waystriderAI(Creature *c) : ScriptedAI(c) {}

		uint8 Phase;
		uint32 MoveTime;
		uint64 PlayerGuid;

		void Reset()
		{
			Phase = 0;
			MoveTime = 1500;
			me->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_IMMUNE_TO_PC);
		}

		void UpdateAI(uint32 diff) override
		{
			ScriptedAI::UpdateAI(diff);

			DoMeleeAttackIfReady();

			if (HealthBelowPct(35))
			{
				me->CastSpell(me, 73757, true);
				me->CastSpell(me, 73758, true);
				me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_IMMUNE_TO_PC);
				Phase = 1;
			}
			if (MoveTime <= diff)
			{
				switch (Phase)
				{
				case 1: me->CombatStop(true); Phase = 2; MoveTime = 1000; break;
				case 2:
				{
					if (GameObject* pTarget = me->FindNearestGameObject(GO_MARKER, 200.0f))
					{
						me->SetSpeed(MOVE_RUN, 3.0f);
						me->GetMotionMaster()->MovePoint(1, pTarget->GetPositionX(), pTarget->GetPositionY(), pTarget->GetPositionZ());
						MoveTime = 5000;
					}
					Phase = 3;
				}break;
				case 3:
				{
					me->DespawnOrUnsummon(8000);

					std::list<Player*> players;

					Trinity::AnyPlayerInObjectRangeCheck checker(me, 200.0f);
					Trinity::PlayerListSearcher<Trinity::AnyPlayerInObjectRangeCheck> searcher(me, players, checker);
					me->VisitNearbyWorldObject(200.0f, searcher);

					for (std::list<Player*>::const_iterator itr = players.begin(); itr != players.end(); ++itr)
						(*itr)->KilledMonsterCredit(39336, NULL);


					Phase = 0;

				}break;
				}
			}
			else MoveTime -= diff;
		}
	};
};

/*##########
##npc_grand_tekla
##########*/

enum eTekla
{
	QUEST_SPIRITS_BE_PRAISED = 25189,
	SPELL_WATER_WALKING      = 73887,
	SPELL_AIR_SPIRITS_BOON   = 73889,
	NPC_RAGGARAN             = 39326
};

class npc_grand_tekla : public CreatureScript
{
public:
	npc_grand_tekla() : CreatureScript("npc_grand_tekla") { }

	struct npc_grand_teklaAI : public npc_escortAI
	{
		npc_grand_teklaAI(Creature *c) : npc_escortAI(c) {}

		void WaypointReached(uint32 i)
		{
			Player* pPlayer = GetPlayerForEscort();

			if (!pPlayer)
				return;

			switch (i)
			{
			case 0:
			{
				me->SetStandState(UNIT_STAND_STATE_STAND);
				me->AddUnitMovementFlag(MOVEMENTFLAG_WALKING);
			}break;
			case 9:
			{
				me->MonsterSay("I'm tired of wading in water. Let's make this a little bit easier on ourselves, shall we? Spirit of water, come to our aid!", 0, NULL);
				me->CastSpell(me, SPELL_WATER_WALKING, true);
			}break;
			case 10:
			{
				me->CastSpell(pPlayer, 93395, true);
			}break;
			case 13:
			{
				me->MonsterSay("No! M-my ankle! I'm not sure I can make it... after we've come so far...", 0, NULL);
			}break;
			case 14:
			{
				me->MonsterYell("Spirits of air! Come to my aid!", 0, NULL);
				me->CastSpell(me, SPELL_AIR_SPIRITS_BOON, true);
				me->AddUnitMovementFlag(MOVEMENTFLAG_FLYING);
			}break;
			case 15:
			{
				me->MonsterSay("We can continue now. I think. Let us press on.", 0, NULL);
			}break;
			case 22:
			{
				if (Creature* pRaggaran = me->FindNearestCreature(NPC_RAGGARAN, 20.0f))
				{
					me->SetFacingToObject(pRaggaran);
					pRaggaran->SetFacingToObject(me);
					me->MonsterSay("Raggaran, I'm safe.", 0, NULL);
					pRaggaran->MonsterSay("Grandmatron... you're alive!.", 0, NULL);
				}
			}break;
			case 23:
				if (pPlayer && pPlayer->GetTypeId() == TYPEID_PLAYER)
					CAST_PLR(pPlayer)->GroupEventHappens(QUEST_SPIRITS_BE_PRAISED, me);
				break;

			}
		}
	};

	void Reset()
	{}

	bool OnQuestAccept(Player* pPlayer, Creature* pCreature, Quest const* quest)
	{
		if (quest->GetQuestId() == QUEST_SPIRITS_BE_PRAISED)
		{
			pCreature->MonsterSay("Let us be off then. Take me to my grandson Raggaran.", 0, NULL);

			if (npc_escortAI* pEscortAI = CAST_AI(npc_grand_tekla::npc_grand_teklaAI, pCreature->AI()))
				pEscortAI->Start(true, false, pPlayer->GetGUID());
		}
		return true;
	}

	CreatureAI* GetAI(Creature* pCreature) const
	{
		return new npc_grand_teklaAI(pCreature);
	}
};

/*######
## npc_griswold_hanniston
######*/

enum eGriswold
{
	SPELL_FLURRY_OF_CLAWS    = 76490,
	QUEST_GRISWOLD_HANNISTON = 25258
};

#define GOSSIP_HELLO_GRISWOLD "I'm here to challenge you in combat."

class npc_griswold_hanniston : public CreatureScript
{
public:
	npc_griswold_hanniston() : CreatureScript("npc_griswold_hanniston") { }

	CreatureAI* GetAI(Creature* pCreature) const
	{
		return new npc_griswold_hannistonAI(pCreature);
	}

	struct npc_griswold_hannistonAI : public ScriptedAI
	{
		npc_griswold_hannistonAI(Creature *c) : ScriptedAI(c) {}

		uint32 Reset_Timer;
		uint32 Flurry_Timer;
		uint64 PlayerGUID;

		bool bReset;

		void Reset()
		{
			Reset_Timer = 3000;
			PlayerGUID = 0;
			me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_UNK_15);
			me->SetFlag(UNIT_NPC_FLAGS, UNIT_NPC_FLAG_GOSSIP);
			me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE);
			bReset = false;
		}
		void AttackedBy(Unit* pAttacker)
		{
			if (me->GetVictim())
				return;

			if (me->IsFriendlyTo(pAttacker))
				return;

			AttackStart(pAttacker);
		}
		void DamageTaken(Unit *done_by, uint32 & damage)
		{
			if (done_by->GetTypeId() == TYPEID_PLAYER && me->HealthBelowPctDamaged(10, damage))
			{
				PlayerGUID = done_by->GetGUID();

				if (!bReset && CAST_PLR(done_by)->GetQuestStatus(25258) == QUEST_STATUS_INCOMPLETE)
				{
					//Take 0 damage
					damage = 0;

					CAST_PLR(done_by)->AttackStop();
					me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE);
					me->RemoveAllAuras();
					me->DeleteThreatList();
					me->CombatStop(true);
					me->setFaction(1080);               //friendly
					bReset = true;

					if (Player *pPlayer = Unit::GetPlayer(*me, PlayerGUID))
					{
						pPlayer->KilledMonsterCredit(39353, PlayerGUID);
					}

				}
			}
		}
		void UpdateAI(uint32 diff) override
		{
			if (bReset)
			{
				if (Reset_Timer <= diff)
				{
					EnterEvadeMode();
					bReset = false;
					me->setFaction(190);               //neutral
					return;
				}
				else Reset_Timer -= diff;
			}
			if (Flurry_Timer <= diff)
			{
				me->CastSpell(me, SPELL_FLURRY_OF_CLAWS, true);
				Flurry_Timer = 15000;
			}
			else Flurry_Timer -= diff;

			DoMeleeAttackIfReady();
		}
	};



	bool OnGossipHello(Player* pPlayer, Creature* pCreature)
	{


		if (pPlayer->GetQuestStatus(QUEST_GRISWOLD_HANNISTON) == QUEST_STATUS_INCOMPLETE)
			pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, GOSSIP_HELLO_GRISWOLD, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);

		pPlayer->SEND_GOSSIP_MENU(pPlayer->GetGossipTextId(pCreature), pCreature->GetGUID());

		return true;
	}

	bool OnGossipSelect(Player* pPlayer, Creature* pCreature, uint32 /*uiSender*/, uint32 uiAction)
	{
		pPlayer->PlayerTalkClass->ClearMenus();

		if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
		{
			pCreature->SetReactState(REACT_AGGRESSIVE);
			pCreature->AI()->AttackStart(pPlayer);
			pCreature->RemoveFlag(UNIT_NPC_FLAGS, UNIT_NPC_FLAG_GOSSIP);
			pCreature->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE);

			pPlayer->CLOSE_GOSSIP_MENU();
		}
		return true;
	}
};

/*######
## npc_ghislania
######*/

enum eGhislania
{
	SPELL_CHAIN_LIGHTNING = 79913,
	SPELL_STATIC_BURST    = 76429,
	QUEST_GHISLANIA       = 25257
};

#define GOSSIP_HELLO_GHISLANIA "I'm here to challenge you in combat."

class npc_ghislania : public CreatureScript
{
public:
	npc_ghislania() : CreatureScript("npc_ghislania") { }

	CreatureAI* GetAI(Creature* pCreature) const
	{
		return new npc_ghislaniaAI(pCreature);
	}

	struct npc_ghislaniaAI : public ScriptedAI
	{
		npc_ghislaniaAI(Creature *c) : ScriptedAI(c) {}

		uint32 Reset_Timer;
		uint32 Chain_Lightning_Timer;
		uint32 Static_Burst_Timer;
		uint64 PlayerGUID;

		bool bReset;

		void Reset()
		{
			Chain_Lightning_Timer = 6500;
			Static_Burst_Timer = 3000;
			Reset_Timer = 3000;
			PlayerGUID = 0;
			me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_UNK_15);
			me->SetFlag(UNIT_NPC_FLAGS, UNIT_NPC_FLAG_GOSSIP);
			me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE);
			bReset = false;
		}
		void AttackedBy(Unit* pAttacker)
		{
			if (me->GetVictim())
				return;

			if (me->IsFriendlyTo(pAttacker))
				return;

			AttackStart(pAttacker);
		}
		void DamageTaken(Unit *done_by, uint32 & damage)
		{
			if (done_by->GetTypeId() == TYPEID_PLAYER && me->HealthBelowPctDamaged(10, damage))
			{
				PlayerGUID = done_by->GetGUID();

				if (!bReset && CAST_PLR(done_by)->GetQuestStatus(25257) == QUEST_STATUS_INCOMPLETE)
				{
					//Take 0 damage
					damage = 0;

					CAST_PLR(done_by)->AttackStop();
					me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE);
					me->RemoveAllAuras();
					me->DeleteThreatList();
					me->CombatStop(true);
					me->setFaction(1080);               //friendly
					bReset = true;

					if (Player *pPlayer = Unit::GetPlayer(*me, PlayerGUID))
					{
						pPlayer->KilledMonsterCredit(39351, PlayerGUID);
					}

				}
			}
		}
		void UpdateAI(uint32 diff) override
		{
			if (bReset)
			{
				if (Reset_Timer <= diff)
				{
					EnterEvadeMode();
					bReset = false;
					me->setFaction(190);               //neutral
					return;
				}
				else Reset_Timer -= diff;
			}
			if (Chain_Lightning_Timer <= diff)
			{
				me->CastSpell(me->GetVictim(), SPELL_CHAIN_LIGHTNING, true);
				Chain_Lightning_Timer = 10000;
			}
			else Chain_Lightning_Timer -= diff;

			if (Static_Burst_Timer <= diff)
			{
				me->CastSpell(me->GetVictim(), SPELL_STATIC_BURST, true);
				Static_Burst_Timer = 3000;
			}
			else Static_Burst_Timer -= diff;

			DoMeleeAttackIfReady();
		}
	};



	bool OnGossipHello(Player* pPlayer, Creature* pCreature)
	{


		if (pPlayer->GetQuestStatus(QUEST_GHISLANIA) == QUEST_STATUS_INCOMPLETE)
			pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, GOSSIP_HELLO_GHISLANIA, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);

		pPlayer->SEND_GOSSIP_MENU(pPlayer->GetGossipTextId(pCreature), pCreature->GetGUID());

		return true;
	}

	bool OnGossipSelect(Player* pPlayer, Creature* pCreature, uint32 /*uiSender*/, uint32 uiAction)
	{
		pPlayer->PlayerTalkClass->ClearMenus();

		if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
		{
			pCreature->SetReactState(REACT_AGGRESSIVE);
			pCreature->AI()->AttackStart(pPlayer);
			pCreature->RemoveFlag(UNIT_NPC_FLAGS, UNIT_NPC_FLAG_GOSSIP);
			pCreature->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE);

			pPlayer->CLOSE_GOSSIP_MENU();
		}
		return true;
	}
};

/*######
## npc_gaur_icehorn
######*/

enum eGaur
{
	SPELL_TAUNKA_RAGE  = 76423,
	QUEST_GAUR_ICEHORN = 25259
};

#define GOSSIP_HELLO_GAUR "I'm here to challenge you in combat."

class npc_gaur_icehorn : public CreatureScript
{
public:
	npc_gaur_icehorn() : CreatureScript("npc_gaur_icehorn") { }

	CreatureAI* GetAI(Creature* pCreature) const
	{
		return new npc_gaur_icehornAI(pCreature);
	}

	struct npc_gaur_icehornAI : public ScriptedAI
	{
		npc_gaur_icehornAI(Creature *c) : ScriptedAI(c) {}

		uint32 Reset_Timer;
		uint32 Rage_Timer;
		uint64 PlayerGUID;

		bool bReset;
		bool bCast;

		void Reset()
		{
			Reset_Timer = 3000;
			PlayerGUID = 0;
			me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_UNK_15);
			me->SetFlag(UNIT_NPC_FLAGS, UNIT_NPC_FLAG_GOSSIP);
			me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE);
			bReset = false;
			bCast = false;
		}
		void AttackedBy(Unit* pAttacker)
		{
			if (me->GetVictim())
				return;

			if (me->IsFriendlyTo(pAttacker))
				return;

			AttackStart(pAttacker);
		}
		void DamageTaken(Unit *done_by, uint32 & damage)
		{
			if (done_by->GetHealth() < 2)
				return;

			if (done_by->GetTypeId() == TYPEID_PLAYER && me->HealthBelowPctDamaged(10, damage))
			{
				PlayerGUID = done_by->GetGUID();

				if (!bReset && CAST_PLR(done_by)->GetQuestStatus(25259) == QUEST_STATUS_INCOMPLETE)
				{
					//Take 0 damage
					damage = 0;

					CAST_PLR(done_by)->AttackStop();
					me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE);
					me->RemoveAllAuras();
					me->DeleteThreatList();
					me->CombatStop(true);
					me->setFaction(1080);               //friendly
					bReset = true;

					if (Player *pPlayer = Unit::GetPlayer(*me, PlayerGUID))
					{
						pPlayer->KilledMonsterCredit(39352, PlayerGUID);
					}

				}
			}
		}
		void UpdateAI(uint32 diff) override
		{
			if (bReset)
			{
				if (Reset_Timer <= diff)
				{
					EnterEvadeMode();
					bReset = false;
					me->setFaction(190);               //neutral
					return;
				}
				else Reset_Timer -= diff;
			}
			if (HealthBelowPct(70))
			{
				if (!bCast)
				{
					me->CastSpell(me, SPELL_TAUNKA_RAGE, true);
					bCast = true;
				}
			}

			DoMeleeAttackIfReady();
		}
	};



	bool OnGossipHello(Player* pPlayer, Creature* pCreature)
	{


		if (pPlayer->GetQuestStatus(QUEST_GAUR_ICEHORN) == QUEST_STATUS_INCOMPLETE)
			pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, GOSSIP_HELLO_GAUR, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);

		pPlayer->SEND_GOSSIP_MENU(pPlayer->GetGossipTextId(pCreature), pCreature->GetGUID());

		return true;
	}

	bool OnGossipSelect(Player* pPlayer, Creature* pCreature, uint32 /*uiSender*/, uint32 uiAction)
	{
		pPlayer->PlayerTalkClass->ClearMenus();

		if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
		{
			pCreature->SetReactState(REACT_AGGRESSIVE);
			pCreature->AI()->AttackStart(pPlayer);
			pCreature->RemoveFlag(UNIT_NPC_FLAGS, UNIT_NPC_FLAG_GOSSIP);
			pCreature->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE);

			pPlayer->CLOSE_GOSSIP_MENU();
		}
		return true;
	}
};

/*######
##Quest 25236: Thunder Down Under
##npc_drowning_lizard
######*/


enum Lizard
{
	QUEST_THUNDER_DOWN_UNDER  = 25236,
	SPELL_ATTACH_TETHER       = 73945,
	SPELL_LIGHTNING_DISCHARGE = 73958,
	NPC_DROWNING_LIZARD       = 39464

};

class npc_drowning_lizard : public CreatureScript
{
public:
	npc_drowning_lizard() : CreatureScript("npc_drowning_lizard") { }

	CreatureAI* GetAI(Creature* pCreature) const
	{
		return new npc_drowning_lizardAI(pCreature);
	}

	struct npc_drowning_lizardAI : public ScriptedAI
	{
		npc_drowning_lizardAI(Creature *c) : ScriptedAI(c) {}


		uint32 ChargeTimer;
		uint64 PlayerGUID;
		//	bool IsMoving;

		void Reset()
		{
			me->SetStandState(UNIT_STAND_STATE_SIT);
			me->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
			PlayerGUID = 0;
			//IsMoving = false;
		}

		void SpellHit(Unit *Hitter, const SpellInfo *Spellkind)
		{
			if (Spellkind->Id == 73945)
			{
				float x = me->GetPositionX();
				float y = me->GetPositionY();
				float z = me->GetPositionZ();

				//me->RemoveStandFlags(UNIT_STAND_STATE_SIT);
				//me->RemoveFlag(UNIT_DYNAMIC_FLAGS,UNIT_DYNFLAG_DEAD);

				//me->AddUnitMovementFlag(MOVEMENTFLAG_WALKING);
				//me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
				me->GetMotionMaster()->MovePoint(0, x - 1.0f, y + 1.0f, z + 20.0f);
				me->MonsterSay("Wole lezec", 0, NULL);
			}
			return;
		}
		/*	void UpdateAI(const uint32 diff)
		{
		if (ChargeTimer <= diff)
		{
		if (!IsMoving)
		{
		me->CastSpell(me, SPELL_LIGHTNING_DISCHARGE, true);
		ChargeTimer = 10000;
		}
		}
		}*/
	};
};

/*######
## npc_fizzle
######*/

enum eFizzle
{
	SPELL_REMOVE_HAND = 74024,
	QUEST_FIZZLED     = 25260
};

#define GOSSIP_HELLO_FIZZLE1 "<Attempt to remove the orb.>"
#define GOSSIP_HELLO_FIZZLE2 "<Attempt to remove Fizzle's Hand, then.>"
#define GOSSIP_HELLO_FIZZLE3 "<Give up.This is too scary.>"

class npc_fizzle : public CreatureScript
{
public:
	npc_fizzle() : CreatureScript("npc_fizzle") { }

	bool OnGossipHello(Player* pPlayer, Creature* pCreature)
	{
		if (pPlayer->GetQuestStatus(25260) == QUEST_STATUS_INCOMPLETE)
			pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, GOSSIP_HELLO_FIZZLE1, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);

		pPlayer->SEND_GOSSIP_MENU(pPlayer->GetGossipTextId(pCreature), pCreature->GetGUID());

		return true;
	}

	void SendAction(Player* pPlayer, Creature* pCreature, uint32 uiAction)
	{
		switch (uiAction)
		{
		case GOSSIP_ACTION_INFO_DEF + 1:
			pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, GOSSIP_HELLO_FIZZLE2, GOSSIP_SENDER_MAIN + 1, GOSSIP_ACTION_INFO_DEF + 2);
			pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, GOSSIP_HELLO_FIZZLE3, GOSSIP_SENDER_MAIN + 2, GOSSIP_ACTION_INFO_DEF + 3);
			pPlayer->SEND_GOSSIP_MENU(pPlayer->GetGossipTextId(pCreature), pCreature->GetGUID());
			break;
		}
	}

	bool OnGossipSelect(Player* pPlayer, Creature* pCreature, uint32 uiSender, uint32 uiAction)
	{
		pPlayer->PlayerTalkClass->ClearMenus();

		switch (uiSender)
		{
		case GOSSIP_SENDER_MAIN:
			SendAction(pPlayer, pCreature, uiAction);
			break;
		case GOSSIP_SENDER_MAIN + 1:
			pPlayer->CastSpell(pPlayer, 74024, false);
			SendAction(pPlayer, pCreature, uiAction);
			pPlayer->CLOSE_GOSSIP_MENU();
			break;
		case GOSSIP_SENDER_MAIN + 2:
			pPlayer->CLOSE_GOSSIP_MENU();
			SendAction(pPlayer, pCreature, uiAction);
			break;
		}

		return true;
	}
};

enum eTheWolf
{
	SPELL_HUNTING               = 73841,
	SPELL_DASH                  = 73851,
	SPELL_RUMBLING_HOOVES       = 73868,
	NPC_THE_KODO                = 39365,
	NPC_THE_WOLF                = 39364,
	QUEST_THE_WOLF_AND_THE_KODO = 25205

};

class npc_the_wolf : public CreatureScript
{
public:
	npc_the_wolf() : CreatureScript("npc_the_wolf") { }

	struct npc_the_wolfAI : public ScriptedAI
	{
		npc_the_wolfAI(Creature *pCreature) : ScriptedAI(pCreature) {}

		uint64 PlayerGUID;
		uint32 Timer;
		uint32 Step;

		void Reset()
		{
			PlayerGUID = NULL;
			Timer = 0;
			Step = 0;
		}

		void SpellHit(Unit* hitter, const SpellInfo* spell)
		{
			if (spell->Id != SPELL_DASH)
				return;
			if (Player *player = Unit::GetPlayer(*me, PlayerGUID))
			{
				switch (urand(0, 4))
				{
				case 0:
					me->MonsterWhisper("He scoured the sands of Durotar, hunting for his prey.", player->GetGUID(), true);
					break;
				case 1:
					me->MonsterWhisper("The Wolf found scorpid meat to be too bitter.", player->GetGUID(), true);
					break;
				case 2:
					me->MonsterWhisper("The Wolf had grown tired of eating boar meat.", player->GetGUID(), true);
					break;
				case 3:
					me->MonsterWhisper("The Wolf was lazy, and didn't want to work for his meal.", player->GetGUID(), true);
					break;
				case 4:
					me->MonsterWhisper("He was hungry for kodo meat.", player->GetGUID(), true);
					break;
				}
			}
		}

		void PassengerBoarded(Unit* who, int8 /*seatId*/, bool apply)
		{
			if (apply)
			{
				if (who->GetTypeId() == TYPEID_PLAYER)
					PlayerGUID = who->GetGUID();
				if (Player *player = Unit::GetPlayer(*me, PlayerGUID))
				{
					me->MonsterWhisper("One day, The Wolf was very hungry, so he ran east to look for some food.", player->GetGUID(), true);
					me->AddAura(SPELL_HUNTING, me);
					me->SetReactState(REACT_PASSIVE);
					me->setFaction(15);
				}
			}
		}

		void UpdateAI(uint32 uiDiff) override
		{
			if (Player *player = Unit::GetPlayer(*me, PlayerGUID))
			{
				if (Creature* Kodo = me->FindNearestCreature(NPC_THE_KODO, 10))
				{
					if (Timer <= uiDiff)
					{
						switch (Step)
						{
						case 0:
							me->MonsterWhisper("He happened upon a pair of battling kodos.", player->GetGUID(), true);
							Timer = 5000;
							++Step;
							break;
						case 1:
							me->MonsterWhisper("Clever as he was, The Wolf decided to wait for one to defeat the other.", player->GetGUID(), true);
							me->Kill(Kodo);
							Timer = 5000;
							++Step;
							break;
						case 2:
							me->MonsterWhisper("When the weaker Kodo died, The Wolf approached and tried to eat it.", player->GetGUID(), true);
							Timer = 5000;
							++Step;
							break;
						case 3:
							me->MonsterWhisper("The remaining Kodo, angry at The Wolf's impetuousness,$bswiftly killed The Wolf before he had a chance to eat.", player->GetGUID(), true);
							me->SetSpeed(MOVE_RUN, 0.8f);
							me->GetMotionMaster()->MovePoint(0, Kodo->GetPositionX(), Kodo->GetPositionY(), Kodo->GetPositionZ());
							Timer = 5000;
							++Step;
							break;
						case 4:
							me->CastSpell(me, SPELL_RUMBLING_HOOVES, true);
							player->ToPlayer()->CompleteQuest(QUEST_THE_WOLF_AND_THE_KODO);
							Timer = 5000;
							++Step;
							break;
						case 5:
							player->RemoveAurasDueToSpell(SPELL_HUNTING);
							me->DisappearAndDie();
							player->ToPlayer()->TeleportTo(1, 1285.28f, -4336.43f, 34.1176f, 0.0f);
							Timer = 5000;
							Step = 0;
							break;

						}
					}
				}
			}
		}
		void OnCharmed(bool /*apply*/)
		{
		}

	};
	CreatureAI *GetAI(Creature *creature) const
	{
		return new npc_the_wolfAI(creature);
	}
};

void AddSC_durotar()
{
	new npc_lazy_peon();
	new spell_voodoo();
	new npc_jailor();
	new npc_swiftclaw();
	new npc_swiftclaw2();
	new npc_tiger_matriarch_credit();
	new npc_tiger_matriarch();
	new npc_troll_volunteer();
	new spell_mount_check();
	new spell_voljin_war_drums();
	new npc_waystrider();
	new npc_grand_tekla();
	new npc_griswold_hanniston();
	new npc_ghislania();
	new npc_gaur_icehorn();
	new npc_drowning_lizard();
	new npc_fizzle();
	new npc_the_wolf();
}
