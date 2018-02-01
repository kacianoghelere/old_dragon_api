adminRole = Role.create!({name: "Administrador", admin: true})
commonRole = Role.create!({name: "Comum", admin: false})

adminUser = User.create!({
  name: "Administrador",
  user_code: "admin",
  password: "123456",
  password_confirmation: "123456",
  last_login: nil,
  email: "themohawkeagle@gmail.com",
  role: adminRole
})

player1 = User.create!({
  name: "Rick Sanchez (C-137)",
  user_code: "rick.c137",
  password: "123456",
  password_confirmation: "123456",
  last_login: nil,
  email: "rick@c137.com",
  role: commonRole
})

player2 = User.create!({
  name: "Morty Smith (C-137)",
  user_code: "morty.c137",
  password: "123456",
  password_confirmation: "123456",
  last_login: nil,
  email: "morty@c137.com",
  role: commonRole
})

player3 = User.create!({
  name: "Severus Snape",
  user_code: "snape.tester",
  password: "123456",
  password_confirmation: "123456",
  last_login: nil,
  email: "snape@tester.com",
  role: commonRole
})

player4 = User.create!({
  name: "Jimmy McGuill",
  user_code: "jimmy.tester",
  password: "123456",
  password_confirmation: "123456",
  last_login: nil,
  email: "jimmy@tester.com",
  role: commonRole
})

player5 = User.create!({
  name: "Dexter Morgan",
  user_code: "dexter.tester",
  password: "123456",
  password_confirmation: "123456",
  last_login: nil,
  email: "dexter@tester.com",
  role: commonRole
})

lawfull = Alignment.create!({name: "Ordeiro", style: "lawfull"})
neutral = Alignment.create!({name: "Neutro", style: "neutral"})
chaotic = Alignment.create!({name: "Caótico", style: "chaotic"})

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

events = PageCategory.create!({title: "Acontecimentos"})
creatures = PageCategory.create!({title: "Criaturas"})
journals = PageCategory.create!({title: "Diários de Campanha"})
locations = PageCategory.create!({title: "Localidades"})
maps = PageCategory.create!({title: "Mapas"})
npc = PageCategory.create!({title: "Aliados"})
organizations = PageCategory.create!({title: "Organizações"})

# Trait.create!([
#   {name: "Couraça", description: "Ataques de perfuração recebidos causam apenas metade do dano", trait_type_id: 1, user: adminUser},
#   {name: "Corpo Ósseo", description: "Ataques de corte e perfuração recebidos causam apenas metade do dano", trait_type_id: 1, user: adminUser}
# ])

dwarves = CharacterRace.create!({
  name: "Anões",
  singular_name: "Anão",
  picture: "https://i.pinimg.com/564x/29/03/7c/29037c18b75badfeaa7dafe3f17f333a.jpg",
  example_picture: "https://i.pinimg.com/564x/fb/cf/59/fbcf59cd7a8fa21b4f732b4761c041da.jpg",
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
  singular_name: "Elfo",
  picture: "https://i.pinimg.com/736x/81/1a/7a/811a7aa0c7621053c62ab5fa17a1ec8d--male-elf-character-concept.jpg",
  example_picture: "https://i.pinimg.com/736x/09/af/99/09af99d9b0d33f7f4334a904ab7251f0--character-inspiration-elves.jpg",
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
  singular_name: "Humano",
  picture: "https://i.pinimg.com/564x/ba/66/34/ba6634ac7be1b24a3f7482ebb0fa4927.jpg",
  example_picture: "https://i.pinimg.com/564x/92/38/be/9238be8625e38d36b6e8a4b6fa80c211.jpg",
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
  singular_name: "Halfling",
  picture: "http://paizo.com/image/content/PathfinderRPG/PZO1115-SickeningSong.jpg",
  example_picture: "https://i.pinimg.com/564x/c2/52/48/c25248a05aca896a937d6ce0da6e7cc0.jpg",
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
  {name: "Pequeno", description: "Por serem pequenos e ágeis, os halflings recebem um bônus de +2 na sua Classe de Armadura sempre que estiver em combate com criaturas maiores que um humano.", armor_class_bonus: 2, trait_type_id: 1, user: adminUser},
  {name: "Furtivo", description: "Halflings são mestres na camuflagem e na furtividade. Possuem 10\% de chance de passarem furtivamente ou de esconder-se, mesmo que não sejam ladrões. Caso pertençam à classe ladrão, esse bônus será adicionado ao percentual conferido pelo nível do personagem na classe.", stealth: 10, trait_type_id: 1, user: adminUser}
])

CharacterRaceLanguage.create!([
  {character_race_id: 1, language_type_id: 1},
  {character_race_id: 1, language_type_id: 2},
  {character_race_id: 2, language_type_id: 1},
  {character_race_id: 2, language_type_id: 3}
])

arcanist = CharacterClassType.create!({
  name: "Arcano", 
  can_use_magic: true, 
  protection: 15, 
  key_attr: "INT", 
  can_bane_undead: false, 
  has_thief_talents: false,
  spell_type_id: 1
})

fighter = CharacterClassType.create!({
  name: "Combatente", 
  can_use_magic: false, 
  protection: 15, 
  key_attr: "FOR", 
  can_bane_undead: false, 
  has_thief_talents: false
})

spiritualist = CharacterClassType.create!({
  name: "Espiritualista", 
  can_use_magic: true, 
  protection: 15, 
  key_attr: "SAB", 
  can_bane_undead: true, 
  has_thief_talents: false,
  spell_type_id: 2
})

stealthy = CharacterClassType.create!({
  name: "Furtivo", 
  can_use_magic: false, 
  protection: 15, 
  key_attr: "DES", 
  can_bane_undead: false,
  has_thief_talents: true
})

# ==============================================================================
#  CLASSES

#  -----------------------------------------------------------------------------
#  CLERIC
cleric = CharacterClass.create!({
  name: "Clérigo",
  style: "ra-ankh",
  picture: "https://orig00.deviantart.net/02d2/f/2013/321/4/b/divine_blessing_by_isdira-d6uneu0.jpg",
  example_picture: "https://i.pinimg.com/564x/bc/31/b3/bc31b3df2bc2cdd71f78fe1a5afda33d.jpg",
  description: "O clérigo é visto como o líder espiritual de um grupo de "\
    "aventureiros. Dedicado a servir a uma criatura sobrenatural, muitas "\
    "vezes considerada como um deus, o clérigo toma os dogmas desse deus "\
    "como um guia para as decisões que há de tomar. O clérigo não é um mero "\
    "seguidor de uma entidade, ele é um devoto, representante dessa "\
    "entidade no mundo, devendo obedecer e pregar as diretrizes que a sua "\
    "fé lhe mpõe. É através dessa devoção que o seu deus lhe confere suas "\
    "magias, tão importantes para seguir pregando a sua palavra.",
  dice_id: 3,
  character_class_type: spiritualist,
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
  {level: 20, exp: 1300000, life_amount: 6, plus_life: true, attack_base: 8, attack_base2: 0, protection_mod: 9}
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
  {level: 20, circle_1: 9, circle_2: 8, circle_3: 7, circle_4: 6, circle_5: 5, circle_6: 5, circle_7: 3}
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

undeadHunter = cleric.specializations.create!({
  user: adminUser,
  name: "Caçador",
  description: "O clérigo passa a se dedicar à caça de mortos-vivos, " \
    "adentrando masmorras e catacumbas infestadas de esqueletos e zumbis " \
    "para colocar as pobres almas atormentadas para descansar",
  min_level: 5,
  picture: "http://www.myfreewallpapers.net/fantasy/wallpapers/cleric-vs-undead.jpg",
  stages_attributes: [
    {
      description: "O seu modificador de Carisma do caçador afasta o dobro " \
        "de dados de mortos-vivos.",
      unlock_level: 5
    },
    {
      description: "o caçador pode rolar novamente uma falha em jogada de " \
        "proteção para evitar dreno de nível ou de atributo que tenha como " \
        "origem um ataque de morto-vivo. Além disso, neste nível o caçador " \
        "passa a sentir a presença de um morto-vivo em um raio de 30 metros " \
        "ao seu redor.",
      unlock_level: 8
    },
    {
      description: "O caçador pode atingir normalmente um morto-vivo " \
        "incorpóreo, sem qualquer tipo de penalidade, além disso ele se " \
        "torna imune a todos efeitos mentais que tenham como origem um " \
        "morto-vivo.",
      unlock_level: 16
    }
  ]
})

druid = cleric.specializations.create!({
  user: adminUser,
  name: "Druida",
  alignment: neutral,
  description: "O druida é um sacerdote devotado a proteger a natureza. "\
    "Através de forte ligação com sua patrona natureza, ele é capaz de usar "\
    "magia divinas, não tomando a energia natural para si, mas sim "\
    "tornando-se um com ela. Essa relação dá outros poderes, como a "\
    "capacidade de falar com animais e tomar para si a forma deles. A "\
    "filosofia de um druida varia. Alguns apenas desejam proteger a "\
    "natureza que permanece virgem, outros sentem asco da destruição "\
    "causada pela evolução da civilização, buscando até mesmo destruir "\
    "cidades para restaurar a glória da natureza.",
  min_level: 5,
  picture: "https://cdna.artstation.com/p/assets/images/images/003/204/858/large/thea-turner-wood-elf-012-recovered.jpg?1471021526",
  stages_attributes: [
    {
      description: "O clérigo não se dedica mais a um "\
        "deus em específico, dedicando sua adoração à natureza silvestre "\
        "como um todo e, a partir desse ponto, passa a se deslocar sem "\
        "deixar rastros, além de ser capaz de se comunicar com animais "\
        "silvestres.",
      unlock_level: 5
    },
    {
      description: "O druida troca o seu poder de afastar "\
        "mortos-vivos pelo poder de controlar animais silvestres, que "\
        "funciona da mesma forma. Um animal com 1 DVs corresponde a um "\
        "esqueleto, um animal com 2 DVs equivale a um zumbi e assim "\
        "sucessivamente, até o máximo de um animal com 8 DVs, que "\
        "corresponde a um vampiro. A indicação A na tabela T3-2 indica "\
        "que o animal é automaticamente controlado, e a indicação D não "\
        "gera efeito adicional.",
      unlock_level: 8
    },
    {
      description: "O druida pode assumir a forma de um animal "\
        "silvestre até 3 vezes por dia. Nessa metamorfose, o druida "\
        "recuperará 3d8 PVs, e durante a metamorfose, a roupa e um item à "\
        "escolha do druida serão absorvidos, reaparecendo quando este "\
        "retornar à forma original. Um clérigo que se torna um druida não "\
        "constrói uma fortaleza, mas sim cria um círculo druídico para "\
        "adoração da natureza, junto com os seguidores que conquista.",
      unlock_level: 16
    }
  ]
})

cultist = cleric.specializations.create!({
  user: adminUser,
  name: "Cultista",
  alignment: chaotic,
  description: "Os cultistas adoram os males mais antigos, alguns os adoram "\
    "por loucura, apatia ou niilismo enquanto outros procuram seu poder. "\
    "Alguns podem mesmo adorar essas criaturas vilões do idealismo. O "\
    "Cultista quase nunca adora deidades, já que as divindades usam "\
    "clérigos e não cultistas. Muitos cultos cultuam demônios e outras "\
    "entidades caóticas.",
  min_level: 5,
  picture: "https://s-media-cache-ak0.pinimg.com/originals/0d/83/cd/0d83cd90509dc96cff4038b31fd13bd4.jpg",
  stages_attributes: [
    {
      description: "O clérigo não se dedica mais a um "\
        "deus, mas sim a criaturas absolutamente caóticas, provenientes de "\
        "outros planos de existência, recebendo através de sonhos os "\
        "desejos de seus senhores caóticos. A partir desse ponto, o clérigo "\
        "não precisa mais meditar para receber magias, sendo que as recebe "\
        "durante os sonhos.",
      unlock_level: 5
    },
    {
      description: "O cultista pode optar, ao invés "\
        "de afastar automaticamente um morto-vivo, por controlá-lo por até "\
        "24 horas. Findo esse período, o morto-vivo não estará mais sob o "\
        "controle do cultista.",
      unlock_level: 8
    },
    {
      description: "O cultista pode afastar "\
        "criaturas ordeiras da mesma forma que um clérigo afasta "\
        "mortos-vivos, sendo que um esqueleto equivale a uma criatura de "\
        "1 DV, um zumbi equivale a uma criatura de 2 DVs e assim "\
        "sucessivamente, até o máximo de uma criatura com 8 DVs, que "\
        "equivale a um vampiro. A indicação A na tabela T3-2 indica que a "\
        "criatura é automaticamente afastada, e a indicação D indica que a "\
        "criatura é automaticamente destruída. Um cultista pode empregar o "\
        "uso de armas cortantes para rituais.",
      unlock_level: 16
    }
  ]
})

#  -----------------------------------------------------------------------------
#  Man Of Arms
manOfArms = CharacterClass.create!({
  name: "Homem de Armas",
  style: "ra-battered-axe",
  picture: "http://wallpoper.com/images/00/41/88/66/knights-fight_00418866.jpg",
  example_picture: "https://i.pinimg.com/564x/4c/da/35/4cda35a526dee024912c7e3da1e0f807.jpg",
  description: "O homem de armas é o especialista em combate. Seu principal "\
    "atributo é a Força, que permite causar um considerável dano em seus "\
    "inimigos. Devido à sua capacidade de resistir aos ferimentos, "\
    "geralmente o homem de armas se coloca em meio aos inimigos para atrair "\
    "a sua atenção e, dessa forma, proteger seus companheiros mais fracos "\
    "e feridos.", 
  dice_id: 4,
  character_class_type: fighter,
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

paladin = manOfArms.specializations.create!({
  user: adminUser,
  name: "Paladino",
  alignment: lawfull,
  description: "Paladinos são campeões da justiça, bondade e lealdade. "\
    "Possuem habilidades de combate como um guerreiro e prestam devoção a "\
    "um deus (ou deuses), obtendo assim poder para lançar magias da mesma "\
    "forma que um clérigo. Todavia, ao contrário dos clérigos, um paladino "\
    "jamais pode servir um deus maligno. O Paladino é um guerreiro santo "\
    "que promove o bem.",
  min_level: 5,
  picture: "https://i.pinimg.com/736x/89/71/2f/89712f5c4035d3cab8ece6102a50691c--paladin-fantasy-artwork.jpg",
  stages_attributes: [
    {
      description: "O homem de armas passa a se dedicar "\
        "fielmente a uma causa e a erradicar o caos, sendo que todos "\
        "aqueles que se opõe a essa causa são seus adversários, e todos "\
        "aqueles que abraçam essa causa são seus aliados. Um paladino é "\
        "capaz de detectar o caos a 1 quilômetro de distância, desde que "\
        "se concentre para tal. Existem diversas causas pelas quais um "\
        "paladino pode vir lutar a favor, tais como a liberdade, a vida, a "\
        "tirania, a opressão, dentre tantas outras possibilidades à escolha "\
        "do jogador.",
      unlock_level: 5
    },
    {
      description: "O paladino causa +1d6 de dano nos ataques "\
        "contra criaturas caóticas.",
      unlock_level: 8
    },
    {
      description: "O dano extra aumenta para +2d6 e o "\
        "paladino passa a emanar uma aura de proteção contra o caos de 3 "\
        "metros de raio. Se um paladino usar um item mágico caótico (mesmo "\
        "sem saber do alinhamento do item), perderá automaticamente 2 "\
        "níveis e não poderá usar seus poderes enquanto estiver portando "\
        "esse item. Se um paladino, por algum motivo, deixar de ser "\
        "ordeiro, perderá 3 níveis e perderá todos seus poderes, até que "\
        "retorne ao alinhamento apropriado.",
      unlock_level: 16
    }
  ]
})
  
warrior = manOfArms.specializations.create!({
  user: adminUser,
  name: "Guerreiro",
  alignment: neutral,
  description: "O  guerreiro é um especialista em armas, combate e, quando "\
      "inteligente o suficiente, táticas e estratégia.",
  min_level: 5,
  picture: "https://i.pinimg.com/736x/46/75/14/467514245819ff22dfd5be8af7da3a56--warrior-queen-fantasy-warrior.jpg",
  stages_attributes: [
    {
      description: "O homem de armas escolhe uma arma na qual "\
        "se especializará, recebendo um bônus de +1 nos ataques e no dano "\
        "usando a arma escolhida.",
      unlock_level: 5
    },
    {
      description: "O guerreiro receberá um bônus de "\
        "+2 nos ataques e no dano usando essa arma, recebendo também uma "\
        "penalidade de -2 nos ataques utilizando qualquer outra arma que "\
        "não a que escolheu.",
      unlock_level: 8
    },
    {
      description: "O guerreiro receberá um bônus de "\
        "+4 nos ataques e no dano usando utilizando a arma preferida, "\
        "recebendo também uma penalidade de -4 nos ataques utilizando "\
        "qualquer outra arma.",
      unlock_level: 16
    }
  ]
})
  
barbarian = manOfArms.specializations.create!({
  user: adminUser,
  name: "Bárbaro",
  alignment: chaotic,
  description: "Bárbaros são combatentes de origem selvagem, geralmente "\
    "derivados de tribos bárbaras em regiões distantes. Justamente por sua "\
    "distância da civilização, eles não tem refinamento algum em seu jeito "\
    "de lutar, dando espaço ao uso de força bruta. Presumivelmente, também "\
    "não são muito inteligentes.",
  min_level: 5,
  picture: "https://orig00.deviantart.net/4f0f/f/2013/316/0/d/snow_barbarian_leader_by_theboyofcheese-d6tyxwt.jpg",
  stages_attributes: [
    {
      description: "O homem de armas rejeita as regras e os "\
        "costumes da sociedade, adotando uma vida livre e desapegada de "\
        "leis e da ordem. A partir desse nível, o homem de armas não "\
        "poderá mais usar escudos nem armaduras superiores às de couro, "\
        "porém sua selvageria o tornará mais resistente, concedendo um "\
        "bônus de +2 para as jogadas de proteção que envolvam o atributo "\
        "Constituição.",
      unlock_level: 5
    },
    {
      description: "Devido à sua determinação "\
        "selvagem, o bárbaro não mais cairá ao chegar a 0 PVs, permanecendo "\
        "em pé e lutando, até chegar a -10 PV, ocasião em que morrerá "\
        "automaticamente.",
      unlock_level: 8
    },
    {
      description: "O bárbaro absorverá 1/3 de todo o "\
        "dano que receber. Um bárbaro de 11o nível não ergue uma fortaleza, "\
        "mas sim estabelece uma tribo de bárbaros proscritos, junto com os "\
        "seguidores que conseguir.",
      unlock_level: 16
    }
  ]
})

#  -----------------------------------------------------------------------------
#  THIEF
thief = CharacterClass.create!({
  name: "Ladrão",
  style: "ra-hood",
  # picture: "http://sm.ign.com/ign_br/news/n/new-thief-/new-thief-sequel-rumours-quashed-by-developer_aq2f.jpg",
  picture: "https://img.fireden.net/tg/image/1457/18/1457187016507.jpg",
  example_picture: "https://i.pinimg.com/564x/4d/2c/7e/4d2c7eded5325bab2b70af297d7d888d.jpg",
  description: "O ladrão é um personagem que se especializa em arrombar  "\
    "fechaduras, desarmar armadilhas e  outras atividades furtivas, além de "\
    "roubar, pungar e outras formas ilícitas de enriquecimento. Um bom "\
    "ladrão é membro de uma guilda, pois, com seus contatos, consegue "\
    "descobrir informações secretas, como por exemplo, qual dos guardas da "\
    "vigília aceita peças de ouro para fingir que não viu um determinado "\
    "halfling pulando a janela da casa de alguém no meio da noite.", 
  dice_id: 2,
  character_class_type: stealthy,
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

ranger = thief.specializations.create!({
  user: adminUser,
  name: "Guardião",
  alignment: lawfull,
  description: "Guardiões são guerreiros que possuem ligações com forças da "\
    "natureza, a quem são devotados e buscam proteger. Acostumados com o "\
    "ambiente selvagem, sabem de coisas relativas a esse meio, o que "\
    "geralmente os torna excelentes rastreadores e caçadores, bem como "\
    "peritos em sobrevivência.",
  min_level: 5,
  picture: "https://s-media-cache-ak0.pinimg.com/originals/b3/69/9e/b3699ee549760bf567f9ce037ed8a885.jpg",
  stages_attributes: [
    {
      description: "O ladrão toma o rumo dos ermos e "\
        "se dedica a patrulhar uma determinada área, protegendo-a de um "\
        "certo tipo de criatura, sendo que, a partir desse nível, o ladrão "\
        "poderá se deslocar sem deixar qualquer tipo de rastro e receberá "\
        "+1 para todas as jogadas envolvendo surpresa.",
      unlock_level: 5
    },
    {
      description: "O Guardião receberá um bônus de +1 "\
        "nos ataques e no dano contra o tipo de criatura escolhido. A "\
        "partir desse ponto, o Guardião não progredirá mais em arrombar "\
        "fechaduras e pungar. Escalar muros poderá ser utilizado para "\
        "árvores, penhascos, etc. Ouvir barulhos servirá para rastrear uma "\
        "criatura.",
      unlock_level: 8
    },
    {
      description: "O bônus contra o tipo de "\
        "criatura determinado no 5o nível passa para +2, o Guardião não será "\
        "mais surpreendido e sempre surpreenderá um inimigo, desde que não "\
        "se trate de outro Guardião.",
      unlock_level: 16
    }
  ]
})
  
explorer = thief.specializations.create!({
  user: adminUser,
  name: "Explorador",
  alignment: lawfull,
  description: "O explorador é aquele que procura o desconhecido. Ele "\
    "explora desde florestas profundas e montanhas altas, até cavernas e "\
    "ruínas antigas para explorar. Geralmente reconhece de longe uma "\
    "armadilha, mesmo que muito bem preparada.",
  min_level: 5,
  picture: "https://s-media-cache-ak0.pinimg.com/originals/0b/24/21/0b242133cb0b12b0c1e9f7cc6b5a0919.jpg",
  stages_attributes: [
    {
      description: "O ladrão abandona a vida de "\
        "crimes, se dedicando à exploração de ruínas e templos perdidos. "\
        "A partir desse nível o explorador possui 80% de chance de "\
        "conseguir decifrar qualquer tipo de escrita. Em caso de falha, "\
        "uma nova tentativa só poderá ser realizada após o explorador ter "\
        "subido um nível.",
      unlock_level: 5
    },
    {
      description: "O explorador para de progredir em "\
        "pungar, mas recebe um bônus de 10% para jogadas que envolvam "\
        "reconhecer e desarmar armadilhas.",
      unlock_level: 8
    },
    {
      description: "O explorador pode lançar magias "\
        "arcanas a partir de pergaminhos com 90% de chance de sucesso. Uma "\
        "falha nessa jogada significa que ocorrerá um evento aleatório e de "\
        "graves consequências para o explorador e para seu grupo.",
      unlock_level: 16
    }
  ]
})
  
bard = thief.specializations.create!({
  user: adminUser,
  name: "Bardo",
  alignment: neutral,
  description: "Bardos são cantores e contadores de histórias natos. "\
    "Geralmente são bons músicos, seja na forma do canto ou das notas de "\
    "seu instrumento ou ainda bons atores ou artistas plásticos. Mas "\
    "também, através da historias que conhecem dos contatos sociais que "\
    "possuem, também são valiosíssimas fontes de informação.",
  min_level: 5,
  picture: "https://data.whicdn.com/images/123666370/original.jpg",
  stages_attributes: [
    {
      description: "O ladrão passa a desenvolver a "\
        "música e a oratória como forma de contar os feitos de seu grupo e "\
        "como forma de motivar seus aliados, dando a eles um bônus de +1 "\
        "para suas jogadas de proteção.",
      unlock_level: 5
    },
    {
      description: "O bardo não progredirá mais em "\
        "ataque pelas costas. A partir deste nível o bardo aumenta em 10% a "\
        "chance de que uma criatura que normalmente seria hostil para com "\
        "ele aja de forma amistosa.",
      unlock_level: 8
    },
    {
      description: "O bônus de moral conferido pela "\
        "canção do bardo passa para +3 para os ataques e jogadas de "\
        "proteção de seus aliados.",
      unlock_level: 16
    }
  ]
})
  
assassin = thief.specializations.create!({
  user: adminUser,
  name: "Assassino",
  alignment: chaotic,
  description: "Os assassinos são especialistas na aplicação de golpes "\
  "rápidos e mortais, treinados nas macabras artes do assassinato, o que "\
  "inclui infiltração, disfarces, conhecimentos sobre anatomia, uso de "\
  "venenos e artes macabras.",
  min_level: 5,
  picture: "http://wallpapersfan.com/wp-content/uploads/2017/10/132709-www.wallpapersfan.com.jpg",
  stages_attributes: [
    {
      description: "O ladrão passa a desenvolver "\
        "técnicas mais eficientes para matar seus oponentes, recebendo um "\
        "bônus de +2 no dano sempre que sua jogada de ataque resultar em um "\
        "acerto crítico.",
      unlock_level: 5
    },
    {
      description: "O assassino não progredirá mais "\
        "em pungar e em reconhecer e desarmar armadilhas. A progressão "\
        "antes utilizada para pungar passará a ser utilizada para que o "\
        "assassino manipule veneno e o aplique com segurança em suas armas "\
        "ou em objetos.",
      unlock_level: 8
    },
    {
      description: "Sempre que sua jogada de ataque "\
        "resultar em acerto crítico, o alvo deverá realizar uma jogada de "\
        "proteção modificada pela sua Constituição ou morrer "\
        "automaticamente.",
      unlock_level: 16
    }
  ]
})

#  -----------------------------------------------------------------------------
#  MAGE
mage = CharacterClass.create!({
  name: "Mago",
  style: "ra-burning-meteor",
  # picture: "http://ll-c.ooyala.com/e1/VweTk5YzE6uMVLB0BoRaGmMkCsUVotQN/promo326678796",
  picture: "https://78.media.tumblr.com/tumblr_mcmg4qj6381qjvigio1_1280.jpg",
  example_picture: "https://i.pinimg.com/564x/45/f2/ae/45f2ae21ceb10c828a896a6a08eed4d1.jpg",
  description: "O mago é um pesquisador de magias arcanas, que as escreve "\
    "em seus grimórios ou em pergaminhos, sendo que os mais experientes "\
    "conseguem criar itens mágicos extraordinários. Por dedicar seu tempo a "\
    "estudos e desenvolvimento de magias, um mago não tem boa habilidade "\
    "marcial em combate e deve evitar a todo custo o confronto direto com "\
    "inimigos.", 
  dice_id: 1,
  character_class_type: arcanist,
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

diviner = mage.specializations.create!({
  user: adminUser,
  name: "Adivinhador",
  alignment: neutral,
  description: "O mago adivinhador aperfeiçoa o seu estudo, se "\
    "especializando em buscar objetos e conhecimentos perdidos e em analisar "\
    "itens mágicos.",
  min_level: 5,
  picture: "https://i.pinimg.com/originals/3d/f5/a5/3df5a5f0ffaa7a8670d8c72a8596f715.jpg",
  stages_attributes: [
    {
      description: "O adivinhador pode, ao analisar detidamente um item, "\
        "identificar propriedades mágicas e outras informações a seu "\
        "respeito.\n"\
        "Para cada turno que o adivinhador se dedica a analisar o item, uma "\
        "pergunta é respondida, na seguinte ordem:"\
        "1. Alinhamento do item. 2. Propósito do item. 3. Material do item."\
        "4. Habilidade mágica do item (havendo mais de uma, escolha aleatória)."\
        "A análise de itens é uma atividade estafante.\n"\
        "Para cada turno que o adivinhador se dedicar a analisar o item, é "\
        "necessário uma jogada de proteção modificada pela Constituição para "\
        "que o adivinhador não fique esgotado. Três falhas consecutivas ou "\
        "cinco alternadas em um mesmo dia faz com que o adivinhador não "\
        "consiga lançar magias até que descanse por oito horas (ou quatro, "\
        "se for elfo).\nAinda, o adivinhador pode, através da observação, "\
        "localizar portas, itens e armadilhas mágicas, além de identificar "\
        "e compreender qualquer tipo de escrita. Essa observação é em formato "\
        "de cone (3m + 1m/nível) e pode ficar ativa pela quantidade de turnos "\
        "equivalentes ao nível do adivinhador. Para que essa habilidade "\
        "funcione corretamente, é necessário que o adivinhador esteja olhando "\
        "diretamente para o local específico, a não ser a partir do 11o "\
        "nível, ponto em que o adivinhador pode utilizar essa habilidade "\
        "através de uma bola de cristal.",
      unlock_level: 5
    },
    {
      description: "O adivinhador pode fazer duas perguntas em um mesmo "\
        "turno, realizando apenas uma jogada de proteção nesse tempo.",
      unlock_level: 8
    },
    {
      description: "O adivinhador pode fazer quatro perguntas em um mesmo "\
        "turno, realizando apenas uma jogada de proteção nesse tempo.",
      unlock_level: 16
    }
  ]
})

illusionist = mage.specializations.create!({
  user: adminUser,
  name: "Ilusionista",
  alignment: neutral,
  description: "Os ilusionistas são mágicos que se especializam na arte de "\
    "ludibriar, usando os sentidos de seu alvo como meios de exibir suas "\
    "habilidades.",
  min_level: 5,
  picture: "https://i.pinimg.com/736x/14/db/fb/14dbfb235b167dc5d28b178e317320de--character-ideas-character-art.jpg",
  stages_attributes: [
    {
      description: "O mago passa a se dedicar ao estudo e à "\
        "criação de ilusões, podendo uma vez ao dia criar uma ilusão menor "\
        "e limitada ao seu corpo. Criaturas inteligentes têm 60% de chance "\
        "de não acreditar na ilusão criada, enquanto criaturas não "\
        "inteligentes têm apenas 40% de chance.",
      unlock_level: 5
    },
    {
      description: "O ilusionista pode criar uma "\
        "ilusão que envolva uma área de tamanho equivalente ao seu nível "\
        "em m3, três vezes ao dia. Criaturas inteligentes têm 50% de chance "\
        "de não acreditar na ilusão criada, enquanto criaturas não "\
        "inteligentes têm apenas 30% de chance.",
      unlock_level: 8
    },
    {
      description: "O ilusionista pode criar ilusões "\
        "praticamente ilimitadas, cinco vezes ao dia. Criaturas "\
        "inteligentes têm 40% de chance de não acreditar na ilusão criada, "\
        "enquanto criaturas não inteligentes têm apenas 20% de chance.",
      unlock_level: 16
    }
  ]
})
  
necromancer = mage.specializations.create!({
  user: adminUser,
  name: "Necromante",
  alignment: chaotic,
  description: "Um Necromante é um usuário de mágia que é capaz de utilizar "\
    "as energias negativas que fluem através de suas veias. São semelhantes "\
    "aos magos, mas são mais adeptos da necromancia e, até certo ponto, dos "\
    "feitiços de encantamento. Eles usam suas habilidades para obter "\
    "controle absoluto sobre os corpos, mentes e almas de seus inimigos e, "\
    "geralmente, a melhor coisa a fazer é criar / convocar mortos-vivos de "\
    "seus inimigos caídos, habilidade em que são incomparáveis.",
  min_level: 5,
  picture: "http://www.planeswalkerslibrary.com/images/m14/art/011.jpg",
  stages_attributes: [
    {
      description: "O mago passa a se dedicar ao estudo das "\
        "artes sombrias, que envolvem a criação e o controle de "\
        "mortos-vivos, podendo reanimar um esqueleto por dia, que obedecerá "\
        "às suas ordens e o efeito durará por uma semana.",
      unlock_level: 5
    },
    {
      description: "O necromante poderá reanimar três "\
        "esqueletos por dia, que obedecerão às suas ordens e durarão até "\
        "que sejam destruídos.",
      unlock_level: 8
    },
    {
      description: "O necromante poderá se tornar um "\
        "lich, se tornando imune a efeitos de sono, medo, frio, veneno e "\
        "outros que necessitem de alvos vivos, bem como se torna imune a "\
        "acertos críticos. O lich transfere sua alma para uma filactéria, "\
        "uma gema mágica criada no ritual em que o necromante se tornou um "\
        "morto-vivo. Caso venha a ser destruído, o lich retornará em 1d4 "\
        "dias, desde que a filactéria esteja intacta.",
      unlock_level: 16
    }
  ]
})

# ==============================================================================

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
  {value: 20, hitpoints_mod: 5, protection_mod: 5, resurrection_mod: 95},
  {value: 21, hitpoints_mod: 5, protection_mod: 5, resurrection_mod: 95},
  {value: 22, hitpoints_mod: 6, protection_mod: 6, resurrection_mod: 95},
  {value: 23, hitpoints_mod: 6, protection_mod: 6, resurrection_mod: 95},
  {value: 24, hitpoints_mod: 7, protection_mod: 7, resurrection_mod: 95},
  {value: 25, hitpoints_mod: 7, protection_mod: 7, resurrection_mod: 95},
  {value: 26, hitpoints_mod: 8, protection_mod: 8, resurrection_mod: 95},
  {value: 27, hitpoints_mod: 8, protection_mod: 8, resurrection_mod: 95},
  {value: 28, hitpoints_mod: 9, protection_mod: 9, resurrection_mod: 95},
  {value: 29, hitpoints_mod: 9, protection_mod: 9, resurrection_mod: 95}
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
  {value: 1, languages_mod: 0, learn_magic_mod: 0, magic_circle_1_mod: 0, magic_circle_2_mod: 0, magic_circle_3_mod: 0},
  {value: 2, languages_mod: 0, learn_magic_mod: 0, magic_circle_1_mod: 0, magic_circle_2_mod: 0, magic_circle_3_mod: 0},
  {value: 3, languages_mod: 0, learn_magic_mod: 0, magic_circle_1_mod: 0, magic_circle_2_mod: 0, magic_circle_3_mod: 0},
  {value: 4, languages_mod: 0, learn_magic_mod: 0, magic_circle_1_mod: 0, magic_circle_2_mod: 0, magic_circle_3_mod: 0},
  {value: 5, languages_mod: 0, learn_magic_mod: 0, magic_circle_1_mod: 0, magic_circle_2_mod: 0, magic_circle_3_mod: 0},
  {value: 6, languages_mod: 0, learn_magic_mod: 0, magic_circle_1_mod: 0, magic_circle_2_mod: 0, magic_circle_3_mod: 0},
  {value: 7, languages_mod: 0, learn_magic_mod: 0, magic_circle_1_mod: 0, magic_circle_2_mod: 0, magic_circle_3_mod: 0},
  {value: 8, languages_mod: 0, learn_magic_mod: 0, magic_circle_1_mod: 0, magic_circle_2_mod: 0, magic_circle_3_mod: 0},
  {value: 9, languages_mod: 0, learn_magic_mod: 0, magic_circle_1_mod: 0, magic_circle_2_mod: 0, magic_circle_3_mod: 0},
  {value: 10, languages_mod: 0, learn_magic_mod: 0, magic_circle_1_mod: 0, magic_circle_2_mod: 0, magic_circle_3_mod: 0},
  {value: 11, languages_mod: 0, learn_magic_mod: 0, magic_circle_1_mod: 0, magic_circle_2_mod: 0, magic_circle_3_mod: 0},
  {value: 12, languages_mod: 0, learn_magic_mod: 0, magic_circle_1_mod: 0, magic_circle_2_mod: 0, magic_circle_3_mod: 0},
  {value: 13, languages_mod: 0, learn_magic_mod: 0, magic_circle_1_mod: 0, magic_circle_2_mod: 0, magic_circle_3_mod: 0},
  {value: 14, languages_mod: 1, learn_magic_mod: 25, magic_circle_1_mod: 0, magic_circle_2_mod: 0, magic_circle_3_mod: 0},
  {value: 15, languages_mod: 1, learn_magic_mod: 25, magic_circle_1_mod: 0, magic_circle_2_mod: 0, magic_circle_3_mod: 0},
  {value: 16, languages_mod: 2, learn_magic_mod: 35, magic_circle_1_mod: 1, magic_circle_2_mod: 0, magic_circle_3_mod: 0},
  {value: 17, languages_mod: 2, learn_magic_mod: 35, magic_circle_1_mod: 1, magic_circle_2_mod: 0, magic_circle_3_mod: 0},
  {value: 18, languages_mod: 3, learn_magic_mod: 45, magic_circle_1_mod: 2, magic_circle_2_mod: 0, magic_circle_3_mod: 0},
  {value: 19, languages_mod: 3, learn_magic_mod: 45, magic_circle_1_mod: 2, magic_circle_2_mod: 0, magic_circle_3_mod: 0},
  {value: 20, languages_mod: 4, learn_magic_mod: 55, magic_circle_1_mod: 2, magic_circle_2_mod: 1, magic_circle_3_mod: 0},
  {value: 21, languages_mod: 4, learn_magic_mod: 55, magic_circle_1_mod: 2, magic_circle_2_mod: 1, magic_circle_3_mod: 0},
  {value: 22, languages_mod: 5, learn_magic_mod: 65, magic_circle_1_mod: 2, magic_circle_2_mod: 2, magic_circle_3_mod: 0},
  {value: 23, languages_mod: 5, learn_magic_mod: 65, magic_circle_1_mod: 2, magic_circle_2_mod: 2, magic_circle_3_mod: 0},
  {value: 24, languages_mod: 6, learn_magic_mod: 75, magic_circle_1_mod: 2, magic_circle_2_mod: 2, magic_circle_3_mod: 1},
  {value: 25, languages_mod: 6, learn_magic_mod: 75, magic_circle_1_mod: 2, magic_circle_2_mod: 2, magic_circle_3_mod: 1},
  {value: 26, languages_mod: 7, learn_magic_mod: 85, magic_circle_1_mod: 3, magic_circle_2_mod: 2, magic_circle_3_mod: 1},
  {value: 27, languages_mod: 7, learn_magic_mod: 85, magic_circle_1_mod: 3, magic_circle_2_mod: 2, magic_circle_3_mod: 1},
  {value: 28, languages_mod: 8, learn_magic_mod: 95, magic_circle_1_mod: 3, magic_circle_2_mod: 3, magic_circle_3_mod: 1},
  {value: 29, languages_mod: 8, learn_magic_mod: 95, magic_circle_1_mod: 3, magic_circle_2_mod: 3, magic_circle_3_mod: 1}
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

strength     = Attribute.create!(abbreviation: 'FOR', name: 'Força',        description: 'Força')
dexterity    = Attribute.create!(abbreviation: 'DES', name: 'Destreza',     description: 'Destreza')
constitution = Attribute.create!(abbreviation: 'CON', name: 'Constituição', description: 'Constituição')
intelligence = Attribute.create!(abbreviation: 'INT', name: 'Inteligência', description: 'Inteligência')
wisdom       = Attribute.create!(abbreviation: 'SAB', name: 'Sabedoria',    description: 'Sabedoria')
charisma     = Attribute.create!(abbreviation: 'CAR', name: 'Carisma',      description: 'Carisma')


str_mods = strength.attribute_modifiers

str_1  = str_mods.create({ value: 1,  armor_class_mod: 0,  climb_mod: 0,   damage_mod: -5,  followers_mod: 0,   hitpoints_mod: 0,   extra_languages_mod: 0,   learn_magic_mod: 0,   lockpick_mod: 0,   extra_spells_1_mod: 0,   extra_spells_2_mod: 0,   extra_spells_3_mod: 0,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: -5,  perception_mod: 0,   pickpocket_mod: 0,   protection_mod: 0,   ranged_attack_mod: 0,   reaction_mod: 0,   resurrection_mod: 0,   sneak_attack_mod: 0,   stealth_mod: 0,   surprise_mod: 0,   traps_mod: 0,   turn_undead_mod: '0' })
str_2  = str_mods.create({ value: 2,  armor_class_mod: 0,  climb_mod: 0,   damage_mod: -4,  followers_mod: 0,   hitpoints_mod: 0,   extra_languages_mod: 0,   learn_magic_mod: 0,   lockpick_mod: 0,   extra_spells_1_mod: 0,   extra_spells_2_mod: 0,   extra_spells_3_mod: 0,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: -4,  perception_mod: 0,   pickpocket_mod: 0,   protection_mod: 0,   ranged_attack_mod: 0,   reaction_mod: 0,   resurrection_mod: 0,   sneak_attack_mod: 0,   stealth_mod: 0,   surprise_mod: 0,   traps_mod: 0,   turn_undead_mod: '0' })
str_3  = str_mods.create({ value: 3,  armor_class_mod: 0,  climb_mod: 0,   damage_mod: -4,  followers_mod: 0,   hitpoints_mod: 0,   extra_languages_mod: 0,   learn_magic_mod: 0,   lockpick_mod: 0,   extra_spells_1_mod: 0,   extra_spells_2_mod: 0,   extra_spells_3_mod: 0,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: -4,  perception_mod: 0,   pickpocket_mod: 0,   protection_mod: 0,   ranged_attack_mod: 0,   reaction_mod: 0,   resurrection_mod: 0,   sneak_attack_mod: 0,   stealth_mod: 0,   surprise_mod: 0,   traps_mod: 0,   turn_undead_mod: '0' })
str_4  = str_mods.create({ value: 4,  armor_class_mod: 0,  climb_mod: 0,   damage_mod: -3,  followers_mod: 0,   hitpoints_mod: 0,   extra_languages_mod: 0,   learn_magic_mod: 0,   lockpick_mod: 0,   extra_spells_1_mod: 0,   extra_spells_2_mod: 0,   extra_spells_3_mod: 0,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: -3,  perception_mod: 0,   pickpocket_mod: 0,   protection_mod: 0,   ranged_attack_mod: 0,   reaction_mod: 0,   resurrection_mod: 0,   sneak_attack_mod: 0,   stealth_mod: 0,   surprise_mod: 0,   traps_mod: 0,   turn_undead_mod: '0' })
str_5  = str_mods.create({ value: 5,  armor_class_mod: 0,  climb_mod: 0,   damage_mod: -3,  followers_mod: 0,   hitpoints_mod: 0,   extra_languages_mod: 0,   learn_magic_mod: 0,   lockpick_mod: 0,   extra_spells_1_mod: 0,   extra_spells_2_mod: 0,   extra_spells_3_mod: 0,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: -3,  perception_mod: 0,   pickpocket_mod: 0,   protection_mod: 0,   ranged_attack_mod: 0,   reaction_mod: 0,   resurrection_mod: 0,   sneak_attack_mod: 0,   stealth_mod: 0,   surprise_mod: 0,   traps_mod: 0,   turn_undead_mod: '0' })
str_6  = str_mods.create({ value: 6,  armor_class_mod: 0,  climb_mod: 0,   damage_mod: -2,  followers_mod: 0,   hitpoints_mod: 0,   extra_languages_mod: 0,   learn_magic_mod: 0,   lockpick_mod: 0,   extra_spells_1_mod: 0,   extra_spells_2_mod: 0,   extra_spells_3_mod: 0,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: -2,  perception_mod: 0,   pickpocket_mod: 0,   protection_mod: 0,   ranged_attack_mod: 0,   reaction_mod: 0,   resurrection_mod: 0,   sneak_attack_mod: 0,   stealth_mod: 0,   surprise_mod: 0,   traps_mod: 0,   turn_undead_mod: '0' })
str_7  = str_mods.create({ value: 7,  armor_class_mod: 0,  climb_mod: 0,   damage_mod: -2,  followers_mod: 0,   hitpoints_mod: 0,   extra_languages_mod: 0,   learn_magic_mod: 0,   lockpick_mod: 0,   extra_spells_1_mod: 0,   extra_spells_2_mod: 0,   extra_spells_3_mod: 0,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: -2,  perception_mod: 0,   pickpocket_mod: 0,   protection_mod: 0,   ranged_attack_mod: 0,   reaction_mod: 0,   resurrection_mod: 0,   sneak_attack_mod: 0,   stealth_mod: 0,   surprise_mod: 0,   traps_mod: 0,   turn_undead_mod: '0' })
str_8  = str_mods.create({ value: 8,  armor_class_mod: 0,  climb_mod: 0,   damage_mod: -1,  followers_mod: 0,   hitpoints_mod: 0,   extra_languages_mod: 0,   learn_magic_mod: 0,   lockpick_mod: 0,   extra_spells_1_mod: 0,   extra_spells_2_mod: 0,   extra_spells_3_mod: 0,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: -1,  perception_mod: 0,   pickpocket_mod: 0,   protection_mod: 0,   ranged_attack_mod: 0,   reaction_mod: 0,   resurrection_mod: 0,   sneak_attack_mod: 0,   stealth_mod: 0,   surprise_mod: 0,   traps_mod: 0,   turn_undead_mod: '0' })
str_9  = str_mods.create({ value: 9,  armor_class_mod: 0,  climb_mod: 0,   damage_mod: -1,  followers_mod: 0,   hitpoints_mod: 0,   extra_languages_mod: 0,   learn_magic_mod: 0,   lockpick_mod: 0,   extra_spells_1_mod: 0,   extra_spells_2_mod: 0,   extra_spells_3_mod: 0,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: -1,  perception_mod: 0,   pickpocket_mod: 0,   protection_mod: 0,   ranged_attack_mod: 0,   reaction_mod: 0,   resurrection_mod: 0,   sneak_attack_mod: 0,   stealth_mod: 0,   surprise_mod: 0,   traps_mod: 0,   turn_undead_mod: '0' })
str_10 = str_mods.create({ value: 10, armor_class_mod: 0,  climb_mod: 0,   damage_mod: 0,   followers_mod: 0,   hitpoints_mod: 0,   extra_languages_mod: 0,   learn_magic_mod: 0,   lockpick_mod: 0,   extra_spells_1_mod: 0,   extra_spells_2_mod: 0,   extra_spells_3_mod: 0,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: 0,   perception_mod: 0,   pickpocket_mod: 0,   protection_mod: 0,   ranged_attack_mod: 0,   reaction_mod: 0,   resurrection_mod: 0,   sneak_attack_mod: 0,   stealth_mod: 0,   surprise_mod: 0,   traps_mod: 0,   turn_undead_mod: '0' })
str_11 = str_mods.create({ value: 11, armor_class_mod: 0,  climb_mod: 0,   damage_mod: 0,   followers_mod: 0,   hitpoints_mod: 0,   extra_languages_mod: 0,   learn_magic_mod: 0,   lockpick_mod: 0,   extra_spells_1_mod: 0,   extra_spells_2_mod: 0,   extra_spells_3_mod: 0,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: 0,   perception_mod: 0,   pickpocket_mod: 0,   protection_mod: 0,   ranged_attack_mod: 0,   reaction_mod: 0,   resurrection_mod: 0,   sneak_attack_mod: 0,   stealth_mod: 0,   surprise_mod: 0,   traps_mod: 0,   turn_undead_mod: '0' })
str_12 = str_mods.create({ value: 12, armor_class_mod: 0,  climb_mod: 0,   damage_mod: 1,   followers_mod: 0,   hitpoints_mod: 0,   extra_languages_mod: 0,   learn_magic_mod: 0,   lockpick_mod: 0,   extra_spells_1_mod: 0,   extra_spells_2_mod: 0,   extra_spells_3_mod: 0,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: 1,   perception_mod: 0,   pickpocket_mod: 0,   protection_mod: 0,   ranged_attack_mod: 0,   reaction_mod: 0,   resurrection_mod: 0,   sneak_attack_mod: 0,   stealth_mod: 0,   surprise_mod: 0,   traps_mod: 0,   turn_undead_mod: '0' })
str_13 = str_mods.create({ value: 13, armor_class_mod: 0,  climb_mod: 0,   damage_mod: 1,   followers_mod: 0,   hitpoints_mod: 0,   extra_languages_mod: 0,   learn_magic_mod: 0,   lockpick_mod: 0,   extra_spells_1_mod: 0,   extra_spells_2_mod: 0,   extra_spells_3_mod: 0,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: 1,   perception_mod: 0,   pickpocket_mod: 0,   protection_mod: 0,   ranged_attack_mod: 0,   reaction_mod: 0,   resurrection_mod: 0,   sneak_attack_mod: 0,   stealth_mod: 0,   surprise_mod: 0,   traps_mod: 0,   turn_undead_mod: '0' })
str_14 = str_mods.create({ value: 14, armor_class_mod: 0,  climb_mod: 0,   damage_mod: 2,   followers_mod: 0,   hitpoints_mod: 0,   extra_languages_mod: 0,   learn_magic_mod: 0,   lockpick_mod: 0,   extra_spells_1_mod: 0,   extra_spells_2_mod: 0,   extra_spells_3_mod: 0,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: 2,   perception_mod: 0,   pickpocket_mod: 0,   protection_mod: 0,   ranged_attack_mod: 0,   reaction_mod: 0,   resurrection_mod: 0,   sneak_attack_mod: 0,   stealth_mod: 0,   surprise_mod: 0,   traps_mod: 0,   turn_undead_mod: '0' })
str_15 = str_mods.create({ value: 15, armor_class_mod: 0,  climb_mod: 0,   damage_mod: 2,   followers_mod: 0,   hitpoints_mod: 0,   extra_languages_mod: 0,   learn_magic_mod: 0,   lockpick_mod: 0,   extra_spells_1_mod: 0,   extra_spells_2_mod: 0,   extra_spells_3_mod: 0,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: 2,   perception_mod: 0,   pickpocket_mod: 0,   protection_mod: 0,   ranged_attack_mod: 0,   reaction_mod: 0,   resurrection_mod: 0,   sneak_attack_mod: 0,   stealth_mod: 0,   surprise_mod: 0,   traps_mod: 0,   turn_undead_mod: '0' })
str_16 = str_mods.create({ value: 16, armor_class_mod: 0,  climb_mod: 0,   damage_mod: 3,   followers_mod: 0,   hitpoints_mod: 0,   extra_languages_mod: 0,   learn_magic_mod: 0,   lockpick_mod: 0,   extra_spells_1_mod: 0,   extra_spells_2_mod: 0,   extra_spells_3_mod: 0,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: 3,   perception_mod: 0,   pickpocket_mod: 0,   protection_mod: 0,   ranged_attack_mod: 0,   reaction_mod: 0,   resurrection_mod: 0,   sneak_attack_mod: 0,   stealth_mod: 0,   surprise_mod: 0,   traps_mod: 0,   turn_undead_mod: '0' })
str_17 = str_mods.create({ value: 17, armor_class_mod: 0,  climb_mod: 0,   damage_mod: 3,   followers_mod: 0,   hitpoints_mod: 0,   extra_languages_mod: 0,   learn_magic_mod: 0,   lockpick_mod: 0,   extra_spells_1_mod: 0,   extra_spells_2_mod: 0,   extra_spells_3_mod: 0,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: 3,   perception_mod: 0,   pickpocket_mod: 0,   protection_mod: 0,   ranged_attack_mod: 0,   reaction_mod: 0,   resurrection_mod: 0,   sneak_attack_mod: 0,   stealth_mod: 0,   surprise_mod: 0,   traps_mod: 0,   turn_undead_mod: '0' })
str_18 = str_mods.create({ value: 18, armor_class_mod: 0,  climb_mod: 0,   damage_mod: 4,   followers_mod: 0,   hitpoints_mod: 0,   extra_languages_mod: 0,   learn_magic_mod: 0,   lockpick_mod: 0,   extra_spells_1_mod: 0,   extra_spells_2_mod: 0,   extra_spells_3_mod: 0,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: 4,   perception_mod: 0,   pickpocket_mod: 0,   protection_mod: 0,   ranged_attack_mod: 0,   reaction_mod: 0,   resurrection_mod: 0,   sneak_attack_mod: 0,   stealth_mod: 0,   surprise_mod: 0,   traps_mod: 0,   turn_undead_mod: '0' })
str_19 = str_mods.create({ value: 19, armor_class_mod: 0,  climb_mod: 0,   damage_mod: 4,   followers_mod: 0,   hitpoints_mod: 0,   extra_languages_mod: 0,   learn_magic_mod: 0,   lockpick_mod: 0,   extra_spells_1_mod: 0,   extra_spells_2_mod: 0,   extra_spells_3_mod: 0,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: 4,   perception_mod: 0,   pickpocket_mod: 0,   protection_mod: 0,   ranged_attack_mod: 0,   reaction_mod: 0,   resurrection_mod: 0,   sneak_attack_mod: 0,   stealth_mod: 0,   surprise_mod: 0,   traps_mod: 0,   turn_undead_mod: '0' })
str_20 = str_mods.create({ value: 20, armor_class_mod: 0,  climb_mod: 0,   damage_mod: 5,   followers_mod: 0,   hitpoints_mod: 0,   extra_languages_mod: 0,   learn_magic_mod: 0,   lockpick_mod: 0,   extra_spells_1_mod: 0,   extra_spells_2_mod: 0,   extra_spells_3_mod: 0,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: 5,   perception_mod: 0,   pickpocket_mod: 0,   protection_mod: 0,   ranged_attack_mod: 0,   reaction_mod: 0,   resurrection_mod: 0,   sneak_attack_mod: 0,   stealth_mod: 0,   surprise_mod: 0,   traps_mod: 0,   turn_undead_mod: '0' })
str_21 = str_mods.create({ value: 21, armor_class_mod: 0,  climb_mod: 0,   damage_mod: 5,   followers_mod: 0,   hitpoints_mod: 0,   extra_languages_mod: 0,   learn_magic_mod: 0,   lockpick_mod: 0,   extra_spells_1_mod: 0,   extra_spells_2_mod: 0,   extra_spells_3_mod: 0,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: 5,   perception_mod: 0,   pickpocket_mod: 0,   protection_mod: 0,   ranged_attack_mod: 0,   reaction_mod: 0,   resurrection_mod: 0,   sneak_attack_mod: 0,   stealth_mod: 0,   surprise_mod: 0,   traps_mod: 0,   turn_undead_mod: '0' })
str_22 = str_mods.create({ value: 22, armor_class_mod: 0,  climb_mod: 0,   damage_mod: 6,   followers_mod: 0,   hitpoints_mod: 0,   extra_languages_mod: 0,   learn_magic_mod: 0,   lockpick_mod: 0,   extra_spells_1_mod: 0,   extra_spells_2_mod: 0,   extra_spells_3_mod: 0,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: 6,   perception_mod: 0,   pickpocket_mod: 0,   protection_mod: 0,   ranged_attack_mod: 0,   reaction_mod: 0,   resurrection_mod: 0,   sneak_attack_mod: 0,   stealth_mod: 0,   surprise_mod: 0,   traps_mod: 0,   turn_undead_mod: '0' })
str_23 = str_mods.create({ value: 23, armor_class_mod: 0,  climb_mod: 0,   damage_mod: 6,   followers_mod: 0,   hitpoints_mod: 0,   extra_languages_mod: 0,   learn_magic_mod: 0,   lockpick_mod: 0,   extra_spells_1_mod: 0,   extra_spells_2_mod: 0,   extra_spells_3_mod: 0,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: 6,   perception_mod: 0,   pickpocket_mod: 0,   protection_mod: 0,   ranged_attack_mod: 0,   reaction_mod: 0,   resurrection_mod: 0,   sneak_attack_mod: 0,   stealth_mod: 0,   surprise_mod: 0,   traps_mod: 0,   turn_undead_mod: '0' })
str_24 = str_mods.create({ value: 24, armor_class_mod: 0,  climb_mod: 0,   damage_mod: 7,   followers_mod: 0,   hitpoints_mod: 0,   extra_languages_mod: 0,   learn_magic_mod: 0,   lockpick_mod: 0,   extra_spells_1_mod: 0,   extra_spells_2_mod: 0,   extra_spells_3_mod: 0,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: 7,   perception_mod: 0,   pickpocket_mod: 0,   protection_mod: 0,   ranged_attack_mod: 0,   reaction_mod: 0,   resurrection_mod: 0,   sneak_attack_mod: 0,   stealth_mod: 0,   surprise_mod: 0,   traps_mod: 0,   turn_undead_mod: '0' })
str_25 = str_mods.create({ value: 25, armor_class_mod: 0,  climb_mod: 0,   damage_mod: 7,   followers_mod: 0,   hitpoints_mod: 0,   extra_languages_mod: 0,   learn_magic_mod: 0,   lockpick_mod: 0,   extra_spells_1_mod: 0,   extra_spells_2_mod: 0,   extra_spells_3_mod: 0,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: 7,   perception_mod: 0,   pickpocket_mod: 0,   protection_mod: 0,   ranged_attack_mod: 0,   reaction_mod: 0,   resurrection_mod: 0,   sneak_attack_mod: 0,   stealth_mod: 0,   surprise_mod: 0,   traps_mod: 0,   turn_undead_mod: '0' })
str_26 = str_mods.create({ value: 26, armor_class_mod: 0,  climb_mod: 0,   damage_mod: 8,   followers_mod: 0,   hitpoints_mod: 0,   extra_languages_mod: 0,   learn_magic_mod: 0,   lockpick_mod: 0,   extra_spells_1_mod: 0,   extra_spells_2_mod: 0,   extra_spells_3_mod: 0,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: 8,   perception_mod: 0,   pickpocket_mod: 0,   protection_mod: 0,   ranged_attack_mod: 0,   reaction_mod: 0,   resurrection_mod: 0,   sneak_attack_mod: 0,   stealth_mod: 0,   surprise_mod: 0,   traps_mod: 0,   turn_undead_mod: '0' })
str_27 = str_mods.create({ value: 27, armor_class_mod: 0,  climb_mod: 0,   damage_mod: 8,   followers_mod: 0,   hitpoints_mod: 0,   extra_languages_mod: 0,   learn_magic_mod: 0,   lockpick_mod: 0,   extra_spells_1_mod: 0,   extra_spells_2_mod: 0,   extra_spells_3_mod: 0,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: 8,   perception_mod: 0,   pickpocket_mod: 0,   protection_mod: 0,   ranged_attack_mod: 0,   reaction_mod: 0,   resurrection_mod: 0,   sneak_attack_mod: 0,   stealth_mod: 0,   surprise_mod: 0,   traps_mod: 0,   turn_undead_mod: '0' })
str_28 = str_mods.create({ value: 28, armor_class_mod: 0,  climb_mod: 0,   damage_mod: 9,   followers_mod: 0,   hitpoints_mod: 0,   extra_languages_mod: 0,   learn_magic_mod: 0,   lockpick_mod: 0,   extra_spells_1_mod: 0,   extra_spells_2_mod: 0,   extra_spells_3_mod: 0,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: 9,   perception_mod: 0,   pickpocket_mod: 0,   protection_mod: 0,   ranged_attack_mod: 0,   reaction_mod: 0,   resurrection_mod: 0,   sneak_attack_mod: 0,   stealth_mod: 0,   surprise_mod: 0,   traps_mod: 0,   turn_undead_mod: '0' })
str_29 = str_mods.create({ value: 29, armor_class_mod: 0,  climb_mod: 0,   damage_mod: 9,   followers_mod: 0,   hitpoints_mod: 0,   extra_languages_mod: 0,   learn_magic_mod: 0,   lockpick_mod: 0,   extra_spells_1_mod: 0,   extra_spells_2_mod: 0,   extra_spells_3_mod: 0,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: 9,   perception_mod: 0,   pickpocket_mod: 0,   protection_mod: 0,   ranged_attack_mod: 0,   reaction_mod: 0,   resurrection_mod: 0,   sneak_attack_mod: 0,   stealth_mod: 0,   surprise_mod: 0,   traps_mod: 0,   turn_undead_mod: '0' })
str_30 = str_mods.create({ value: 30, armor_class_mod: 0,  climb_mod: 0,   damage_mod: 10,  followers_mod: 0,   hitpoints_mod: 0,   extra_languages_mod: 0,   learn_magic_mod: 0,   lockpick_mod: 0,   extra_spells_1_mod: 0,   extra_spells_2_mod: 0,   extra_spells_3_mod: 0,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: 10,  perception_mod: 0,   pickpocket_mod: 0,   protection_mod: 0,   ranged_attack_mod: 0,   reaction_mod: 0,   resurrection_mod: 0,   sneak_attack_mod: 0,   stealth_mod: 0,   surprise_mod: 0,   traps_mod: 0,   turn_undead_mod: '0' })


dex_mods = dexterity.attribute_modifiers

dex_1  = dex_mods.create({ value: 1,  armor_class_mod: -5, climb_mod: 0,   damage_mod: 0,   followers_mod: 0,   hitpoints_mod: 0,   extra_languages_mod: 0,   learn_magic_mod: 0,   lockpick_mod: -25, extra_spells_1_mod: 0,   extra_spells_2_mod: 0,   extra_spells_3_mod: 0,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: 0,   perception_mod: 0,   pickpocket_mod: -25, protection_mod: -5,  ranged_attack_mod: -5,  reaction_mod: 0,   resurrection_mod: 0,   sneak_attack_mod: 0,   stealth_mod: -25, surprise_mod: -5,  traps_mod: -25, turn_undead_mod: '0' })
dex_2  = dex_mods.create({ value: 2,  armor_class_mod: -4, climb_mod: 0,   damage_mod: 0,   followers_mod: 0,   hitpoints_mod: 0,   extra_languages_mod: 0,   learn_magic_mod: 0,   lockpick_mod: -20, extra_spells_1_mod: 0,   extra_spells_2_mod: 0,   extra_spells_3_mod: 0,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: 0,   perception_mod: 0,   pickpocket_mod: -20, protection_mod: -4,  ranged_attack_mod: -4,  reaction_mod: 0,   resurrection_mod: 0,   sneak_attack_mod: 0,   stealth_mod: -20, surprise_mod: -4,  traps_mod: -20, turn_undead_mod: '0' })
dex_3  = dex_mods.create({ value: 3,  armor_class_mod: -4, climb_mod: 0,   damage_mod: 0,   followers_mod: 0,   hitpoints_mod: 0,   extra_languages_mod: 0,   learn_magic_mod: 0,   lockpick_mod: -20, extra_spells_1_mod: 0,   extra_spells_2_mod: 0,   extra_spells_3_mod: 0,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: 0,   perception_mod: 0,   pickpocket_mod: -20, protection_mod: -4,  ranged_attack_mod: -4,  reaction_mod: 0,   resurrection_mod: 0,   sneak_attack_mod: 0,   stealth_mod: -20, surprise_mod: -4,  traps_mod: -20, turn_undead_mod: '0' })
dex_4  = dex_mods.create({ value: 4,  armor_class_mod: -3, climb_mod: 0,   damage_mod: 0,   followers_mod: 0,   hitpoints_mod: 0,   extra_languages_mod: 0,   learn_magic_mod: 0,   lockpick_mod: -15, extra_spells_1_mod: 0,   extra_spells_2_mod: 0,   extra_spells_3_mod: 0,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: 0,   perception_mod: 0,   pickpocket_mod: -15, protection_mod: -3,  ranged_attack_mod: -3,  reaction_mod: 0,   resurrection_mod: 0,   sneak_attack_mod: 0,   stealth_mod: -15, surprise_mod: -3,  traps_mod: -15, turn_undead_mod: '0' })
dex_5  = dex_mods.create({ value: 5,  armor_class_mod: -3, climb_mod: 0,   damage_mod: 0,   followers_mod: 0,   hitpoints_mod: 0,   extra_languages_mod: 0,   learn_magic_mod: 0,   lockpick_mod: -15, extra_spells_1_mod: 0,   extra_spells_2_mod: 0,   extra_spells_3_mod: 0,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: 0,   perception_mod: 0,   pickpocket_mod: -15, protection_mod: -3,  ranged_attack_mod: -3,  reaction_mod: 0,   resurrection_mod: 0,   sneak_attack_mod: 0,   stealth_mod: -15, surprise_mod: -3,  traps_mod: -15, turn_undead_mod: '0' })
dex_6  = dex_mods.create({ value: 6,  armor_class_mod: -2, climb_mod: 0,   damage_mod: 0,   followers_mod: 0,   hitpoints_mod: 0,   extra_languages_mod: 0,   learn_magic_mod: 0,   lockpick_mod: -10, extra_spells_1_mod: 0,   extra_spells_2_mod: 0,   extra_spells_3_mod: 0,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: 0,   perception_mod: 0,   pickpocket_mod: -10, protection_mod: -2,  ranged_attack_mod: -2,  reaction_mod: 0,   resurrection_mod: 0,   sneak_attack_mod: 0,   stealth_mod: -10, surprise_mod: -2,  traps_mod: -10, turn_undead_mod: '0' })
dex_7  = dex_mods.create({ value: 7,  armor_class_mod: -2, climb_mod: 0,   damage_mod: 0,   followers_mod: 0,   hitpoints_mod: 0,   extra_languages_mod: 0,   learn_magic_mod: 0,   lockpick_mod: -10, extra_spells_1_mod: 0,   extra_spells_2_mod: 0,   extra_spells_3_mod: 0,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: 0,   perception_mod: 0,   pickpocket_mod: -10, protection_mod: -2,  ranged_attack_mod: -2,  reaction_mod: 0,   resurrection_mod: 0,   sneak_attack_mod: 0,   stealth_mod: -10, surprise_mod: -2,  traps_mod: -10, turn_undead_mod: '0' })
dex_8  = dex_mods.create({ value: 8,  armor_class_mod: -1, climb_mod: 0,   damage_mod: 0,   followers_mod: 0,   hitpoints_mod: 0,   extra_languages_mod: 0,   learn_magic_mod: 0,   lockpick_mod: -5,  extra_spells_1_mod: 0,   extra_spells_2_mod: 0,   extra_spells_3_mod: 0,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: 0,   perception_mod: 0,   pickpocket_mod: -5,  protection_mod: -1,  ranged_attack_mod: -1,  reaction_mod: 0,   resurrection_mod: 0,   sneak_attack_mod: 0,   stealth_mod: -5,  surprise_mod: -1,  traps_mod: -5,  turn_undead_mod: '0' })
dex_9  = dex_mods.create({ value: 9,  armor_class_mod: -1, climb_mod: 0,   damage_mod: 0,   followers_mod: 0,   hitpoints_mod: 0,   extra_languages_mod: 0,   learn_magic_mod: 0,   lockpick_mod: -5,  extra_spells_1_mod: 0,   extra_spells_2_mod: 0,   extra_spells_3_mod: 0,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: 0,   perception_mod: 0,   pickpocket_mod: -5,  protection_mod: -1,  ranged_attack_mod: -1,  reaction_mod: 0,   resurrection_mod: 0,   sneak_attack_mod: 0,   stealth_mod: -5,  surprise_mod: -1,  traps_mod: -5,  turn_undead_mod: '0' })
dex_10 = dex_mods.create({ value: 10, armor_class_mod: 0,  climb_mod: 0,   damage_mod: 0,   followers_mod: 0,   hitpoints_mod: 0,   extra_languages_mod: 0,   learn_magic_mod: 0,   lockpick_mod: 0,   extra_spells_1_mod: 0,   extra_spells_2_mod: 0,   extra_spells_3_mod: 0,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: 0,   perception_mod: 0,   pickpocket_mod: 0,   protection_mod: 0,   ranged_attack_mod: 0,   reaction_mod: 0,   resurrection_mod: 0,   sneak_attack_mod: 0,   stealth_mod: 0,   surprise_mod: 0,   traps_mod: 0,   turn_undead_mod: '0' })
dex_11 = dex_mods.create({ value: 11, armor_class_mod: 0,  climb_mod: 0,   damage_mod: 0,   followers_mod: 0,   hitpoints_mod: 0,   extra_languages_mod: 0,   learn_magic_mod: 0,   lockpick_mod: 0,   extra_spells_1_mod: 0,   extra_spells_2_mod: 0,   extra_spells_3_mod: 0,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: 0,   perception_mod: 0,   pickpocket_mod: 0,   protection_mod: 0,   ranged_attack_mod: 0,   reaction_mod: 0,   resurrection_mod: 0,   sneak_attack_mod: 0,   stealth_mod: 0,   surprise_mod: 0,   traps_mod: 0,   turn_undead_mod: '0' })
dex_12 = dex_mods.create({ value: 12, armor_class_mod: 1,  climb_mod: 0,   damage_mod: 0,   followers_mod: 0,   hitpoints_mod: 0,   extra_languages_mod: 0,   learn_magic_mod: 0,   lockpick_mod: 5,   extra_spells_1_mod: 0,   extra_spells_2_mod: 0,   extra_spells_3_mod: 0,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: 0,   perception_mod: 0,   pickpocket_mod: 0,   protection_mod: 1,   ranged_attack_mod: 1,   reaction_mod: 0,   resurrection_mod: 0,   sneak_attack_mod: 0,   stealth_mod: 0,   surprise_mod: 1,   traps_mod: 0,   turn_undead_mod: '0' })
dex_13 = dex_mods.create({ value: 13, armor_class_mod: 1,  climb_mod: 0,   damage_mod: 0,   followers_mod: 0,   hitpoints_mod: 0,   extra_languages_mod: 0,   learn_magic_mod: 0,   lockpick_mod: 5,   extra_spells_1_mod: 0,   extra_spells_2_mod: 0,   extra_spells_3_mod: 0,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: 0,   perception_mod: 0,   pickpocket_mod: 0,   protection_mod: 1,   ranged_attack_mod: 1,   reaction_mod: 0,   resurrection_mod: 0,   sneak_attack_mod: 0,   stealth_mod: 0,   surprise_mod: 1,   traps_mod: 0,   turn_undead_mod: '0' })
dex_14 = dex_mods.create({ value: 14, armor_class_mod: 2,  climb_mod: 0,   damage_mod: 0,   followers_mod: 0,   hitpoints_mod: 0,   extra_languages_mod: 0,   learn_magic_mod: 0,   lockpick_mod: 10,  extra_spells_1_mod: 0,   extra_spells_2_mod: 0,   extra_spells_3_mod: 0,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: 0,   perception_mod: 0,   pickpocket_mod: 5,   protection_mod: 2,   ranged_attack_mod: 2,   reaction_mod: 0,   resurrection_mod: 0,   sneak_attack_mod: 0,   stealth_mod: 5,   surprise_mod: 2,   traps_mod: 0,   turn_undead_mod: '0' })
dex_15 = dex_mods.create({ value: 15, armor_class_mod: 2,  climb_mod: 0,   damage_mod: 0,   followers_mod: 0,   hitpoints_mod: 0,   extra_languages_mod: 0,   learn_magic_mod: 0,   lockpick_mod: 10,  extra_spells_1_mod: 0,   extra_spells_2_mod: 0,   extra_spells_3_mod: 0,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: 0,   perception_mod: 0,   pickpocket_mod: 5,   protection_mod: 2,   ranged_attack_mod: 2,   reaction_mod: 0,   resurrection_mod: 0,   sneak_attack_mod: 0,   stealth_mod: 5,   surprise_mod: 2,   traps_mod: 0,   turn_undead_mod: '0' })
dex_16 = dex_mods.create({ value: 16, armor_class_mod: 3,  climb_mod: 0,   damage_mod: 0,   followers_mod: 0,   hitpoints_mod: 0,   extra_languages_mod: 0,   learn_magic_mod: 0,   lockpick_mod: 15,  extra_spells_1_mod: 0,   extra_spells_2_mod: 0,   extra_spells_3_mod: 0,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: 0,   perception_mod: 0,   pickpocket_mod: 10,  protection_mod: 3,   ranged_attack_mod: 3,   reaction_mod: 0,   resurrection_mod: 0,   sneak_attack_mod: 0,   stealth_mod: 10,  surprise_mod: 3,   traps_mod: 5,   turn_undead_mod: '0' })
dex_17 = dex_mods.create({ value: 17, armor_class_mod: 3,  climb_mod: 0,   damage_mod: 0,   followers_mod: 0,   hitpoints_mod: 0,   extra_languages_mod: 0,   learn_magic_mod: 0,   lockpick_mod: 15,  extra_spells_1_mod: 0,   extra_spells_2_mod: 0,   extra_spells_3_mod: 0,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: 0,   perception_mod: 0,   pickpocket_mod: 10,  protection_mod: 3,   ranged_attack_mod: 3,   reaction_mod: 0,   resurrection_mod: 0,   sneak_attack_mod: 0,   stealth_mod: 10,  surprise_mod: 3,   traps_mod: 5,   turn_undead_mod: '0' })
dex_18 = dex_mods.create({ value: 18, armor_class_mod: 4,  climb_mod: 0,   damage_mod: 0,   followers_mod: 0,   hitpoints_mod: 0,   extra_languages_mod: 0,   learn_magic_mod: 0,   lockpick_mod: 20,  extra_spells_1_mod: 0,   extra_spells_2_mod: 0,   extra_spells_3_mod: 0,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: 0,   perception_mod: 0,   pickpocket_mod: 15,  protection_mod: 4,   ranged_attack_mod: 4,   reaction_mod: 0,   resurrection_mod: 0,   sneak_attack_mod: 0,   stealth_mod: 15,  surprise_mod: 4,   traps_mod: 10,  turn_undead_mod: '0' })
dex_19 = dex_mods.create({ value: 19, armor_class_mod: 4,  climb_mod: 0,   damage_mod: 0,   followers_mod: 0,   hitpoints_mod: 0,   extra_languages_mod: 0,   learn_magic_mod: 0,   lockpick_mod: 20,  extra_spells_1_mod: 0,   extra_spells_2_mod: 0,   extra_spells_3_mod: 0,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: 0,   perception_mod: 0,   pickpocket_mod: 15,  protection_mod: 4,   ranged_attack_mod: 4,   reaction_mod: 0,   resurrection_mod: 0,   sneak_attack_mod: 0,   stealth_mod: 15,  surprise_mod: 4,   traps_mod: 10,  turn_undead_mod: '0' })
dex_20 = dex_mods.create({ value: 20, armor_class_mod: 5,  climb_mod: 0,   damage_mod: 0,   followers_mod: 0,   hitpoints_mod: 0,   extra_languages_mod: 0,   learn_magic_mod: 0,   lockpick_mod: 25,  extra_spells_1_mod: 0,   extra_spells_2_mod: 0,   extra_spells_3_mod: 0,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: 0,   perception_mod: 0,   pickpocket_mod: 20,  protection_mod: 5,   ranged_attack_mod: 5,   reaction_mod: 0,   resurrection_mod: 0,   sneak_attack_mod: 0,   stealth_mod: 20,  surprise_mod: 5,   traps_mod: 15,  turn_undead_mod: '0' })
dex_21 = dex_mods.create({ value: 21, armor_class_mod: 5,  climb_mod: 0,   damage_mod: 0,   followers_mod: 0,   hitpoints_mod: 0,   extra_languages_mod: 0,   learn_magic_mod: 0,   lockpick_mod: 25,  extra_spells_1_mod: 0,   extra_spells_2_mod: 0,   extra_spells_3_mod: 0,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: 0,   perception_mod: 0,   pickpocket_mod: 20,  protection_mod: 5,   ranged_attack_mod: 5,   reaction_mod: 0,   resurrection_mod: 0,   sneak_attack_mod: 0,   stealth_mod: 20,  surprise_mod: 5,   traps_mod: 15,  turn_undead_mod: '0' })
dex_22 = dex_mods.create({ value: 22, armor_class_mod: 6,  climb_mod: 0,   damage_mod: 0,   followers_mod: 0,   hitpoints_mod: 0,   extra_languages_mod: 0,   learn_magic_mod: 0,   lockpick_mod: 30,  extra_spells_1_mod: 0,   extra_spells_2_mod: 0,   extra_spells_3_mod: 0,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: 0,   perception_mod: 0,   pickpocket_mod: 25,  protection_mod: 6,   ranged_attack_mod: 6,   reaction_mod: 0,   resurrection_mod: 0,   sneak_attack_mod: 0,   stealth_mod: 25,  surprise_mod: 6,   traps_mod: 20,  turn_undead_mod: '0' })
dex_23 = dex_mods.create({ value: 23, armor_class_mod: 6,  climb_mod: 0,   damage_mod: 0,   followers_mod: 0,   hitpoints_mod: 0,   extra_languages_mod: 0,   learn_magic_mod: 0,   lockpick_mod: 30,  extra_spells_1_mod: 0,   extra_spells_2_mod: 0,   extra_spells_3_mod: 0,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: 0,   perception_mod: 0,   pickpocket_mod: 25,  protection_mod: 6,   ranged_attack_mod: 6,   reaction_mod: 0,   resurrection_mod: 0,   sneak_attack_mod: 0,   stealth_mod: 25,  surprise_mod: 6,   traps_mod: 20,  turn_undead_mod: '0' })
dex_24 = dex_mods.create({ value: 24, armor_class_mod: 7,  climb_mod: 0,   damage_mod: 0,   followers_mod: 0,   hitpoints_mod: 0,   extra_languages_mod: 0,   learn_magic_mod: 0,   lockpick_mod: 35,  extra_spells_1_mod: 0,   extra_spells_2_mod: 0,   extra_spells_3_mod: 0,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: 0,   perception_mod: 0,   pickpocket_mod: 30,  protection_mod: 7,   ranged_attack_mod: 7,   reaction_mod: 0,   resurrection_mod: 0,   sneak_attack_mod: 0,   stealth_mod: 30,  surprise_mod: 7,   traps_mod: 25,  turn_undead_mod: '0' })
dex_25 = dex_mods.create({ value: 25, armor_class_mod: 7,  climb_mod: 0,   damage_mod: 0,   followers_mod: 0,   hitpoints_mod: 0,   extra_languages_mod: 0,   learn_magic_mod: 0,   lockpick_mod: 35,  extra_spells_1_mod: 0,   extra_spells_2_mod: 0,   extra_spells_3_mod: 0,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: 0,   perception_mod: 0,   pickpocket_mod: 30,  protection_mod: 7,   ranged_attack_mod: 7,   reaction_mod: 0,   resurrection_mod: 0,   sneak_attack_mod: 0,   stealth_mod: 30,  surprise_mod: 7,   traps_mod: 25,  turn_undead_mod: '0' })
dex_26 = dex_mods.create({ value: 26, armor_class_mod: 8,  climb_mod: 0,   damage_mod: 0,   followers_mod: 0,   hitpoints_mod: 0,   extra_languages_mod: 0,   learn_magic_mod: 0,   lockpick_mod: 40,  extra_spells_1_mod: 0,   extra_spells_2_mod: 0,   extra_spells_3_mod: 0,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: 0,   perception_mod: 0,   pickpocket_mod: 35,  protection_mod: 8,   ranged_attack_mod: 8,   reaction_mod: 0,   resurrection_mod: 0,   sneak_attack_mod: 0,   stealth_mod: 35,  surprise_mod: 8,   traps_mod: 30,  turn_undead_mod: '0' })
dex_27 = dex_mods.create({ value: 27, armor_class_mod: 8,  climb_mod: 0,   damage_mod: 0,   followers_mod: 0,   hitpoints_mod: 0,   extra_languages_mod: 0,   learn_magic_mod: 0,   lockpick_mod: 40,  extra_spells_1_mod: 0,   extra_spells_2_mod: 0,   extra_spells_3_mod: 0,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: 0,   perception_mod: 0,   pickpocket_mod: 35,  protection_mod: 8,   ranged_attack_mod: 8,   reaction_mod: 0,   resurrection_mod: 0,   sneak_attack_mod: 0,   stealth_mod: 35,  surprise_mod: 8,   traps_mod: 30,  turn_undead_mod: '0' })
dex_28 = dex_mods.create({ value: 28, armor_class_mod: 9,  climb_mod: 0,   damage_mod: 0,   followers_mod: 0,   hitpoints_mod: 0,   extra_languages_mod: 0,   learn_magic_mod: 0,   lockpick_mod: 45,  extra_spells_1_mod: 0,   extra_spells_2_mod: 0,   extra_spells_3_mod: 0,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: 0,   perception_mod: 0,   pickpocket_mod: 40,  protection_mod: 9,   ranged_attack_mod: 9,   reaction_mod: 0,   resurrection_mod: 0,   sneak_attack_mod: 0,   stealth_mod: 40,  surprise_mod: 9,   traps_mod: 35,  turn_undead_mod: '0' })
dex_29 = dex_mods.create({ value: 29, armor_class_mod: 9,  climb_mod: 0,   damage_mod: 0,   followers_mod: 0,   hitpoints_mod: 0,   extra_languages_mod: 0,   learn_magic_mod: 0,   lockpick_mod: 45,  extra_spells_1_mod: 0,   extra_spells_2_mod: 0,   extra_spells_3_mod: 0,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: 0,   perception_mod: 0,   pickpocket_mod: 40,  protection_mod: 9,   ranged_attack_mod: 9,   reaction_mod: 0,   resurrection_mod: 0,   sneak_attack_mod: 0,   stealth_mod: 40,  surprise_mod: 9,   traps_mod: 35,  turn_undead_mod: '0' })
dex_30 = dex_mods.create({ value: 30, armor_class_mod: 10, climb_mod: 0,   damage_mod: 0,   followers_mod: 0,   hitpoints_mod: 0,   extra_languages_mod: 0,   learn_magic_mod: 0,   lockpick_mod: 50,  extra_spells_1_mod: 0,   extra_spells_2_mod: 0,   extra_spells_3_mod: 0,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: 0,   perception_mod: 0,   pickpocket_mod: 45,  protection_mod: 10,  ranged_attack_mod: 10,  reaction_mod: 0,   resurrection_mod: 0,   sneak_attack_mod: 0,   stealth_mod: 45,  surprise_mod: 10,  traps_mod: 40,  turn_undead_mod: '0' })


con_mods = constitution.attribute_modifiers

con_1  = con_mods.create({ value: 1,  armor_class_mod: 0,  climb_mod: 0,   damage_mod: 0,   followers_mod: 0,   hitpoints_mod: -5,  extra_languages_mod: 0,   learn_magic_mod: 0,   lockpick_mod: 0,   extra_spells_1_mod: 0,   extra_spells_2_mod: 0,   extra_spells_3_mod: 0,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: 0,   perception_mod: 0,   pickpocket_mod: 0,   protection_mod: -5,  ranged_attack_mod: 0,   reaction_mod: 0,   resurrection_mod: 0,   sneak_attack_mod: 0,   stealth_mod: 0,   surprise_mod: 0,   traps_mod: 0,   turn_undead_mod: '0' })
con_2  = con_mods.create({ value: 2,  armor_class_mod: 0,  climb_mod: 0,   damage_mod: 0,   followers_mod: 0,   hitpoints_mod: -4,  extra_languages_mod: 0,   learn_magic_mod: 0,   lockpick_mod: 0,   extra_spells_1_mod: 0,   extra_spells_2_mod: 0,   extra_spells_3_mod: 0,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: 0,   perception_mod: 0,   pickpocket_mod: 0,   protection_mod: -4,  ranged_attack_mod: 0,   reaction_mod: 0,   resurrection_mod: 0,   sneak_attack_mod: 0,   stealth_mod: 0,   surprise_mod: 0,   traps_mod: 0,   turn_undead_mod: '0' })
con_3  = con_mods.create({ value: 3,  armor_class_mod: 0,  climb_mod: 0,   damage_mod: 0,   followers_mod: 0,   hitpoints_mod: -4,  extra_languages_mod: 0,   learn_magic_mod: 0,   lockpick_mod: 0,   extra_spells_1_mod: 0,   extra_spells_2_mod: 0,   extra_spells_3_mod: 0,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: 0,   perception_mod: 0,   pickpocket_mod: 0,   protection_mod: -4,  ranged_attack_mod: 0,   reaction_mod: 0,   resurrection_mod: 0,   sneak_attack_mod: 0,   stealth_mod: 0,   surprise_mod: 0,   traps_mod: 0,   turn_undead_mod: '0' })
con_4  = con_mods.create({ value: 4,  armor_class_mod: 0,  climb_mod: 0,   damage_mod: 0,   followers_mod: 0,   hitpoints_mod: -3,  extra_languages_mod: 0,   learn_magic_mod: 0,   lockpick_mod: 0,   extra_spells_1_mod: 0,   extra_spells_2_mod: 0,   extra_spells_3_mod: 0,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: 0,   perception_mod: 0,   pickpocket_mod: 0,   protection_mod: -3,  ranged_attack_mod: 0,   reaction_mod: 0,   resurrection_mod: 0,   sneak_attack_mod: 0,   stealth_mod: 0,   surprise_mod: 0,   traps_mod: 0,   turn_undead_mod: '0' })
con_5  = con_mods.create({ value: 5,  armor_class_mod: 0,  climb_mod: 0,   damage_mod: 0,   followers_mod: 0,   hitpoints_mod: -3,  extra_languages_mod: 0,   learn_magic_mod: 0,   lockpick_mod: 0,   extra_spells_1_mod: 0,   extra_spells_2_mod: 0,   extra_spells_3_mod: 0,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: 0,   perception_mod: 0,   pickpocket_mod: 0,   protection_mod: -3,  ranged_attack_mod: 0,   reaction_mod: 0,   resurrection_mod: 0,   sneak_attack_mod: 0,   stealth_mod: 0,   surprise_mod: 0,   traps_mod: 0,   turn_undead_mod: '0' })
con_6  = con_mods.create({ value: 6,  armor_class_mod: 0,  climb_mod: 0,   damage_mod: 0,   followers_mod: 0,   hitpoints_mod: -2,  extra_languages_mod: 0,   learn_magic_mod: 0,   lockpick_mod: 0,   extra_spells_1_mod: 0,   extra_spells_2_mod: 0,   extra_spells_3_mod: 0,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: 0,   perception_mod: 0,   pickpocket_mod: 0,   protection_mod: -2,  ranged_attack_mod: 0,   reaction_mod: 0,   resurrection_mod: 1,   sneak_attack_mod: 0,   stealth_mod: 0,   surprise_mod: 0,   traps_mod: 0,   turn_undead_mod: '0' })
con_7  = con_mods.create({ value: 7,  armor_class_mod: 0,  climb_mod: 0,   damage_mod: 0,   followers_mod: 0,   hitpoints_mod: -2,  extra_languages_mod: 0,   learn_magic_mod: 0,   lockpick_mod: 0,   extra_spells_1_mod: 0,   extra_spells_2_mod: 0,   extra_spells_3_mod: 0,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: 0,   perception_mod: 0,   pickpocket_mod: 0,   protection_mod: -2,  ranged_attack_mod: 0,   reaction_mod: 0,   resurrection_mod: 1,   sneak_attack_mod: 0,   stealth_mod: 0,   surprise_mod: 0,   traps_mod: 0,   turn_undead_mod: '0' })
con_8  = con_mods.create({ value: 8,  armor_class_mod: 0,  climb_mod: 0,   damage_mod: 0,   followers_mod: 0,   hitpoints_mod: -1,  extra_languages_mod: 0,   learn_magic_mod: 0,   lockpick_mod: 0,   extra_spells_1_mod: 0,   extra_spells_2_mod: 0,   extra_spells_3_mod: 0,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: 0,   perception_mod: 0,   pickpocket_mod: 0,   protection_mod: -1,  ranged_attack_mod: 0,   reaction_mod: 0,   resurrection_mod: 5,   sneak_attack_mod: 0,   stealth_mod: 0,   surprise_mod: 0,   traps_mod: 0,   turn_undead_mod: '0' })
con_9  = con_mods.create({ value: 9,  armor_class_mod: 0,  climb_mod: 0,   damage_mod: 0,   followers_mod: 0,   hitpoints_mod: -1,  extra_languages_mod: 0,   learn_magic_mod: 0,   lockpick_mod: 0,   extra_spells_1_mod: 0,   extra_spells_2_mod: 0,   extra_spells_3_mod: 0,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: 0,   perception_mod: 0,   pickpocket_mod: 0,   protection_mod: -1,  ranged_attack_mod: 0,   reaction_mod: 0,   resurrection_mod: 5,   sneak_attack_mod: 0,   stealth_mod: 0,   surprise_mod: 0,   traps_mod: 0,   turn_undead_mod: '0' })
con_10 = con_mods.create({ value: 10, armor_class_mod: 0,  climb_mod: 0,   damage_mod: 0,   followers_mod: 0,   hitpoints_mod: 0,   extra_languages_mod: 0,   learn_magic_mod: 0,   lockpick_mod: 0,   extra_spells_1_mod: 0,   extra_spells_2_mod: 0,   extra_spells_3_mod: 0,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: 0,   perception_mod: 0,   pickpocket_mod: 0,   protection_mod: 0,   ranged_attack_mod: 0,   reaction_mod: 0,   resurrection_mod: 10,  sneak_attack_mod: 0,   stealth_mod: 0,   surprise_mod: 0,   traps_mod: 0,   turn_undead_mod: '0' })
con_11 = con_mods.create({ value: 11, armor_class_mod: 0,  climb_mod: 0,   damage_mod: 0,   followers_mod: 0,   hitpoints_mod: 0,   extra_languages_mod: 0,   learn_magic_mod: 0,   lockpick_mod: 0,   extra_spells_1_mod: 0,   extra_spells_2_mod: 0,   extra_spells_3_mod: 0,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: 0,   perception_mod: 0,   pickpocket_mod: 0,   protection_mod: 0,   ranged_attack_mod: 0,   reaction_mod: 0,   resurrection_mod: 10,  sneak_attack_mod: 0,   stealth_mod: 0,   surprise_mod: 0,   traps_mod: 0,   turn_undead_mod: '0' })
con_12 = con_mods.create({ value: 12, armor_class_mod: 0,  climb_mod: 0,   damage_mod: 0,   followers_mod: 0,   hitpoints_mod: 1,   extra_languages_mod: 0,   learn_magic_mod: 0,   lockpick_mod: 0,   extra_spells_1_mod: 0,   extra_spells_2_mod: 0,   extra_spells_3_mod: 0,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: 0,   perception_mod: 0,   pickpocket_mod: 0,   protection_mod: 1,   ranged_attack_mod: 0,   reaction_mod: 0,   resurrection_mod: 25,  sneak_attack_mod: 0,   stealth_mod: 0,   surprise_mod: 0,   traps_mod: 0,   turn_undead_mod: '0' })
con_13 = con_mods.create({ value: 13, armor_class_mod: 0,  climb_mod: 0,   damage_mod: 0,   followers_mod: 0,   hitpoints_mod: 1,   extra_languages_mod: 0,   learn_magic_mod: 0,   lockpick_mod: 0,   extra_spells_1_mod: 0,   extra_spells_2_mod: 0,   extra_spells_3_mod: 0,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: 0,   perception_mod: 0,   pickpocket_mod: 0,   protection_mod: 1,   ranged_attack_mod: 0,   reaction_mod: 0,   resurrection_mod: 25,  sneak_attack_mod: 0,   stealth_mod: 0,   surprise_mod: 0,   traps_mod: 0,   turn_undead_mod: '0' })
con_14 = con_mods.create({ value: 14, armor_class_mod: 0,  climb_mod: 0,   damage_mod: 0,   followers_mod: 0,   hitpoints_mod: 2,   extra_languages_mod: 0,   learn_magic_mod: 0,   lockpick_mod: 0,   extra_spells_1_mod: 0,   extra_spells_2_mod: 0,   extra_spells_3_mod: 0,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: 0,   perception_mod: 0,   pickpocket_mod: 0,   protection_mod: 2,   ranged_attack_mod: 0,   reaction_mod: 0,   resurrection_mod: 50,  sneak_attack_mod: 0,   stealth_mod: 0,   surprise_mod: 0,   traps_mod: 0,   turn_undead_mod: '0' })
con_15 = con_mods.create({ value: 15, armor_class_mod: 0,  climb_mod: 0,   damage_mod: 0,   followers_mod: 0,   hitpoints_mod: 2,   extra_languages_mod: 0,   learn_magic_mod: 0,   lockpick_mod: 0,   extra_spells_1_mod: 0,   extra_spells_2_mod: 0,   extra_spells_3_mod: 0,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: 0,   perception_mod: 0,   pickpocket_mod: 0,   protection_mod: 2,   ranged_attack_mod: 0,   reaction_mod: 0,   resurrection_mod: 50,  sneak_attack_mod: 0,   stealth_mod: 0,   surprise_mod: 0,   traps_mod: 0,   turn_undead_mod: '0' })
con_16 = con_mods.create({ value: 16, armor_class_mod: 0,  climb_mod: 0,   damage_mod: 0,   followers_mod: 0,   hitpoints_mod: 3,   extra_languages_mod: 0,   learn_magic_mod: 0,   lockpick_mod: 0,   extra_spells_1_mod: 0,   extra_spells_2_mod: 0,   extra_spells_3_mod: 0,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: 0,   perception_mod: 0,   pickpocket_mod: 0,   protection_mod: 3,   ranged_attack_mod: 0,   reaction_mod: 0,   resurrection_mod: 75,  sneak_attack_mod: 0,   stealth_mod: 0,   surprise_mod: 0,   traps_mod: 0,   turn_undead_mod: '0' })
con_17 = con_mods.create({ value: 17, armor_class_mod: 0,  climb_mod: 0,   damage_mod: 0,   followers_mod: 0,   hitpoints_mod: 3,   extra_languages_mod: 0,   learn_magic_mod: 0,   lockpick_mod: 0,   extra_spells_1_mod: 0,   extra_spells_2_mod: 0,   extra_spells_3_mod: 0,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: 0,   perception_mod: 0,   pickpocket_mod: 0,   protection_mod: 3,   ranged_attack_mod: 0,   reaction_mod: 0,   resurrection_mod: 75,  sneak_attack_mod: 0,   stealth_mod: 0,   surprise_mod: 0,   traps_mod: 0,   turn_undead_mod: '0' })
con_18 = con_mods.create({ value: 18, armor_class_mod: 0,  climb_mod: 0,   damage_mod: 0,   followers_mod: 0,   hitpoints_mod: 4,   extra_languages_mod: 0,   learn_magic_mod: 0,   lockpick_mod: 0,   extra_spells_1_mod: 0,   extra_spells_2_mod: 0,   extra_spells_3_mod: 0,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: 0,   perception_mod: 0,   pickpocket_mod: 0,   protection_mod: 4,   ranged_attack_mod: 0,   reaction_mod: 0,   resurrection_mod: 95,  sneak_attack_mod: 0,   stealth_mod: 0,   surprise_mod: 0,   traps_mod: 0,   turn_undead_mod: '0' })
con_19 = con_mods.create({ value: 19, armor_class_mod: 0,  climb_mod: 0,   damage_mod: 0,   followers_mod: 0,   hitpoints_mod: 4,   extra_languages_mod: 0,   learn_magic_mod: 0,   lockpick_mod: 0,   extra_spells_1_mod: 0,   extra_spells_2_mod: 0,   extra_spells_3_mod: 0,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: 0,   perception_mod: 0,   pickpocket_mod: 0,   protection_mod: 4,   ranged_attack_mod: 0,   reaction_mod: 0,   resurrection_mod: 95,  sneak_attack_mod: 0,   stealth_mod: 0,   surprise_mod: 0,   traps_mod: 0,   turn_undead_mod: '0' })
con_20 = con_mods.create({ value: 20, armor_class_mod: 0,  climb_mod: 0,   damage_mod: 0,   followers_mod: 0,   hitpoints_mod: 5,   extra_languages_mod: 0,   learn_magic_mod: 0,   lockpick_mod: 0,   extra_spells_1_mod: 0,   extra_spells_2_mod: 0,   extra_spells_3_mod: 0,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: 0,   perception_mod: 0,   pickpocket_mod: 0,   protection_mod: 5,   ranged_attack_mod: 0,   reaction_mod: 0,   resurrection_mod: 100, sneak_attack_mod: 0,   stealth_mod: 0,   surprise_mod: 0,   traps_mod: 0,   turn_undead_mod: '0' })
con_21 = con_mods.create({ value: 21, armor_class_mod: 0,  climb_mod: 0,   damage_mod: 0,   followers_mod: 0,   hitpoints_mod: 5,   extra_languages_mod: 0,   learn_magic_mod: 0,   lockpick_mod: 0,   extra_spells_1_mod: 0,   extra_spells_2_mod: 0,   extra_spells_3_mod: 0,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: 0,   perception_mod: 0,   pickpocket_mod: 0,   protection_mod: 5,   ranged_attack_mod: 0,   reaction_mod: 0,   resurrection_mod: 100, sneak_attack_mod: 0,   stealth_mod: 0,   surprise_mod: 0,   traps_mod: 0,   turn_undead_mod: '0' })
con_22 = con_mods.create({ value: 22, armor_class_mod: 0,  climb_mod: 0,   damage_mod: 0,   followers_mod: 0,   hitpoints_mod: 6,   extra_languages_mod: 0,   learn_magic_mod: 0,   lockpick_mod: 0,   extra_spells_1_mod: 0,   extra_spells_2_mod: 0,   extra_spells_3_mod: 0,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: 0,   perception_mod: 0,   pickpocket_mod: 0,   protection_mod: 6,   ranged_attack_mod: 0,   reaction_mod: 0,   resurrection_mod: 100, sneak_attack_mod: 0,   stealth_mod: 0,   surprise_mod: 0,   traps_mod: 0,   turn_undead_mod: '0' })
con_23 = con_mods.create({ value: 23, armor_class_mod: 0,  climb_mod: 0,   damage_mod: 0,   followers_mod: 0,   hitpoints_mod: 6,   extra_languages_mod: 0,   learn_magic_mod: 0,   lockpick_mod: 0,   extra_spells_1_mod: 0,   extra_spells_2_mod: 0,   extra_spells_3_mod: 0,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: 0,   perception_mod: 0,   pickpocket_mod: 0,   protection_mod: 6,   ranged_attack_mod: 0,   reaction_mod: 0,   resurrection_mod: 100, sneak_attack_mod: 0,   stealth_mod: 0,   surprise_mod: 0,   traps_mod: 0,   turn_undead_mod: '0' })
con_24 = con_mods.create({ value: 24, armor_class_mod: 0,  climb_mod: 0,   damage_mod: 0,   followers_mod: 0,   hitpoints_mod: 7,   extra_languages_mod: 0,   learn_magic_mod: 0,   lockpick_mod: 0,   extra_spells_1_mod: 0,   extra_spells_2_mod: 0,   extra_spells_3_mod: 0,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: 0,   perception_mod: 0,   pickpocket_mod: 0,   protection_mod: 7,   ranged_attack_mod: 0,   reaction_mod: 0,   resurrection_mod: 100, sneak_attack_mod: 0,   stealth_mod: 0,   surprise_mod: 0,   traps_mod: 0,   turn_undead_mod: '0' })
con_25 = con_mods.create({ value: 25, armor_class_mod: 0,  climb_mod: 0,   damage_mod: 0,   followers_mod: 0,   hitpoints_mod: 7,   extra_languages_mod: 0,   learn_magic_mod: 0,   lockpick_mod: 0,   extra_spells_1_mod: 0,   extra_spells_2_mod: 0,   extra_spells_3_mod: 0,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: 0,   perception_mod: 0,   pickpocket_mod: 0,   protection_mod: 7,   ranged_attack_mod: 0,   reaction_mod: 0,   resurrection_mod: 100, sneak_attack_mod: 0,   stealth_mod: 0,   surprise_mod: 0,   traps_mod: 0,   turn_undead_mod: '0' })
con_26 = con_mods.create({ value: 26, armor_class_mod: 0,  climb_mod: 0,   damage_mod: 0,   followers_mod: 0,   hitpoints_mod: 8,   extra_languages_mod: 0,   learn_magic_mod: 0,   lockpick_mod: 0,   extra_spells_1_mod: 0,   extra_spells_2_mod: 0,   extra_spells_3_mod: 0,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: 0,   perception_mod: 0,   pickpocket_mod: 0,   protection_mod: 8,   ranged_attack_mod: 0,   reaction_mod: 0,   resurrection_mod: 100, sneak_attack_mod: 0,   stealth_mod: 0,   surprise_mod: 0,   traps_mod: 0,   turn_undead_mod: '0' })
con_27 = con_mods.create({ value: 27, armor_class_mod: 0,  climb_mod: 0,   damage_mod: 0,   followers_mod: 0,   hitpoints_mod: 8,   extra_languages_mod: 0,   learn_magic_mod: 0,   lockpick_mod: 0,   extra_spells_1_mod: 0,   extra_spells_2_mod: 0,   extra_spells_3_mod: 0,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: 0,   perception_mod: 0,   pickpocket_mod: 0,   protection_mod: 8,   ranged_attack_mod: 0,   reaction_mod: 0,   resurrection_mod: 100, sneak_attack_mod: 0,   stealth_mod: 0,   surprise_mod: 0,   traps_mod: 0,   turn_undead_mod: '0' })
con_28 = con_mods.create({ value: 28, armor_class_mod: 0,  climb_mod: 0,   damage_mod: 0,   followers_mod: 0,   hitpoints_mod: 9,   extra_languages_mod: 0,   learn_magic_mod: 0,   lockpick_mod: 0,   extra_spells_1_mod: 0,   extra_spells_2_mod: 0,   extra_spells_3_mod: 0,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: 0,   perception_mod: 0,   pickpocket_mod: 0,   protection_mod: 9,   ranged_attack_mod: 0,   reaction_mod: 0,   resurrection_mod: 100, sneak_attack_mod: 0,   stealth_mod: 0,   surprise_mod: 0,   traps_mod: 0,   turn_undead_mod: '0' })
con_29 = con_mods.create({ value: 29, armor_class_mod: 0,  climb_mod: 0,   damage_mod: 0,   followers_mod: 0,   hitpoints_mod: 9,   extra_languages_mod: 0,   learn_magic_mod: 0,   lockpick_mod: 0,   extra_spells_1_mod: 0,   extra_spells_2_mod: 0,   extra_spells_3_mod: 0,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: 0,   perception_mod: 0,   pickpocket_mod: 0,   protection_mod: 9,   ranged_attack_mod: 0,   reaction_mod: 0,   resurrection_mod: 100, sneak_attack_mod: 0,   stealth_mod: 0,   surprise_mod: 0,   traps_mod: 0,   turn_undead_mod: '0' })
con_30 = con_mods.create({ value: 30, armor_class_mod: 0,  climb_mod: 0,   damage_mod: 0,   followers_mod: 0,   hitpoints_mod: 10,  extra_languages_mod: 0,   learn_magic_mod: 0,   lockpick_mod: 0,   extra_spells_1_mod: 0,   extra_spells_2_mod: 0,   extra_spells_3_mod: 0,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: 0,   perception_mod: 0,   pickpocket_mod: 0,   protection_mod: 10,  ranged_attack_mod: 0,   reaction_mod: 0,   resurrection_mod: 100, sneak_attack_mod: 0,   stealth_mod: 0,   surprise_mod: 0,   traps_mod: 0,   turn_undead_mod: '0' })


int_mods = intelligence.attribute_modifiers

int_1  = int_mods.create({ value: 1,  armor_class_mod: 0,  climb_mod: 0,   damage_mod: 0,   followers_mod: 0,   hitpoints_mod: 0,   extra_languages_mod: 0,   learn_magic_mod: 0,   lockpick_mod: 0,   extra_spells_1_mod: 0,   extra_spells_2_mod: 0,   extra_spells_3_mod: 0,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: 0,   perception_mod: 0,   pickpocket_mod: 0,   protection_mod: 0,   ranged_attack_mod: 0,   reaction_mod: 0,   resurrection_mod: 0,   sneak_attack_mod: 0,   stealth_mod: 0,   surprise_mod: 0,   traps_mod: 0,   turn_undead_mod: '0' })
int_2  = int_mods.create({ value: 2,  armor_class_mod: 0,  climb_mod: 0,   damage_mod: 0,   followers_mod: 0,   hitpoints_mod: 0,   extra_languages_mod: 0,   learn_magic_mod: 0,   lockpick_mod: 0,   extra_spells_1_mod: 0,   extra_spells_2_mod: 0,   extra_spells_3_mod: 0,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: 0,   perception_mod: 0,   pickpocket_mod: 0,   protection_mod: 0,   ranged_attack_mod: 0,   reaction_mod: 0,   resurrection_mod: 0,   sneak_attack_mod: 0,   stealth_mod: 0,   surprise_mod: 0,   traps_mod: 0,   turn_undead_mod: '0' })
int_3  = int_mods.create({ value: 3,  armor_class_mod: 0,  climb_mod: 0,   damage_mod: 0,   followers_mod: 0,   hitpoints_mod: 0,   extra_languages_mod: 0,   learn_magic_mod: 0,   lockpick_mod: 0,   extra_spells_1_mod: 0,   extra_spells_2_mod: 0,   extra_spells_3_mod: 0,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: 0,   perception_mod: 0,   pickpocket_mod: 0,   protection_mod: 0,   ranged_attack_mod: 0,   reaction_mod: 0,   resurrection_mod: 0,   sneak_attack_mod: 0,   stealth_mod: 0,   surprise_mod: 0,   traps_mod: 0,   turn_undead_mod: '0' })
int_4  = int_mods.create({ value: 4,  armor_class_mod: 0,  climb_mod: 0,   damage_mod: 0,   followers_mod: 0,   hitpoints_mod: 0,   extra_languages_mod: 0,   learn_magic_mod: 0,   lockpick_mod: 0,   extra_spells_1_mod: 0,   extra_spells_2_mod: 0,   extra_spells_3_mod: 0,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: 0,   perception_mod: 0,   pickpocket_mod: 0,   protection_mod: 0,   ranged_attack_mod: 0,   reaction_mod: 0,   resurrection_mod: 0,   sneak_attack_mod: 0,   stealth_mod: 0,   surprise_mod: 0,   traps_mod: 0,   turn_undead_mod: '0' })
int_5  = int_mods.create({ value: 5,  armor_class_mod: 0,  climb_mod: 0,   damage_mod: 0,   followers_mod: 0,   hitpoints_mod: 0,   extra_languages_mod: 0,   learn_magic_mod: 0,   lockpick_mod: 0,   extra_spells_1_mod: 0,   extra_spells_2_mod: 0,   extra_spells_3_mod: 0,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: 0,   perception_mod: 0,   pickpocket_mod: 0,   protection_mod: 0,   ranged_attack_mod: 0,   reaction_mod: 0,   resurrection_mod: 0,   sneak_attack_mod: 0,   stealth_mod: 0,   surprise_mod: 0,   traps_mod: 0,   turn_undead_mod: '0' })
int_6  = int_mods.create({ value: 6,  armor_class_mod: 0,  climb_mod: 0,   damage_mod: 0,   followers_mod: 0,   hitpoints_mod: 0,   extra_languages_mod: 0,   learn_magic_mod: 0,   lockpick_mod: 0,   extra_spells_1_mod: 0,   extra_spells_2_mod: 0,   extra_spells_3_mod: 0,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: 0,   perception_mod: 0,   pickpocket_mod: 0,   protection_mod: 0,   ranged_attack_mod: 0,   reaction_mod: 0,   resurrection_mod: 0,   sneak_attack_mod: 0,   stealth_mod: 0,   surprise_mod: 0,   traps_mod: 0,   turn_undead_mod: '0' })
int_7  = int_mods.create({ value: 7,  armor_class_mod: 0,  climb_mod: 0,   damage_mod: 0,   followers_mod: 0,   hitpoints_mod: 0,   extra_languages_mod: 0,   learn_magic_mod: 0,   lockpick_mod: 0,   extra_spells_1_mod: 0,   extra_spells_2_mod: 0,   extra_spells_3_mod: 0,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: 0,   perception_mod: 0,   pickpocket_mod: 0,   protection_mod: 0,   ranged_attack_mod: 0,   reaction_mod: 0,   resurrection_mod: 0,   sneak_attack_mod: 0,   stealth_mod: 0,   surprise_mod: 0,   traps_mod: 0,   turn_undead_mod: '0' })
int_8  = int_mods.create({ value: 8,  armor_class_mod: 0,  climb_mod: 0,   damage_mod: 0,   followers_mod: 0,   hitpoints_mod: 0,   extra_languages_mod: 1,   learn_magic_mod: 5,   lockpick_mod: 0,   extra_spells_1_mod: 0,   extra_spells_2_mod: 0,   extra_spells_3_mod: 0,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: 0,   perception_mod: 0,   pickpocket_mod: 0,   protection_mod: 0,   ranged_attack_mod: 0,   reaction_mod: 0,   resurrection_mod: 0,   sneak_attack_mod: 0,   stealth_mod: 0,   surprise_mod: 0,   traps_mod: 0,   turn_undead_mod: '0' })
int_9  = int_mods.create({ value: 9,  armor_class_mod: 0,  climb_mod: 0,   damage_mod: 0,   followers_mod: 0,   hitpoints_mod: 0,   extra_languages_mod: 1,   learn_magic_mod: 5,   lockpick_mod: 0,   extra_spells_1_mod: 0,   extra_spells_2_mod: 0,   extra_spells_3_mod: 0,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: 0,   perception_mod: 0,   pickpocket_mod: 0,   protection_mod: 0,   ranged_attack_mod: 0,   reaction_mod: 0,   resurrection_mod: 0,   sneak_attack_mod: 0,   stealth_mod: 0,   surprise_mod: 0,   traps_mod: 0,   turn_undead_mod: '0' })
int_10 = int_mods.create({ value: 10, armor_class_mod: 0,  climb_mod: 0,   damage_mod: 0,   followers_mod: 0,   hitpoints_mod: 0,   extra_languages_mod: 1,   learn_magic_mod: 10,  lockpick_mod: 0,   extra_spells_1_mod: 0,   extra_spells_2_mod: 0,   extra_spells_3_mod: 0,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: 0,   perception_mod: 0,   pickpocket_mod: 0,   protection_mod: 0,   ranged_attack_mod: 0,   reaction_mod: 0,   resurrection_mod: 0,   sneak_attack_mod: 0,   stealth_mod: 0,   surprise_mod: 0,   traps_mod: 0,   turn_undead_mod: '0' })
int_11 = int_mods.create({ value: 11, armor_class_mod: 0,  climb_mod: 0,   damage_mod: 0,   followers_mod: 0,   hitpoints_mod: 0,   extra_languages_mod: 1,   learn_magic_mod: 10,  lockpick_mod: 0,   extra_spells_1_mod: 0,   extra_spells_2_mod: 0,   extra_spells_3_mod: 0,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: 0,   perception_mod: 0,   pickpocket_mod: 0,   protection_mod: 0,   ranged_attack_mod: 0,   reaction_mod: 0,   resurrection_mod: 0,   sneak_attack_mod: 0,   stealth_mod: 0,   surprise_mod: 0,   traps_mod: 0,   turn_undead_mod: '0' })
int_12 = int_mods.create({ value: 12, armor_class_mod: 0,  climb_mod: 0,   damage_mod: 0,   followers_mod: 0,   hitpoints_mod: 0,   extra_languages_mod: 1,   learn_magic_mod: 20,  lockpick_mod: 0,   extra_spells_1_mod: 0,   extra_spells_2_mod: 0,   extra_spells_3_mod: 0,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: 0,   perception_mod: 0,   pickpocket_mod: 0,   protection_mod: 0,   ranged_attack_mod: 0,   reaction_mod: 0,   resurrection_mod: 0,   sneak_attack_mod: 0,   stealth_mod: 0,   surprise_mod: 0,   traps_mod: 0,   turn_undead_mod: '0' })
int_13 = int_mods.create({ value: 13, armor_class_mod: 0,  climb_mod: 0,   damage_mod: 0,   followers_mod: 0,   hitpoints_mod: 0,   extra_languages_mod: 1,   learn_magic_mod: 20,  lockpick_mod: 0,   extra_spells_1_mod: 0,   extra_spells_2_mod: 0,   extra_spells_3_mod: 0,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: 0,   perception_mod: 0,   pickpocket_mod: 0,   protection_mod: 0,   ranged_attack_mod: 0,   reaction_mod: 0,   resurrection_mod: 0,   sneak_attack_mod: 0,   stealth_mod: 0,   surprise_mod: 0,   traps_mod: 0,   turn_undead_mod: '0' })
int_14 = int_mods.create({ value: 14, armor_class_mod: 0,  climb_mod: 0,   damage_mod: 0,   followers_mod: 0,   hitpoints_mod: 0,   extra_languages_mod: 1,   learn_magic_mod: 25,  lockpick_mod: 0,   extra_spells_1_mod: 0,   extra_spells_2_mod: 0,   extra_spells_3_mod: 0,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: 0,   perception_mod: 0,   pickpocket_mod: 0,   protection_mod: 0,   ranged_attack_mod: 0,   reaction_mod: 0,   resurrection_mod: 0,   sneak_attack_mod: 0,   stealth_mod: 0,   surprise_mod: 0,   traps_mod: 0,   turn_undead_mod: '0' })
int_15 = int_mods.create({ value: 15, armor_class_mod: 0,  climb_mod: 0,   damage_mod: 0,   followers_mod: 0,   hitpoints_mod: 0,   extra_languages_mod: 1,   learn_magic_mod: 25,  lockpick_mod: 0,   extra_spells_1_mod: 0,   extra_spells_2_mod: 0,   extra_spells_3_mod: 0,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: 0,   perception_mod: 0,   pickpocket_mod: 0,   protection_mod: 0,   ranged_attack_mod: 0,   reaction_mod: 0,   resurrection_mod: 0,   sneak_attack_mod: 0,   stealth_mod: 0,   surprise_mod: 0,   traps_mod: 0,   turn_undead_mod: '0' })
int_16 = int_mods.create({ value: 16, armor_class_mod: 0,  climb_mod: 0,   damage_mod: 0,   followers_mod: 0,   hitpoints_mod: 0,   extra_languages_mod: 2,   learn_magic_mod: 35,  lockpick_mod: 0,   extra_spells_1_mod: 1,   extra_spells_2_mod: 0,   extra_spells_3_mod: 0,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: 0,   perception_mod: 0,   pickpocket_mod: 0,   protection_mod: 0,   ranged_attack_mod: 0,   reaction_mod: 0,   resurrection_mod: 0,   sneak_attack_mod: 0,   stealth_mod: 0,   surprise_mod: 0,   traps_mod: 0,   turn_undead_mod: '0' })
int_17 = int_mods.create({ value: 17, armor_class_mod: 0,  climb_mod: 0,   damage_mod: 0,   followers_mod: 0,   hitpoints_mod: 0,   extra_languages_mod: 2,   learn_magic_mod: 35,  lockpick_mod: 0,   extra_spells_1_mod: 1,   extra_spells_2_mod: 0,   extra_spells_3_mod: 0,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: 0,   perception_mod: 0,   pickpocket_mod: 0,   protection_mod: 0,   ranged_attack_mod: 0,   reaction_mod: 0,   resurrection_mod: 0,   sneak_attack_mod: 0,   stealth_mod: 0,   surprise_mod: 0,   traps_mod: 0,   turn_undead_mod: '0' })
int_18 = int_mods.create({ value: 18, armor_class_mod: 0,  climb_mod: 0,   damage_mod: 0,   followers_mod: 0,   hitpoints_mod: 0,   extra_languages_mod: 3,   learn_magic_mod: 45,  lockpick_mod: 0,   extra_spells_1_mod: 2,   extra_spells_2_mod: 0,   extra_spells_3_mod: 0,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: 0,   perception_mod: 0,   pickpocket_mod: 0,   protection_mod: 0,   ranged_attack_mod: 0,   reaction_mod: 0,   resurrection_mod: 0,   sneak_attack_mod: 0,   stealth_mod: 0,   surprise_mod: 0,   traps_mod: 0,   turn_undead_mod: '0' })
int_19 = int_mods.create({ value: 19, armor_class_mod: 0,  climb_mod: 0,   damage_mod: 0,   followers_mod: 0,   hitpoints_mod: 0,   extra_languages_mod: 3,   learn_magic_mod: 45,  lockpick_mod: 0,   extra_spells_1_mod: 2,   extra_spells_2_mod: 0,   extra_spells_3_mod: 0,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: 0,   perception_mod: 0,   pickpocket_mod: 0,   protection_mod: 0,   ranged_attack_mod: 0,   reaction_mod: 0,   resurrection_mod: 0,   sneak_attack_mod: 0,   stealth_mod: 0,   surprise_mod: 0,   traps_mod: 0,   turn_undead_mod: '0' })
int_20 = int_mods.create({ value: 20, armor_class_mod: 0,  climb_mod: 0,   damage_mod: 0,   followers_mod: 0,   hitpoints_mod: 0,   extra_languages_mod: 4,   learn_magic_mod: 55,  lockpick_mod: 0,   extra_spells_1_mod: 2,   extra_spells_2_mod: 1,   extra_spells_3_mod: 0,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: 0,   perception_mod: 0,   pickpocket_mod: 0,   protection_mod: 0,   ranged_attack_mod: 0,   reaction_mod: 0,   resurrection_mod: 0,   sneak_attack_mod: 0,   stealth_mod: 0,   surprise_mod: 0,   traps_mod: 0,   turn_undead_mod: '0' })
int_21 = int_mods.create({ value: 21, armor_class_mod: 0,  climb_mod: 0,   damage_mod: 0,   followers_mod: 0,   hitpoints_mod: 0,   extra_languages_mod: 4,   learn_magic_mod: 55,  lockpick_mod: 0,   extra_spells_1_mod: 2,   extra_spells_2_mod: 1,   extra_spells_3_mod: 0,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: 0,   perception_mod: 0,   pickpocket_mod: 0,   protection_mod: 0,   ranged_attack_mod: 0,   reaction_mod: 0,   resurrection_mod: 0,   sneak_attack_mod: 0,   stealth_mod: 0,   surprise_mod: 0,   traps_mod: 0,   turn_undead_mod: '0' })
int_22 = int_mods.create({ value: 22, armor_class_mod: 0,  climb_mod: 0,   damage_mod: 0,   followers_mod: 0,   hitpoints_mod: 0,   extra_languages_mod: 5,   learn_magic_mod: 65,  lockpick_mod: 0,   extra_spells_1_mod: 2,   extra_spells_2_mod: 2,   extra_spells_3_mod: 0,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: 0,   perception_mod: 0,   pickpocket_mod: 0,   protection_mod: 0,   ranged_attack_mod: 0,   reaction_mod: 0,   resurrection_mod: 0,   sneak_attack_mod: 0,   stealth_mod: 0,   surprise_mod: 0,   traps_mod: 0,   turn_undead_mod: '0' })
int_23 = int_mods.create({ value: 23, armor_class_mod: 0,  climb_mod: 0,   damage_mod: 0,   followers_mod: 0,   hitpoints_mod: 0,   extra_languages_mod: 5,   learn_magic_mod: 65,  lockpick_mod: 0,   extra_spells_1_mod: 2,   extra_spells_2_mod: 2,   extra_spells_3_mod: 0,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: 0,   perception_mod: 0,   pickpocket_mod: 0,   protection_mod: 0,   ranged_attack_mod: 0,   reaction_mod: 0,   resurrection_mod: 0,   sneak_attack_mod: 0,   stealth_mod: 0,   surprise_mod: 0,   traps_mod: 0,   turn_undead_mod: '0' })
int_24 = int_mods.create({ value: 24, armor_class_mod: 0,  climb_mod: 0,   damage_mod: 0,   followers_mod: 0,   hitpoints_mod: 0,   extra_languages_mod: 6,   learn_magic_mod: 75,  lockpick_mod: 0,   extra_spells_1_mod: 2,   extra_spells_2_mod: 2,   extra_spells_3_mod: 1,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: 0,   perception_mod: 0,   pickpocket_mod: 0,   protection_mod: 0,   ranged_attack_mod: 0,   reaction_mod: 0,   resurrection_mod: 0,   sneak_attack_mod: 0,   stealth_mod: 0,   surprise_mod: 0,   traps_mod: 0,   turn_undead_mod: '0' })
int_25 = int_mods.create({ value: 25, armor_class_mod: 0,  climb_mod: 0,   damage_mod: 0,   followers_mod: 0,   hitpoints_mod: 0,   extra_languages_mod: 6,   learn_magic_mod: 75,  lockpick_mod: 0,   extra_spells_1_mod: 2,   extra_spells_2_mod: 2,   extra_spells_3_mod: 1,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: 0,   perception_mod: 0,   pickpocket_mod: 0,   protection_mod: 0,   ranged_attack_mod: 0,   reaction_mod: 0,   resurrection_mod: 0,   sneak_attack_mod: 0,   stealth_mod: 0,   surprise_mod: 0,   traps_mod: 0,   turn_undead_mod: '0' })
int_26 = int_mods.create({ value: 26, armor_class_mod: 0,  climb_mod: 0,   damage_mod: 0,   followers_mod: 0,   hitpoints_mod: 0,   extra_languages_mod: 7,   learn_magic_mod: 85,  lockpick_mod: 0,   extra_spells_1_mod: 3,   extra_spells_2_mod: 2,   extra_spells_3_mod: 1,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: 0,   perception_mod: 0,   pickpocket_mod: 0,   protection_mod: 0,   ranged_attack_mod: 0,   reaction_mod: 0,   resurrection_mod: 0,   sneak_attack_mod: 0,   stealth_mod: 0,   surprise_mod: 0,   traps_mod: 0,   turn_undead_mod: '0' })
int_27 = int_mods.create({ value: 27, armor_class_mod: 0,  climb_mod: 0,   damage_mod: 0,   followers_mod: 0,   hitpoints_mod: 0,   extra_languages_mod: 7,   learn_magic_mod: 85,  lockpick_mod: 0,   extra_spells_1_mod: 3,   extra_spells_2_mod: 2,   extra_spells_3_mod: 1,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: 0,   perception_mod: 0,   pickpocket_mod: 0,   protection_mod: 0,   ranged_attack_mod: 0,   reaction_mod: 0,   resurrection_mod: 0,   sneak_attack_mod: 0,   stealth_mod: 0,   surprise_mod: 0,   traps_mod: 0,   turn_undead_mod: '0' })
int_28 = int_mods.create({ value: 28, armor_class_mod: 0,  climb_mod: 0,   damage_mod: 0,   followers_mod: 0,   hitpoints_mod: 0,   extra_languages_mod: 8,   learn_magic_mod: 95,  lockpick_mod: 0,   extra_spells_1_mod: 3,   extra_spells_2_mod: 3,   extra_spells_3_mod: 1,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: 0,   perception_mod: 0,   pickpocket_mod: 0,   protection_mod: 0,   ranged_attack_mod: 0,   reaction_mod: 0,   resurrection_mod: 0,   sneak_attack_mod: 0,   stealth_mod: 0,   surprise_mod: 0,   traps_mod: 0,   turn_undead_mod: '0' })
int_29 = int_mods.create({ value: 29, armor_class_mod: 0,  climb_mod: 0,   damage_mod: 0,   followers_mod: 0,   hitpoints_mod: 0,   extra_languages_mod: 8,   learn_magic_mod: 95,  lockpick_mod: 0,   extra_spells_1_mod: 3,   extra_spells_2_mod: 3,   extra_spells_3_mod: 1,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: 0,   perception_mod: 0,   pickpocket_mod: 0,   protection_mod: 0,   ranged_attack_mod: 0,   reaction_mod: 0,   resurrection_mod: 0,   sneak_attack_mod: 0,   stealth_mod: 0,   surprise_mod: 0,   traps_mod: 0,   turn_undead_mod: '0' })
int_30 = int_mods.create({ value: 30, armor_class_mod: 0,  climb_mod: 0,   damage_mod: 0,   followers_mod: 0,   hitpoints_mod: 0,   extra_languages_mod: 9,   learn_magic_mod: 100, lockpick_mod: 0,   extra_spells_1_mod: 3,   extra_spells_2_mod: 3,   extra_spells_3_mod: 2,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: 0,   perception_mod: 0,   pickpocket_mod: 0,   protection_mod: 0,   ranged_attack_mod: 0,   reaction_mod: 0,   resurrection_mod: 0,   sneak_attack_mod: 0,   stealth_mod: 0,   surprise_mod: 0,   traps_mod: 0,   turn_undead_mod: '0' })

wis_mods = wisdom.attribute_modifiers

wis_1  = wis_mods.create({ value: 1,  armor_class_mod: 0,  climb_mod: 0,   damage_mod: 0,   followers_mod: 0,   hitpoints_mod: 0,   extra_languages_mod: 0,   learn_magic_mod: 0,   lockpick_mod: 0,   extra_spells_1_mod: 0,   extra_spells_2_mod: 0,   extra_spells_3_mod: 0,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: 0,   perception_mod: 0,   pickpocket_mod: 0,   protection_mod: -5,  ranged_attack_mod: 0,   reaction_mod: 0,   resurrection_mod: 0,   sneak_attack_mod: 0,   stealth_mod: 0,   surprise_mod: 0,   traps_mod: 0,   turn_undead_mod: '0' })
wis_2  = wis_mods.create({ value: 2,  armor_class_mod: 0,  climb_mod: 0,   damage_mod: 0,   followers_mod: 0,   hitpoints_mod: 0,   extra_languages_mod: 0,   learn_magic_mod: 0,   lockpick_mod: 0,   extra_spells_1_mod: 0,   extra_spells_2_mod: 0,   extra_spells_3_mod: 0,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: 0,   perception_mod: 0,   pickpocket_mod: 0,   protection_mod: -4,  ranged_attack_mod: 0,   reaction_mod: 0,   resurrection_mod: 0,   sneak_attack_mod: 0,   stealth_mod: 0,   surprise_mod: 0,   traps_mod: 0,   turn_undead_mod: '0' })
wis_3  = wis_mods.create({ value: 3,  armor_class_mod: 0,  climb_mod: 0,   damage_mod: 0,   followers_mod: 0,   hitpoints_mod: 0,   extra_languages_mod: 0,   learn_magic_mod: 0,   lockpick_mod: 0,   extra_spells_1_mod: 0,   extra_spells_2_mod: 0,   extra_spells_3_mod: 0,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: 0,   perception_mod: 0,   pickpocket_mod: 0,   protection_mod: -4,  ranged_attack_mod: 0,   reaction_mod: 0,   resurrection_mod: 0,   sneak_attack_mod: 0,   stealth_mod: 0,   surprise_mod: 0,   traps_mod: 0,   turn_undead_mod: '0' })
wis_4  = wis_mods.create({ value: 4,  armor_class_mod: 0,  climb_mod: 0,   damage_mod: 0,   followers_mod: 0,   hitpoints_mod: 0,   extra_languages_mod: 0,   learn_magic_mod: 0,   lockpick_mod: 0,   extra_spells_1_mod: 0,   extra_spells_2_mod: 0,   extra_spells_3_mod: 0,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: 0,   perception_mod: 0,   pickpocket_mod: 0,   protection_mod: -3,  ranged_attack_mod: 0,   reaction_mod: 0,   resurrection_mod: 0,   sneak_attack_mod: 0,   stealth_mod: 0,   surprise_mod: 0,   traps_mod: 0,   turn_undead_mod: '0' })
wis_5  = wis_mods.create({ value: 5,  armor_class_mod: 0,  climb_mod: 0,   damage_mod: 0,   followers_mod: 0,   hitpoints_mod: 0,   extra_languages_mod: 0,   learn_magic_mod: 0,   lockpick_mod: 0,   extra_spells_1_mod: 0,   extra_spells_2_mod: 0,   extra_spells_3_mod: 0,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: 0,   perception_mod: 0,   pickpocket_mod: 0,   protection_mod: -3,  ranged_attack_mod: 0,   reaction_mod: 0,   resurrection_mod: 0,   sneak_attack_mod: 0,   stealth_mod: 0,   surprise_mod: 0,   traps_mod: 0,   turn_undead_mod: '0' })
wis_6  = wis_mods.create({ value: 6,  armor_class_mod: 0,  climb_mod: 0,   damage_mod: 0,   followers_mod: 0,   hitpoints_mod: 0,   extra_languages_mod: 0,   learn_magic_mod: 0,   lockpick_mod: 0,   extra_spells_1_mod: 0,   extra_spells_2_mod: 0,   extra_spells_3_mod: 0,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: 0,   perception_mod: 0,   pickpocket_mod: 0,   protection_mod: -2,  ranged_attack_mod: 0,   reaction_mod: 0,   resurrection_mod: 0,   sneak_attack_mod: 0,   stealth_mod: 0,   surprise_mod: 0,   traps_mod: 0,   turn_undead_mod: '0' })
wis_7  = wis_mods.create({ value: 7,  armor_class_mod: 0,  climb_mod: 0,   damage_mod: 0,   followers_mod: 0,   hitpoints_mod: 0,   extra_languages_mod: 0,   learn_magic_mod: 0,   lockpick_mod: 0,   extra_spells_1_mod: 0,   extra_spells_2_mod: 0,   extra_spells_3_mod: 0,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: 0,   perception_mod: 0,   pickpocket_mod: 0,   protection_mod: -2,  ranged_attack_mod: 0,   reaction_mod: 0,   resurrection_mod: 0,   sneak_attack_mod: 0,   stealth_mod: 0,   surprise_mod: 0,   traps_mod: 0,   turn_undead_mod: '0' })
wis_8  = wis_mods.create({ value: 8,  armor_class_mod: 0,  climb_mod: 0,   damage_mod: 0,   followers_mod: 0,   hitpoints_mod: 0,   extra_languages_mod: 0,   learn_magic_mod: 0,   lockpick_mod: 0,   extra_spells_1_mod: 0,   extra_spells_2_mod: 0,   extra_spells_3_mod: 0,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: 0,   perception_mod: 0,   pickpocket_mod: 0,   protection_mod: -1,  ranged_attack_mod: 0,   reaction_mod: 0,   resurrection_mod: 0,   sneak_attack_mod: 0,   stealth_mod: 0,   surprise_mod: 0,   traps_mod: 0,   turn_undead_mod: '0' })
wis_9  = wis_mods.create({ value: 9,  armor_class_mod: 0,  climb_mod: 0,   damage_mod: 0,   followers_mod: 0,   hitpoints_mod: 0,   extra_languages_mod: 0,   learn_magic_mod: 0,   lockpick_mod: 0,   extra_spells_1_mod: 0,   extra_spells_2_mod: 0,   extra_spells_3_mod: 0,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: 0,   perception_mod: 0,   pickpocket_mod: 0,   protection_mod: -1,  ranged_attack_mod: 0,   reaction_mod: 0,   resurrection_mod: 0,   sneak_attack_mod: 0,   stealth_mod: 0,   surprise_mod: 0,   traps_mod: 0,   turn_undead_mod: '0' })
wis_10 = wis_mods.create({ value: 10, armor_class_mod: 0,  climb_mod: 0,   damage_mod: 0,   followers_mod: 0,   hitpoints_mod: 0,   extra_languages_mod: 0,   learn_magic_mod: 0,   lockpick_mod: 0,   extra_spells_1_mod: 0,   extra_spells_2_mod: 0,   extra_spells_3_mod: 0,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: 0,   perception_mod: 0,   pickpocket_mod: 0,   protection_mod: 0,   ranged_attack_mod: 0,   reaction_mod: 0,   resurrection_mod: 0,   sneak_attack_mod: 0,   stealth_mod: 0,   surprise_mod: 0,   traps_mod: 0,   turn_undead_mod: '0' })
wis_11 = wis_mods.create({ value: 11, armor_class_mod: 0,  climb_mod: 0,   damage_mod: 0,   followers_mod: 0,   hitpoints_mod: 0,   extra_languages_mod: 0,   learn_magic_mod: 0,   lockpick_mod: 0,   extra_spells_1_mod: 0,   extra_spells_2_mod: 0,   extra_spells_3_mod: 0,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: 0,   perception_mod: 0,   pickpocket_mod: 0,   protection_mod: 0,   ranged_attack_mod: 0,   reaction_mod: 0,   resurrection_mod: 0,   sneak_attack_mod: 0,   stealth_mod: 0,   surprise_mod: 0,   traps_mod: 0,   turn_undead_mod: '0' })
wis_12 = wis_mods.create({ value: 12, armor_class_mod: 0,  climb_mod: 0,   damage_mod: 0,   followers_mod: 0,   hitpoints_mod: 0,   extra_languages_mod: 0,   learn_magic_mod: 0,   lockpick_mod: 0,   extra_spells_1_mod: 0,   extra_spells_2_mod: 0,   extra_spells_3_mod: 0,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: 0,   perception_mod: 0,   pickpocket_mod: 0,   protection_mod: 1,   ranged_attack_mod: 0,   reaction_mod: 0,   resurrection_mod: 0,   sneak_attack_mod: 0,   stealth_mod: 0,   surprise_mod: 0,   traps_mod: 0,   turn_undead_mod: '0' })
wis_13 = wis_mods.create({ value: 13, armor_class_mod: 0,  climb_mod: 0,   damage_mod: 0,   followers_mod: 0,   hitpoints_mod: 0,   extra_languages_mod: 0,   learn_magic_mod: 0,   lockpick_mod: 0,   extra_spells_1_mod: 0,   extra_spells_2_mod: 0,   extra_spells_3_mod: 0,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: 0,   perception_mod: 0,   pickpocket_mod: 0,   protection_mod: 1,   ranged_attack_mod: 0,   reaction_mod: 0,   resurrection_mod: 0,   sneak_attack_mod: 0,   stealth_mod: 0,   surprise_mod: 0,   traps_mod: 0,   turn_undead_mod: '0' })
wis_14 = wis_mods.create({ value: 14, armor_class_mod: 0,  climb_mod: 0,   damage_mod: 0,   followers_mod: 0,   hitpoints_mod: 0,   extra_languages_mod: 0,   learn_magic_mod: 0,   lockpick_mod: 0,   extra_spells_1_mod: 0,   extra_spells_2_mod: 0,   extra_spells_3_mod: 0,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: 0,   perception_mod: 0,   pickpocket_mod: 0,   protection_mod: 2,   ranged_attack_mod: 0,   reaction_mod: 0,   resurrection_mod: 0,   sneak_attack_mod: 0,   stealth_mod: 0,   surprise_mod: 0,   traps_mod: 0,   turn_undead_mod: '0' })
wis_15 = wis_mods.create({ value: 15, armor_class_mod: 0,  climb_mod: 0,   damage_mod: 0,   followers_mod: 0,   hitpoints_mod: 0,   extra_languages_mod: 0,   learn_magic_mod: 0,   lockpick_mod: 0,   extra_spells_1_mod: 0,   extra_spells_2_mod: 0,   extra_spells_3_mod: 0,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: 0,   perception_mod: 0,   pickpocket_mod: 0,   protection_mod: 2,   ranged_attack_mod: 0,   reaction_mod: 0,   resurrection_mod: 0,   sneak_attack_mod: 0,   stealth_mod: 0,   surprise_mod: 0,   traps_mod: 0,   turn_undead_mod: '0' })
wis_16 = wis_mods.create({ value: 16, armor_class_mod: 0,  climb_mod: 0,   damage_mod: 0,   followers_mod: 0,   hitpoints_mod: 0,   extra_languages_mod: 0,   learn_magic_mod: 0,   lockpick_mod: 0,   extra_spells_1_mod: 1,   extra_spells_2_mod: 0,   extra_spells_3_mod: 0,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: 0,   perception_mod: 0,   pickpocket_mod: 0,   protection_mod: 3,   ranged_attack_mod: 0,   reaction_mod: 0,   resurrection_mod: 0,   sneak_attack_mod: 0,   stealth_mod: 0,   surprise_mod: 0,   traps_mod: 0,   turn_undead_mod: '0' })
wis_17 = wis_mods.create({ value: 17, armor_class_mod: 0,  climb_mod: 0,   damage_mod: 0,   followers_mod: 0,   hitpoints_mod: 0,   extra_languages_mod: 0,   learn_magic_mod: 0,   lockpick_mod: 0,   extra_spells_1_mod: 1,   extra_spells_2_mod: 0,   extra_spells_3_mod: 0,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: 0,   perception_mod: 0,   pickpocket_mod: 0,   protection_mod: 3,   ranged_attack_mod: 0,   reaction_mod: 0,   resurrection_mod: 0,   sneak_attack_mod: 0,   stealth_mod: 0,   surprise_mod: 0,   traps_mod: 0,   turn_undead_mod: '0' })
wis_18 = wis_mods.create({ value: 18, armor_class_mod: 0,  climb_mod: 0,   damage_mod: 0,   followers_mod: 0,   hitpoints_mod: 0,   extra_languages_mod: 0,   learn_magic_mod: 0,   lockpick_mod: 0,   extra_spells_1_mod: 2,   extra_spells_2_mod: 0,   extra_spells_3_mod: 0,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: 0,   perception_mod: 0,   pickpocket_mod: 0,   protection_mod: 4,   ranged_attack_mod: 0,   reaction_mod: 0,   resurrection_mod: 0,   sneak_attack_mod: 0,   stealth_mod: 0,   surprise_mod: 0,   traps_mod: 0,   turn_undead_mod: '0' })
wis_19 = wis_mods.create({ value: 19, armor_class_mod: 0,  climb_mod: 0,   damage_mod: 0,   followers_mod: 0,   hitpoints_mod: 0,   extra_languages_mod: 0,   learn_magic_mod: 0,   lockpick_mod: 0,   extra_spells_1_mod: 2,   extra_spells_2_mod: 0,   extra_spells_3_mod: 0,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: 0,   perception_mod: 0,   pickpocket_mod: 0,   protection_mod: 4,   ranged_attack_mod: 0,   reaction_mod: 0,   resurrection_mod: 0,   sneak_attack_mod: 0,   stealth_mod: 0,   surprise_mod: 0,   traps_mod: 0,   turn_undead_mod: '0' })
wis_20 = wis_mods.create({ value: 20, armor_class_mod: 0,  climb_mod: 0,   damage_mod: 0,   followers_mod: 0,   hitpoints_mod: 0,   extra_languages_mod: 0,   learn_magic_mod: 0,   lockpick_mod: 0,   extra_spells_1_mod: 2,   extra_spells_2_mod: 1,   extra_spells_3_mod: 0,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: 0,   perception_mod: 0,   pickpocket_mod: 0,   protection_mod: 5,   ranged_attack_mod: 0,   reaction_mod: 0,   resurrection_mod: 0,   sneak_attack_mod: 0,   stealth_mod: 0,   surprise_mod: 0,   traps_mod: 0,   turn_undead_mod: '0' })
wis_21 = wis_mods.create({ value: 21, armor_class_mod: 0,  climb_mod: 0,   damage_mod: 0,   followers_mod: 0,   hitpoints_mod: 0,   extra_languages_mod: 0,   learn_magic_mod: 0,   lockpick_mod: 0,   extra_spells_1_mod: 2,   extra_spells_2_mod: 1,   extra_spells_3_mod: 0,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: 0,   perception_mod: 0,   pickpocket_mod: 0,   protection_mod: 5,   ranged_attack_mod: 0,   reaction_mod: 0,   resurrection_mod: 0,   sneak_attack_mod: 0,   stealth_mod: 0,   surprise_mod: 0,   traps_mod: 0,   turn_undead_mod: '0' })
wis_22 = wis_mods.create({ value: 22, armor_class_mod: 0,  climb_mod: 0,   damage_mod: 0,   followers_mod: 0,   hitpoints_mod: 0,   extra_languages_mod: 0,   learn_magic_mod: 0,   lockpick_mod: 0,   extra_spells_1_mod: 2,   extra_spells_2_mod: 2,   extra_spells_3_mod: 0,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: 0,   perception_mod: 0,   pickpocket_mod: 0,   protection_mod: 6,   ranged_attack_mod: 0,   reaction_mod: 0,   resurrection_mod: 0,   sneak_attack_mod: 0,   stealth_mod: 0,   surprise_mod: 0,   traps_mod: 0,   turn_undead_mod: '0' })
wis_23 = wis_mods.create({ value: 23, armor_class_mod: 0,  climb_mod: 0,   damage_mod: 0,   followers_mod: 0,   hitpoints_mod: 0,   extra_languages_mod: 0,   learn_magic_mod: 0,   lockpick_mod: 0,   extra_spells_1_mod: 2,   extra_spells_2_mod: 2,   extra_spells_3_mod: 0,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: 0,   perception_mod: 0,   pickpocket_mod: 0,   protection_mod: 6,   ranged_attack_mod: 0,   reaction_mod: 0,   resurrection_mod: 0,   sneak_attack_mod: 0,   stealth_mod: 0,   surprise_mod: 0,   traps_mod: 0,   turn_undead_mod: '0' })
wis_24 = wis_mods.create({ value: 24, armor_class_mod: 0,  climb_mod: 0,   damage_mod: 0,   followers_mod: 0,   hitpoints_mod: 0,   extra_languages_mod: 0,   learn_magic_mod: 0,   lockpick_mod: 0,   extra_spells_1_mod: 2,   extra_spells_2_mod: 2,   extra_spells_3_mod: 1,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: 0,   perception_mod: 0,   pickpocket_mod: 0,   protection_mod: 7,   ranged_attack_mod: 0,   reaction_mod: 0,   resurrection_mod: 0,   sneak_attack_mod: 0,   stealth_mod: 0,   surprise_mod: 0,   traps_mod: 0,   turn_undead_mod: '0' })
wis_25 = wis_mods.create({ value: 25, armor_class_mod: 0,  climb_mod: 0,   damage_mod: 0,   followers_mod: 0,   hitpoints_mod: 0,   extra_languages_mod: 0,   learn_magic_mod: 0,   lockpick_mod: 0,   extra_spells_1_mod: 2,   extra_spells_2_mod: 2,   extra_spells_3_mod: 1,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: 0,   perception_mod: 0,   pickpocket_mod: 0,   protection_mod: 7,   ranged_attack_mod: 0,   reaction_mod: 0,   resurrection_mod: 0,   sneak_attack_mod: 0,   stealth_mod: 0,   surprise_mod: 0,   traps_mod: 0,   turn_undead_mod: '0' })
wis_26 = wis_mods.create({ value: 26, armor_class_mod: 0,  climb_mod: 0,   damage_mod: 0,   followers_mod: 0,   hitpoints_mod: 0,   extra_languages_mod: 0,   learn_magic_mod: 0,   lockpick_mod: 0,   extra_spells_1_mod: 3,   extra_spells_2_mod: 2,   extra_spells_3_mod: 1,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: 0,   perception_mod: 0,   pickpocket_mod: 0,   protection_mod: 8,   ranged_attack_mod: 0,   reaction_mod: 0,   resurrection_mod: 0,   sneak_attack_mod: 0,   stealth_mod: 0,   surprise_mod: 0,   traps_mod: 0,   turn_undead_mod: '0' })
wis_27 = wis_mods.create({ value: 27, armor_class_mod: 0,  climb_mod: 0,   damage_mod: 0,   followers_mod: 0,   hitpoints_mod: 0,   extra_languages_mod: 0,   learn_magic_mod: 0,   lockpick_mod: 0,   extra_spells_1_mod: 3,   extra_spells_2_mod: 2,   extra_spells_3_mod: 1,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: 0,   perception_mod: 0,   pickpocket_mod: 0,   protection_mod: 8,   ranged_attack_mod: 0,   reaction_mod: 0,   resurrection_mod: 0,   sneak_attack_mod: 0,   stealth_mod: 0,   surprise_mod: 0,   traps_mod: 0,   turn_undead_mod: '0' })
wis_28 = wis_mods.create({ value: 28, armor_class_mod: 0,  climb_mod: 0,   damage_mod: 0,   followers_mod: 0,   hitpoints_mod: 0,   extra_languages_mod: 0,   learn_magic_mod: 0,   lockpick_mod: 0,   extra_spells_1_mod: 3,   extra_spells_2_mod: 3,   extra_spells_3_mod: 1,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: 0,   perception_mod: 0,   pickpocket_mod: 0,   protection_mod: 9,   ranged_attack_mod: 0,   reaction_mod: 0,   resurrection_mod: 0,   sneak_attack_mod: 0,   stealth_mod: 0,   surprise_mod: 0,   traps_mod: 0,   turn_undead_mod: '0' })
wis_29 = wis_mods.create({ value: 29, armor_class_mod: 0,  climb_mod: 0,   damage_mod: 0,   followers_mod: 0,   hitpoints_mod: 0,   extra_languages_mod: 0,   learn_magic_mod: 0,   lockpick_mod: 0,   extra_spells_1_mod: 3,   extra_spells_2_mod: 3,   extra_spells_3_mod: 1,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: 0,   perception_mod: 0,   pickpocket_mod: 0,   protection_mod: 9,   ranged_attack_mod: 0,   reaction_mod: 0,   resurrection_mod: 0,   sneak_attack_mod: 0,   stealth_mod: 0,   surprise_mod: 0,   traps_mod: 0,   turn_undead_mod: '0' })
wis_30 = wis_mods.create({ value: 30, armor_class_mod: 0,  climb_mod: 0,   damage_mod: 0,   followers_mod: 0,   hitpoints_mod: 0,   extra_languages_mod: 0,   learn_magic_mod: 0,   lockpick_mod: 0,   extra_spells_1_mod: 3,   extra_spells_2_mod: 3,   extra_spells_3_mod: 2,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: 0,   perception_mod: 0,   pickpocket_mod: 0,   protection_mod: 10,  ranged_attack_mod: 0,   reaction_mod: 0,   resurrection_mod: 0,   sneak_attack_mod: 0,   stealth_mod: 0,   surprise_mod: 0,   traps_mod: 0,   turn_undead_mod: '0' })

char_mods = charisma.attribute_modifiers

char_1  = char_mods.create({ value: 1,  armor_class_mod: 0,  climb_mod: 0,   damage_mod: 0,   followers_mod: 0,   hitpoints_mod: 0,   extra_languages_mod: 0,   learn_magic_mod: 0,   lockpick_mod: 0,   extra_spells_1_mod: 0,   extra_spells_2_mod: 0,   extra_spells_3_mod: 0,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: 0,   perception_mod: 0,   pickpocket_mod: 0,   protection_mod: 0,   ranged_attack_mod: 0,   reaction_mod: -25, resurrection_mod: 0,   sneak_attack_mod: 0,   stealth_mod: 0,   surprise_mod: 0,   traps_mod: 0,   turn_undead_mod: '0'    })
char_2  = char_mods.create({ value: 2,  armor_class_mod: 0,  climb_mod: 0,   damage_mod: 0,   followers_mod: 0,   hitpoints_mod: 0,   extra_languages_mod: 0,   learn_magic_mod: 0,   lockpick_mod: 0,   extra_spells_1_mod: 0,   extra_spells_2_mod: 0,   extra_spells_3_mod: 0,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: 0,   perception_mod: 0,   pickpocket_mod: 0,   protection_mod: 0,   ranged_attack_mod: 0,   reaction_mod: -20, resurrection_mod: 0,   sneak_attack_mod: 0,   stealth_mod: 0,   surprise_mod: 0,   traps_mod: 0,   turn_undead_mod: '0'    })
char_3  = char_mods.create({ value: 3,  armor_class_mod: 0,  climb_mod: 0,   damage_mod: 0,   followers_mod: 0,   hitpoints_mod: 0,   extra_languages_mod: 0,   learn_magic_mod: 0,   lockpick_mod: 0,   extra_spells_1_mod: 0,   extra_spells_2_mod: 0,   extra_spells_3_mod: 0,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: 0,   perception_mod: 0,   pickpocket_mod: 0,   protection_mod: 0,   ranged_attack_mod: 0,   reaction_mod: -20, resurrection_mod: 0,   sneak_attack_mod: 0,   stealth_mod: 0,   surprise_mod: 0,   traps_mod: 0,   turn_undead_mod: '0'    })
char_4  = char_mods.create({ value: 4,  armor_class_mod: 0,  climb_mod: 0,   damage_mod: 0,   followers_mod: 0,   hitpoints_mod: 0,   extra_languages_mod: 0,   learn_magic_mod: 0,   lockpick_mod: 0,   extra_spells_1_mod: 0,   extra_spells_2_mod: 0,   extra_spells_3_mod: 0,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: 0,   perception_mod: 0,   pickpocket_mod: 0,   protection_mod: 0,   ranged_attack_mod: 0,   reaction_mod: -15, resurrection_mod: 0,   sneak_attack_mod: 0,   stealth_mod: 0,   surprise_mod: 0,   traps_mod: 0,   turn_undead_mod: '0'    })
char_5  = char_mods.create({ value: 5,  armor_class_mod: 0,  climb_mod: 0,   damage_mod: 0,   followers_mod: 0,   hitpoints_mod: 0,   extra_languages_mod: 0,   learn_magic_mod: 0,   lockpick_mod: 0,   extra_spells_1_mod: 0,   extra_spells_2_mod: 0,   extra_spells_3_mod: 0,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: 0,   perception_mod: 0,   pickpocket_mod: 0,   protection_mod: 0,   ranged_attack_mod: 0,   reaction_mod: -15, resurrection_mod: 0,   sneak_attack_mod: 0,   stealth_mod: 0,   surprise_mod: 0,   traps_mod: 0,   turn_undead_mod: '0'    })
char_6  = char_mods.create({ value: 6,  armor_class_mod: 0,  climb_mod: 0,   damage_mod: 0,   followers_mod: 0,   hitpoints_mod: 0,   extra_languages_mod: 0,   learn_magic_mod: 0,   lockpick_mod: 0,   extra_spells_1_mod: 0,   extra_spells_2_mod: 0,   extra_spells_3_mod: 0,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: 0,   perception_mod: 0,   pickpocket_mod: 0,   protection_mod: 0,   ranged_attack_mod: 0,   reaction_mod: -10, resurrection_mod: 0,   sneak_attack_mod: 0,   stealth_mod: 0,   surprise_mod: 0,   traps_mod: 0,   turn_undead_mod: '0'    })
char_7  = char_mods.create({ value: 7,  armor_class_mod: 0,  climb_mod: 0,   damage_mod: 0,   followers_mod: 0,   hitpoints_mod: 0,   extra_languages_mod: 0,   learn_magic_mod: 0,   lockpick_mod: 0,   extra_spells_1_mod: 0,   extra_spells_2_mod: 0,   extra_spells_3_mod: 0,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: 0,   perception_mod: 0,   pickpocket_mod: 0,   protection_mod: 0,   ranged_attack_mod: 0,   reaction_mod: -10, resurrection_mod: 0,   sneak_attack_mod: 0,   stealth_mod: 0,   surprise_mod: 0,   traps_mod: 0,   turn_undead_mod: '0'    })
char_8  = char_mods.create({ value: 8,  armor_class_mod: 0,  climb_mod: 0,   damage_mod: 0,   followers_mod: 0,   hitpoints_mod: 0,   extra_languages_mod: 0,   learn_magic_mod: 0,   lockpick_mod: 0,   extra_spells_1_mod: 0,   extra_spells_2_mod: 0,   extra_spells_3_mod: 0,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: 0,   perception_mod: 0,   pickpocket_mod: 0,   protection_mod: 0,   ranged_attack_mod: 0,   reaction_mod: -5,  resurrection_mod: 0,   sneak_attack_mod: 0,   stealth_mod: 0,   surprise_mod: 0,   traps_mod: 0,   turn_undead_mod: '1'    })
char_9  = char_mods.create({ value: 9,  armor_class_mod: 0,  climb_mod: 0,   damage_mod: 0,   followers_mod: 0,   hitpoints_mod: 0,   extra_languages_mod: 0,   learn_magic_mod: 0,   lockpick_mod: 0,   extra_spells_1_mod: 0,   extra_spells_2_mod: 0,   extra_spells_3_mod: 0,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: 0,   perception_mod: 0,   pickpocket_mod: 0,   protection_mod: 0,   ranged_attack_mod: 0,   reaction_mod: -5,  resurrection_mod: 0,   sneak_attack_mod: 0,   stealth_mod: 0,   surprise_mod: 0,   traps_mod: 0,   turn_undead_mod: '1'    })
char_10 = char_mods.create({ value: 10, armor_class_mod: 0,  climb_mod: 0,   damage_mod: 0,   followers_mod: 1,   hitpoints_mod: 0,   extra_languages_mod: 0,   learn_magic_mod: 0,   lockpick_mod: 0,   extra_spells_1_mod: 0,   extra_spells_2_mod: 0,   extra_spells_3_mod: 0,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: 0,   perception_mod: 0,   pickpocket_mod: 0,   protection_mod: 0,   ranged_attack_mod: 0,   reaction_mod: 0,   resurrection_mod: 0,   sneak_attack_mod: 0,   stealth_mod: 0,   surprise_mod: 0,   traps_mod: 0,   turn_undead_mod: '1d2'  })
char_11 = char_mods.create({ value: 11, armor_class_mod: 0,  climb_mod: 0,   damage_mod: 0,   followers_mod: 1,   hitpoints_mod: 0,   extra_languages_mod: 0,   learn_magic_mod: 0,   lockpick_mod: 0,   extra_spells_1_mod: 0,   extra_spells_2_mod: 0,   extra_spells_3_mod: 0,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: 0,   perception_mod: 0,   pickpocket_mod: 0,   protection_mod: 0,   ranged_attack_mod: 0,   reaction_mod: 0,   resurrection_mod: 0,   sneak_attack_mod: 0,   stealth_mod: 0,   surprise_mod: 0,   traps_mod: 0,   turn_undead_mod: '1d2'  })
char_12 = char_mods.create({ value: 12, armor_class_mod: 0,  climb_mod: 0,   damage_mod: 0,   followers_mod: 2,   hitpoints_mod: 0,   extra_languages_mod: 0,   learn_magic_mod: 0,   lockpick_mod: 0,   extra_spells_1_mod: 0,   extra_spells_2_mod: 0,   extra_spells_3_mod: 0,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: 0,   perception_mod: 0,   pickpocket_mod: 0,   protection_mod: 0,   ranged_attack_mod: 0,   reaction_mod: 5,   resurrection_mod: 0,   sneak_attack_mod: 0,   stealth_mod: 0,   surprise_mod: 0,   traps_mod: 0,   turn_undead_mod: '1d3'  })
char_13 = char_mods.create({ value: 13, armor_class_mod: 0,  climb_mod: 0,   damage_mod: 0,   followers_mod: 2,   hitpoints_mod: 0,   extra_languages_mod: 0,   learn_magic_mod: 0,   lockpick_mod: 0,   extra_spells_1_mod: 0,   extra_spells_2_mod: 0,   extra_spells_3_mod: 0,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: 0,   perception_mod: 0,   pickpocket_mod: 0,   protection_mod: 0,   ranged_attack_mod: 0,   reaction_mod: 5,   resurrection_mod: 0,   sneak_attack_mod: 0,   stealth_mod: 0,   surprise_mod: 0,   traps_mod: 0,   turn_undead_mod: '1d3'  })
char_14 = char_mods.create({ value: 14, armor_class_mod: 0,  climb_mod: 0,   damage_mod: 0,   followers_mod: 3,   hitpoints_mod: 0,   extra_languages_mod: 0,   learn_magic_mod: 0,   lockpick_mod: 0,   extra_spells_1_mod: 0,   extra_spells_2_mod: 0,   extra_spells_3_mod: 0,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: 0,   perception_mod: 0,   pickpocket_mod: 0,   protection_mod: 0,   ranged_attack_mod: 0,   reaction_mod: 10,  resurrection_mod: 0,   sneak_attack_mod: 0,   stealth_mod: 0,   surprise_mod: 0,   traps_mod: 0,   turn_undead_mod: '1d4'  })
char_15 = char_mods.create({ value: 15, armor_class_mod: 0,  climb_mod: 0,   damage_mod: 0,   followers_mod: 3,   hitpoints_mod: 0,   extra_languages_mod: 0,   learn_magic_mod: 0,   lockpick_mod: 0,   extra_spells_1_mod: 0,   extra_spells_2_mod: 0,   extra_spells_3_mod: 0,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: 0,   perception_mod: 0,   pickpocket_mod: 0,   protection_mod: 0,   ranged_attack_mod: 0,   reaction_mod: 10,  resurrection_mod: 0,   sneak_attack_mod: 0,   stealth_mod: 0,   surprise_mod: 0,   traps_mod: 0,   turn_undead_mod: '1d4'  })
char_16 = char_mods.create({ value: 16, armor_class_mod: 0,  climb_mod: 0,   damage_mod: 0,   followers_mod: 4,   hitpoints_mod: 0,   extra_languages_mod: 0,   learn_magic_mod: 0,   lockpick_mod: 0,   extra_spells_1_mod: 0,   extra_spells_2_mod: 0,   extra_spells_3_mod: 0,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: 0,   perception_mod: 0,   pickpocket_mod: 0,   protection_mod: 0,   ranged_attack_mod: 0,   reaction_mod: 15,  resurrection_mod: 0,   sneak_attack_mod: 0,   stealth_mod: 0,   surprise_mod: 0,   traps_mod: 0,   turn_undead_mod: '1d6'  })
char_17 = char_mods.create({ value: 17, armor_class_mod: 0,  climb_mod: 0,   damage_mod: 0,   followers_mod: 4,   hitpoints_mod: 0,   extra_languages_mod: 0,   learn_magic_mod: 0,   lockpick_mod: 0,   extra_spells_1_mod: 0,   extra_spells_2_mod: 0,   extra_spells_3_mod: 0,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: 0,   perception_mod: 0,   pickpocket_mod: 0,   protection_mod: 0,   ranged_attack_mod: 0,   reaction_mod: 15,  resurrection_mod: 0,   sneak_attack_mod: 0,   stealth_mod: 0,   surprise_mod: 0,   traps_mod: 0,   turn_undead_mod: '1d6'  })
char_18 = char_mods.create({ value: 18, armor_class_mod: 0,  climb_mod: 0,   damage_mod: 0,   followers_mod: 5,   hitpoints_mod: 0,   extra_languages_mod: 0,   learn_magic_mod: 0,   lockpick_mod: 0,   extra_spells_1_mod: 0,   extra_spells_2_mod: 0,   extra_spells_3_mod: 0,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: 0,   perception_mod: 0,   pickpocket_mod: 0,   protection_mod: 0,   ranged_attack_mod: 0,   reaction_mod: 20,  resurrection_mod: 0,   sneak_attack_mod: 0,   stealth_mod: 0,   surprise_mod: 0,   traps_mod: 0,   turn_undead_mod: '1d8'  })
char_19 = char_mods.create({ value: 19, armor_class_mod: 0,  climb_mod: 0,   damage_mod: 0,   followers_mod: 5,   hitpoints_mod: 0,   extra_languages_mod: 0,   learn_magic_mod: 0,   lockpick_mod: 0,   extra_spells_1_mod: 0,   extra_spells_2_mod: 0,   extra_spells_3_mod: 0,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: 0,   perception_mod: 0,   pickpocket_mod: 0,   protection_mod: 0,   ranged_attack_mod: 0,   reaction_mod: 20,  resurrection_mod: 0,   sneak_attack_mod: 0,   stealth_mod: 0,   surprise_mod: 0,   traps_mod: 0,   turn_undead_mod: '1d8'  })
char_20 = char_mods.create({ value: 20, armor_class_mod: 0,  climb_mod: 0,   damage_mod: 0,   followers_mod: 6,   hitpoints_mod: 0,   extra_languages_mod: 0,   learn_magic_mod: 0,   lockpick_mod: 0,   extra_spells_1_mod: 0,   extra_spells_2_mod: 0,   extra_spells_3_mod: 0,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: 0,   perception_mod: 0,   pickpocket_mod: 0,   protection_mod: 0,   ranged_attack_mod: 0,   reaction_mod: 25,  resurrection_mod: 0,   sneak_attack_mod: 0,   stealth_mod: 0,   surprise_mod: 0,   traps_mod: 0,   turn_undead_mod: '2d4'  })
char_21 = char_mods.create({ value: 21, armor_class_mod: 0,  climb_mod: 0,   damage_mod: 0,   followers_mod: 6,   hitpoints_mod: 0,   extra_languages_mod: 0,   learn_magic_mod: 0,   lockpick_mod: 0,   extra_spells_1_mod: 0,   extra_spells_2_mod: 0,   extra_spells_3_mod: 0,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: 0,   perception_mod: 0,   pickpocket_mod: 0,   protection_mod: 0,   ranged_attack_mod: 0,   reaction_mod: 25,  resurrection_mod: 0,   sneak_attack_mod: 0,   stealth_mod: 0,   surprise_mod: 0,   traps_mod: 0,   turn_undead_mod: '2d4'  })
char_22 = char_mods.create({ value: 22, armor_class_mod: 0,  climb_mod: 0,   damage_mod: 0,   followers_mod: 7,   hitpoints_mod: 0,   extra_languages_mod: 0,   learn_magic_mod: 0,   lockpick_mod: 0,   extra_spells_1_mod: 0,   extra_spells_2_mod: 0,   extra_spells_3_mod: 0,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: 0,   perception_mod: 0,   pickpocket_mod: 0,   protection_mod: 0,   ranged_attack_mod: 0,   reaction_mod: 30,  resurrection_mod: 0,   sneak_attack_mod: 0,   stealth_mod: 0,   surprise_mod: 0,   traps_mod: 0,   turn_undead_mod: '1d10' })
char_23 = char_mods.create({ value: 23, armor_class_mod: 0,  climb_mod: 0,   damage_mod: 0,   followers_mod: 7,   hitpoints_mod: 0,   extra_languages_mod: 0,   learn_magic_mod: 0,   lockpick_mod: 0,   extra_spells_1_mod: 0,   extra_spells_2_mod: 0,   extra_spells_3_mod: 0,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: 0,   perception_mod: 0,   pickpocket_mod: 0,   protection_mod: 0,   ranged_attack_mod: 0,   reaction_mod: 30,  resurrection_mod: 0,   sneak_attack_mod: 0,   stealth_mod: 0,   surprise_mod: 0,   traps_mod: 0,   turn_undead_mod: '1d10' })
char_24 = char_mods.create({ value: 24, armor_class_mod: 0,  climb_mod: 0,   damage_mod: 0,   followers_mod: 8,   hitpoints_mod: 0,   extra_languages_mod: 0,   learn_magic_mod: 0,   lockpick_mod: 0,   extra_spells_1_mod: 0,   extra_spells_2_mod: 0,   extra_spells_3_mod: 0,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: 0,   perception_mod: 0,   pickpocket_mod: 0,   protection_mod: 0,   ranged_attack_mod: 0,   reaction_mod: 35,  resurrection_mod: 0,   sneak_attack_mod: 0,   stealth_mod: 0,   surprise_mod: 0,   traps_mod: 0,   turn_undead_mod: '1d12' })
char_25 = char_mods.create({ value: 25, armor_class_mod: 0,  climb_mod: 0,   damage_mod: 0,   followers_mod: 8,   hitpoints_mod: 0,   extra_languages_mod: 0,   learn_magic_mod: 0,   lockpick_mod: 0,   extra_spells_1_mod: 0,   extra_spells_2_mod: 0,   extra_spells_3_mod: 0,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: 0,   perception_mod: 0,   pickpocket_mod: 0,   protection_mod: 0,   ranged_attack_mod: 0,   reaction_mod: 35,  resurrection_mod: 0,   sneak_attack_mod: 0,   stealth_mod: 0,   surprise_mod: 0,   traps_mod: 0,   turn_undead_mod: '1d12' })
char_26 = char_mods.create({ value: 26, armor_class_mod: 0,  climb_mod: 0,   damage_mod: 0,   followers_mod: 9,   hitpoints_mod: 0,   extra_languages_mod: 0,   learn_magic_mod: 0,   lockpick_mod: 0,   extra_spells_1_mod: 0,   extra_spells_2_mod: 0,   extra_spells_3_mod: 0,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: 0,   perception_mod: 0,   pickpocket_mod: 0,   protection_mod: 0,   ranged_attack_mod: 0,   reaction_mod: 40,  resurrection_mod: 0,   sneak_attack_mod: 0,   stealth_mod: 0,   surprise_mod: 0,   traps_mod: 0,   turn_undead_mod: '2d6'  })
char_27 = char_mods.create({ value: 27, armor_class_mod: 0,  climb_mod: 0,   damage_mod: 0,   followers_mod: 9,   hitpoints_mod: 0,   extra_languages_mod: 0,   learn_magic_mod: 0,   lockpick_mod: 0,   extra_spells_1_mod: 0,   extra_spells_2_mod: 0,   extra_spells_3_mod: 0,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: 0,   perception_mod: 0,   pickpocket_mod: 0,   protection_mod: 0,   ranged_attack_mod: 0,   reaction_mod: 40,  resurrection_mod: 0,   sneak_attack_mod: 0,   stealth_mod: 0,   surprise_mod: 0,   traps_mod: 0,   turn_undead_mod: '2d6'  })
char_28 = char_mods.create({ value: 28, armor_class_mod: 0,  climb_mod: 0,   damage_mod: 0,   followers_mod: 10,  hitpoints_mod: 0,   extra_languages_mod: 0,   learn_magic_mod: 0,   lockpick_mod: 0,   extra_spells_1_mod: 0,   extra_spells_2_mod: 0,   extra_spells_3_mod: 0,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: 0,   perception_mod: 0,   pickpocket_mod: 0,   protection_mod: 0,   ranged_attack_mod: 0,   reaction_mod: 45,  resurrection_mod: 0,   sneak_attack_mod: 0,   stealth_mod: 0,   surprise_mod: 0,   traps_mod: 0,   turn_undead_mod: '1d20' })
char_29 = char_mods.create({ value: 29, armor_class_mod: 0,  climb_mod: 0,   damage_mod: 0,   followers_mod: 10,  hitpoints_mod: 0,   extra_languages_mod: 0,   learn_magic_mod: 0,   lockpick_mod: 0,   extra_spells_1_mod: 0,   extra_spells_2_mod: 0,   extra_spells_3_mod: 0,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: 0,   perception_mod: 0,   pickpocket_mod: 0,   protection_mod: 0,   ranged_attack_mod: 0,   reaction_mod: 45,  resurrection_mod: 0,   sneak_attack_mod: 0,   stealth_mod: 0,   surprise_mod: 0,   traps_mod: 0,   turn_undead_mod: '1d20' })
char_30 = char_mods.create({ value: 30, armor_class_mod: 0,  climb_mod: 0,   damage_mod: 0,   followers_mod: 11,  hitpoints_mod: 0,   extra_languages_mod: 0,   learn_magic_mod: 0,   lockpick_mod: 0,   extra_spells_1_mod: 0,   extra_spells_2_mod: 0,   extra_spells_3_mod: 0,   extra_spells_4_mod: 0,   extra_spells_5_mod: 0,   extra_spells_6_mod: 0,   extra_spells_7_mod: 0,   extra_spells_8_mod: 0,   extra_spells_9_mod: 0,   melee_attack_mod: 0,   perception_mod: 0,   pickpocket_mod: 0,   protection_mod: 0,   ranged_attack_mod: 0,   reaction_mod: 50,  resurrection_mod: 0,   sneak_attack_mod: 0,   stealth_mod: 0,   surprise_mod: 0,   traps_mod: 0,   turn_undead_mod: '2d10' })

# ------------------------------------------------------------------------------
# CHARACTERS

jon = Character.create!({
  name: 'Jon Snow',
  title: 'Bastardo de Winterfell',
  quote: '"Só existe uma guerra para a ser lutada e é a guerra contra os mortos!"',
  picture: 'https://jovemnerd.com.br/wp-content/uploads/2017/08/jon-snow-1280-760x428.jpg',
  weight: 80,
  height: 175,
  age: 26,
  description: "Jon Snow é o filho bastardo de Ned Stark, Lorde de Winterfell",
  character_class: manOfArms,
  character_race: humans,
  user: player2
})
jon.attribute_mods.create!({
    strength:     str_12,
    dexterity:    dex_14,
    constitution: con_11,
    intelligence: int_9,
    wisdom:       wis_8,
    charisma:     char_14
})
jon.journals.create!({
  current_level: 1,
  current_exp: 0,
  alignment: lawfull
})

jorah = Character.create!({
  name: "Jorah Mormont",
  title: "O Ândalo",
  quote: '"Existe uma fera dentro de cada homem e ela se agita quando ele tem uma espada nas mãos."',
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
  character_specialization: warrior,
  user: player3
})
jorah.attribute_mods.create!({
    strength:     str_11,
    dexterity:    dex_13,
    constitution: con_10,
    intelligence: int_11,
    wisdom:       wis_14,
    charisma:     char_11
})
jorah.journals.create!([
  {
    current_level: 1,
    current_exp: 0,
    alignment: neutral,
    active: false
  },
  {
    current_level: 2,
    current_exp: 2000,
    alignment: neutral,
    active: false
  },
  {
    current_level: 3,
    current_exp: 4000,
    alignment: lawfull,
    active: false
  },
  {
    current_level: 4,
    current_exp: 8000,
    alignment: lawfull,
    active: false
  },
  {
    current_level: 5,
    current_exp: 16000,
    alignment: lawfull
  }
])

sandor = Character.create!({
  name: 'Sandor Clegane',
  title: 'O Cão de Caça',
  quote: '"Foda-se o rei..."',
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
  character_specialization: barbarian,
  user: player1
})
sandor.attribute_mods.create!({
    strength:     str_16,
    dexterity:    dex_11,
    constitution: con_13,
    intelligence: int_11,
    wisdom:       wis_10,
    charisma:     char_9
})
sandor.journals.create!([
  {
    current_level: 1,
    current_exp: 0,
    alignment: chaotic,
    active: false
  },
  {
    current_level: 2,
    current_exp: 2000,
    alignment: chaotic,
    active: false
  },
  {
    current_level: 3,
    current_exp: 4000,
    alignment: chaotic,
    active: false
  },
  {
    current_level: 4,
    current_exp: 8000,
    alignment: chaotic,
    active: false
  },
  {
    current_level: 5,
    current_exp: 16000,
    alignment: chaotic,
    active: false
  },
  {
    current_level: 6,
    current_exp: 32000,
    alignment: chaotic,
    active: false
  },
  {
    current_level: 7,
    current_exp: 64000,
    alignment: chaotic
  }
])

tormund = Character.create!({
  name: "Tormund Giantsbane",
  title: "O Ruivo",
  quote: '"Nós, os ruivos, somos beijados pelo fogo!"',
  picture: 'http://ll-c.ooyala.com/e1/o3bmxsYzE6cqDcBRwDriGSdUeRR8Skns/promo329184407',
  weight: 98,
  height: 187,
  age: 37,
  description: "Tormund é um guerreiro e líder dos Selvagens, povo que vive "\
    "no extremo norte de Westeros, Além da Muralha, e que se denominam como "\
    "Homens Livres.",
  character_class: manOfArms,
  character_race: humans,
  user: player4
})
tormund.attribute_mods.create!({
    strength:     str_14,
    dexterity:    dex_13,
    constitution: con_11,
    intelligence: int_11,
    wisdom:       wis_12,
    charisma:     char_10
})
tormund.journals.create!([
  {
    current_level: 1,
    current_exp: 0,
    alignment: chaotic,
    active: false
  },
  {
    current_level: 2,
    current_exp: 2000,
    alignment: chaotic,
    active: false
  },
  {
    current_level: 3,
    current_exp: 4000,
    alignment: chaotic,
    active: false
  },
  {
    current_level: 4,
    current_exp: 8000,
    alignment: chaotic,
    active: false
  },
  {
    current_level: 5,
    current_exp: 16000,
    alignment: chaotic
  }
])

thoros = Character.create!({
  name: "Thoros de Myr",
  title: "Sacerdote de R\'hllor",
  quote: '"Eu não era o mais bravo, apenas o mais bêbado..."',
  picture: 'http://i.lv3.hbo.com/assets/images/series/game-of-thrones/character/s7/thoros-of-myr-1280.jpg',
  weight: 85,
  height: 170,
  age: 55,
  description: "Thoros de Myr é um sacerdote vermelho de R'hllor, da Cidade "\
    "Livre de Myr, e um membro da corte em Porto Real.",
  character_class: cleric,
  character_race: humans,
  user: player5
})
thoros.attribute_mods.create!({
    strength:     str_12,
    dexterity:    dex_10,
    constitution: con_10,
    intelligence: int_13,
    wisdom:       wis_14,
    charisma:     char_11
})
thoros.journals.create!([
  {
    current_level: 1,
    current_exp: 0,
    alignment: lawfull,
    active: false
  },
  {
    current_level: 2,
    current_exp: 1500,
    alignment: neutral,
    active: false
  },
  {
    current_level: 3,
    current_exp: 3000,
    alignment: chaotic,
    active: false
  },
  {
    current_level: 4,
    current_exp: 6000,
    alignment: chaotic
  }
])

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

campaign.pages.create!([
  {
    title: "Primeira Sessão",
    body: "Os aventureiros se reunem no castelo da patrula da noite e "\
      "recebem uma ordem para partir para o norte da muralha.\n"\
      "```dm-content\nCuidado com o urso zumbi...\n```",
    page_category: journals
  },
  {
    title: "Segunda Sessão",
    body: "Após atravessarem a muralha, os aventureiros se encontram "\
      "com um grupo de selvagens e um pequeno conflito acontece, resultando "\
      "em mortes em ambos os grupos.",
    page_category: journals
  },
  {
    title: "Westeros",
    body: "Local onde se passa a campanha, mais precisamente no norte, na "\
      "[Muralha de Gelo]([[A Muralha de Gelo]]).\n"\
      "[Mapa]([[Mapa de Westeros]])",
    picture: "http://img.manoramaonline.com/content/dam/mm/en/travel/travel-news/images/2017/7/31/westeros-fb.jpg.image.784.410.jpg",
    page_category: locations
  },
  {
    title: "Mapa de Westeros",
    body: "![Westeros](https://vignette1.wikia.nocookie.net/gameofthrones/images/7/71/Westeros_HBO.png/revision/latest?cb=20111113154717)",
    picture: "https://vignette1.wikia.nocookie.net/gameofthrones/images/7/71/Westeros_HBO.png/revision/latest?cb=20111113154717",
    page_category: maps
  },
  {
    title: "A Muralha de Gelo",
    body: "Nada sobrevive ao norte gélido da grande muralha de gelo.\n"\
      "Um ambiente completamente inospito aguarda aqueles que se atrevem a "\
      "adentrar as planicies congeladas do norte extremo.\n"\
      "Os [White Walkers]([[White Walkers]]) rondam os ermos em busca de "\
      "novos membros para suas tropas",
    picture: "https://misteriosdomundo.org/wp-content/uploads/2016/04/muralha-got.jpg",
    page_category: locations
  },
  {
    title: "Rei da Noite",
    body: "Uma **criatura maligna** detentora de poderes mágicos cujos limites"\
      " são desconhecidos até então.",
    picture: "http://static1.uk.businessinsider.com/image/599ae53ad0302030607e89ac-1632/screen\%20shot\%202017-08-21\%20at\%2085935\%20am.png",
    page_category: creatures
  },
  {
    title: "White Walkers",
    body: "Humanos que foram modificados pela magia [Rei da Noite]([[Rei da Noite]])",
    picture: "http://vignette1.wikia.nocookie.net/gameofthrones/images/3/3a/White-Walkers-on-Horses.jpg/revision/latest?cb=20160721115355",
    dm_only: true,
    page_category: creatures
  },
  {
    title: "Wights",
    body: "Mortos-vivos que foram revividos pela magia [Rei da Noite]([[Rei da Noite]]) e dos [White Walkers]([[White Walkers]]).",
    picture: "https://vignette.wikia.nocookie.net/gameofthrones/images/2/2c/Breached_wall_wights_.png/revision/latest?cb=20170828052754",
    dm_only: true,
    page_category: creatures
  },
  {
    title: "Filhos da Floresta",
    body: "Primeiros habitantes de [Westeros]([[Westeros]])",
    picture: "https://img3.goodfon.com/wallpaper/big/d/55/game-of-thrones-children-of.jpg",
    dm_only: true,
    page_category: organizations
  },
  {
    title: "Primeiros Homens",
    body: "Humanos que invadiram [Westeros]([[Westeros]]) milhares de anos atrás",
    picture: "https://vignette.wikia.nocookie.net/gameofthrones/images/1/13/TheLongNightVictory.png/revision/latest?cb=20120626193649",
    page_category: organizations
  },
  {
    title: "Patrulha da Noite",
    body: "Ordem de guardiões da [Muralha de Gelo]([[A Muralha de Gelo]]).",
    picture: "http://images.entertainment.ie/images_content/rectangle/620x372/Screen-Shot-2017-05-06-at-202807.png",
    page_category: organizations
  }
])

campaign.characters.push(jon)
campaign.characters.push(jorah)