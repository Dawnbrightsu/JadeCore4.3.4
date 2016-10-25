# Copyright (C) 2013-2016 JadeCore <https://www.jadecore.tk/>
# Copyright (C) 2008-2016 TrinityCore <http://www.trinitycore.org/>
# Copyright (C) 2005-2009 MaNGOS <http://getmangos.com/>
# Copyright (C) 2006-2009 ScriptDev2 <https://scriptdev2.svn.sourceforge.net/>
#
# This file is free software; as a special exception the author gives
# unlimited permission to copy and/or distribute it, with or without
# modifications, as long as this notice is preserved.
#
# This program is distributed in the hope that it will be useful, but
# WITHOUT ANY WARRANTY, to the extent permitted by law; without even the
# implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

add_subdirectory(map_extractor)
add_subdirectory(vmap4_assembler)
add_subdirectory(vmap4_extractor)
add_subdirectory(mmaps_generator)
if (WITH_MESHEXTRACTOR)
  add_subdirectory(mesh_extractor)
endif()
