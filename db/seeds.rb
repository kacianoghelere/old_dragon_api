Role.create!([
  {name: "Administrador", admin: true},
  {name: "Comum", admin: false}
])
adminUser = User.create!({
  name: "Administrador",
  user_code: "admin",
  password: "123456",
  password_confirmation: "123456",
  last_login: nil,
  email: "themohawkeagle@gmail.com",
  role_id: 1
})

lawfull = Alignment.create!({name: "Ordeiro"})
neutral = Alignment.create!({name: "Neutro"})
chaotic = Alignment.create!({name: "Caótico"})

ArmorType.create!([
  {name: "Completa"},
  {name: "Parcial"}
])

d4   = Dice.create!({name: "D4"})
d6   = Dice.create!({name: "D6"})
d8   = Dice.create!({name: "D8"})
d10  = Dice.create!({name: "D10"})
d12  = Dice.create!({name: "D12"})
d20  = Dice.create!({name: "D20"})
d100 = Dice.create!({name: "D100"})

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

smallWeapon  = WeaponSize.create!({name: "Pequeno", alternative_name: "Pequeno", alias: "P"})
mediumWeapon = WeaponSize.create!({name: "Médio", alternative_name: "Médio", alias: "M"})
greatWeapon  = WeaponSize.create!({name: "Grande", alternative_name: "Grande", alias: "G"})

cutWeapon   = WeaponType.create!({name: "Corte"})
pirceWeapon = WeaponType.create!({name: "Perfuração"})
bluntWeapon = WeaponType.create!({name: "Deformação"})

inbornSkill    = SkillType.create!({name: "Inato / Natural"})
acquiredSkill = SkillType.create!({name: "Adquirido"})


SpellType.create!([
  {name: "Arcana"},
  {name: "Divina"}
])
Origin.create!([
  {name: "Comum", variation: "Comum", bonus: 0},
  {name: "Élfico", variation: "Élfica", bonus: 1},
  {name: "Anão", variation: "Anã", bonus: 1}
])
TraitType.create!([
  {name: "Inato / Natural"},
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


TraitType.create!([
  {name: "Natural"},
  {name: "Adquirida"}
])

# Trait.create!([
#   {name: "Couraça", description: "Ataques de perfuração recebidos causam apenas metade do dano", trait_type_id: 1, user: adminUser},
#   {name: "Corpo Ósseo", description: "Ataques de corte e perfuração recebidos causam apenas metade do dano", trait_type_id: 1, user: adminUser}
# ])

dwarves = CharacterRace.create!({name: "Anões",
  picture: "https://i.pinimg.com/564x/29/03/7c/29037c18b75badfeaa7dafe3f17f333a.jpg",
  description: "Os anões são pequenos seres robustos e atarracados, famosos por serem rabugentos e teimosos. Como habitantes do subterrâneo, os anões são mineradores fabulosos e ferreiros extremamente competentes, conhecidos pela capacidade de transformarem blocos metálicos em verdadeiras obras de arte e armas dignas das melhores estórias."\
    "\nEntretanto, os anões são criaturas extremamente honradas e valorosas. Um ser que coloca sua honra, palavra e dignidade acima de quaisquer outros valores, prezando a ordem e desprezando quase que absolutamente o caos, sendo ainda raros os anões neutros. É tido como senso comum que a palavra de um anão vale mais do que qualquer assinatura. A amizade de um anão é dura de ser conquistada, e, uma vez estabelecida, é ainda mais difícil de ser desfeita. Por outro lado a inimizade é levada até as últimas consequências, passando de geração a geração dentro de um mesmo clã de anões."\
    "\nOs anões possuem uma rivalidade histórica com os elfos. Oriunda de guerras de tempos longínquos, esse ranço pessoal se perpetuou através das eras, apesar de ter sido um pouco amenizada com o passar do tempo. Mesmo sem chegar à agressão aberta, um anão sempre buscará diminuir os feitos de um elfo, exaltando, sempre que possível, as suas próprias conquistas.",
  min_height: 1,
  max_height: 2,
  min_weight: 50,
  max_weight: 70,
  maturity: 70,
  max_age: 350,
  movement_base: 9,
  cons_mod: 2,
  char_mod: -2,
  alignment_id: 1,
  user: adminUser
})
dwarves.skills.create!([
  {
    name: "Visão no Escuro 15m",
    description: "Por estarem totalmente adaptados à vida no subterrâneo, os "\
      "anões conseguem enxergar no escuro completo devido à sua visão no "\
      "escuro, de alcance de até 15 metros.",
    effect_id: nil,
    skill_type: inbornSkill,
    user: adminUser
  },
  {
    name: "Mineradores",
    description: "Por viverem em túneis e minas, os anões aprendem desde cedo "\
      "a avaliar passagens e condições de muralhas e portais. Assim, são "\
      "capazes de detectar desníveis e armadilhas de pedra ou fossos "\
      "escondidos com um resultado de 1 ou 2 em 1d6.",
    effect_id: nil,
    skill_type: acquiredSkill,
    user: adminUser
  }
])

elves = CharacterRace.create!({
  name: "Elfos",
  picture: "https://i.pinimg.com/736x/81/1a/7a/811a7aa0c7621053c62ab5fa17a1ec8d--male-elf-character-concept.jpg",
  description: "Os elfos são humanoides esguios e silvestres, com antecedentes místicos e aparência inconfundível. São ligeiramente mais baixos que os humanos, se diferenciando ainda mais nos traços faciais delicados, finos e graciosos. As orelhas são longas e pontudas, e os olhos amendoados, levemente alongados. Os cabelos são sempre lisos e limpos e comumente longos, mesmo entre os elfos machos,podendo ter uma miríade de cores e tons que vão do completo negro ao branco prateado."\
    "\nComo habitantes das áreas selvagens e florestais, os elfos possuem uma eterna ligação com as árvores e demais seres silvestres. Os elfos são seres reclusos e raramente abandonam sua terra em busca de aventuras. Quando um elfo se rende aos encantos do mundo além das fronteiras, normalmente o faz pelo desejo de adquirir conhecimento, aperfeiçoar suas técnicas ou ainda como embaixador de seu povo. "\
    "\nPelo ponto de vista élfico, a rivalidade histórica entre elfos e anões é fomentada mais pelas divergências 15artísticas, sendo que os elfos consideram as técnicas empregadas pelos anões como rudes e grosseiras, preferindo a delicadeza intrincada que empregam em detrimento da precisão metódica do povo anão.",
  min_height: 2,
  max_height: 2,
  min_weight: 40,
  max_weight: 50,
  maturity: 150,
  max_age: 700,
  movement_base: 9,
  dex_mod: 2,
  cons_mod: -2,
  alignment_id: 2,
  dice: d8,
  user: adminUser
})
elves.skills.create!([
  {
    name: "Visão na Penumbra 50m",
    description: "Treinados e adaptados à parca luz natural das noites "\
      "silvestres, os elfos adquiriram a capacidade de ver normalmente mesmo "\
      "em condições de baixa luminosidade, com alcance de até 50 metros.",
    effect_id: nil,
    skill_type: inbornSkill,
    user: adminUser
    },
  {
    name: "Imunidade a efeitos de sono",
    description: "uma vez que elfos não dormem, são imunes a magias ou "\
      "efeitos que envolvam sono.",
    effect_id: nil,
    skill_type: inbornSkill,
    user: adminUser
  },
  {
    name: "Percepção",
    description: "A forma como as casas élficas são construídas, "\
      "respeitando sempre a forma natural das árvores e cavernas, dá aos elfos "\
      "uma percepção especial no que diz respeito a portas e passagens não "\
      "convencionais e até mesmo secretas. Ao passarem a até 5 metros de uma "\
      "passagem secreta, os elfos podem detectá-la com um resultado 1 em 1d6 "\
      "(rolado secretamente pelo mestre). Caso estejam efetivamente "\
      "procurando pela passagem, essa chance sobe para 1-2 em 1d6.",
    effect_id: nil,
    skill_type: acquiredSkill,
    user: adminUser
  }
])
elves.traits.create!([
  {name: "Arqueiro", description: "Por estarem sempre treinados e possuírem a facilidade natural para a mira, os elfos recebem um bônus de +1 para acertar quando empunham um arco.", ranged_attack_bonus: 1, trait_type_id: 2, user: adminUser}
])

humans = CharacterRace.create!({
  name: "Humanos",
  picture: "https://i.pinimg.com/564x/ba/66/34/ba6634ac7be1b24a3f7482ebb0fa4927.jpg",
  description: "Os humanos são criaturas versáteis, valorosas e muito ambiciosas e, por isso, acabam representando a maioria da população. Essa versatilidade e ambição fazem com que humanos de diferentes lugares possuam hábitos e costumes também diferentes, sendo que o ambiente acaba inf luenciando a forma como a raça se desenvolve como um todo. Os grandes homens dos ermos gelados, de pele alva, estatura impressionante e músculos tenazes, serão tratados como humanos, exatamente como os morenos e franzinos habitantes das planícies desérticas.",
  min_height: 2,
  max_height: 2,
  min_weight: 55,
  max_weight: 90,
  maturity: 15,
  max_age: 70,
  movement_base: 9,
  versatile_mod: true,
  alignment_id: 2,
  user: adminUser
})

halflings = CharacterRace.create!({
  name: "Halflings",
  picture: "http://3.bp.blogspot.com/-6D8tlIzKPR0/UJ4rELOM9LI/AAAAAAAAAl8/3sw0UV0tmcE/s1600/halfling+02.jpg",
  description: "Os halflings são seres pequenos, cuja capacidade de encrencar-se é inversamente proporcional ao seu tamanho. Odiando o marasmo, os half lings preferem a confusão e a diversão ao tédio, e é justamente esse sentimento de aventura que os torna tão aptos a caírem na estrada e se tornarem peregrinos e aventureiros. "\
    "\nHalflings podem apresentar à primeira vista características que erroneamente os classifiquem como frágeis, mas a prática demonstra exatamente o contrário. "\
    "\nCuriosos, confiantes e assombrosamente corajosos, os half lings confiam em seus destinos e habilidades para superarem desafios, com uma sagacidade que beira o sobrenatural."\
    "\nAs vilas half lings são normalmente encontradas próximas ou integradas às cidades humanas e, de certa forma, essa característica demonstra como os seres destas duas raças interagem bem. Quando próximas, as comunidades half lings costumam ser pacatas, brejeiras, aconchegantes e hospitaleiras.",
  min_height: 1,
  max_height: 1,
  min_weight: 20,
  max_weight: 35,
  maturity: 30,
  max_age: 70,
  movement_base: 9,
  str_mod: -2,
  dex_mod: 2,
  alignment_id: 3,
  user: adminUser
})
halflings.traits.create!([
  {name: "Pequeno", description: "Por serem pequenos e ágeis, os haflings recebem um bônus de +2 na sua Classe de Armadura sempre que estiver em combate com criaturas maiores que um humano.", armor_class_bonus: 2, trait_type_id: 1, user: adminUser},
  {name: "Furtivo", description: "Haflings são mestres na camuflagem e na furtividade. Possuem 10\% de chance de passarem furtivamente ou de esconder-se, mesmo que não sejam ladrões. Caso pertençam à classe ladrão, esse bônus será adicionado ao percentual conferido pelo nível do personagem na classe.", stealth: 10, trait_type_id: 1, user: adminUser}
])

CharacterRaceLanguage.create!([
  {character_race_id: 1, language_type_id: 1},
  {character_race_id: 1, language_type_id: 2},
  {character_race_id: 2, language_type_id: 1},
  {character_race_id: 2, language_type_id: 3}
])

CharacterClassType.create!([
  {
    name: "Arcano", 
    can_use_magic: true, 
    protection: 15, 
    key_attr: "INT", 
    can_bane_undead: false, 
    has_thief_talents: false,
    spell_type_id: 1
  },
  {
    name: "Combatente", 
    can_use_magic: false, 
    protection: 15, 
    key_attr: "FOR", 
    can_bane_undead: false, 
    has_thief_talents: false
  },
  {
    name: "Espiritualista", 
    can_use_magic: true, 
    protection: 15, 
    key_attr: "SAB", 
    can_bane_undead: true, 
    has_thief_talents: false,
    spell_type_id: 2
  },
  {
    name: "Furtivo", 
    can_use_magic: false, 
    protection: 15, 
    key_attr: "DES", 
    can_bane_undead: false,
    has_thief_talents: true
  }
])

# ==============================================================================
#  CLASSES

#  -----------------------------------------------------------------------------
#  CLERIC
cleric = CharacterClass.create!({
  name: "Clérigo",
  picture: "https://nerdsonearth.com/wp-content/uploads/2017/05/bcfd5368fb063a6cd15f566d516b242a.jpg",
  description: "O clérigo é visto como o líder espiritual de um grupo de "\
    "aventureiros. Dedicado a servir a uma criatura sobrenatural, muitas "\
    "vezes considerada como um deus, o clérigo toma os dogmas desse deus "\
    "como um guia para as decisões que há de tomar. O clérigo não é um mero "\
    "seguidor de uma entidade, ele é um devoto, representante dessa "\
    "entidade no mundo, devendo obedecer e pregar as diretrizes que a sua "\
    "fé lhe mpõe. É através dessa devoção que o seu deus lhe confere suas "\
    "magias, tão importantes para seguir pregando a sua palavra.",
  dice_id: 3,
  character_class_type_id: 3,
  user: adminUser
})

cleric.evolutions.create!([
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
  {level: 20, exp: 1300000, life_amount: 6, plus_life: true, attack_base: 8, attack_base2: 0, protection_mod: 9},
])

cleric.magic_circles.create!([
  {level: 1, circle_1: 1, circle_2: 0, circle_3: 0, circle_4: 0, circle_5: 0, circle_6: 0, circle_7: 0},
  {level: 2, circle_1: 2, circle_2: 0, circle_3: 0, circle_4: 0, circle_5: 0, circle_6: 0, circle_7: 0},
  {level: 3, circle_1: 2, circle_2: 1, circle_3: 0, circle_4: 0, circle_5: 0, circle_6: 0, circle_7: 0},
  {level: 4, circle_1: 3, circle_2: 2, circle_3: 0, circle_4: 0, circle_5: 0, circle_6: 0, circle_7: 0},
  {level: 5, circle_1: 3, circle_2: 2, circle_3: 1, circle_4: 0, circle_5: 0, circle_6: 0, circle_7: 0},
  {level: 6, circle_1: 3, circle_2: 3, circle_3: 2, circle_4: 0, circle_5: 0, circle_6: 0, circle_7: 0},
  {level: 7, circle_1: 4, circle_2: 3, circle_3: 2, circle_4: 1, circle_5: 0, circle_6: 0, circle_7: 0},
  {level: 8, circle_1: 4, circle_2: 3, circle_3: 3, circle_4: 2, circle_5: 0, circle_6: 0, circle_7: 0},
  {level: 9, circle_1: 4, circle_2: 4, circle_3: 3, circle_4: 2, circle_5: 1, circle_6: 0, circle_7: 0},
  {level: 10, circle_1: 5, circle_2: 4, circle_3: 3, circle_4: 3, circle_5: 2, circle_6: 0, circle_7: 0},
  {level: 11, circle_1: 5, circle_2: 4, circle_3: 4, circle_4: 3, circle_5: 2, circle_6: 1, circle_7: 0},
  {level: 12, circle_1: 5, circle_2: 5, circle_3: 4, circle_4: 3, circle_5: 3, circle_6: 2, circle_7: 0},
  {level: 13, circle_1: 6, circle_2: 5, circle_3: 4, circle_4: 4, circle_5: 3, circle_6: 2, circle_7: 0},
  {level: 14, circle_1: 6, circle_2: 5, circle_3: 5, circle_4: 4, circle_5: 3, circle_6: 3, circle_7: 0},
  {level: 15, circle_1: 7, circle_2: 6, circle_3: 5, circle_4: 4, circle_5: 4, circle_6: 3, circle_7: 1},
  {level: 16, circle_1: 7, circle_2: 6, circle_3: 5, circle_4: 5, circle_5: 4, circle_6: 3, circle_7: 2},
  {level: 17, circle_1: 8, circle_2: 7, circle_3: 6, circle_4: 5, circle_5: 4, circle_6: 4, circle_7: 2},
  {level: 18, circle_1: 8, circle_2: 7, circle_3: 6, circle_4: 5, circle_5: 5, circle_6: 4, circle_7: 3},
  {level: 19, circle_1: 9, circle_2: 8, circle_3: 7, circle_4: 6, circle_5: 5, circle_6: 4, circle_7: 3},
  {level: 20, circle_1: 9, circle_2: 8, circle_3: 7, circle_4: 6, circle_5: 5, circle_6: 5, circle_7: 3},
])

cleric.undead_banes.create!([
  {level: "1", dv1:   "13", dv2:  "17", dv3:  "19", dv4:  "N", dv5:   "N", dv6:   "N", dv7:   "N", dv8:   "N", dv9:   "N", dv10:   "N", dv11:   "N", dv12:   "N", dv13:   "N", dv14:   "N", dv15:   "N", dv16:   "N", dv17:   "N", dv18:   "N"},
  {level: "2", dv1:   "11", dv2:  "15", dv3:  "18", dv4:  "20", dv5:  "N", dv6:   "N", dv7:   "N", dv8:   "N", dv9:   "N", dv10:   "N", dv11:   "N", dv12:   "N", dv13:   "N", dv14:   "N", dv15:   "N", dv16:   "N", dv17:   "N", dv18:   "N"},
  {level: "3", dv1:   "9", dv2:   "13", dv3:  "17", dv4:  "19", dv5:  "N", dv6:   "N", dv7:   "N", dv8:   "N", dv9:   "N", dv10:   "N", dv11:   "N", dv12:   "N", dv13:   "N", dv14:   "N", dv15:   "N", dv16:   "N", dv17:   "N", dv18:   "N"},
  {level: "4", dv1:   "7", dv2:   "11", dv3:  "15", dv4:  "18", dv5:  "20", dv6:  "N", dv7:   "N", dv8:   "N", dv9:   "N", dv10:   "N", dv11:   "N", dv12:   "N", dv13:   "N", dv14:   "N", dv15:   "N", dv16:   "N", dv17:   "N", dv18:   "N"},
  {level: "5", dv1:   "5", dv2:   "9", dv3:   "13", dv4:  "17", dv5:  "19", dv6:  "N", dv7:   "N", dv8:   "N", dv9:   "N", dv10:   "N", dv11:   "N", dv12:   "N", dv13:   "N", dv14:   "N", dv15:   "N", dv16:   "N", dv17:   "N", dv18:   "N"},
  {level: "6", dv1:   "3", dv2:   "7", dv3:   "11", dv4:  "15", dv5:  "18", dv6:  "20", dv7:  "N", dv8:   "N", dv9:   "N", dv10:   "N", dv11:   "N", dv12:   "N", dv13:   "N", dv14:   "N", dv15:   "N", dv16:   "N", dv17:   "N", dv18:   "N"},
  {level: "7", dv1:   "A", dv2:   "53", dv3:  "9", dv4:   "13", dv5:  "17", dv6:  "19", dv7:  "N", dv8:   "N", dv9:   "N", dv10:   "N", dv11:   "N", dv12:   "N", dv13:   "N", dv14:   "N", dv15:   "N", dv16:   "N", dv17:   "N", dv18:   "N"},
  {level: "8", dv1:   "A", dv2:   "2", dv3:   "7", dv4:   "11", dv5:  "15", dv6:  "18", dv7:  "20", dv8:  "N", dv9:   "N", dv10:   "N", dv11:   "N", dv12:   "N", dv13:   "N", dv14:   "N", dv15:   "N", dv16:   "N", dv17:   "N", dv18:   "N"},
  {level: "9", dv1:   "A", dv2:   "A", dv3:   "5", dv4:   "9", dv5:   "13", dv6:  "17", dv7:  "19", dv8:  "N", dv9:   "N", dv10:   "N", dv11:   "N", dv12:   "N", dv13:   "N", dv14:   "N", dv15:   "N", dv16:   "N", dv17:   "N", dv18:   "N"},
  {level: "10", dv1:  "D", dv2:   "A", dv3:   "3", dv4:   "7", dv5:   "11", dv6:  "15", dv7:  "18", dv8:  "20", dv9:  "N", dv10:   "N", dv11:   "N", dv12:   "N", dv13:   "N", dv14:   "N", dv15:   "N", dv16:   "N", dv17:   "N", dv18:   "N"},
  {level: "11", dv1:  "D", dv2:   "A", dv3:   "2", dv4:   "5", dv5:   "9", dv6:   "13", dv7:  "17", dv8:  "19", dv9:  "20", dv10:  "N", dv11:   "N", dv12:   "N", dv13:   "N", dv14:   "N", dv15:   "N", dv16:   "N", dv17:   "N", dv18:   "N"},
  {level: "12", dv1:  "D", dv2:   "D", dv3:   "A", dv4:   "3", dv5:   "7", dv6:   "11", dv7:  "15", dv8:  "18", dv9:  "19", dv10:  "20", dv11:  "N", dv12:   "N", dv13:   "N", dv14:   "N", dv15:   "N", dv16:   "N", dv17:   "N", dv18:   "N"},
  {level: "13", dv1:  "D", dv2:   "D", dv3:   "A", dv4:   "2", dv5:   "5", dv6:   "9", dv7:   "13", dv8:  "17", dv9:  "18", dv10:  "19", dv11:  "20", dv12:  "N", dv13:   "N", dv14:   "N", dv15:   "N", dv16:   "N", dv17:   "N", dv18:   "N"},
  {level: "14", dv1:  "D", dv2:   "D", dv3:   "A", dv4:   "A", dv5:   "3", dv6:   "7", dv7:   "11", dv8:  "15", dv9:  "17", dv10:  "18", dv11:  "19", dv12:  "20", dv13:  "N", dv14:   "N", dv15:   "N", dv16:   "N", dv17:   "N", dv18:   "N"},
  {level: "15", dv1:  "D", dv2:   "D", dv3:   "D", dv4:   "A", dv5:   "2", dv6:   "5", dv7:   "9", dv8:   "13", dv9:  "15", dv10:  "17", dv11:  "18", dv12:  "19", dv13:  "20", dv14:  "N", dv15:   "N", dv16:   "N", dv17:   "N", dv18:   "N"},
  {level: "16", dv1:  "D", dv2:   "D", dv3:   "D", dv4:   "A", dv5:   "A", dv6:   "3", dv7:   "7", dv8:   "11", dv9:  "13", dv10:  "15", dv11:  "17", dv12:  "18", dv13:  "19", dv14:  "20", dv15:  "N", dv16:   "N", dv17:   "N", dv18:   "N"},
  {level: "17", dv1:  "D", dv2:   "D", dv3:   "D", dv4:   "D", dv5:   "A", dv6:   "2", dv7:   "5", dv8:   "9", dv9:   "11", dv10:  "13", dv11:  "15", dv12:  "17", dv13:  "18", dv14:  "19", dv15:  "20", dv16:  "N", dv17:   "N", dv18:   "N"},
  {level: "18", dv1:  "D", dv2:   "D", dv3:   "D", dv4:   "D", dv5:   "A", dv6:   "A", dv7:   "3", dv8:   "7", dv9:   "9", dv10:   "11", dv11:  "13", dv12:  "15", dv13:  "17", dv14:  "18", dv15:  "19", dv16:  "20", dv17:  "N", dv18:   "N"},
  {level: "19", dv1:  "D", dv2:   "D", dv3:   "D", dv4:   "D", dv5:   "D", dv6:   "A", dv7:   "2", dv8:   "5", dv9:   "7", dv10:   "9", dv11:   "11", dv12:  "13", dv13:  "15", dv14:  "17", dv15:  "18", dv16:  "19", dv17:  "20", dv18:  "N"},
  {level: "20", dv1:  "D", dv2:   "D", dv3:   "D", dv4:   "D", dv5:   "D", dv6:   "A", dv7:   "A", dv8:   "3", dv9:   "5", dv10:   "7", dv11:   "9", dv12:   "11", dv13:  "13", dv14:  "15", dv15:  "17", dv16:  "18", dv17:  "19", dv18:  "20"}
])

CharacterClassRequirement.create!({str_mod: 0, dex_mod: 0, cons_mod: 0, int_mod: 0, wis_mod: 12, char_mod: 0, character_class: cleric})


#  -----------------------------------------------------------------------------
#  Man Of Arms
manOfArms = CharacterClass.create!({
  name: "Homem de Armas",
  picture: "http://s1.1zoom.me/big0/354/388898-sepik.jpg",
  description: "O homem de armas é o especialista em combate. Seu principal "\
    "atributo é a Força, que permite causar um considerável dano em seus "\
    "inimigos. Devido à sua capacidade de resistir aos ferimentos, "\
    "geralmente o homem de armas se coloca em meio aos inimigos para atrair "\
    "a sua atenção e, dessa forma, proteger seus companheiros mais fracos "\
    "e feridos.", 
  dice_id: 4,
  character_class_type_id: 2,
  user: adminUser
})

manOfArms.evolutions.create!([
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
  {level: 20, exp: 1256000, life_amount: 8, plus_life: true, attack_base: 15, attack_base2: 9, protection_mod: 10},
])

CharacterClassRequirement.create!({str_mod: 12, dex_mod: 0, cons_mod: 12, int_mod: 0, wis_mod: 0, char_mod: 0, character_class: manOfArms})

#  -----------------------------------------------------------------------------
#  THIEF
thief = CharacterClass.create!({
  name: "Ladrão",
  picture: "http://sm.ign.com/ign_br/news/n/new-thief-/new-thief-sequel-rumours-quashed-by-developer_aq2f.jpg",
  description: "O ladrão é um personagem que se especializa em arrombar  "\
    "fechaduras, desarmar armadilhas e  outras atividades furtivas, além de "\
    "roubar, pungar e outras formas ilícitas de enriquecimento. Um bom "\
    "ladrão é membro de uma guilda, pois, com seus contatos, consegue "\
    "descobrir informações secretas, como por exemplo, qual dos guardas da "\
    "vigília aceita peças de ouro para fingir que não viu um determinado "\
    "halfling pulando a janela da casa de alguém no meio da noite.", 
  dice_id: 2,
  character_class_type_id: 4,
  user: adminUser
})

thief.evolutions.create!([
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
  {level: 20, exp: 1480000, life_amount: 4, plus_life: true, attack_base: 7, attack_base2: 0, protection_mod: 9},
])

thief.thief_talents.create!([
  {level: 1, lockpick: 15, traps: 10, climb: 80, stealth: 20, pickpocket: 20, perception: 2, sneak_attack: 2},
  {level: 2, lockpick: 20, traps: 15, climb: 81, stealth: 25, pickpocket: 25, perception: 2, sneak_attack: 2},
  {level: 3, lockpick: 25, traps: 20, climb: 82, stealth: 30, pickpocket: 30, perception: 2, sneak_attack: 2},
  {level: 4, lockpick: 30, traps: 25, climb: 83, stealth: 35, pickpocket: 35, perception: 2, sneak_attack: 2},
  {level: 5, lockpick: 36, traps: 30, climb: 84, stealth: 40, pickpocket: 40, perception: 3, sneak_attack: 2},
  {level: 6, lockpick: 40, traps: 35, climb: 85, stealth: 45, pickpocket: 45, perception: 3, sneak_attack: 3},
  {level: 7, lockpick: 45, traps: 40, climb: 86, stealth: 50, pickpocket: 50, perception: 3, sneak_attack: 3},
  {level: 8, lockpick: 50, traps: 45, climb: 87, stealth: 55, pickpocket: 55, perception: 3, sneak_attack: 3},
  {level: 9, lockpick: 55, traps: 50, climb: 88, stealth: 60, pickpocket: 60, perception: 3, sneak_attack: 3},
  {level: 10, lockpick: 60, traps: 55, climb: 89, stealth: 65, pickpocket: 65, perception: 4, sneak_attack: 3},
  {level: 11, lockpick: 62, traps: 60, climb: 90, stealth: 70, pickpocket: 70, perception: 4, sneak_attack: 3},
  {level: 12, lockpick: 64, traps: 62, climb: 91, stealth: 72, pickpocket: 72, perception: 4, sneak_attack: 4},
  {level: 13, lockpick: 66, traps: 64, climb: 92, stealth: 74, pickpocket: 74, perception: 4, sneak_attack: 4},
  {level: 14, lockpick: 68, traps: 66, climb: 93, stealth: 76, pickpocket: 76, perception: 4, sneak_attack: 4},
  {level: 15, lockpick: 70, traps: 68, climb: 94, stealth: 78, pickpocket: 78, perception: 4, sneak_attack: 4},
  {level: 16, lockpick: 72, traps: 70, climb: 95, stealth: 80, pickpocket: 80, perception: 5, sneak_attack: 4},
  {level: 17, lockpick: 74, traps: 72, climb: 96, stealth: 82, pickpocket: 82, perception: 5, sneak_attack: 4},
  {level: 18, lockpick: 76, traps: 74, climb: 97, stealth: 84, pickpocket: 84, perception: 5, sneak_attack: 5},
  {level: 19, lockpick: 78, traps: 76, climb: 98, stealth: 86, pickpocket: 86, perception: 5, sneak_attack: 5},
  {level: 20, lockpick: 80, traps: 78, climb: 99, stealth: 88, pickpocket: 88, perception: 5, sneak_attack: 5}
])

CharacterClassRequirement.create!({str_mod: 0, dex_mod: 12, cons_mod: 0, int_mod: 0, wis_mod: 0, char_mod: 0, character_class: thief})

#  -----------------------------------------------------------------------------
#  MAGE
mage = CharacterClass.create!({
  name: "Mago",
  picture: "http://ll-c.ooyala.com/e1/VweTk5YzE6uMVLB0BoRaGmMkCsUVotQN/promo326678796",
  description: "O mago é um pesquisador de magias arcanas, que as escreve "\
    "em seus grimórios ou em pergaminhos, sendo que os mais experientes "\
    "conseguem criar itens mágicos extraordinários. Por dedicar seu tempo a "\
    "estudos e desenvolvimento de magias, um mago não tem boa habilidade "\
    "marcial em combate e deve evitar a todo custo o confronto direto com "\
    "inimigos.", 
  dice_id: 1,
  character_class_type_id: 1,
  user: adminUser
})

mage.evolutions.create!([
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
])

mage.magic_circles.create!([
  {level: 1, circle_1: 1, circle_2: 0, circle_3: 0, circle_4: 0, circle_5: 0, circle_6: 0, circle_7: 0, circle_8: 0, circle_9: 0},
  {level: 2, circle_1: 2, circle_2: 0, circle_3: 0, circle_4: 0, circle_5: 0, circle_6: 0, circle_7: 0, circle_8: 0, circle_9: 0},
  {level: 3, circle_1: 2, circle_2: 1, circle_3: 0, circle_4: 0, circle_5: 0, circle_6: 0, circle_7: 0, circle_8: 0, circle_9: 0},
  {level: 4, circle_1: 2, circle_2: 2, circle_3: 0, circle_4: 0, circle_5: 0, circle_6: 0, circle_7: 0, circle_8: 0, circle_9: 0},
  {level: 5, circle_1: 2, circle_2: 2, circle_3: 1, circle_4: 0, circle_5: 0, circle_6: 0, circle_7: 0, circle_8: 0, circle_9: 0},
  {level: 6, circle_1: 3, circle_2: 2, circle_3: 2, circle_4: 0, circle_5: 0, circle_6: 0, circle_7: 0, circle_8: 0, circle_9: 0},
  {level: 7, circle_1: 3, circle_2: 2, circle_3: 2, circle_4: 1, circle_5: 0, circle_6: 0, circle_7: 0, circle_8: 0, circle_9: 0},
  {level: 8, circle_1: 3, circle_2: 3, circle_3: 2, circle_4: 2, circle_5: 0, circle_6: 0, circle_7: 0, circle_8: 0, circle_9: 0},
  {level: 9, circle_1: 3, circle_2: 3, circle_3: 2, circle_4: 2, circle_5: 1, circle_6: 0, circle_7: 0, circle_8: 0, circle_9: 0},
  {level: 10, circle_1: 3, circle_2: 3, circle_3: 3, circle_4: 2, circle_5: 2, circle_6: 0, circle_7: 0, circle_8: 0, circle_9: 0},
  {level: 11, circle_1: 4, circle_2: 3, circle_3: 3, circle_4: 2, circle_5: 2, circle_6: 1, circle_7: 0, circle_8: 0, circle_9: 0},
  {level: 12, circle_1: 4, circle_2: 3, circle_3: 3, circle_4: 3, circle_5: 2, circle_6: 2, circle_7: 0, circle_8: 0, circle_9: 0},
  {level: 13, circle_1: 4, circle_2: 4, circle_3: 3, circle_4: 3, circle_5: 2, circle_6: 2, circle_7: 1, circle_8: 0, circle_9: 0},
  {level: 14, circle_1: 4, circle_2: 4, circle_3: 3, circle_4: 3, circle_5: 3, circle_6: 2, circle_7: 2, circle_8: 0, circle_9: 0},
  {level: 15, circle_1: 5, circle_2: 4, circle_3: 4, circle_4: 3, circle_5: 3, circle_6: 2, circle_7: 2, circle_8: 1, circle_9: 0},
  {level: 16, circle_1: 5, circle_2: 4, circle_3: 4, circle_4: 3, circle_5: 3, circle_6: 3, circle_7: 2, circle_8: 2, circle_9: 0},
  {level: 17, circle_1: 5, circle_2: 5, circle_3: 4, circle_4: 4, circle_5: 3, circle_6: 3, circle_7: 2, circle_8: 2, circle_9: 1},
  {level: 18, circle_1: 5, circle_2: 5, circle_3: 4, circle_4: 4, circle_5: 3, circle_6: 3, circle_7: 3, circle_8: 2, circle_9: 2},
  {level: 19, circle_1: 5, circle_2: 5, circle_3: 5, circle_4: 4, circle_5: 4, circle_6: 3, circle_7: 3, circle_8: 2, circle_9: 2},
  {level: 20, circle_1: 6, circle_2: 6, circle_3: 5, circle_4: 4, circle_5: 4, circle_6: 3, circle_7: 3, circle_8: 3, circle_9: 2}
])

CharacterClassRequirement.create!({str_mod: 0, dex_mod: 0, cons_mod: 0, int_mod: 12, wis_mod: 0, char_mod: 0, character_class: mage})

CharismaMod.create!([
  {value: 1, followers_mod: 0, reaction_mod: -25, undead_mod: "0"},
  {value: 2, followers_mod: 0, reaction_mod: -20, undead_mod: "0"},
  {value: 3, followers_mod: 0, reaction_mod: -20, undead_mod: "0"},
  {value: 4, followers_mod: 0, reaction_mod: -15, undead_mod: "0"},
  {value: 5, followers_mod: 0, reaction_mod: -15, undead_mod: "0"},
  {value: 6, followers_mod: 0, reaction_mod: -10, undead_mod: "0"},
  {value: 7, followers_mod: 0, reaction_mod: -10, undead_mod: "0"},
  {value: 8, followers_mod: 0, reaction_mod: -5, undead_mod: "1"},
  {value: 9, followers_mod: 0, reaction_mod: -5, undead_mod: "1"},
  {value: 10, followers_mod: 1, reaction_mod: 0, undead_mod: "1d2"},
  {value: 11, followers_mod: 1, reaction_mod: 0, undead_mod: "1d2"},
  {value: 12, followers_mod: 2, reaction_mod: 5, undead_mod: "1d3"},
  {value: 13, followers_mod: 2, reaction_mod: 5, undead_mod: "1d3"},
  {value: 14, followers_mod: 3, reaction_mod: 10, undead_mod: "1d4"},
  {value: 15, followers_mod: 3, reaction_mod: 10, undead_mod: "1d4"},
  {value: 16, followers_mod: 4, reaction_mod: 15, undead_mod: "1d6"},
  {value: 17, followers_mod: 4, reaction_mod: 15, undead_mod: "1d6"},
  {value: 18, followers_mod: 5, reaction_mod: 20, undead_mod: "1d8"},
  {value: 19, followers_mod: 5, reaction_mod: 20, undead_mod: "1d8"},
  {value: 20, followers_mod: 6, reaction_mod: 25, undead_mod: "2d4"},
  {value: 21, followers_mod: 6, reaction_mod: 25, undead_mod: "2d4"},
  {value: 22, followers_mod: 7, reaction_mod: 30, undead_mod: "1d10"},
  {value: 23, followers_mod: 7, reaction_mod: 30, undead_mod: "1d10"},
  {value: 24, followers_mod: 8, reaction_mod: 35, undead_mod: "1d12"},
  {value: 25, followers_mod: 8, reaction_mod: 35, undead_mod: "1d12"},
  {value: 26, followers_mod: 9, reaction_mod: 40, undead_mod: "2d6"},
  {value: 27, followers_mod: 9, reaction_mod: 40, undead_mod: "2d6"},
  {value: 28, followers_mod: 10, reaction_mod: 45, undead_mod: "1d20"},
  {value: 29, followers_mod: 10, reaction_mod: 45, undead_mod: "1d20"}
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
  {value: 1, attack_mod: -5, surprise_mod: -5, armor_class_mod: -5, protection_mod: -5, traps: -25, lockpick: -25, stealth: -25, pickpocket: -25},
  {value: 2, attack_mod: -4, surprise_mod: -4, armor_class_mod: -4, protection_mod: -4, traps: -20, lockpick: -20, stealth: -20, pickpocket: -20},
  {value: 3, attack_mod: -4, surprise_mod: -4, armor_class_mod: -4, protection_mod: -4, traps: -20, lockpick: -20, stealth: -20, pickpocket: -20},
  {value: 4, attack_mod: -3, surprise_mod: -3, armor_class_mod: -3, protection_mod: -3, traps: -15, lockpick: -15, stealth: -15, pickpocket: -15},
  {value: 5, attack_mod: -3, surprise_mod: -3, armor_class_mod: -3, protection_mod: -3, traps: -15, lockpick: -15, stealth: -15, pickpocket: -15},
  {value: 6, attack_mod: -2, surprise_mod: -2, armor_class_mod: -2, protection_mod: -2, traps: -10, lockpick: -10, stealth: -10, pickpocket: -10},
  {value: 7, attack_mod: -2, surprise_mod: -2, armor_class_mod: -2, protection_mod: -2, traps: -10, lockpick: -10, stealth: -10, pickpocket: -10},
  {value: 8, attack_mod: -1, surprise_mod: -1, armor_class_mod: -1, protection_mod: -1, traps: -5, lockpick: -5, stealth: -5, pickpocket: -5},
  {value: 9, attack_mod: -1, surprise_mod: -1, armor_class_mod: -1, protection_mod: -1, traps: -5, lockpick: -5, stealth: -5, pickpocket: -5},
  {value: 10, attack_mod: 0, surprise_mod: 0, armor_class_mod: 0, protection_mod: 0, traps: 0, lockpick: 0, stealth: 0, pickpocket: 0},
  {value: 11, attack_mod: 0, surprise_mod: 0, armor_class_mod: 0, protection_mod: 0, traps: 0, lockpick: 0, stealth: 0, pickpocket: 0},
  {value: 12, attack_mod: 1, surprise_mod: 1, armor_class_mod: 1, protection_mod: 1, traps: 0, lockpick: 5, stealth: 0, pickpocket: 0},
  {value: 13, attack_mod: 1, surprise_mod: 1, armor_class_mod: 1, protection_mod: 1, traps: 0, lockpick: 5, stealth: 0, pickpocket: 0},
  {value: 14, attack_mod: 2, surprise_mod: 2, armor_class_mod: 2, protection_mod: 2, traps: 0, lockpick: 10, stealth: 5, pickpocket: 5},
  {value: 15, attack_mod: 2, surprise_mod: 2, armor_class_mod: 2, protection_mod: 2, traps: 0, lockpick: 10, stealth: 5, pickpocket: 5},
  {value: 16, attack_mod: 3, surprise_mod: 3, armor_class_mod: 3, protection_mod: 3, traps: 5, lockpick: 15, stealth: 10, pickpocket: 10},
  {value: 17, attack_mod: 3, surprise_mod: 3, armor_class_mod: 3, protection_mod: 3, traps: 5, lockpick: 15, stealth: 10, pickpocket: 10},
  {value: 18, attack_mod: 4, surprise_mod: 4, armor_class_mod: 4, protection_mod: 4, traps: 10, lockpick: 20, stealth: 15, pickpocket: 15},
  {value: 19, attack_mod: 4, surprise_mod: 4, armor_class_mod: 4, protection_mod: 4, traps: 10, lockpick: 20, stealth: 15, pickpocket: 15},
  {value: 20, attack_mod: 5, surprise_mod: 5, armor_class_mod: 5, protection_mod: 5, traps: 15, lockpick: 25, stealth: 20, pickpocket: 20},
  {value: 21, attack_mod: 5, surprise_mod: 5, armor_class_mod: 5, protection_mod: 5, traps: 15, lockpick: 25, stealth: 20, pickpocket: 20},
  {value: 22, attack_mod: 6, surprise_mod: 6, armor_class_mod: 6, protection_mod: 6, traps: 20, lockpick: 30, stealth: 25, pickpocket: 25},
  {value: 23, attack_mod: 6, surprise_mod: 6, armor_class_mod: 6, protection_mod: 6, traps: 20, lockpick: 30, stealth: 25, pickpocket: 25},
  {value: 24, attack_mod: 7, surprise_mod: 7, armor_class_mod: 7, protection_mod: 7, traps: 25, lockpick: 35, stealth: 30, pickpocket: 30},
  {value: 25, attack_mod: 7, surprise_mod: 7, armor_class_mod: 7, protection_mod: 7, traps: 25, lockpick: 35, stealth: 30, pickpocket: 30},
  {value: 26, attack_mod: 8, surprise_mod: 8, armor_class_mod: 8, protection_mod: 8, traps: 30, lockpick: 40, stealth: 35, pickpocket: 35},
  {value: 27, attack_mod: 8, surprise_mod: 8, armor_class_mod: 8, protection_mod: 8, traps: 30, lockpick: 40, stealth: 35, pickpocket: 35},
  {value: 28, attack_mod: 9, surprise_mod: 9, armor_class_mod: 9, protection_mod: 9, traps: 35, lockpick: 45, stealth: 40, pickpocket: 40},
  {value: 29, attack_mod: 9, surprise_mod: 9, armor_class_mod: 9, protection_mod: 9, traps: 35, lockpick: 45, stealth: 40, pickpocket: 40}
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



# ------------------------------------------------------------------------------
# CHARACTERS
jon = Character.create!({
  name: 'Jon Snow',
  picture: 'https://jovemnerd.com.br/wp-content/uploads/2017/08/jon-snow-1280-760x428.jpg',
  weight: 80,
  height: 175,
  age: 26,
  description: "Jon Snow é o filho bastardo de Ned Stark, Lorde de Winrterfell",
  character_class: manOfArms,
  character_race: humans,
  user: adminUser
})
jon.journals.create!({
  current_level: 1,
  current_exp: 0,
  strength: 12,
  dexterity: 14,
  constitution: 11,
  intelligence: 9,
  wisdom: 8,
  charisma: 14,
  alignment: lawfull
})

jorah = Character.create!({
  name: 'Jorah Mormont, o Ândalo',
  picture: 'http://smallscreensesska.com/wp-content/uploads/2015/04/throne9.jpg',
  weight: 88,
  height: 177,
  age: 48,
  description: "Jorah é o único filho de Lorde Jeor Mormont, o Lorde da Ilha "\
    "dos Ursos, que abdicou ao título em favor do filho pouco antes da "\
    "\"Rebelião de Robert\" para se tornar o comandante da Patrulha da Noite, "\
    "na Muralha de Westeros.",
  character_class: manOfArms,
  character_race: humans,
  user: adminUser
})
jorah.journals.create!({
  current_level: 5,
  current_exp: 16000,
  strength: 11,
  dexterity: 12,
  constitution: 10,
  intelligence: 11,
  wisdom: 14,
  charisma: 11,
  alignment: lawfull
})

sandor = Character.create!({
  name: 'Sandor Clegane, o Cão',
  picture: 'http://media.comicbook.com/2016/05/sandor-clegane-184126-1280x0.jpg',
  weight: 110,
  height: 198,
  age: 42,
  description: "Sandor Clegane, conhecido como \"Cão de Caça\" por sua "\
    "natureza feroz, sua obediência sem questionamentos a seus senhores e "\
    "pelos três cães existentes no brasão de armas de sua família, é um "\
    "vassalo e aliado da Casa Lannister e o irmão mais novo de Gregor "\
    "Clegane, o \"Montanha\".",
  character_class: manOfArms,
  character_race: humans,
  user: adminUser
})
sandor.journals.create!({
  current_level: 7,
  current_exp: 64000,
  strength: 16,
  dexterity: 11,
  constitution: 13,
  intelligence: 11,
  wisdom: 10,
  charisma: 9,
  alignment: chaotic
})

tormund = Character.create!({
  name: 'Tormund, Giantsbane',
  picture: 'http://ll-c.ooyala.com/e1/o3bmxsYzE6cqDcBRwDriGSdUeRR8Skns/promo329184407',
  weight: 98,
  height: 187,
  age: 37,
  description: "Tormund é um guerreiro e líder dos Selvagens, povo que vive "\
    "no extremo norte de Westeros, Além da Muralha, e que se denominam como "\
    "Homens Livres.",
  character_class: manOfArms,
  character_race: humans,
  user: adminUser
})
sandor.journals.create!({
  current_level: 5,
  current_exp: 16000,
  strength: 14,
  dexterity: 13,
  constitution: 11,
  intelligence: 11,
  wisdom: 12,
  charisma: 10,
  alignment: chaotic
})

# ------------------------------------------------------------------------------
# CAMPAIGN
campaign = Campaign.create!({
  title: "Ao norte da muralha",
  description: "Um grupo de corajosos aventureiros parte em uma missão "\
    "suicida ao norte da grande muralha com um único objetivo em mente: "\
    "Matar o Rei da Noite.",
  picture: "https://i.ytimg.com/vi/tw8iO46fYxI/maxresdefault.jpg",
  start_date: DateTime.now,
  user: adminUser
})
campaign.journals.create!([
  {
    title: "Atravessando a muralha",
    description: "Os aventureiros se reunem no castelo da patrula da noite e "\
      "recebem uma ordem para partir para o norte da muralha."
  },
  {
    title: "Imensidão branca",
    description: "Após atravessarem a muralha, os aventureiros se encontram "\
      "com um grupo de selvagens e um pequeno conflito acontece, resultando "\
      "em mortes em ambos os grupos."
  }
])
campaign.notes.create!({
  description: "Existem armas de obsidiana em um bau atrás da Árvore morta.",
  dm_only: true
})
campaign.characters.push(jon)
campaign.characters.push(jorah)
campaign.characters.push(sandor)
campaign.characters.push(tormund)