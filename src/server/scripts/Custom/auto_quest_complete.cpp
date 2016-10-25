/*
 * Copyright (C) 2013-2016 JadeCore <https://www.jadecore.tk/>
 * Copyright (C) 2008-2016 TrinityCore <http://www.trinitycore.org/>
 * Copyright (C) 2005-2009 MaNGOS <http://getmangos.com/>
 * Copyright (C) 2006-2009 ScriptDev2 <https://scriptdev2.svn.sourceforge.net/>
 *
 * This program is free software; you can redistribute it and/or modify it
 * under the terms of the GNU General Public License as published by the
 * Free Software Foundation; either version 2 of the License, or (at your
 * option) any later version.
 *
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
 * FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for
 * more details.
 *
 * You should have received a copy of the GNU General Public License along
 * with this program. If not, see <http://www.gnu.org/licenses/>.
 */

#include "ScriptPCH.h"

void AddQuest(uint32 questId, Player* player)
{
    Quest const* quest = sObjectMgr->GetQuestTemplate(questId);

    if (!quest)
        return;

    ItemTemplateContainer const* itc = sObjectMgr->GetItemTemplateStore();
    ItemTemplateContainer::const_iterator result = find_if(itc->begin(), itc->end(), Finder<uint32, ItemTemplate>(questId, &ItemTemplate::StartQuest));

    if (result != itc->end())
        return;

    if (player->CanAddQuest(quest, true))
        player->AddQuest(quest, NULL);
}

void CompleteQuest(uint32 questId, Player* player)
{
    Quest const* quest = sObjectMgr->GetQuestTemplate(questId);

    if (!quest || player->GetQuestStatus(questId) == QUEST_STATUS_NONE)
        return;

    for (uint8 i = 0; i < QUEST_ITEM_OBJECTIVES_COUNT; ++i)
    {
        uint32 id = quest->RequiredItemId[i];
        uint32 count = quest->RequiredItemCount[i];

        if (!id || !count)
            continue;

        uint32 curItemCount = player->GetItemCount(id, true);

        ItemPosCountVec dest;
        uint8 msg = player->CanStoreNewItem(NULL_BAG, NULL_SLOT, dest, id, count - curItemCount);
        if (msg == EQUIP_ERR_OK)
        {
            Item* item = player->StoreNewItem(dest, id, true);
            player->SendNewItem(item, count - curItemCount, true, false);
        }
    }

    for (uint8 i = 0; i < QUEST_OBJECTIVES_COUNT; ++i)
    {
        int32 creature = quest->RequiredNpcOrGo[i];
        uint32 creaturecount = quest->RequiredNpcOrGoCount[i];

        if (uint32 spell_id = quest->RequiredSpellCast[i])
        {
            for (uint16 z = 0; z < creaturecount; ++z)
                player->CastedCreatureOrGO(creature, 0, spell_id);
        }

        if (creature > 0)
        {
            if (CreatureTemplate const* cInfo = sObjectMgr->GetCreatureTemplate(creature))
                for (uint16 z = 0; z < creaturecount; ++z)
                    player->KilledMonster(cInfo, 0);
        }

        if (creature < 0)
        {
            for (uint16 z = 0; z < creaturecount; ++z)
                player->CastedCreatureOrGO(creature, 0, 0);
        }
    }

    int32 ReqOrRewMoney = quest->GetRewOrReqMoney();

    if (ReqOrRewMoney < 0)
        player->ModifyMoney(-ReqOrRewMoney);

    player->CompleteQuest(questId);
}

class AutoQuestComplete : public PlayerScript
{
public:
    AutoQuestComplete() : PlayerScript("AutoQuestComplete") {}

    void OnLogin(Player* player)
    {
        if (player->GetTotalPlayedTime() < 5)
        {
            AddQuest(123, player); // Add Quest ID
            CompleteQuest(123, player); // Add Quest ID

        }
    }
};

void AddSC_AutoQuestComplete()
{
    new AutoQuestComplete();
}
