Alignment.create!([
  {name: "Ordeiro"},
  {name: "Neutro"},
  {name: "Caótico"}
])
ArmorType.create!([
  {name: "Completa"},
  {name: "Parcial"}
])
Dice.create!([
  {name: "D4"},
  {name: "D6"},
  {name: "D8"},
  {name: "D10"},
  {name: "D12"},
  {name: "D20"},
  {name: "D100"}
])
EffectType.create!([
  {name: "Instantâneo"},
  {name: "Temporario"},
  {name: "Permanente"}
])
ElementType.create!([
  {name: "Fogo"},
  {name: "Água"},
  {name: "Terra"},
  {name: "Ar"}
])
WeaponSize.create!([
  {name: "Pequeno", alternative_name: "Pequeno", alias: "P"},
  {name: "Médio", alternative_name: "Médio", alias: "M"},
  {name: "Grande", alternative_name: "Grande", alias: "G"}
])
WeaponType.create!([
  {name: "Corte"},
  {name: "Perfuração"},
  {name: "Deformação"}
])
SkillType.create!([
  {name: "Natural"},
  {name: "Adquirido"}
])
SpellType.create!([
  {name: "Arcana"},
  {name: "Divina"}
])
Origin.create!([
  {name: "Comum", variation: "Comum", bonus: 0},
  {name: "Élfico", variation: "Élfica", bonus: 1},
  {name: "Anão", variation: "Anã", bonus: 1}
])
PerkType.create!([
  {name: "Natural"},
  {name: "Adquirida"}
])
ItemType.create!([
  {name: "Consumivel"},
  {name: "Chave"},
  {name: "Importante"}
])
LanguageType.create!([
  {name: "Comum", description: nil},
  {name: "Anão", description: nil},
  {name: "Élfico", description: nil},
  {name: "Silvestre", description: nil},
  {name: "Goblinoide", description: nil},
  {name: "Orc", description: nil},
  {name: "Gigante", description: nil},
  {name: "Dracônico", description: nil},
  {name: "Antigo", description: nil}
])
Role.create!([
  {name: "Administrador", admin: true},
  {name: "Comum", admin: false}
])
User.create!([
  {
    name: "Administrador",
    user_code: "admin",
    password: "123456",
    password_confirmation: "123456",
    last_login: nil,
    email: "themohawkeagle@gmail.com",
    role_id: 1
  }
])
Skill.create!([
  {name: "Visão na Penumbra", description: "Visão na Penumbra em até 15 metros", effect_id: nil, skill_type_id: 1, user_id: 1}
])
Perk.create!([
  {name: "Couraça", description: "Ataques de perfuração recebidos causam apenas metade do dano", perk_type_id: 1, user_id: 1},
  {name: "Corpo Ósseo", description: "Ataques de corte e perfuração recebidos causam apenas metade do dano", perk_type_id: 1, user_id: 1}
])
CharacterRace.create!([
  {name: "Anões", picture: "https://i.pinimg.com/564x/29/03/7c/29037c18b75badfeaa7dafe3f17f333a.jpg", min_height: 1, max_height: 2, min_weight: 50, max_weight: 70, maturity: 70, max_age: 350, movement_base: 9, armor_class_mod: 0, str_mod: 0, dex_mod: 0, cons_mod: 2, int_mod: 0, wis_mod: 0, char_mod: -2, alignment_id: 1, dice_id: nil, user_id: 1},
  {name: "Elfos", picture: "https://i.pinimg.com/736x/81/1a/7a/811a7aa0c7621053c62ab5fa17a1ec8d--male-elf-character-concept.jpg", min_height: 2, max_height: 2, min_weight: 40, max_weight: 50, maturity: 150, max_age: 700, movement_base: 9, armor_class_mod: 0, str_mod: 0, dex_mod: 2, cons_mod: -2, int_mod: 0, wis_mod: 0, char_mod: 0, alignment_id: 2, dice_id: 3, user_id: 1},
  {name: "Humanos", picture: "https://i.pinimg.com/564x/ba/66/34/ba6634ac7be1b24a3f7482ebb0fa4927.jpg", min_height: 2, max_height: 2, min_weight: 55, max_weight: 90, maturity: 15, max_age: 70, movement_base: 9, armor_class_mod: 0, str_mod: 0, dex_mod: 0, cons_mod: 0, int_mod: 0, wis_mod: 0, char_mod: 0, alignment_id: 2, dice_id: nil, user_id: 1},
  {name: "Halflings", picture: "http://3.bp.blogspot.com/-6D8tlIzKPR0/UJ4rELOM9LI/AAAAAAAAAl8/3sw0UV0tmcE/s1600/halfling+02.jpg", min_height: 1, max_height: 1, min_weight: 20, max_weight: 35, maturity: 30, max_age: 70, movement_base: 9, armor_class_mod: 2, str_mod: 0, dex_mod: 2, cons_mod: 0, int_mod: 0, wis_mod: 0, char_mod: 0, alignment_id: 3, dice_id: nil, user_id: 1}
])
CharacterClassType.create!([
  {
    name: "Arcano", 
    magic: true, 
    protection: 15, 
    key_attr: "INT", 
    can_bane_undead: false, 
    has_thief_talents: false
  },
  {
    name: "Combatente", 
    magic: false, 
    protection: 15, 
    key_attr: "STR", 
    can_bane_undead: false, 
    has_thief_talents: false
  },
  {
    name: "Espiritualista", 
    magic: true, 
    protection: 15, 
    key_attr: "WIS", 
    can_bane_undead: true, 
    has_thief_talents: false
  },
  {
    name: "Furtivo", 
    magic: false, 
    protection: 15, 
    key_attr: "DEX", 
    can_bane_undead: false, has_thief_talents: true
  }
])
CharacterClass.create!([
  {
    name: "Clérigo",
    picture: "https://nerdsonearth.com/wp-content/uploads/2017/05/bcfd5368fb063a6cd15f566d516b242a.jpg",
    description: "Um homem devotado ao culto sagrado", 
    dice_id: 3,
    perk_id: nil,
    character_class_type_id: 3,
    user_id: 1
  },
  {
    name: "Homem de Armas",
    picture: "http://s1.1zoom.me/big0/354/388898-sepik.jpg",
    description: "Um combatente experiente", 
    dice_id: 4,
    perk_id: nil,
    character_class_type_id: 2,
    user_id: 1
  },
  {
    name: "Ladino",
    picture: "http://sm.ign.com/ign_br/news/n/new-thief-/new-thief-sequel-rumours-quashed-by-developer_aq2f.jpg",
    description: "Um fora-da-lei virado no jiraia", 
    dice_id: 2,
    perk_id: nil,
    character_class_type_id: 4,
    user_id: 1
  },
  {
    name: "Mago",
    picture: "http://ll-c.ooyala.com/e1/VweTk5YzE6uMVLB0BoRaGmMkCsUVotQN/promo326678796",
    description: "Um homem que dedicou sua vida ao conhecimento arcano", 
    dice_id: 1,
    perk_id: nil,
    character_class_type_id: 1,
    user_id: 1
  }
])
CharacterClassEvolution.create!([
  {level: 1, exp: 0, life_amount: 1, plus_life: false, attack_base: 0, attack_base2: 0, protection_mod: 15, character_class_id: 1},
  {level: 2, exp: 1500, life_amount: 2, plus_life: false, attack_base: 1, attack_base2: 0, protection_mod: 15, character_class_id: 1},
  {level: 3, exp: 3000, life_amount: 3, plus_life: false, attack_base: 2, attack_base2: 0, protection_mod: 15, character_class_id: 1},
  {level: 4, exp: 6000, life_amount: 4, plus_life: false, attack_base: 2, attack_base2: 0, protection_mod: 14, character_class_id: 1},
  {level: 5, exp: 12000, life_amount: 5, plus_life: false, attack_base: 3, attack_base2: 0, protection_mod: 14, character_class_id: 1},
  {level: 6, exp: 24000, life_amount: 6, plus_life: false, attack_base: 3, attack_base2: 0, protection_mod: 14, character_class_id: 1},
  {level: 7, exp: 48000, life_amount: 7, plus_life: false, attack_base: 3, attack_base2: 0, protection_mod: 13, character_class_id: 1},
  {level: 8, exp: 100000, life_amount: 8, plus_life: false, attack_base: 4, attack_base2: 0, protection_mod: 13, character_class_id: 1},
  {level: 9, exp: 200000, life_amount: 9, plus_life: false, attack_base: 4, attack_base2: 0, protection_mod: 13, character_class_id: 1},
  {level: 10, exp: 300000, life_amount: 1, plus_life: true, attack_base: 4, attack_base2: 0, protection_mod: 12, character_class_id: 1},
  {level: 11, exp: 400000, life_amount: 1, plus_life: true, attack_base: 5, attack_base2: 0, protection_mod: 12, character_class_id: 1},
  {level: 12, exp: 500000, life_amount: 2, plus_life: true, attack_base: 5, attack_base2: 0, protection_mod: 12, character_class_id: 1},
  {level: 13, exp: 600000, life_amount: 2, plus_life: true, attack_base: 5, attack_base2: 0, protection_mod: 11, character_class_id: 1},
  {level: 14, exp: 700000, life_amount: 3, plus_life: true, attack_base: 6, attack_base2: 0, protection_mod: 11, character_class_id: 1},
  {level: 15, exp: 800000, life_amount: 3, plus_life: true, attack_base: 6, attack_base2: 0, protection_mod: 11, character_class_id: 1},
  {level: 16, exp: 900000, life_amount: 4, plus_life: true, attack_base: 6, attack_base2: 0, protection_mod: 10, character_class_id: 1},
  {level: 17, exp: 1000000, life_amount: 4, plus_life: true, attack_base: 7, attack_base2: 0, protection_mod: 10, character_class_id: 1},
  {level: 18, exp: 1100000, life_amount: 5, plus_life: true, attack_base: 7, attack_base2: 0, protection_mod: 10, character_class_id: 1},
  {level: 19, exp: 1200000, life_amount: 5, plus_life: true, attack_base: 7, attack_base2: 0, protection_mod: 9, character_class_id: 1},
  {level: 20, exp: 1300000, life_amount: 6, plus_life: true, attack_base: 8, attack_base2: 0, protection_mod: 9, character_class_id: 1},
  {level: 1, exp: 0, life_amount: 1, plus_life: false, attack_base: 1, attack_base2: 0, protection_mod: 16, character_class_id: 2},
  {level: 2, exp: 2000, life_amount: 2, plus_life: false, attack_base: 2, attack_base2: 0, protection_mod: 16, character_class_id: 2},
  {level: 3, exp: 4000, life_amount: 3, plus_life: false, attack_base: 3, attack_base2: 0, protection_mod: 16, character_class_id: 2},
  {level: 4, exp: 8000, life_amount: 4, plus_life: false, attack_base: 4, attack_base2: 0, protection_mod: 15, character_class_id: 2},
  {level: 5, exp: 16000, life_amount: 5, plus_life: false, attack_base: 5, attack_base2: 0, protection_mod: 15, character_class_id: 2},
  {level: 6, exp: 32000, life_amount: 6, plus_life: false, attack_base: 6, attack_base2: 0, protection_mod: 15, character_class_id: 2},
  {level: 7, exp: 64000, life_amount: 7, plus_life: false, attack_base: 7, attack_base2: 1, protection_mod: 14, character_class_id: 2},
  {level: 8, exp: 128000, life_amount: 8, plus_life: false, attack_base: 8, attack_base2: 2, protection_mod: 14, character_class_id: 2},
  {level: 9, exp: 256000, life_amount: 9, plus_life: false, attack_base: 9, attack_base2: 3, protection_mod: 14, character_class_id: 2},
  {level: 10, exp: 304000, life_amount: 2, plus_life: true, attack_base: 10, attack_base2: 4, protection_mod: 13, character_class_id: 2},
  {level: 11, exp: 408000, life_amount: 2, plus_life: true, attack_base: 10, attack_base2: 4, protection_mod: 13, character_class_id: 2},
  {level: 12, exp: 516000, life_amount: 4, plus_life: true, attack_base: 11, attack_base2: 5, protection_mod: 13, character_class_id: 2},
  {level: 13, exp: 632000, life_amount: 4, plus_life: true, attack_base: 11, attack_base2: 5, protection_mod: 12, character_class_id: 2},
  {level: 14, exp: 704000, life_amount: 5, plus_life: true, attack_base: 12, attack_base2: 6, protection_mod: 12, character_class_id: 2},
  {level: 15, exp: 808000, life_amount: 5, plus_life: true, attack_base: 12, attack_base2: 6, protection_mod: 12, character_class_id: 2},
  {level: 16, exp: 916000, life_amount: 6, plus_life: true, attack_base: 13, attack_base2: 7, protection_mod: 11, character_class_id: 2},
  {level: 17, exp: 1032000, life_amount: 6, plus_life: true, attack_base: 13, attack_base2: 7, protection_mod: 11, character_class_id: 2},
  {level: 18, exp: 1064000, life_amount: 7, plus_life: true, attack_base: 14, attack_base2: 8, protection_mod: 11, character_class_id: 2},
  {level: 19, exp: 1128000, life_amount: 7, plus_life: true, attack_base: 14, attack_base2: 8, protection_mod: 10, character_class_id: 2},
  {level: 20, exp: 1256000, life_amount: 8, plus_life: true, attack_base: 15, attack_base2: 9, protection_mod: 10, character_class_id: 2},
  {level: 1, exp: 0, life_amount: 1, plus_life: false, attack_base: 1, attack_base2: 0, protection_mod: 15, character_class_id: 3},
  {level: 2, exp: 1250, life_amount: 2, plus_life: false, attack_base: 1, attack_base2: 0, protection_mod: 15, character_class_id: 3},
  {level: 3, exp: 2500, life_amount: 3, plus_life: false, attack_base: 2, attack_base2: 0, protection_mod: 15, character_class_id: 3},
  {level: 4, exp: 5000, life_amount: 4, plus_life: false, attack_base: 2, attack_base2: 0, protection_mod: 14, character_class_id: 3},
  {level: 5, exp: 10000, life_amount: 5, plus_life: false, attack_base: 2, attack_base2: 0, protection_mod: 14, character_class_id: 3},
  {level: 6, exp: 20000, life_amount: 6, plus_life: false, attack_base: 3, attack_base2: 0, protection_mod: 14, character_class_id: 3},
  {level: 7, exp: 40000, life_amount: 7, plus_life: false, attack_base: 3, attack_base2: 0, protection_mod: 13, character_class_id: 3},
  {level: 8, exp: 80000, life_amount: 8, plus_life: false, attack_base: 3, attack_base2: 0, protection_mod: 13, character_class_id: 3},
  {level: 9, exp: 160000, life_amount: 9, plus_life: false, attack_base: 4, attack_base2: 0, protection_mod: 13, character_class_id: 3},
  {level: 10, exp: 240000, life_amount: 1, plus_life: true, attack_base: 4, attack_base2: 0, protection_mod: 12, character_class_id: 3},
  {level: 11, exp: 400000, life_amount: 1, plus_life: true, attack_base: 4, attack_base2: 0, protection_mod: 12, character_class_id: 3},
  {level: 12, exp: 520000, life_amount: 2, plus_life: true, attack_base: 5, attack_base2: 0, protection_mod: 12, character_class_id: 3},
  {level: 13, exp: 640000, life_amount: 2, plus_life: true, attack_base: 5, attack_base2: 0, protection_mod: 11, character_class_id: 3},
  {level: 14, exp: 760000, life_amount: 2, plus_life: true, attack_base: 5, attack_base2: 0, protection_mod: 11, character_class_id: 3},
  {level: 15, exp: 880000, life_amount: 3, plus_life: true, attack_base: 6, attack_base2: 0, protection_mod: 11, character_class_id: 3},
  {level: 16, exp: 1000000, life_amount: 3, plus_life: true, attack_base: 6, attack_base2: 0, protection_mod: 10, character_class_id: 3},
  {level: 17, exp: 1120000, life_amount: 3, plus_life: true, attack_base: 6, attack_base2: 0, protection_mod: 10, character_class_id: 3},
  {level: 18, exp: 1240000, life_amount: 4, plus_life: true, attack_base: 7, attack_base2: 0, protection_mod: 10, character_class_id: 3},
  {level: 19, exp: 1360000, life_amount: 4, plus_life: true, attack_base: 7, attack_base2: 0, protection_mod: 9, character_class_id: 3},
  {level: 20, exp: 1480000, life_amount: 4, plus_life: true, attack_base: 7, attack_base2: 0, protection_mod: 9, character_class_id: 3},
  {level: 1, exp: 0, life_amount: 1, plus_life: false, attack_base: 0, attack_base2: 0, protection_mod: 14, character_class_id: 4},
  {level: 2, exp: 2500, life_amount: 2, plus_life: false, attack_base: 0, attack_base2: 0, protection_mod: 14, character_class_id: 4},
  {level: 3, exp: 5000, life_amount: 3, plus_life: false, attack_base: 1, attack_base2: 0, protection_mod: 14, character_class_id: 4},
  {level: 4, exp: 10000, life_amount: 4, plus_life: false, attack_base: 1, attack_base2: 0, protection_mod: 13, character_class_id: 4},
  {level: 5, exp: 20000, life_amount: 5, plus_life: false, attack_base: 2, attack_base2: 0, protection_mod: 13, character_class_id: 4},
  {level: 6, exp: 40000, life_amount: 6, plus_life: false, attack_base: 2, attack_base2: 0, protection_mod: 13, character_class_id: 4},
  {level: 7, exp: 80000, life_amount: 7, plus_life: false, attack_base: 3, attack_base2: 0, protection_mod: 12, character_class_id: 4},
  {level: 8, exp: 160000, life_amount: 8, plus_life: false, attack_base: 3, attack_base2: 0, protection_mod: 12, character_class_id: 4},
  {level: 9, exp: 310000, life_amount: 9, plus_life: false, attack_base: 3, attack_base2: 0, protection_mod: 12, character_class_id: 4},
  {level: 10, exp: 460000, life_amount: 1, plus_life: true, attack_base: 4, attack_base2: 0, protection_mod: 11, character_class_id: 4},
  {level: 11, exp: 510000, life_amount: 1, plus_life: true, attack_base: 4, attack_base2: 0, protection_mod: 11, character_class_id: 4},
  {level: 12, exp: 660000, life_amount: 1, plus_life: true, attack_base: 4, attack_base2: 0, protection_mod: 11, character_class_id: 4},
  {level: 13, exp: 710000, life_amount: 1, plus_life: true, attack_base: 5, attack_base2: 0, protection_mod: 10, character_class_id: 4},
  {level: 14, exp: 860000, life_amount: 1, plus_life: true, attack_base: 5, attack_base2: 0, protection_mod: 10, character_class_id: 4},
  {level: 15, exp: 910000, life_amount: 2, plus_life: true, attack_base: 5, attack_base2: 0, protection_mod: 10, character_class_id: 4},
  {level: 16, exp: 1060000, life_amount: 2, plus_life: true, attack_base: 6, attack_base2: 0, protection_mod: 9, character_class_id: 4},
  {level: 17, exp: 1110000, life_amount: 2, plus_life: true, attack_base: 6, attack_base2: 0, protection_mod: 9, character_class_id: 4},
  {level: 18, exp: 1160000, life_amount: 2, plus_life: true, attack_base: 6, attack_base2: 0, protection_mod: 9, character_class_id: 4},
  {level: 19, exp: 1210000, life_amount: 2, plus_life: true, attack_base: 7, attack_base2: 0, protection_mod: 8, character_class_id: 4},
  {level: 20, exp: 1260000, life_amount: 3, plus_life: true, attack_base: 7, attack_base2: 0, protection_mod: 8, character_class_id: 4}
])
CharacterClassMagicCircle.create!([
  {level: 1, magic_circle_1: 1, magic_circle_2: 0, magic_circle_3: 0, magic_circle_4: 0, magic_circle_5: 0, magic_circle_6: 0, magic_circle_7: 0, magic_circle_8: 0, magic_circle_9: 0, character_class_id: 1},
  {level: 2, magic_circle_1: 2, magic_circle_2: 0, magic_circle_3: 0, magic_circle_4: 0, magic_circle_5: 0, magic_circle_6: 0, magic_circle_7: 0, magic_circle_8: 0, magic_circle_9: 0, character_class_id: 1},
  {level: 3, magic_circle_1: 2, magic_circle_2: 1, magic_circle_3: 0, magic_circle_4: 0, magic_circle_5: 0, magic_circle_6: 0, magic_circle_7: 0, magic_circle_8: 0, magic_circle_9: 0, character_class_id: 1},
  {level: 4, magic_circle_1: 3, magic_circle_2: 2, magic_circle_3: 0, magic_circle_4: 0, magic_circle_5: 0, magic_circle_6: 0, magic_circle_7: 0, magic_circle_8: 0, magic_circle_9: 0, character_class_id: 1},
  {level: 5, magic_circle_1: 3, magic_circle_2: 2, magic_circle_3: 1, magic_circle_4: 0, magic_circle_5: 0, magic_circle_6: 0, magic_circle_7: 0, magic_circle_8: 0, magic_circle_9: 0, character_class_id: 1},
  {level: 6, magic_circle_1: 3, magic_circle_2: 3, magic_circle_3: 2, magic_circle_4: 0, magic_circle_5: 0, magic_circle_6: 0, magic_circle_7: 0, magic_circle_8: 0, magic_circle_9: 0, character_class_id: 1},
  {level: 7, magic_circle_1: 4, magic_circle_2: 3, magic_circle_3: 2, magic_circle_4: 1, magic_circle_5: 0, magic_circle_6: 0, magic_circle_7: 0, magic_circle_8: 0, magic_circle_9: 0, character_class_id: 1},
  {level: 8, magic_circle_1: 4, magic_circle_2: 3, magic_circle_3: 3, magic_circle_4: 2, magic_circle_5: 0, magic_circle_6: 0, magic_circle_7: 0, magic_circle_8: 0, magic_circle_9: 0, character_class_id: 1},
  {level: 9, magic_circle_1: 4, magic_circle_2: 4, magic_circle_3: 3, magic_circle_4: 2, magic_circle_5: 1, magic_circle_6: 0, magic_circle_7: 0, magic_circle_8: 0, magic_circle_9: 0, character_class_id: 1},
  {level: 10, magic_circle_1: 5, magic_circle_2: 4, magic_circle_3: 3, magic_circle_4: 3, magic_circle_5: 2, magic_circle_6: 0, magic_circle_7: 0, magic_circle_8: 0, magic_circle_9: 0, character_class_id: 1},
  {level: 11, magic_circle_1: 5, magic_circle_2: 4, magic_circle_3: 4, magic_circle_4: 3, magic_circle_5: 2, magic_circle_6: 1, magic_circle_7: 0, magic_circle_8: 0, magic_circle_9: 0, character_class_id: 1},
  {level: 12, magic_circle_1: 5, magic_circle_2: 5, magic_circle_3: 4, magic_circle_4: 3, magic_circle_5: 3, magic_circle_6: 2, magic_circle_7: 0, magic_circle_8: 0, magic_circle_9: 0, character_class_id: 1},
  {level: 13, magic_circle_1: 6, magic_circle_2: 5, magic_circle_3: 4, magic_circle_4: 4, magic_circle_5: 3, magic_circle_6: 2, magic_circle_7: 0, magic_circle_8: 0, magic_circle_9: 0, character_class_id: 1},
  {level: 14, magic_circle_1: 6, magic_circle_2: 5, magic_circle_3: 5, magic_circle_4: 4, magic_circle_5: 3, magic_circle_6: 3, magic_circle_7: 0, magic_circle_8: 0, magic_circle_9: 0, character_class_id: 1},
  {level: 15, magic_circle_1: 7, magic_circle_2: 6, magic_circle_3: 5, magic_circle_4: 4, magic_circle_5: 4, magic_circle_6: 3, magic_circle_7: 1, magic_circle_8: 0, magic_circle_9: 0, character_class_id: 1},
  {level: 16, magic_circle_1: 7, magic_circle_2: 6, magic_circle_3: 5, magic_circle_4: 5, magic_circle_5: 4, magic_circle_6: 3, magic_circle_7: 2, magic_circle_8: 0, magic_circle_9: 0, character_class_id: 1},
  {level: 17, magic_circle_1: 8, magic_circle_2: 7, magic_circle_3: 6, magic_circle_4: 5, magic_circle_5: 4, magic_circle_6: 4, magic_circle_7: 2, magic_circle_8: 0, magic_circle_9: 0, character_class_id: 1},
  {level: 18, magic_circle_1: 8, magic_circle_2: 7, magic_circle_3: 6, magic_circle_4: 5, magic_circle_5: 5, magic_circle_6: 4, magic_circle_7: 3, magic_circle_8: 0, magic_circle_9: 0, character_class_id: 1},
  {level: 19, magic_circle_1: 9, magic_circle_2: 8, magic_circle_3: 7, magic_circle_4: 6, magic_circle_5: 5, magic_circle_6: 4, magic_circle_7: 3, magic_circle_8: 0, magic_circle_9: 0, character_class_id: 1},
  {level: 20, magic_circle_1: 9, magic_circle_2: 8, magic_circle_3: 7, magic_circle_4: 6, magic_circle_5: 5, magic_circle_6: 5, magic_circle_7: 3, magic_circle_8: 0, magic_circle_9: 0, character_class_id: 1},
  {level: 1, magic_circle_1: 1, magic_circle_2: 0, magic_circle_3: 0, magic_circle_4: 0, magic_circle_5: 0, magic_circle_6: 0, magic_circle_7: 0, magic_circle_8: 0, magic_circle_9: 0, character_class_id: 4},
  {level: 2, magic_circle_1: 2, magic_circle_2: 0, magic_circle_3: 0, magic_circle_4: 0, magic_circle_5: 0, magic_circle_6: 0, magic_circle_7: 0, magic_circle_8: 0, magic_circle_9: 0, character_class_id: 4},
  {level: 3, magic_circle_1: 2, magic_circle_2: 1, magic_circle_3: 0, magic_circle_4: 0, magic_circle_5: 0, magic_circle_6: 0, magic_circle_7: 0, magic_circle_8: 0, magic_circle_9: 0, character_class_id: 4},
  {level: 4, magic_circle_1: 2, magic_circle_2: 2, magic_circle_3: 0, magic_circle_4: 0, magic_circle_5: 0, magic_circle_6: 0, magic_circle_7: 0, magic_circle_8: 0, magic_circle_9: 0, character_class_id: 4},
  {level: 5, magic_circle_1: 2, magic_circle_2: 2, magic_circle_3: 1, magic_circle_4: 0, magic_circle_5: 0, magic_circle_6: 0, magic_circle_7: 0, magic_circle_8: 0, magic_circle_9: 0, character_class_id: 4},
  {level: 6, magic_circle_1: 3, magic_circle_2: 2, magic_circle_3: 2, magic_circle_4: 0, magic_circle_5: 0, magic_circle_6: 0, magic_circle_7: 0, magic_circle_8: 0, magic_circle_9: 0, character_class_id: 4},
  {level: 7, magic_circle_1: 3, magic_circle_2: 2, magic_circle_3: 2, magic_circle_4: 1, magic_circle_5: 0, magic_circle_6: 0, magic_circle_7: 0, magic_circle_8: 0, magic_circle_9: 0, character_class_id: 4},
  {level: 8, magic_circle_1: 3, magic_circle_2: 3, magic_circle_3: 2, magic_circle_4: 2, magic_circle_5: 0, magic_circle_6: 0, magic_circle_7: 0, magic_circle_8: 0, magic_circle_9: 0, character_class_id: 4},
  {level: 9, magic_circle_1: 3, magic_circle_2: 3, magic_circle_3: 2, magic_circle_4: 2, magic_circle_5: 1, magic_circle_6: 0, magic_circle_7: 0, magic_circle_8: 0, magic_circle_9: 0, character_class_id: 4},
  {level: 10, magic_circle_1: 3, magic_circle_2: 3, magic_circle_3: 3, magic_circle_4: 2, magic_circle_5: 2, magic_circle_6: 0, magic_circle_7: 0, magic_circle_8: 0, magic_circle_9: 0, character_class_id: 4},
  {level: 11, magic_circle_1: 4, magic_circle_2: 3, magic_circle_3: 3, magic_circle_4: 2, magic_circle_5: 2, magic_circle_6: 1, magic_circle_7: 0, magic_circle_8: 0, magic_circle_9: 0, character_class_id: 4},
  {level: 12, magic_circle_1: 4, magic_circle_2: 3, magic_circle_3: 3, magic_circle_4: 3, magic_circle_5: 2, magic_circle_6: 2, magic_circle_7: 0, magic_circle_8: 0, magic_circle_9: 0, character_class_id: 4},
  {level: 13, magic_circle_1: 4, magic_circle_2: 4, magic_circle_3: 3, magic_circle_4: 3, magic_circle_5: 2, magic_circle_6: 2, magic_circle_7: 1, magic_circle_8: 0, magic_circle_9: 0, character_class_id: 4},
  {level: 14, magic_circle_1: 4, magic_circle_2: 4, magic_circle_3: 3, magic_circle_4: 3, magic_circle_5: 3, magic_circle_6: 2, magic_circle_7: 2, magic_circle_8: 0, magic_circle_9: 0, character_class_id: 4},
  {level: 15, magic_circle_1: 5, magic_circle_2: 4, magic_circle_3: 4, magic_circle_4: 3, magic_circle_5: 3, magic_circle_6: 2, magic_circle_7: 2, magic_circle_8: 1, magic_circle_9: 0, character_class_id: 4},
  {level: 16, magic_circle_1: 5, magic_circle_2: 4, magic_circle_3: 4, magic_circle_4: 3, magic_circle_5: 3, magic_circle_6: 3, magic_circle_7: 2, magic_circle_8: 2, magic_circle_9: 0, character_class_id: 4},
  {level: 17, magic_circle_1: 5, magic_circle_2: 5, magic_circle_3: 4, magic_circle_4: 4, magic_circle_5: 3, magic_circle_6: 3, magic_circle_7: 2, magic_circle_8: 2, magic_circle_9: 1, character_class_id: 4},
  {level: 18, magic_circle_1: 5, magic_circle_2: 5, magic_circle_3: 4, magic_circle_4: 4, magic_circle_5: 3, magic_circle_6: 3, magic_circle_7: 3, magic_circle_8: 2, magic_circle_9: 2, character_class_id: 4},
  {level: 19, magic_circle_1: 5, magic_circle_2: 5, magic_circle_3: 5, magic_circle_4: 4, magic_circle_5: 4, magic_circle_6: 3, magic_circle_7: 3, magic_circle_8: 2, magic_circle_9: 2, character_class_id: 4},
  {level: 20, magic_circle_1: 6, magic_circle_2: 6, magic_circle_3: 5, magic_circle_4: 4, magic_circle_5: 4, magic_circle_6: 3, magic_circle_7: 3, magic_circle_8: 3, magic_circle_9: 2, character_class_id: 4}
])
CharacterClassRequirement.create!([
  {str_mod: 12, dex_mod: 0, cons_mod: 12, int_mod: 0, wis_mod: 0, char_mod: 0, character_class_id: 2},
  {str_mod: 0, dex_mod: 0, cons_mod: 0, int_mod: 0, wis_mod: 12, char_mod: 0, character_class_id: 1},
  {str_mod: 0, dex_mod: 12, cons_mod: 0, int_mod: 0, wis_mod: 0, char_mod: 0, character_class_id: 3},
  {str_mod: 0, dex_mod: 0, cons_mod: 0, int_mod: 12, wis_mod: 0, char_mod: 0, character_class_id: 4}
])
CharacterRaceLanguage.create!([
  {character_race_id: 1, language_type_id: 1},
  {character_race_id: 1, language_type_id: 2},
  {character_race_id: 2, language_type_id: 1},
  {character_race_id: 2, language_type_id: 3}
])
CharacterRaceSkill.create!([
  {character_race_id: 2, skill_id: 1}
])
CharacterRaceThiefTalent.create!([
  {lockpick_mod: 0, find_traps_mod: 0, climb_mod: 0, silent_movement_mod: 0, stealth_mod: 10, pickpocket_mod: 0, hear_noises_mod: "0", backstab_mod: "0", character_race_id: 4}
])
CharismaMod.create!([
  {value: 1, followers_mod: 0, reaction_mod: -25, undead_mod: "'0'"},
  {value: 2, followers_mod: 0, reaction_mod: -20, undead_mod: "'0'"},
  {value: 3, followers_mod: 0, reaction_mod: -20, undead_mod: "'0'"},
  {value: 4, followers_mod: 0, reaction_mod: -15, undead_mod: "'0'"},
  {value: 5, followers_mod: 0, reaction_mod: -15, undead_mod: "'0'"},
  {value: 6, followers_mod: 0, reaction_mod: -10, undead_mod: "'0'"},
  {value: 7, followers_mod: 0, reaction_mod: -10, undead_mod: "'0'"},
  {value: 8, followers_mod: 0, reaction_mod: -5, undead_mod: "'1'"},
  {value: 9, followers_mod: 0, reaction_mod: -5, undead_mod: "'1'"},
  {value: 10, followers_mod: 1, reaction_mod: 0, undead_mod: "'1d2'"},
  {value: 11, followers_mod: 1, reaction_mod: 0, undead_mod: "'1d2'"},
  {value: 12, followers_mod: 2, reaction_mod: 5, undead_mod: "'1d3'"},
  {value: 13, followers_mod: 2, reaction_mod: 5, undead_mod: "'1d3'"},
  {value: 14, followers_mod: 3, reaction_mod: 10, undead_mod: "'1d4'"},
  {value: 15, followers_mod: 3, reaction_mod: 10, undead_mod: "'1d4'"},
  {value: 16, followers_mod: 4, reaction_mod: 15, undead_mod: "'1d6'"},
  {value: 17, followers_mod: 4, reaction_mod: 15, undead_mod: "'1d6'"},
  {value: 18, followers_mod: 5, reaction_mod: 20, undead_mod: "'1d8'"},
  {value: 19, followers_mod: 5, reaction_mod: 20, undead_mod: "'1d8'"},
  {value: 20, followers_mod: 6, reaction_mod: 25, undead_mod: "'2d4'"},
  {value: 21, followers_mod: 6, reaction_mod: 25, undead_mod: "'2d4'"},
  {value: 22, followers_mod: 7, reaction_mod: 30, undead_mod: "'1d10'"},
  {value: 23, followers_mod: 7, reaction_mod: 30, undead_mod: "'1d10'"},
  {value: 24, followers_mod: 8, reaction_mod: 35, undead_mod: "'1d12'"},
  {value: 25, followers_mod: 8, reaction_mod: 35, undead_mod: "'1d12'"},
  {value: 26, followers_mod: 9, reaction_mod: 40, undead_mod: "'2d6'"},
  {value: 27, followers_mod: 9, reaction_mod: 40, undead_mod: "'2d6'"},
  {value: 28, followers_mod: 10, reaction_mod: 45, undead_mod: "'1d20'"},
  {value: 29, followers_mod: 10, reaction_mod: 45, undead_mod: "'1d20'"}
])
ConstitutionMod.create!([
  {value: 1, hitpoints_mod: -5, protection_mod: -5, resurrection_mod: 0},
  {value: 2, hitpoints_mod: -4, protection_mod: -4, resurrection_mod: 0},
  {value: 3, hitpoints_mod: -4, protection_mod: -4, resurrection_mod: 0},
  {value: 4, hitpoints_mod: -3, protection_mod: -3, resurrection_mod: 0},
  {value: 5, hitpoints_mod: -3, protection_mod: -3, resurrection_mod: 0},
  {value: 6, hitpoints_mod: -2, protection_mod: -2, resurrection_mod: 1},
  {value: 7, hitpoints_mod: -2, protection_mod: -2, resurrection_mod: 1},
  {value: 8, hitpoints_mod: -1, protection_mod: -1, resurrection_mod: 5},
  {value: 9, hitpoints_mod: -1, protection_mod: -1, resurrection_mod: 5},
  {value: 10, hitpoints_mod: 0, protection_mod: 0, resurrection_mod: 10},
  {value: 11, hitpoints_mod: 0, protection_mod: 0, resurrection_mod: 10},
  {value: 12, hitpoints_mod: 1, protection_mod: 1, resurrection_mod: 25},
  {value: 13, hitpoints_mod: 1, protection_mod: 1, resurrection_mod: 25},
  {value: 14, hitpoints_mod: 2, protection_mod: 2, resurrection_mod: 50},
  {value: 15, hitpoints_mod: 2, protection_mod: 2, resurrection_mod: 50},
  {value: 16, hitpoints_mod: 3, protection_mod: 3, resurrection_mod: 75},
  {value: 17, hitpoints_mod: 3, protection_mod: 3, resurrection_mod: 75},
  {value: 18, hitpoints_mod: 4, protection_mod: 4, resurrection_mod: 95},
  {value: 19, hitpoints_mod: 4, protection_mod: 4, resurrection_mod: 95},
  {value: 20, hitpoints_mod: 5, protection_mod: 5, resurrection_mod: 100},
  {value: 21, hitpoints_mod: 5, protection_mod: 5, resurrection_mod: 100},
  {value: 22, hitpoints_mod: 6, protection_mod: 6, resurrection_mod: 100},
  {value: 23, hitpoints_mod: 6, protection_mod: 6, resurrection_mod: 100},
  {value: 24, hitpoints_mod: 7, protection_mod: 7, resurrection_mod: 100},
  {value: 25, hitpoints_mod: 7, protection_mod: 7, resurrection_mod: 100},
  {value: 26, hitpoints_mod: 8, protection_mod: 8, resurrection_mod: 100},
  {value: 27, hitpoints_mod: 8, protection_mod: 8, resurrection_mod: 100},
  {value: 28, hitpoints_mod: 9, protection_mod: 9, resurrection_mod: 100},
  {value: 29, hitpoints_mod: 9, protection_mod: 9, resurrection_mod: 100}
])
DexterityMod.create!([
  {value: 1, attack_mod: -5, surprise_mod: -5, armor_class_mod: -5, protection_mod: -5, find_traps_mod: -25, silent_movement_mod: -25, lockpick_mod: -25, stealth_mod: -25, pickpocket_mod: -25},
  {value: 2, attack_mod: -4, surprise_mod: -4, armor_class_mod: -4, protection_mod: -4, find_traps_mod: -20, silent_movement_mod: -20, lockpick_mod: -20, stealth_mod: -20, pickpocket_mod: -20},
  {value: 3, attack_mod: -4, surprise_mod: -4, armor_class_mod: -4, protection_mod: -4, find_traps_mod: -20, silent_movement_mod: -20, lockpick_mod: -20, stealth_mod: -20, pickpocket_mod: -20},
  {value: 4, attack_mod: -3, surprise_mod: -3, armor_class_mod: -3, protection_mod: -3, find_traps_mod: -15, silent_movement_mod: -15, lockpick_mod: -15, stealth_mod: -15, pickpocket_mod: -15},
  {value: 5, attack_mod: -3, surprise_mod: -3, armor_class_mod: -3, protection_mod: -3, find_traps_mod: -15, silent_movement_mod: -15, lockpick_mod: -15, stealth_mod: -15, pickpocket_mod: -15},
  {value: 6, attack_mod: -2, surprise_mod: -2, armor_class_mod: -2, protection_mod: -2, find_traps_mod: -10, silent_movement_mod: -10, lockpick_mod: -10, stealth_mod: -10, pickpocket_mod: -10},
  {value: 7, attack_mod: -2, surprise_mod: -2, armor_class_mod: -2, protection_mod: -2, find_traps_mod: -10, silent_movement_mod: -10, lockpick_mod: -10, stealth_mod: -10, pickpocket_mod: -10},
  {value: 8, attack_mod: -1, surprise_mod: -1, armor_class_mod: -1, protection_mod: -1, find_traps_mod: -5, silent_movement_mod: -5, lockpick_mod: -5, stealth_mod: -5, pickpocket_mod: -5},
  {value: 9, attack_mod: -1, surprise_mod: -1, armor_class_mod: -1, protection_mod: -1, find_traps_mod: -5, silent_movement_mod: -5, lockpick_mod: -5, stealth_mod: -5, pickpocket_mod: -5},
  {value: 10, attack_mod: 0, surprise_mod: 0, armor_class_mod: 0, protection_mod: 0, find_traps_mod: 0, silent_movement_mod: 0, lockpick_mod: 0, stealth_mod: 0, pickpocket_mod: 0},
  {value: 11, attack_mod: 0, surprise_mod: 0, armor_class_mod: 0, protection_mod: 0, find_traps_mod: 0, silent_movement_mod: 0, lockpick_mod: 0, stealth_mod: 0, pickpocket_mod: 0},
  {value: 12, attack_mod: 1, surprise_mod: 1, armor_class_mod: 1, protection_mod: 1, find_traps_mod: 0, silent_movement_mod: 5, lockpick_mod: 5, stealth_mod: 0, pickpocket_mod: 0},
  {value: 13, attack_mod: 1, surprise_mod: 1, armor_class_mod: 1, protection_mod: 1, find_traps_mod: 0, silent_movement_mod: 5, lockpick_mod: 5, stealth_mod: 0, pickpocket_mod: 0},
  {value: 14, attack_mod: 2, surprise_mod: 2, armor_class_mod: 2, protection_mod: 2, find_traps_mod: 0, silent_movement_mod: 10, lockpick_mod: 10, stealth_mod: 5, pickpocket_mod: 5},
  {value: 15, attack_mod: 2, surprise_mod: 2, armor_class_mod: 2, protection_mod: 2, find_traps_mod: 0, silent_movement_mod: 10, lockpick_mod: 10, stealth_mod: 5, pickpocket_mod: 5},
  {value: 16, attack_mod: 3, surprise_mod: 3, armor_class_mod: 3, protection_mod: 3, find_traps_mod: 5, silent_movement_mod: 15, lockpick_mod: 15, stealth_mod: 10, pickpocket_mod: 10},
  {value: 17, attack_mod: 3, surprise_mod: 3, armor_class_mod: 3, protection_mod: 3, find_traps_mod: 5, silent_movement_mod: 15, lockpick_mod: 15, stealth_mod: 10, pickpocket_mod: 10},
  {value: 18, attack_mod: 4, surprise_mod: 4, armor_class_mod: 4, protection_mod: 4, find_traps_mod: 10, silent_movement_mod: 20, lockpick_mod: 20, stealth_mod: 15, pickpocket_mod: 15},
  {value: 19, attack_mod: 4, surprise_mod: 4, armor_class_mod: 4, protection_mod: 4, find_traps_mod: 10, silent_movement_mod: 20, lockpick_mod: 20, stealth_mod: 15, pickpocket_mod: 15},
  {value: 20, attack_mod: 5, surprise_mod: 5, armor_class_mod: 5, protection_mod: 5, find_traps_mod: 15, silent_movement_mod: 25, lockpick_mod: 25, stealth_mod: 20, pickpocket_mod: 20},
  {value: 21, attack_mod: 5, surprise_mod: 5, armor_class_mod: 5, protection_mod: 5, find_traps_mod: 15, silent_movement_mod: 25, lockpick_mod: 25, stealth_mod: 20, pickpocket_mod: 20},
  {value: 22, attack_mod: 6, surprise_mod: 6, armor_class_mod: 6, protection_mod: 6, find_traps_mod: 20, silent_movement_mod: 30, lockpick_mod: 30, stealth_mod: 25, pickpocket_mod: 25},
  {value: 23, attack_mod: 6, surprise_mod: 6, armor_class_mod: 6, protection_mod: 6, find_traps_mod: 20, silent_movement_mod: 30, lockpick_mod: 30, stealth_mod: 25, pickpocket_mod: 25},
  {value: 24, attack_mod: 7, surprise_mod: 7, armor_class_mod: 7, protection_mod: 7, find_traps_mod: 25, silent_movement_mod: 35, lockpick_mod: 35, stealth_mod: 30, pickpocket_mod: 30},
  {value: 25, attack_mod: 7, surprise_mod: 7, armor_class_mod: 7, protection_mod: 7, find_traps_mod: 25, silent_movement_mod: 35, lockpick_mod: 35, stealth_mod: 30, pickpocket_mod: 30},
  {value: 26, attack_mod: 8, surprise_mod: 8, armor_class_mod: 8, protection_mod: 8, find_traps_mod: 30, silent_movement_mod: 40, lockpick_mod: 40, stealth_mod: 35, pickpocket_mod: 35},
  {value: 27, attack_mod: 8, surprise_mod: 8, armor_class_mod: 8, protection_mod: 8, find_traps_mod: 30, silent_movement_mod: 40, lockpick_mod: 40, stealth_mod: 35, pickpocket_mod: 35},
  {value: 28, attack_mod: 9, surprise_mod: 9, armor_class_mod: 9, protection_mod: 9, find_traps_mod: 35, silent_movement_mod: 45, lockpick_mod: 45, stealth_mod: 40, pickpocket_mod: 40},
  {value: 29, attack_mod: 9, surprise_mod: 9, armor_class_mod: 9, protection_mod: 9, find_traps_mod: 35, silent_movement_mod: 45, lockpick_mod: 45, stealth_mod: 40, pickpocket_mod: 40}
])
IntelligenceMod.create!([
  {value: 1, languages_mod: 0, learn_magic_mod: 0, magic_circle_1_mod: 0, magic_circle_2_mod: 0, magic_circle_3_mod: 0, magic_circle_4_mod: 0, magic_circle_5_mod: 0, magic_circle_6_mod: 0, magic_circle_7_mod: 0, magic_circle_8_mod: 0, magic_circle_9_mod: 0},
  {value: 2, languages_mod: 0, learn_magic_mod: 0, magic_circle_1_mod: 0, magic_circle_2_mod: 0, magic_circle_3_mod: 0, magic_circle_4_mod: 0, magic_circle_5_mod: 0, magic_circle_6_mod: 0, magic_circle_7_mod: 0, magic_circle_8_mod: 0, magic_circle_9_mod: 0},
  {value: 3, languages_mod: 0, learn_magic_mod: 0, magic_circle_1_mod: 0, magic_circle_2_mod: 0, magic_circle_3_mod: 0, magic_circle_4_mod: 0, magic_circle_5_mod: 0, magic_circle_6_mod: 0, magic_circle_7_mod: 0, magic_circle_8_mod: 0, magic_circle_9_mod: 0},
  {value: 4, languages_mod: 0, learn_magic_mod: 0, magic_circle_1_mod: 0, magic_circle_2_mod: 0, magic_circle_3_mod: 0, magic_circle_4_mod: 0, magic_circle_5_mod: 0, magic_circle_6_mod: 0, magic_circle_7_mod: 0, magic_circle_8_mod: 0, magic_circle_9_mod: 0},
  {value: 5, languages_mod: 0, learn_magic_mod: 0, magic_circle_1_mod: 0, magic_circle_2_mod: 0, magic_circle_3_mod: 0, magic_circle_4_mod: 0, magic_circle_5_mod: 0, magic_circle_6_mod: 0, magic_circle_7_mod: 0, magic_circle_8_mod: 0, magic_circle_9_mod: 0},
  {value: 6, languages_mod: 0, learn_magic_mod: 0, magic_circle_1_mod: 0, magic_circle_2_mod: 0, magic_circle_3_mod: 0, magic_circle_4_mod: 0, magic_circle_5_mod: 0, magic_circle_6_mod: 0, magic_circle_7_mod: 0, magic_circle_8_mod: 0, magic_circle_9_mod: 0},
  {value: 7, languages_mod: 0, learn_magic_mod: 0, magic_circle_1_mod: 0, magic_circle_2_mod: 0, magic_circle_3_mod: 0, magic_circle_4_mod: 0, magic_circle_5_mod: 0, magic_circle_6_mod: 0, magic_circle_7_mod: 0, magic_circle_8_mod: 0, magic_circle_9_mod: 0},
  {value: 8, languages_mod: 0, learn_magic_mod: 0, magic_circle_1_mod: 0, magic_circle_2_mod: 0, magic_circle_3_mod: 0, magic_circle_4_mod: 0, magic_circle_5_mod: 0, magic_circle_6_mod: 0, magic_circle_7_mod: 0, magic_circle_8_mod: 0, magic_circle_9_mod: 0},
  {value: 9, languages_mod: 0, learn_magic_mod: 0, magic_circle_1_mod: 0, magic_circle_2_mod: 0, magic_circle_3_mod: 0, magic_circle_4_mod: 0, magic_circle_5_mod: 0, magic_circle_6_mod: 0, magic_circle_7_mod: 0, magic_circle_8_mod: 0, magic_circle_9_mod: 0},
  {value: 10, languages_mod: 0, learn_magic_mod: 0, magic_circle_1_mod: 0, magic_circle_2_mod: 0, magic_circle_3_mod: 0, magic_circle_4_mod: 0, magic_circle_5_mod: 0, magic_circle_6_mod: 0, magic_circle_7_mod: 0, magic_circle_8_mod: 0, magic_circle_9_mod: 0},
  {value: 11, languages_mod: 0, learn_magic_mod: 0, magic_circle_1_mod: 0, magic_circle_2_mod: 0, magic_circle_3_mod: 0, magic_circle_4_mod: 0, magic_circle_5_mod: 0, magic_circle_6_mod: 0, magic_circle_7_mod: 0, magic_circle_8_mod: 0, magic_circle_9_mod: 0},
  {value: 12, languages_mod: 0, learn_magic_mod: 0, magic_circle_1_mod: 0, magic_circle_2_mod: 0, magic_circle_3_mod: 0, magic_circle_4_mod: 0, magic_circle_5_mod: 0, magic_circle_6_mod: 0, magic_circle_7_mod: 0, magic_circle_8_mod: 0, magic_circle_9_mod: 0},
  {value: 13, languages_mod: 0, learn_magic_mod: 0, magic_circle_1_mod: 0, magic_circle_2_mod: 0, magic_circle_3_mod: 0, magic_circle_4_mod: 0, magic_circle_5_mod: 0, magic_circle_6_mod: 0, magic_circle_7_mod: 0, magic_circle_8_mod: 0, magic_circle_9_mod: 0},
  {value: 14, languages_mod: 1, learn_magic_mod: 25, magic_circle_1_mod: 0, magic_circle_2_mod: 0, magic_circle_3_mod: 0, magic_circle_4_mod: 0, magic_circle_5_mod: 0, magic_circle_6_mod: 0, magic_circle_7_mod: 0, magic_circle_8_mod: 0, magic_circle_9_mod: 0},
  {value: 15, languages_mod: 1, learn_magic_mod: 25, magic_circle_1_mod: 0, magic_circle_2_mod: 0, magic_circle_3_mod: 0, magic_circle_4_mod: 0, magic_circle_5_mod: 0, magic_circle_6_mod: 0, magic_circle_7_mod: 0, magic_circle_8_mod: 0, magic_circle_9_mod: 0},
  {value: 16, languages_mod: 2, learn_magic_mod: 35, magic_circle_1_mod: 1, magic_circle_2_mod: 0, magic_circle_3_mod: 0, magic_circle_4_mod: 0, magic_circle_5_mod: 0, magic_circle_6_mod: 0, magic_circle_7_mod: 0, magic_circle_8_mod: 0, magic_circle_9_mod: 0},
  {value: 17, languages_mod: 2, learn_magic_mod: 35, magic_circle_1_mod: 1, magic_circle_2_mod: 0, magic_circle_3_mod: 0, magic_circle_4_mod: 0, magic_circle_5_mod: 0, magic_circle_6_mod: 0, magic_circle_7_mod: 0, magic_circle_8_mod: 0, magic_circle_9_mod: 0},
  {value: 18, languages_mod: 3, learn_magic_mod: 45, magic_circle_1_mod: 2, magic_circle_2_mod: 0, magic_circle_3_mod: 0, magic_circle_4_mod: 0, magic_circle_5_mod: 0, magic_circle_6_mod: 0, magic_circle_7_mod: 0, magic_circle_8_mod: 0, magic_circle_9_mod: 0},
  {value: 19, languages_mod: 3, learn_magic_mod: 45, magic_circle_1_mod: 2, magic_circle_2_mod: 0, magic_circle_3_mod: 0, magic_circle_4_mod: 0, magic_circle_5_mod: 0, magic_circle_6_mod: 0, magic_circle_7_mod: 0, magic_circle_8_mod: 0, magic_circle_9_mod: 0},
  {value: 20, languages_mod: 4, learn_magic_mod: 55, magic_circle_1_mod: 2, magic_circle_2_mod: 1, magic_circle_3_mod: 0, magic_circle_4_mod: 0, magic_circle_5_mod: 0, magic_circle_6_mod: 0, magic_circle_7_mod: 0, magic_circle_8_mod: 0, magic_circle_9_mod: 0},
  {value: 21, languages_mod: 4, learn_magic_mod: 55, magic_circle_1_mod: 2, magic_circle_2_mod: 1, magic_circle_3_mod: 0, magic_circle_4_mod: 0, magic_circle_5_mod: 0, magic_circle_6_mod: 0, magic_circle_7_mod: 0, magic_circle_8_mod: 0, magic_circle_9_mod: 0},
  {value: 22, languages_mod: 5, learn_magic_mod: 65, magic_circle_1_mod: 2, magic_circle_2_mod: 2, magic_circle_3_mod: 0, magic_circle_4_mod: 0, magic_circle_5_mod: 0, magic_circle_6_mod: 0, magic_circle_7_mod: 0, magic_circle_8_mod: 0, magic_circle_9_mod: 0},
  {value: 23, languages_mod: 5, learn_magic_mod: 65, magic_circle_1_mod: 2, magic_circle_2_mod: 2, magic_circle_3_mod: 0, magic_circle_4_mod: 0, magic_circle_5_mod: 0, magic_circle_6_mod: 0, magic_circle_7_mod: 0, magic_circle_8_mod: 0, magic_circle_9_mod: 0},
  {value: 24, languages_mod: 6, learn_magic_mod: 75, magic_circle_1_mod: 2, magic_circle_2_mod: 2, magic_circle_3_mod: 1, magic_circle_4_mod: 0, magic_circle_5_mod: 0, magic_circle_6_mod: 0, magic_circle_7_mod: 0, magic_circle_8_mod: 0, magic_circle_9_mod: 0},
  {value: 25, languages_mod: 6, learn_magic_mod: 75, magic_circle_1_mod: 2, magic_circle_2_mod: 2, magic_circle_3_mod: 1, magic_circle_4_mod: 0, magic_circle_5_mod: 0, magic_circle_6_mod: 0, magic_circle_7_mod: 0, magic_circle_8_mod: 0, magic_circle_9_mod: 0},
  {value: 26, languages_mod: 7, learn_magic_mod: 85, magic_circle_1_mod: 3, magic_circle_2_mod: 2, magic_circle_3_mod: 1, magic_circle_4_mod: 0, magic_circle_5_mod: 0, magic_circle_6_mod: 0, magic_circle_7_mod: 0, magic_circle_8_mod: 0, magic_circle_9_mod: 0},
  {value: 27, languages_mod: 7, learn_magic_mod: 85, magic_circle_1_mod: 3, magic_circle_2_mod: 2, magic_circle_3_mod: 1, magic_circle_4_mod: 0, magic_circle_5_mod: 0, magic_circle_6_mod: 0, magic_circle_7_mod: 0, magic_circle_8_mod: 0, magic_circle_9_mod: 0},
  {value: 28, languages_mod: 8, learn_magic_mod: 95, magic_circle_1_mod: 3, magic_circle_2_mod: 3, magic_circle_3_mod: 1, magic_circle_4_mod: 0, magic_circle_5_mod: 0, magic_circle_6_mod: 0, magic_circle_7_mod: 0, magic_circle_8_mod: 0, magic_circle_9_mod: 0},
  {value: 29, languages_mod: 8, learn_magic_mod: 95, magic_circle_1_mod: 3, magic_circle_2_mod: 3, magic_circle_3_mod: 1, magic_circle_4_mod: 0, magic_circle_5_mod: 0, magic_circle_6_mod: 0, magic_circle_7_mod: 0, magic_circle_8_mod: 0, magic_circle_9_mod: 0}
])
StrengthMod.create!([
  {value: 1, attack_mod: -5, damage_mod: -5},
  {value: 2, attack_mod: -4, damage_mod: -4},
  {value: 3, attack_mod: -4, damage_mod: -4},
  {value: 4, attack_mod: -3, damage_mod: -3},
  {value: 5, attack_mod: -3, damage_mod: -3},
  {value: 6, attack_mod: -2, damage_mod: -2},
  {value: 7, attack_mod: -2, damage_mod: -2},
  {value: 8, attack_mod: -1, damage_mod: -1},
  {value: 9, attack_mod: -1, damage_mod: -1},
  {value: 10, attack_mod: 0, damage_mod: 0},
  {value: 11, attack_mod: 0, damage_mod: 0},
  {value: 12, attack_mod: 1, damage_mod: 1},
  {value: 13, attack_mod: 1, damage_mod: 1},
  {value: 14, attack_mod: 2, damage_mod: 2},
  {value: 15, attack_mod: 2, damage_mod: 2},
  {value: 16, attack_mod: 3, damage_mod: 3},
  {value: 17, attack_mod: 3, damage_mod: 3},
  {value: 18, attack_mod: 4, damage_mod: 4},
  {value: 19, attack_mod: 4, damage_mod: 4},
  {value: 20, attack_mod: 5, damage_mod: 5},
  {value: 21, attack_mod: 5, damage_mod: 5},
  {value: 22, attack_mod: 6, damage_mod: 6},
  {value: 23, attack_mod: 6, damage_mod: 6},
  {value: 24, attack_mod: 7, damage_mod: 7},
  {value: 25, attack_mod: 7, damage_mod: 7},
  {value: 26, attack_mod: 8, damage_mod: 8},
  {value: 27, attack_mod: 8, damage_mod: 8},
  {value: 28, attack_mod: 9, damage_mod: 9},
  {value: 29, attack_mod: 9, damage_mod: 9}
])
ThiefTalent.create!([
  {level: 1, lockpick: 15, find_traps: 20, climb: 80, silent_movement: 20, stealth: 10, pickpocket: 20, hear_noises: "1-2", backstab: "x2"},
  {level: 2, lockpick: 20, find_traps: 25, climb: 81, silent_movement: 25, stealth: 15, pickpocket: 25, hear_noises: "1-2", backstab: "x2"},
  {level: 3, lockpick: 25, find_traps: 30, climb: 82, silent_movement: 30, stealth: 20, pickpocket: 30, hear_noises: "1-2", backstab: "x2"},
  {level: 4, lockpick: 30, find_traps: 35, climb: 83, silent_movement: 35, stealth: 25, pickpocket: 35, hear_noises: "1-2", backstab: "x2"},
  {level: 5, lockpick: 35, find_traps: 40, climb: 84, silent_movement: 40, stealth: 30, pickpocket: 40, hear_noises: "1-3", backstab: "x2"},
  {level: 6, lockpick: 40, find_traps: 45, climb: 85, silent_movement: 45, stealth: 35, pickpocket: 45, hear_noises: "1-3", backstab: "x3"},
  {level: 7, lockpick: 45, find_traps: 50, climb: 86, silent_movement: 50, stealth: 40, pickpocket: 50, hear_noises: "1-3", backstab: "x3"},
  {level: 8, lockpick: 50, find_traps: 55, climb: 87, silent_movement: 55, stealth: 45, pickpocket: 55, hear_noises: "1-3", backstab: "x3"},
  {level: 9, lockpick: 55, find_traps: 60, climb: 88, silent_movement: 60, stealth: 50, pickpocket: 60, hear_noises: "1-3", backstab: "x3"},
  {level: 10, lockpick: 60, find_traps: 62, climb: 89, silent_movement: 65, stealth: 55, pickpocket: 65, hear_noises: "1-4", backstab: "x3"},
  {level: 11, lockpick: 62, find_traps: 64, climb: 90, silent_movement: 70, stealth: 60, pickpocket: 70, hear_noises: "1-4", backstab: "x3"},
  {level: 12, lockpick: 64, find_traps: 66, climb: 91, silent_movement: 72, stealth: 62, pickpocket: 72, hear_noises: "1-4", backstab: "x4"},
  {level: 13, lockpick: 66, find_traps: 68, climb: 92, silent_movement: 74, stealth: 64, pickpocket: 74, hear_noises: "1-4", backstab: "x4"},
  {level: 14, lockpick: 68, find_traps: 70, climb: 93, silent_movement: 76, stealth: 66, pickpocket: 76, hear_noises: "1-4", backstab: "x4"},
  {level: 15, lockpick: 70, find_traps: 72, climb: 94, silent_movement: 78, stealth: 68, pickpocket: 78, hear_noises: "1-4", backstab: "x4"},
  {level: 16, lockpick: 72, find_traps: 74, climb: 95, silent_movement: 80, stealth: 70, pickpocket: 80, hear_noises: "1-5", backstab: "x4"},
  {level: 17, lockpick: 74, find_traps: 76, climb: 96, silent_movement: 82, stealth: 72, pickpocket: 82, hear_noises: "1-5", backstab: "x4"},
  {level: 18, lockpick: 76, find_traps: 78, climb: 97, silent_movement: 84, stealth: 74, pickpocket: 84, hear_noises: "1-5", backstab: "x5"},
  {level: 19, lockpick: 78, find_traps: 80, climb: 98, silent_movement: 86, stealth: 76, pickpocket: 86, hear_noises: "1-5", backstab: "x5"},
  {level: 20, lockpick: 80, find_traps: 82, climb: 99, silent_movement: 88, stealth: 78, pickpocket: 88, hear_noises: "1-5", backstab: "x5"}
])
UndeadBane.create!([
  {level: 1, skelleton_mod: "13", zombie_mod: "17", ghoul_mod: "19", inhuman_mod: "N", aparition_mod: "N", mummy_mod: "N", specter_mod: "N", vampire_mod: "N"},
  {level: 2, skelleton_mod: "11", zombie_mod: "15", ghoul_mod: "18", inhuman_mod: "20", aparition_mod: "N", mummy_mod: "N", specter_mod: "N", vampire_mod: "N"},
  {level: 3, skelleton_mod: "9", zombie_mod: "13", ghoul_mod: "17", inhuman_mod: "19", aparition_mod: "N", mummy_mod: "N", specter_mod: "N", vampire_mod: "N"},
  {level: 4, skelleton_mod: "7", zombie_mod: "11", ghoul_mod: "15", inhuman_mod: "18", aparition_mod: "20", mummy_mod: "N", specter_mod: "N", vampire_mod: "N"},
  {level: 5, skelleton_mod: "5", zombie_mod: "9", ghoul_mod: "13", inhuman_mod: "17", aparition_mod: "19", mummy_mod: "N", specter_mod: "N", vampire_mod: "N"},
  {level: 6, skelleton_mod: "3", zombie_mod: "7", ghoul_mod: "11", inhuman_mod: "15", aparition_mod: "18", mummy_mod: "20", specter_mod: "N", vampire_mod: "N"},
  {level: 7, skelleton_mod: "A", zombie_mod: "5", ghoul_mod: "9", inhuman_mod: "13", aparition_mod: "17", mummy_mod: "19", specter_mod: "N", vampire_mod: "N"},
  {level: 8, skelleton_mod: "A", zombie_mod: "3", ghoul_mod: "7", inhuman_mod: "11", aparition_mod: "15", mummy_mod: "18", specter_mod: "20", vampire_mod: "N"},
  {level: 9, skelleton_mod: "A", zombie_mod: "2", ghoul_mod: "5", inhuman_mod: "9", aparition_mod: "13", mummy_mod: "17", specter_mod: "19", vampire_mod: "N"},
  {level: 10, skelleton_mod: "D", zombie_mod: "A", ghoul_mod: "3", inhuman_mod: "7", aparition_mod: "11", mummy_mod: "15", specter_mod: "18", vampire_mod: "20"},
  {level: 11, skelleton_mod: "D", zombie_mod: "A", ghoul_mod: "2", inhuman_mod: "5", aparition_mod: "9", mummy_mod: "13", specter_mod: "17", vampire_mod: "19"},
  {level: 12, skelleton_mod: "D", zombie_mod: "A", ghoul_mod: "A", inhuman_mod: "3", aparition_mod: "7", mummy_mod: "11", specter_mod: "15", vampire_mod: "18"},
  {level: 13, skelleton_mod: "D", zombie_mod: "D", ghoul_mod: "A", inhuman_mod: "2", aparition_mod: "5", mummy_mod: "9", specter_mod: "13", vampire_mod: "17"},
  {level: 14, skelleton_mod: "D", zombie_mod: "D", ghoul_mod: "A", inhuman_mod: "A", aparition_mod: "3", mummy_mod: "7", specter_mod: "11", vampire_mod: "15"},
  {level: 15, skelleton_mod: "D", zombie_mod: "D", ghoul_mod: "D", inhuman_mod: "A", aparition_mod: "2", mummy_mod: "5", specter_mod: "9", vampire_mod: "13"},
  {level: 16, skelleton_mod: "D", zombie_mod: "D", ghoul_mod: "D", inhuman_mod: "A", aparition_mod: "A", mummy_mod: "3", specter_mod: "7", vampire_mod: "11"},
  {level: 17, skelleton_mod: "D", zombie_mod: "D", ghoul_mod: "D", inhuman_mod: "D", aparition_mod: "A", mummy_mod: "2", specter_mod: "5", vampire_mod: "9"},
  {level: 18, skelleton_mod: "D", zombie_mod: "D", ghoul_mod: "D", inhuman_mod: "D", aparition_mod: "A", mummy_mod: "A", specter_mod: "3", vampire_mod: "7"},
  {level: 19, skelleton_mod: "D", zombie_mod: "D", ghoul_mod: "D", inhuman_mod: "D", aparition_mod: "D", mummy_mod: "A", specter_mod: "2", vampire_mod: "5"},
  {level: 20, skelleton_mod: "D", zombie_mod: "D", ghoul_mod: "D", inhuman_mod: "D", aparition_mod: "D", mummy_mod: "A", specter_mod: "A", vampire_mod: "3"}
])
WisdomMod.create!([
  {value: 1, protection_mod: -5, magic_cicle_1_mod: 0, magic_cicle_2_mod: 0, magic_cicle_3_mod: 0},
  {value: 2, protection_mod: -4, magic_cicle_1_mod: 0, magic_cicle_2_mod: 0, magic_cicle_3_mod: 0},
  {value: 3, protection_mod: -4, magic_cicle_1_mod: 0, magic_cicle_2_mod: 0, magic_cicle_3_mod: 0},
  {value: 4, protection_mod: -3, magic_cicle_1_mod: 0, magic_cicle_2_mod: 0, magic_cicle_3_mod: 0},
  {value: 5, protection_mod: -3, magic_cicle_1_mod: 0, magic_cicle_2_mod: 0, magic_cicle_3_mod: 0},
  {value: 6, protection_mod: -2, magic_cicle_1_mod: 0, magic_cicle_2_mod: 0, magic_cicle_3_mod: 0},
  {value: 7, protection_mod: -2, magic_cicle_1_mod: 0, magic_cicle_2_mod: 0, magic_cicle_3_mod: 0},
  {value: 8, protection_mod: -1, magic_cicle_1_mod: 0, magic_cicle_2_mod: 0, magic_cicle_3_mod: 0},
  {value: 9, protection_mod: -1, magic_cicle_1_mod: 0, magic_cicle_2_mod: 0, magic_cicle_3_mod: 0},
  {value: 10, protection_mod: 0, magic_cicle_1_mod: 0, magic_cicle_2_mod: 0, magic_cicle_3_mod: 0},
  {value: 11, protection_mod: 0, magic_cicle_1_mod: 0, magic_cicle_2_mod: 0, magic_cicle_3_mod: 0},
  {value: 12, protection_mod: 1, magic_cicle_1_mod: 0, magic_cicle_2_mod: 0, magic_cicle_3_mod: 0},
  {value: 13, protection_mod: 1, magic_cicle_1_mod: 0, magic_cicle_2_mod: 0, magic_cicle_3_mod: 0},
  {value: 14, protection_mod: 2, magic_cicle_1_mod: 0, magic_cicle_2_mod: 0, magic_cicle_3_mod: 0},
  {value: 15, protection_mod: 2, magic_cicle_1_mod: 0, magic_cicle_2_mod: 0, magic_cicle_3_mod: 0},
  {value: 16, protection_mod: 3, magic_cicle_1_mod: 1, magic_cicle_2_mod: 0, magic_cicle_3_mod: 0},
  {value: 17, protection_mod: 3, magic_cicle_1_mod: 1, magic_cicle_2_mod: 0, magic_cicle_3_mod: 0},
  {value: 18, protection_mod: 4, magic_cicle_1_mod: 2, magic_cicle_2_mod: 0, magic_cicle_3_mod: 0},
  {value: 19, protection_mod: 4, magic_cicle_1_mod: 2, magic_cicle_2_mod: 0, magic_cicle_3_mod: 0},
  {value: 20, protection_mod: 5, magic_cicle_1_mod: 2, magic_cicle_2_mod: 1, magic_cicle_3_mod: 0},
  {value: 21, protection_mod: 5, magic_cicle_1_mod: 2, magic_cicle_2_mod: 1, magic_cicle_3_mod: 0},
  {value: 22, protection_mod: 6, magic_cicle_1_mod: 2, magic_cicle_2_mod: 2, magic_cicle_3_mod: 0},
  {value: 23, protection_mod: 6, magic_cicle_1_mod: 2, magic_cicle_2_mod: 2, magic_cicle_3_mod: 0},
  {value: 24, protection_mod: 7, magic_cicle_1_mod: 2, magic_cicle_2_mod: 2, magic_cicle_3_mod: 1},
  {value: 25, protection_mod: 7, magic_cicle_1_mod: 2, magic_cicle_2_mod: 2, magic_cicle_3_mod: 1},
  {value: 26, protection_mod: 8, magic_cicle_1_mod: 3, magic_cicle_2_mod: 2, magic_cicle_3_mod: 2},
  {value: 27, protection_mod: 8, magic_cicle_1_mod: 3, magic_cicle_2_mod: 2, magic_cicle_3_mod: 2},
  {value: 28, protection_mod: 9, magic_cicle_1_mod: 3, magic_cicle_2_mod: 3, magic_cicle_3_mod: 2},
  {value: 29, protection_mod: 9, magic_cicle_1_mod: 3, magic_cicle_2_mod: 3, magic_cicle_3_mod: 2}
])
