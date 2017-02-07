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
  {name: "Admin", admin: true},
  {name: "Common", admin: false}
])

User.create!([
  {
    name: "Administrador",
    login: "admin",
    password: "123456",
    password_confirmation: "123456",
    last_login: nil,
    email: "themohawkeagle@gmail.com",
    role_id: 1
  },
  {
    name: "Tester",
    login: "tester",
    password: "tester",
    password_confirmation: "tester",
    last_login: nil,
    email: "test@test.com",
    role_id: 2
  }
])

Skill.create!([
  {name: "Visão na Penumbra", description: "Visão na Penumbra em até 15 metros", effect_id: nil, skill_type_id: 1, user_id: 1}
])

Perk.create!([
  {
    name: "Couraça",
    description: "Ataques de perfuração recebidos causam apenas metade do dano",
    perk_type_id: 1,
    user_id: 1
  },
  {
    name: "Corpo Ósseo",
    description: "Ataques de corte e perfuração recebidos causam apenas metade do dano",
    perk_type_id: 1,
    user_id: 1
  }
])

CharacterRace.create!([
  {
    name: "Anões",
    min_height: 1,
    max_height: 2,
    min_weight: 50,
    max_weight: 70,
    maturity: 70,
    max_age: 350,
    movement_base: 9,
    armor_class_mod: 0,
    can_choose_mod: false,
    str_mod: 0,
    dex_mod: 0,
    cons_mod: 2,
    int_mod: 0,
    wis_mod: 0,
    char_mod: -2,
    alignment_id: 1,
    dice_id: nil,
    user_id: 1
  },
  {
    name: "Elfos",
    min_height: 2,
    max_height: 2,
    min_weight: 40,
    max_weight: 50,
    maturity: 150,
    max_age: 700,
    movement_base: 9,
    armor_class_mod: 0,
    can_choose_mod: false,
    str_mod: 0,
    dex_mod: 2,
    cons_mod: -2,
    int_mod: 0,
    wis_mod: 0,
    char_mod: 0,
    alignment_id: 2,
    dice_id: 3,
    user_id: 1
  },
  {
    name: "Humanos",
    min_height: 2,
    max_height: 2,
    min_weight: 55,
    max_weight: 90,
    maturity: 15,
    max_age: 70,
    movement_base: 9,
    armor_class_mod: 0,
    can_choose_mod: true,
    str_mod: 0,
    dex_mod: 0,
    cons_mod: 0,
    int_mod: 0,
    wis_mod: 0,
    char_mod: 0,
    alignment_id: 2,
    dice_id: nil,
    user_id: 1
  },
  {
    name: "Halflings",
    min_height: 1,
    max_height: 1,
    min_weight: 20,
    max_weight: 35,
    maturity: 30,
    max_age: 70,
    movement_base: 9,
    armor_class_mod: 2,
    can_choose_mod: false,
    str_mod: 0,
    dex_mod: 2,
    cons_mod: 0,
    int_mod: 0,
    wis_mod: 0,
    char_mod: 0,
    alignment_id: 3,
    dice_id: nil,
    user_id: 1
  }
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
    can_bane_undead: false,
    has_thief_talents: true
  }
])

CharacterClass.create!([
  {
    name: "Clérigo",
    description: "O clérigo é visto como o líder espiritual de um grupo de aventureiros. Dedicado a servir a uma criatura sobrenatural, muitas vezes considerada como um deus, o clérigo toma os dogmas desse deus como um guia para as decisões que há de tomar. O clérigo não é um mero seguidor de uma entidade, ele é um devoto, representante dessa entidade no mundo, devendo obedecer e pregar as diretrizes que a sua fé lhe impõe. É através dessa devoção que o seu deus lhe confere suas magias, tão importantes para seguir pregando a sua palavra.",
    dice_id: 3,
    perk_id: nil,
    character_class_type_id: 3,
    user_id: 1,
    character_class_evolutions_attributes: [
      {level: 1, exp: 0, life_amount: 1, plus_life: false, attack_base: 0, attack_base2: 0, protection_mod: 15},
      {level: 2, exp: 1500, life_amount: 2, plus_life: false, attack_base: 1, attack_base2: 0, protection_mod: 15},
      {level: 3, exp: 3000, life_amount: 3, plus_life: false, attack_base: 2, attack_base2: 0, protection_mod: 15},
      {level: 4, exp: 6000, life_amount: 4, plus_life: false, attack_base: 2, attack_base2: 0, protection_mod: 14},
      {level: 5, exp: 12000, life_amount: 5, plus_life: false, attack_base: 3, attack_base2: 0, protection_mod: 14},
      {level: 6, exp: 24000, life_amount: 6, plus_life: false, attack_base: 3, attack_base2: 0, protection_mod: 14},
      {level: 7, exp: 48000, life_amount: 7, plus_life: false, attack_base: 3, attack_base2: 0, protection_mod: 13},
      {level: 8, exp: 100000, life_amount: 8, plus_life: false, attack_base: 4, attack_base2: 0, protection_mod: 13},
      {level: 9, exp: 200000, life_amount: 9, plus_life: false, attack_base: 4, attack_base2: 0, protection_mod: 13},
      {level: 10, exp: 300000, life_amount: 1, plus_life: true, attack_base: 4, attack_base2: 0, protection_mod: 12},
      {level: 11, exp: 400000, life_amount: 1, plus_life: true, attack_base: 5, attack_base2: 0, protection_mod: 12},
      {level: 12, exp: 500000, life_amount: 2, plus_life: true, attack_base: 5, attack_base2: 0, protection_mod: 12},
      {level: 13, exp: 600000, life_amount: 2, plus_life: true, attack_base: 5, attack_base2: 0, protection_mod: 11},
      {level: 14, exp: 700000, life_amount: 3, plus_life: true, attack_base: 6, attack_base2: 0, protection_mod: 11},
      {level: 15, exp: 800000, life_amount: 3, plus_life: true, attack_base: 6, attack_base2: 0, protection_mod: 11},
      {level: 16, exp: 900000, life_amount: 4, plus_life: true, attack_base: 6, attack_base2: 0, protection_mod: 10},
      {level: 17, exp: 1000000, life_amount: 4, plus_life: true, attack_base: 7, attack_base2: 0, protection_mod: 10},
      {level: 18, exp: 1100000, life_amount: 5, plus_life: true, attack_base: 7, attack_base2: 0, protection_mod: 10},
      {level: 19, exp: 1200000, life_amount: 5, plus_life: true, attack_base: 7, attack_base2: 0, protection_mod: 9},
      {level: 20, exp: 1300000, life_amount: 6, plus_life: true, attack_base: 8, attack_base2: 0, protection_mod: 9}
    ],
    character_class_requirement_attributes: {
      str_mod: 0,
      dex_mod: 0,
      cons_mod: 0,
      int_mod: 0,
      wis_mod: 12,
      char_mod: 0
    }
  },
  {
    name: "Homem de Armas",
    description: "O homem de armas é o especialista em combate. Seu principal atributo é a Força, que permite causar um considerável dano em seus inimigos.Devido à sua capacidade de resistir aos ferimentos, geralmente o homem de armas se coloca em meio aos inimigos para atrair a sua atenção e, dessa forma, proteger seus companheiros mais fracos e feridos.",
    dice_id: 4,
    perk_id: nil,
    character_class_type_id: 2,
    user_id: 1,
    character_class_evolutions_attributes: [
      {level: 1, exp: 0, life_amount: 1, plus_life: false, attack_base: 1, attack_base2: 0, protection_mod: 16},
      {level: 2, exp: 2000, life_amount: 2, plus_life: false, attack_base: 2, attack_base2: 0, protection_mod: 16},
      {level: 3, exp: 4000, life_amount: 3, plus_life: false, attack_base: 3, attack_base2: 0, protection_mod: 16},
      {level: 4, exp: 8000, life_amount: 4, plus_life: false, attack_base: 4, attack_base2: 0, protection_mod: 15},
      {level: 5, exp: 16000, life_amount: 5, plus_life: false, attack_base: 5, attack_base2: 0, protection_mod: 15},
      {level: 6, exp: 32000, life_amount: 6, plus_life: false, attack_base: 6, attack_base2: 0, protection_mod: 15},
      {level: 7, exp: 64000, life_amount: 7, plus_life: false, attack_base: 7, attack_base2: 1, protection_mod: 14},
      {level: 8, exp: 128000, life_amount: 8, plus_life: false, attack_base: 8, attack_base2: 2, protection_mod: 14},
      {level: 9, exp: 256000, life_amount: 9, plus_life: false, attack_base: 9, attack_base2: 3, protection_mod: 14},
      {level: 10, exp: 304000, life_amount: 2, plus_life: true, attack_base: 10, attack_base2: 4, protection_mod: 13},
      {level: 11, exp: 408000, life_amount: 2, plus_life: true, attack_base: 10, attack_base2: 4, protection_mod: 13},
      {level: 12, exp: 516000, life_amount: 4, plus_life: true, attack_base: 11, attack_base2: 5, protection_mod: 13},
      {level: 13, exp: 632000, life_amount: 4, plus_life: true, attack_base: 11, attack_base2: 5, protection_mod: 12},
      {level: 14, exp: 704000, life_amount: 5, plus_life: true, attack_base: 12, attack_base2: 6, protection_mod: 12},
      {level: 15, exp: 808000, life_amount: 5, plus_life: true, attack_base: 12, attack_base2: 6, protection_mod: 12},
      {level: 16, exp: 916000, life_amount: 6, plus_life: true, attack_base: 13, attack_base2: 7, protection_mod: 11},
      {level: 17, exp: 1032000, life_amount: 6, plus_life: true, attack_base: 13, attack_base2: 7, protection_mod: 11},
      {level: 18, exp: 1064000, life_amount: 7, plus_life: true, attack_base: 14, attack_base2: 8, protection_mod: 11},
      {level: 19, exp: 1128000, life_amount: 7, plus_life: true, attack_base: 14, attack_base2: 8, protection_mod: 10},
      {level: 20, exp: 1256000, life_amount: 8, plus_life: true, attack_base: 15, attack_base2: 9, protection_mod: 10}
    ],
    character_class_requirement_attributes: {
      str_mod: 12,
      dex_mod: 0,
      cons_mod: 12,
      int_mod: 0,
      wis_mod: 0,
      char_mod: 0
    }
  },
  {
    name: "Ladino",
    description: "O ladrão é um personagem que se especializa em arrombar fechaduras, desarmar armadilhas e outras atividades furtivas, além de roubar,pungar e outras formas ilícitas de enriquecimento. Um bom ladrão é membro de uma guilda, pois, com seus contatos, consegue descobrir informações secretas, como por exemplo, qual dos guardas da vigília aceita peças de ouro para fingir que não viu um determinado half ling pulando a janela da casa de alguém no meio da noite.",
    dice_id: 2,
    perk_id: nil,
    character_class_type_id: 4,
    user_id: 1,
    character_class_evolutions_attributes: [
      {level: 1, exp: 0, life_amount: 1, plus_life: false, attack_base: 1, attack_base2: 0, protection_mod: 15},
      {level: 2, exp: 1250, life_amount: 2, plus_life: false, attack_base: 1, attack_base2: 0, protection_mod: 15},
      {level: 3, exp: 2500, life_amount: 3, plus_life: false, attack_base: 2, attack_base2: 0, protection_mod: 15},
      {level: 4, exp: 5000, life_amount: 4, plus_life: false, attack_base: 2, attack_base2: 0, protection_mod: 14},
      {level: 5, exp: 10000, life_amount: 5, plus_life: false, attack_base: 2, attack_base2: 0, protection_mod: 14},
      {level: 6, exp: 20000, life_amount: 6, plus_life: false, attack_base: 3, attack_base2: 0, protection_mod: 14},
      {level: 7, exp: 40000, life_amount: 7, plus_life: false, attack_base: 3, attack_base2: 0, protection_mod: 13},
      {level: 8, exp: 80000, life_amount: 8, plus_life: false, attack_base: 3, attack_base2: 0, protection_mod: 13},
      {level: 9, exp: 160000, life_amount: 9, plus_life: false, attack_base: 4, attack_base2: 0, protection_mod: 13},
      {level: 10, exp: 240000, life_amount: 1, plus_life: true, attack_base: 4, attack_base2: 0, protection_mod: 12},
      {level: 11, exp: 400000, life_amount: 1, plus_life: true, attack_base: 4, attack_base2: 0, protection_mod: 12},
      {level: 12, exp: 520000, life_amount: 2, plus_life: true, attack_base: 5, attack_base2: 0, protection_mod: 12},
      {level: 13, exp: 640000, life_amount: 2, plus_life: true, attack_base: 5, attack_base2: 0, protection_mod: 11},
      {level: 14, exp: 760000, life_amount: 2, plus_life: true, attack_base: 5, attack_base2: 0, protection_mod: 11},
      {level: 15, exp: 880000, life_amount: 3, plus_life: true, attack_base: 6, attack_base2: 0, protection_mod: 11},
      {level: 16, exp: 1000000, life_amount: 3, plus_life: true, attack_base: 6, attack_base2: 0, protection_mod: 10},
      {level: 17, exp: 1120000, life_amount: 3, plus_life: true, attack_base: 6, attack_base2: 0, protection_mod: 10},
      {level: 18, exp: 1240000, life_amount: 4, plus_life: true, attack_base: 7, attack_base2: 0, protection_mod: 10},
      {level: 19, exp: 1360000, life_amount: 4, plus_life: true, attack_base: 7, attack_base2: 0, protection_mod: 9},
      {level: 20, exp: 1480000, life_amount: 4, plus_life: true, attack_base: 7, attack_base2: 0, protection_mod: 9}
    ],
    character_class_requirement_attributes: {
      str_mod: 0,
      dex_mod: 14,
      cons_mod: 0,
      int_mod: 0,
      wis_mod: 0,
      char_mod: 0
    }
  },
  {
    name: "Mago",
    description: "O mago é um pesquisador de magias arcanas, que as escreve em seus grimórios ou em pergaminhos, sendo que os mais experientes conseguem criar itens mágicos extraordinários. Por dedicar seu tempo a estudos e desenvolvimento de magias, um mago não tem boa habilidade marcial em combate e deve evitar a todo custo o confronto direto com inimigos.",
    dice_id: 1,
    perk_id: nil,
    character_class_type_id: 1,
    user_id: 1,
    character_class_evolutions_attributes: [
      {level: 1, exp: 0, life_amount: 1, plus_life: false, attack_base: 0, attack_base2: 0, protection_mod: 14},
      {level: 2, exp: 2500, life_amount: 2, plus_life: false, attack_base: 0, attack_base2: 0, protection_mod: 14},
      {level: 3, exp: 5000, life_amount: 3, plus_life: false, attack_base: 1, attack_base2: 0, protection_mod: 14},
      {level: 4, exp: 10000, life_amount: 4, plus_life: false, attack_base: 1, attack_base2: 0, protection_mod: 13},
      {level: 5, exp: 20000, life_amount: 5, plus_life: false, attack_base: 2, attack_base2: 0, protection_mod: 13},
      {level: 6, exp: 40000, life_amount: 6, plus_life: false, attack_base: 2, attack_base2: 0, protection_mod: 13},
      {level: 7, exp: 80000, life_amount: 7, plus_life: false, attack_base: 3, attack_base2: 0, protection_mod: 12},
      {level: 8, exp: 160000, life_amount: 8, plus_life: false, attack_base: 3, attack_base2: 0, protection_mod: 12},
      {level: 9, exp: 310000, life_amount: 9, plus_life: false, attack_base: 3, attack_base2: 0, protection_mod: 12},
      {level: 10, exp: 460000, life_amount: 1, plus_life: true, attack_base: 4, attack_base2: 0, protection_mod: 11},
      {level: 11, exp: 510000, life_amount: 1, plus_life: true, attack_base: 4, attack_base2: 0, protection_mod: 11},
      {level: 12, exp: 660000, life_amount: 1, plus_life: true, attack_base: 4, attack_base2: 0, protection_mod: 11},
      {level: 13, exp: 710000, life_amount: 1, plus_life: true, attack_base: 5, attack_base2: 0, protection_mod: 10},
      {level: 14, exp: 860000, life_amount: 1, plus_life: true, attack_base: 5, attack_base2: 0, protection_mod: 10},
      {level: 15, exp: 910000, life_amount: 2, plus_life: true, attack_base: 5, attack_base2: 0, protection_mod: 10},
      {level: 16, exp: 1060000, life_amount: 2, plus_life: true, attack_base: 6, attack_base2: 0, protection_mod: 9},
      {level: 17, exp: 1110000, life_amount: 2, plus_life: true, attack_base: 6, attack_base2: 0, protection_mod: 9},
      {level: 18, exp: 1160000, life_amount: 2, plus_life: true, attack_base: 6, attack_base2: 0, protection_mod: 9},
      {level: 19, exp: 1210000, life_amount: 2, plus_life: true, attack_base: 7, attack_base2: 0, protection_mod: 8},
      {level: 20, exp: 1260000, life_amount: 3, plus_life: true, attack_base: 7, attack_base2: 0, protection_mod: 8}
    ],
    character_class_requirement_attributes: {
      str_mod: 0,
      dex_mod: 0,
      cons_mod: 0,
      int_mod: 14,
      wis_mod: 0,
      char_mod: 0
    }
  }
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

CharacterClassSpecialization.create!([
  {
    name: 'Druida',
    alignment_id: 2,
    character_class_id: 1,
    user_id: 1,
    character_class_specialization_stages_attributes: [
      {
        description: 'A partir do 5o nível, o clérigo não se dedica mais a um deus em específico, dedicando sua adoração à natureza silvestre como um todo e, a partir desse ponto, passa a se deslocar sem deixar rastros, além de ser capaz de se comunicar com animais silvestres. ',
        min_level: 5
      },
      {
        description: 'No 8o nível, o druida troca o seu poder de afastar mortos-vivos pelo poder de controlar animais silvestres, que funciona da mesma forma. Um animal com 1 DVs corresponde a um esqueleto, um animal com 2 DVs equivale a um zumbi e assim sucessivamente, até o máximo de um animal com 8 DVs, que corresponde a um vampiro. A indicação A na tabela T3-2 indica que o animal é automaticamente controlado, e a indicação D não gera efeito adicional. ',
        min_level: 8
      },
      {
        description: 'No 16o nível o druida pode assumir a forma de um animal silvestre até 3 vezes por dia. Nessa metamorfose, o druida recuperará 3d8 PVs, e durante a metamorfose, a roupa e um item à escolha do druida serão absorvidos, reaparecendo quando este retornar à forma original. Um clérigo que se torna um druida não constrói uma fortaleza, mas sim cria um círculo druídico para adoração da natureza, junto com os seguidores que conquista.',
        min_level: 16
      }
    ]
  },
  {
    name: 'Cultista',
    alignment_id: 3,
    character_class_id: 1,
    user_id: 1,
    character_class_specialization_stages_attributes: [
      {
        description: 'A partir do 5o nível, o clérigo não se dedica mais a um deus, mas sim a criaturas absolutamente caóticas, provenientes de outros planos de existência, recebendo através de sonhos os desejos de seus senhores caóticos. A partir desse ponto, o clérigo não precisa mais meditar para receber magias, sendo que as recebe durante os sonhos. ',
        min_level: 5
      },
      {
        description: 'A partir do 8o nível, o cultista pode optar, ao invés de afastar automaticamente um morto-vivo, por controlá-lo por até 24 horas. Findo esse período, o morto-vivo não estará mais sob o controle do cultista. ',
        min_level: 8
      },
      {
        description: 'A partir do 16o nível, o cultista pode afastar criaturas ordeiras da mesma forma que um clérigo afasta mortos-vivos, sendo que um esqueleto equivale a uma criatura de 1 DV, um zumbi equivale a uma criatura de 2 DVs e assim sucessivamente, até o máximo de uma criatura com 8 DVs, que equivale a um vampiro. A indicação A na tabela T3-2 indica que a criatura é automaticamente afastada, e a indicação D indica que a criatura é automaticamente destruída. Um cultista pode empregar o uso de armas cortantes para rituais.',
        min_level: 16
      }
    ]
  },
  {
    name: 'Paladino',
    alignment_id: 1,
    character_class_id: 2,
    user_id: 1,
    character_class_specialization_stages_attributes: [
      {
        description: 'No 5o nível, o homem de armas passa a se dedicar fielmente a uma causa e a erradicar o caos, sendo que todos aqueles que se opõe a essa causa são seus adversários, e todos aqueles que abraçam essa causa são seus aliados. Um paladino é capaz de detectar o caos a 1 quilômetro de distância, desde que se concentre para tal. Existem diversas causas pelas quais um paladino pode vir lutar a favor, tais como a liberdade, a vida, a tirania, a opressão, dentre tantas outras possibilidades à escolha do jogador. ',
        min_level: 5
      },
      {
        description: 'No 8o nível, o paladino causa +1d6 de dano nos ataques contra criaturas caóticas. ',
        min_level: 8
      },
      {
        description: 'No 16o nível o dano extra aumenta para +2d6 e o paladino passa a emanar uma aura de proteção contra o caos de 3 metros de raio. Se um paladino usar um item mágico caótico (mesmo sem saber do alinhamento do item), perderá automaticamente 2 níveis e não poderá usar seus poderes enquanto estiver portando esse item. Se um paladino, por algum motivo, deixar de ser ordeiro, perderá 3 níveis e perderá todos seus poderes, até que retorne ao alinhamento apropriado.',
        min_level: 16
      }
    ]
  },
  {
    name: 'Guerreiro',
    alignment_id: 2,
    character_class_id: 2,
    user_id: 1,
    character_class_specialization_stages_attributes: [
      {
        description: 'no 5o nível, o homem de armas escolhe uma arma na qual se especializará, recebendo um bônus de +1 nos ataques e no dano usando a arma escolhida. ',
        min_level: 5
      },
      {
        description: 'A partir o 8o nível, o guerreiro receberá um bônus de +2 nos ataques e no dano usando essa arma, recebendo também uma penalidade de -2 nos ataques utilizando qualquer outra arma que não a que escolheu',
        min_level: 8
      },
      {
        description: 'A partir o 16o nível, o guerreiro receberá um bônus de +4 nos ataques e no dano usando essa arma, recebendo também uma penalidade de -4 nos ataques utilizando qualquer outra arma que não a que escolheu',
        min_level: 16
      }
    ]
  },
  {
    name: 'Bárbaro',
    alignment_id: 3,
    character_class_id: 2,
    user_id: 1,
    character_class_specialization_stages_attributes: [
      {
        description: 'No 5o nível, o homem de armas rejeita as regras e os costumes da sociedade, adotando uma vida livre e desapegada de leis e da ordem. A partir desse nível, o homem de armas não poderá mais usar escudos nem armaduras superiores às de couro, porém sua selvageria o tornará mais resistente, concedendo um bônus de +2 para as jogadas de proteção que envolvam o atributo Constituição. ',
        min_level: 5
      },
      {
        description: 'A partir do 8o nível, devido à sua determinação selvagem, o bárbaro  não mais cairá ao chegar a 0 PVs, permanecendo em pé e lutando, até  chegar a -10 PV, ocasião em que morrerá automaticamente. ',
        min_level: 8
      },
      {
        description: 'A partir do 16o nível o bárbaro absorverá 1/3 de todo o dano que receber. Um bárbaro de 11o nível não ergue uma fortaleza, mas sim estabelece uma tribo de bárbaros proscritos, junto com os seguidores que conseguir.',
        min_level: 16
      }
    ]
  },
  {
    name: 'Ilusionista',
    alignment_id: 2,
    character_class_id: 3,
    user_id: 1,
    character_class_specialization_stages_attributes: [
      {
        description: 'No 5o nível, o mago passa a se dedicar ao estudo e à criação de ilusões, podendo uma vez ao dia criar uma ilusão menor e limitada ao seu corpo. Criaturas inteligentes têm 60% de chance de não acreditar na ilusão criada, enquanto criaturas não inteligentes têm apenas 40% de chance. ',
        min_level: 5
      },
      {
        description: 'A partir do 8o nível, o ilusionista pode criar uma ilusão que envolva uma área de tamanho equivalente ao seu nível em m3, três vezes ao dia. Criaturas inteligentes têm 50% de chance de não acreditar na ilusão criada, enquanto criaturas não inteligentes têm apenas 30% de chance. ',
        min_level: 8
      },
      {
        description: 'A partir do 16o nível o ilusionista pode criar ilusões praticamente ilimitadas, cinco vezes ao dia. Criaturas inteligentes têm 40% de chance de não acreditar na ilusão criada, enquanto criaturas não inteligentes têm apenas 20% de chance.',
        min_level: 16
      }
    ]
  },
  {
    name: 'Necromante',
    alignment_id: 3,
    character_class_id: 3,
    user_id: 1,
    character_class_specialization_stages_attributes: [
      {
        description: 'No 5o nível, o mago passa a se dedicar ao estudo das artes sombrias, que envolvem a criação e o controle de mortos-vivos, podendo reanimar um esqueleto por dia, que obedecerá às suas ordens e o efeito durará por uma semana. ',
        min_level: 5
      },
      {
        description: 'A partir do 8o nível, o necromante poderá reanimar três esqueletos por dia, que obedecerão às suas ordens e durarão até que sejam destruídos. ',
        min_level: 8
      },
      {
        description: 'A partir do 16o nível, o necromante poderá se tornar um lich, se tornando imune a efeitos de sono, medo, frio, veneno e outros que necessitem de alvos vivos, bem como se torna imune a acertos críticos. O lich transfere sua alma para uma filactéria, uma gema mágica criada no ritual em que o necromante se tornou um morto-vivo. Caso venha a ser destruído, o lich retornará em 1d4 dias, desde que a filactéria esteja intacta.',
        min_level: 16
      }
    ]
  },
  {
    name: 'Ranger',
    alignment_id: 1,
    character_class_id: 4,
    user_id: 1,
    character_class_specialization_stages_attributes: [
      {
        description: 'a partir do 5o nível, o ladrão toma o rumo dos ermos e se dedica a patrulhar uma determinada área, protegendo-a de um certo tipo de criatura, sendo que, a partir desse nível, o ladrão poderá se deslocar sem deixar qualquer tipo de rastro e receberá +1 para todas as jogadas envolvendo surpresa. ',
        min_level: 5
      },
      {
        description: 'A partir do 8o nível, o ranger receberá um bônus de +1 nos ataques e no dano contra o tipo de criatura escolhido. A partir desse ponto, o ranger não progredirá mais em arrombar fechaduras e pungar. Escalar muros poderá ser utilizado para árvores, penhascos, etc. Ouvir barulhos servirá para rastrear uma criatura. ',
        min_level: 8
      },
      {
        description: 'A partir do 16o nível, o bônus contra o tipo de criatura determinado no 5o nível passa para +2, o ranger não será mais surpreendido e sempre surpreenderá um inimigo, desde que não se trate de outro ranger.',
        min_level: 16
      }
    ]
  },
  {
    name: 'Explorador',
    alignment_id: 1,
    character_class_id: 4,
    user_id: 1,
    character_class_specialization_stages_attributes: [
      {
        description: 'a partir do 5o nível, o ladrão abandona a vida de crimes, se dedicando à exploração de ruínas e templos perdidos. A partir desse nível o explorador possui 80% de chance de conseguir decifrar qualquer tipo de escrita. Em caso de falha, uma nova tentativa só poderá ser realizada após o explorador ter subido um nível. ',
        min_level: 5
      },
      {
        description: 'A partir do 8o nível, o explorador para de progredir em pungar, mas recebe um bônus de 10% para jogadas que envolvam reconhecer e desarmar armadilhas.',
        min_level: 8
      },
      {
        description: 'A partir do 16o nível, o explorador pode lançar magias arcanas a partir de pergaminhos com 90% de chance de sucesso. Uma falha nessa jogada significa que ocorrerá um evento aleatório e de graves consequências para o explorador e para seu grupo.',
        min_level: 16
      }
    ]
  },
  {
    name: 'Bardo',
    alignment_id: 3,
    character_class_id: 4,
    user_id: 1,
    character_class_specialization_stages_attributes: [
      {
        description: 'A partir do 5o nível, o ladrão passa a desenvolver a música  e a oratória como forma de contar os feitos de seu grupo e como forma de motivar seus aliados, dando a eles um bônus de +1 para suas jogadas de proteção. ',
        min_level: 5
      },
      {
        description: 'A partir do 8o nível, o bardo não progredirá mais em ataque pelas costas. A partir deste nível o bardo aumenta em 10% a chance de que uma  criatura que normalmente seria hostil para com ele aja de forma amistosa. ',
        min_level: 8
      },
      {
        description: 'A partir do 16o nível, o bônus de moral conferido pela canção do bardo  passa para +3 para os ataques e jogadas de proteção de seus aliados.',
        min_level: 16
      }
    ]
  },
  {
    name: 'Assassino',
    alignment_id: 3,
    character_class_id: 4,
    user_id: 1,
    character_class_specialization_stages_attributes: [
      {
        description: 'A partir do 5o nível, o ladrão passa a desenvolver técnicas mais eficientes para matar seus oponentes, recebendo um bônus de +2  no dano sempre que sua jogada de ataque resultar em um acerto crítico. ',
        min_level: 5
      },
      {
        description: 'A partir do 8o nível, o assassino não progredirá mais em pungar e em  reconhecer e desarmar armadilhas. A progressão antes utilizada para pungar passará a ser utilizada para que o assassino manipule veneno e o aplique com segurança em suas armas ou em objetos. ',
        min_level: 8
      },
      {
        description: 'A partir do 16o nível, sempre que sua jogada de ataque resultar em acerto crítico, o alvo deverá realizar uma jogada de proteção  modificada pela sua Constituição ou morrer automaticamente.',
        min_level: 16
      }
    ]
  }
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
  {
    lockpick_mod: 0,
    find_traps_mod: 0,
    climb_mod: 0,
    silent_movement_mod: 0,
    stealth_mod: 10,
    pickpocket_mod: 0,
    hear_noises_mod: "0",
    backstab_mod: "0",
    character_race_id: 4
  }
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
  {value: 1, protection_mod: -5, magic_circle_1_mod: 0, magic_circle_2_mod: 0, magic_circle_3_mod: 0},
  {value: 2, protection_mod: -4, magic_circle_1_mod: 0, magic_circle_2_mod: 0, magic_circle_3_mod: 0},
  {value: 3, protection_mod: -4, magic_circle_1_mod: 0, magic_circle_2_mod: 0, magic_circle_3_mod: 0},
  {value: 4, protection_mod: -3, magic_circle_1_mod: 0, magic_circle_2_mod: 0, magic_circle_3_mod: 0},
  {value: 5, protection_mod: -3, magic_circle_1_mod: 0, magic_circle_2_mod: 0, magic_circle_3_mod: 0},
  {value: 6, protection_mod: -2, magic_circle_1_mod: 0, magic_circle_2_mod: 0, magic_circle_3_mod: 0},
  {value: 7, protection_mod: -2, magic_circle_1_mod: 0, magic_circle_2_mod: 0, magic_circle_3_mod: 0},
  {value: 8, protection_mod: -1, magic_circle_1_mod: 0, magic_circle_2_mod: 0, magic_circle_3_mod: 0},
  {value: 9, protection_mod: -1, magic_circle_1_mod: 0, magic_circle_2_mod: 0, magic_circle_3_mod: 0},
  {value: 10, protection_mod: 0, magic_circle_1_mod: 0, magic_circle_2_mod: 0, magic_circle_3_mod: 0},
  {value: 11, protection_mod: 0, magic_circle_1_mod: 0, magic_circle_2_mod: 0, magic_circle_3_mod: 0},
  {value: 12, protection_mod: 1, magic_circle_1_mod: 0, magic_circle_2_mod: 0, magic_circle_3_mod: 0},
  {value: 13, protection_mod: 1, magic_circle_1_mod: 0, magic_circle_2_mod: 0, magic_circle_3_mod: 0},
  {value: 14, protection_mod: 2, magic_circle_1_mod: 0, magic_circle_2_mod: 0, magic_circle_3_mod: 0},
  {value: 15, protection_mod: 2, magic_circle_1_mod: 0, magic_circle_2_mod: 0, magic_circle_3_mod: 0},
  {value: 16, protection_mod: 3, magic_circle_1_mod: 1, magic_circle_2_mod: 0, magic_circle_3_mod: 0},
  {value: 17, protection_mod: 3, magic_circle_1_mod: 1, magic_circle_2_mod: 0, magic_circle_3_mod: 0},
  {value: 18, protection_mod: 4, magic_circle_1_mod: 2, magic_circle_2_mod: 0, magic_circle_3_mod: 0},
  {value: 19, protection_mod: 4, magic_circle_1_mod: 2, magic_circle_2_mod: 0, magic_circle_3_mod: 0},
  {value: 20, protection_mod: 5, magic_circle_1_mod: 2, magic_circle_2_mod: 1, magic_circle_3_mod: 0},
  {value: 21, protection_mod: 5, magic_circle_1_mod: 2, magic_circle_2_mod: 1, magic_circle_3_mod: 0},
  {value: 22, protection_mod: 6, magic_circle_1_mod: 2, magic_circle_2_mod: 2, magic_circle_3_mod: 0},
  {value: 23, protection_mod: 6, magic_circle_1_mod: 2, magic_circle_2_mod: 2, magic_circle_3_mod: 0},
  {value: 24, protection_mod: 7, magic_circle_1_mod: 2, magic_circle_2_mod: 2, magic_circle_3_mod: 1},
  {value: 25, protection_mod: 7, magic_circle_1_mod: 2, magic_circle_2_mod: 2, magic_circle_3_mod: 1},
  {value: 26, protection_mod: 8, magic_circle_1_mod: 3, magic_circle_2_mod: 2, magic_circle_3_mod: 2},
  {value: 27, protection_mod: 8, magic_circle_1_mod: 3, magic_circle_2_mod: 2, magic_circle_3_mod: 2},
  {value: 28, protection_mod: 9, magic_circle_1_mod: 3, magic_circle_2_mod: 3, magic_circle_3_mod: 2},
  {value: 29, protection_mod: 9, magic_circle_1_mod: 3, magic_circle_2_mod: 3, magic_circle_3_mod: 2}
])
