MACRO move
	db \1 ; animation (interchangeable with move id)
	db \2 ; effect
	db \3 ; power
	db \4 ; type
	db \5 percent ; accuracy
	db \6 ; pp
	assert \6 <= 40, "PP must be 40 or less"
ENDM

Moves:
; Characteristics of each move.
	table_width MOVE_LENGTH, Moves
	move POUND,        NO_ADDITIONAL_EFFECT,        30, NORMAL,       100, 35 ; weaker Tackle, for Pokemon where it makes more sense.
    move KARATE_CHOP,  NO_ADDITIONAL_EFFECT,        60, FIGHTING,     100, 30 ; deixou de ser high-crit.
    move DOUBLESLAP,   TWO_TO_FIVE_ATTACKS_EFFECT,  15, NORMAL,        90, 20
    move COMET_PUNCH,  TWO_TO_FIVE_ATTACKS_EFFECT,  18, FIGHTING,      90, 20
    move MEGA_PUNCH,   NO_ADDITIONAL_EFFECT,        75, FIGHTING,      90, 20
    move PAY_DAY,      PAY_DAY_EFFECT,              60, NORMAL,       100, 30
    move FIRE_PUNCH,   BURN_SIDE_EFFECT1,           55, FIRE,         100, 25
    move ICE_PUNCH,    FREEZE_SIDE_EFFECT,          55, ICE,          100, 25
    move THUNDERPUNCH, PARALYZE_SIDE_EFFECT1,       55, ELECTRIC,     100, 25
    move SCRATCH,      NO_ADDITIONAL_EFFECT,        35, NORMAL,       100, 35 ; pokemon learns either Scratch/Bite or Tackle.
    move VICEGRIP,     FLINCH_SIDE_EFFECT1,         75, BUG,          100, 25 ; replaced 'NO_ADDITIONAL_EFFECT' with 'FLINCH_SIDE_EFFECT1'. pinsir, kingler.
    move GUILLOTINE,   DEFENSE_DOWN1_EFFECT,       120, BUG,           80,  5 ; replaced 'OHKO_EFFECT' with 'DEFENSE_DOWN1_EFFECT'. passou a ser high-crit.
    move AIR_SLASH,    NO_ADDITIONAL_EFFECT,        65, FLYING,       100, 30 ; NEW MOVE - replaced Razor_Wind. high-crit.
    move SWORDS_DANCE, ATTACK_UP2_EFFECT,            0, BIRD,         100, 20 ; Natural: arcanine, dragonite, farfetch'd, primeape, scyther, persian. Learn: marowak, pinsir, kabutops, sandslash, kingler, hitmons, etc.
    move CUT,          NO_ADDITIONAL_EFFECT,        55, STEEL,        100, 25 ; passou a ser high-crit.
    move GUST,         NO_ADDITIONAL_EFFECT,        35, FLYING,       100, 35
    move WING_ATTACK,  NO_ADDITIONAL_EFFECT,        60, FLYING,       100, 30
    move WHIRLWIND,    SPEED_DOWN1_EFFECT,           0, BIRD,         100, 30 ; replaced 'SWITCH_AND_TELEPORT_EFFECT' with 'SPEED_DOWN1_EFFECT'. pidgeot, fearow, butterfree, farfetch'd, dragonite, aerodactyl.
    move FLY,          FLY_EFFECT,                  70, FLYING,       100, 20
    move BIND,         PARALYZE_SIDE_EFFECT2,       50, ROCK,         100, 25 ; no longer multi-turn; tornei a animação mais lenta/demorada. Onyx, Arbok, Dragonite, Gyarados, Machamp, Kangaskhan.
    move DRAGON_SLAM,  PARALYZE_SIDE_EFFECT2,       90, DRAGON,       100, 15 ; NEW MOVE - replaced Slam. Natural: onyx, dragonite, gyarados.
    move VINE_WHIP,    NO_ADDITIONAL_EFFECT,        40, GRASS,        100, 30 ; bellsprout, bulbasaur, tangela.
    move GROUND_STOMP, SPEED_DOWN_SIDE_EFFECT,      40, GROUND,       100, 30 ; NEW MOVE - replaced Stomp. também dar ao Dodrio.
    move DOUBLE_KICK,  ATTACK_TWICE_EFFECT,         30, FIGHTING,     100, 20
    move SHADOW_BALL,  SPECIAL_DOWN_SIDE_EFFECT,    80, GHOST,        100, 20 ; NEW MOVE - replaced Mega_Kick. Natural: gengar, ninetales, marowak, hypno, jynx. high-level move.
    move DARK_PULSE,   FLINCH_SIDE_EFFECT2,         80, DARK,         100, 20 ; NEW MOVE - replaced Jump_Kick. Natural: Gengar, Hypno, Marowak. high-level move.
    move ROLLING_KICK, FLINCH_SIDE_EFFECT2,         75, FIGHTING,     100, 25 ; hitmonlee's signature move.
    move SAND_ATTACK,  ACCURACY_DOWN1_EFFECT,       20, GROUND,       100, 20
    move HEADBUTT,     CONFUSION_SIDE_EFFECT,       45, NORMAL,       100, 25
    move HORN_ATTACK,  NO_ADDITIONAL_EFFECT,        50, NORMAL,        90, 30 ; passou a ser high-crit.
    move FURY_ATTACK,  TWO_TO_FIVE_ATTACKS_EFFECT,  17, NORMAL,        90, 20
    move HORN_DRILL,   DEFENSE_DOWN1_EFFECT,       100, ROCK,          90, 15 ; replaced 'OHKO_EFFECT' with 'DEFENSE_DOWN1_EFFECT'. passou a ser high-crit. Rhydon (learns right after skull bash), Rapidash, Seaking.
    move TACKLE,       NO_ADDITIONAL_EFFECT,        40, NORMAL,       100, 30 ; pokemon learns either Scratch/Bite or Tackle.
    move BODY_SLAM,    NO_ADDITIONAL_EFFECT,        80, NORMAL,       100, 25 ; replaced 'PARALYZE_SIDE_EFFECT2' with 'NO_ADDITIONAL_EFFECT'. just a stronger Tackle now. common move.
    move WRAP,         TRAPPING_EFFECT,             16, GRASS,         85, 20 ; tornei a animação ligeiramente mais lenta/demorada. Tangela, Victreebel, Tentacruel, Parasect.
    move TAKE_DOWN,    DEFENSE_DOWN1_EFFECT,        80, FIGHTING,      95, 20 ; replaced 'RECOIL_EFFECT' with 'DEFENSE_DOWN1_EFFECT'. versao ligeiramente mais fraca e comum do Submission.
    move THRASH,       THRASH_PETAL_DANCE_EFFECT,  100, DRAGON,       100,  5 ; gyarados, dragonite, tauros, marowak, primeape, rhydon, onyx, nidoking.
    move DOUBLE_EDGE,  RECOIL_EFFECT,              100, NORMAL,       100, 10 ; Natural: tauros, gyarados, snorlax, rhydon, arcanine, onyx, marowak, primeape.
    move TAIL_WHIP,    DEFENSE_DOWN1_EFFECT,         0, BIRD,         100, 30
    move POISON_STING, POISON_SIDE_EFFECT1,         35, POISON,       100, 30 ; ekans, nidos, zubat, tentacool, sandshrew, beedril.
    move TWINEEDLE,    TWINEEDLE_EFFECT,            40, BUG,          100, 20
    move PIN_MISSILE,  TWO_TO_FIVE_ATTACKS_EFFECT,  18, BUG,           90, 20
    move LEER,         SPEED_DOWN1_EFFECT,           0, BIRD,         100, 30 ; replaced 'DEFENSE_DOWN1_EFFECT' with 'SPEED_DOWN1_EFFECT'.
    move BITE,         FLINCH_SIDE_EFFECT1,         45, NORMAL,       100, 35 ; pokemon learns either Scratch/Bite or Tackle.
    move GROWL,        ATTACK_DOWN1_EFFECT,          0, BIRD,         100, 30
    move ROAR,         ATTACK_UP1_EFFECT,            0, BIRD,         100, 30 ; replaced 'SWITCH_AND_TELEPORT_EFFECT' with 'ATTACK_UP1_EFFECT'. early level move. arcanine, tauros, rhydon, primeape, onyx, snorlax, dragonite, charizard, nidos, gyarados, aerodactyl.
    move SING,         SLEEP_EFFECT,                 0, BIRD,          75, 20 ; jigglypuff, chansey (high level).
    move SUPERSONIC,   CONFUSION_EFFECT,             0, BIRD,          80, 20 ; zubat, magnemite, voltorb, electabuzz.
    move SONICBOOM,    SPECIAL_DAMAGE_EFFECT,        1, NORMAL,       100, 20
    move DISABLE,      DISABLE_EFFECT,               0, BIRD,          75, 15 ; drowzee, mr mime, jynx, mewtwo.
    move ACID,         DEFENSE_DOWN1_EFFECT,        50, POISON,       100, 25 ; replaced 'DEFENSE_DOWN_SIDE_EFFECT' with 'DEFENSE_DOWN1_EFFECT'. grimer (egg move), poison types.
    move EMBER,        BURN_SIDE_EFFECT1,           40, FIRE,         100, 30
    move FLAMETHROWER, BURN_SIDE_EFFECT2,           90, FIRE,         100, 15 ; replaced 'BURN_SIDE_EFFECT1' with 'BURN_SIDE_EFFECT2'.
    move ICY_MIST,     SPEED_DOWN_SIDE_EFFECT,      40, ICE,          100, 30 ; NEW MOVE - replaced Mist.
    move WATER_GUN,    NO_ADDITIONAL_EFFECT,        40, WATER,        100, 30
    move HYDRO_PUMP,   SPEED_DOWN1_EFFECT,         110, WATER,         80, 10 ; replaced 'NO_ADDITIONAL_EFFECT' with 'SPEED_DOWN1_EFFECT'.
    move SURF,         SPEED_DOWN_SIDE_EFFECT,      90, WATER,        100, 15 ; replaced 'NO_ADDITIONAL_EFFECT' with 'SPEED_DOWN_SIDE_EFFECT'.
    move ICE_BEAM,     FREEZE_SIDE_EFFECT,          90, ICE,          100, 15
    move BLIZZARD,     FREEZE_SIDE_EFFECT,         110, ICE,           80, 10
    move PSYBEAM,      SPECIAL_DOWN_SIDE_EFFECT,    70, PSYCHIC_TYPE, 100, 20 ; replaced 'CONFUSION_SIDE_EFFECT' with 'SPECIAL_DOWN_SIDE_EFFECT'.
    move BUBBLEBEAM,   SPEED_DOWN_SIDE_EFFECT,      55, WATER,        100, 25
    move AURORA_BEAM,  SPECIAL_DOWN_SIDE_EFFECT,    70, ICE,          100, 20 ; replaced 'ATTACK_DOWN_SIDE_EFFECT' with 'SPECIAL_DOWN_SIDE_EFFECT'.
    move HYPER_BEAM,   HYPER_BEAM_EFFECT,          130, DRAGON,        80,  5 ; dragonite, gyarados (high level), mewtwo.
    move PECK,         NO_ADDITIONAL_EFFECT,        35, FLYING,       100, 35
    move DRILL_PECK,   DEFENSE_DOWN1_EFFECT,        90, FLYING,       100, 15 ; replaced 'NO_ADDITIONAL_EFFECT' with 'DEFENSE_DOWN1_EFFECT'.
    move SUBMISSION,   ATTACK_DOWN1_EFFECT,         90, FIGHTING,     100, 20 ; replaced 'RECOIL_EFFECT' with 'ATTACK_DOWN1_EFFECT'. Machamp signature move.
    move LOW_KICK,     FLINCH_SIDE_EFFECT2,         45, FIGHTING,      90, 25
    move COUNTER,      ACCURACY_UP1_EFFECT,          1, FIGHTING,     100, 20 ; replaced 'NO_ADDITIONAL_EFFECT' with 'ACCURACY_UP1_EFFECT'. fighting types. TODO: test if effect only activates on successful counter.
    move SEISMIC_TOSS, SPECIAL_DAMAGE_EFFECT,        1, FIGHTING,     100, 25
    move STRENGTH,     ATTACK_UP1_EFFECT,           60, FIGHTING,     100, 30 ; replaced 'NO_ADDITIONAL_EFFECT' with 'ATTACK_UP1_EFFECT'. machop-line and pinsir learn naturally.
    move ABSORB,       DRAIN_HP_EFFECT,             20, GRASS,        100, 30 ; paras, bellsprout, oddish, zubat, butterfree, tangela.
    move MEGA_DRAIN,   DRAIN_HP_EFFECT,             50, GRASS,        100, 25 ; parasect, weepinbell, gloom, tangela,
    move LEECH_SEED,   LEECH_SEED_EFFECT,            0, GRASS,        100, 15 ; Venusaur, Tangela, Parasect.
    move GROWTH,       SPECIAL_UP1_EFFECT,           0, BIRD,         100, 25 ; all grass types except parasect.
    move RAZOR_LEAF,   NO_ADDITIONAL_EFFECT,        65, GRASS,        100, 20 ; high-crit. weepinbell, ivysaur.
    move SOLARBEAM,    CHARGE_EFFECT,              120, GRASS,        100, 10 ; Venusaur, Tangela, Exeggutor, Victreebel, Vileplume.
    move POISONPOWDER, POISON_EFFECT,                0, GRASS,         80, 20 ; butterfree, venomoth, Venusaur, Victreebel, Vileplume.
    move STUN_SPORE,   PARALYZE_EFFECT,              0, GRASS,         75, 20 ; venomoth, Tangela, Parasect, Vileplume.
    move SLEEP_POWDER, SLEEP_EFFECT,                 0, GRASS,         70, 20 ; butterfree, venomoth, Venusaur, Parasect (before Spore), Victreebel, Vileplume.
    move PETAL_DANCE,  THRASH_PETAL_DANCE_EFFECT,  100, GRASS,        100, 10 ; venusaur, victreebel, vileplume,
    move STRING_SHOT,  SPEED_DOWN1_EFFECT,           0, BIRD,         100, 30
    move DRAGON_RAGE,  SPECIAL_DAMAGE_EFFECT,        1, DRAGON,       100, 20 ; dragonite, gyarados, charizard.
    move FIRE_SPIN,    BURN_SIDE_EFFECT1,           70, FIRE,         100, 20 ; replaced 'TRAPPING_EFFECT' with 'BURN_SIDE_EFFECT1'. give to weezing. TODO: repensar nome.
    move THUNDERSHOCK, PARALYZE_SIDE_EFFECT1,       70, ELECTRIC,     100, 20
    move THUNDERBOLT,  PARALYZE_SIDE_EFFECT2,       90, ELECTRIC,     100, 15 ; replaced 'PARALYZE_SIDE_EFFECT1' with 'PARALYZE_SIDE_EFFECT2'.
    move THUNDER_WAVE, PARALYZE_EFFECT,              0, ELECTRIC,     100, 20
    move THUNDER,      PARALYZE_SIDE_EFFECT2,      110, ELECTRIC,      80, 10 ; replaced 'PARALYZE_SIDE_EFFECT1' with 'PARALYZE_SIDE_EFFECT2'.
    move ROCK_THROW,   FLINCH_SIDE_EFFECT2,         60, ROCK,          90, 25 ; replaced 'NO_ADDITIONAL_EFFECT' with 'FLINCH_SIDE_EFFECT2'.
    move EARTHQUAKE,   SPEED_DOWN_SIDE_EFFECT,      90, GROUND,       100, 15 ; replaced 'NO_ADDITIONAL_EFFECT' with 'SPEED_DOWN_SIDE_EFFECT'.
    move FISSURE,      SPEED_DOWN1_EFFECT,         120, GROUND,        80,  5 ; replaced 'OHKO_EFFECT' with 'SPEED_DOWN1_EFFECT'.
    move DIG,          CHARGE_EFFECT,               70, GROUND,       100, 20 ; Natural: dugtrio, onyx, sandslash.
    move TOXIC,        POISON_EFFECT,                0, POISON,       100, 20 ; Natural: muk, weezing, tentacruel, arbok, vileplume, victreebel, golbat, venomoth, parasect, nidos.
    move CONFUSION,    CONFUSION_SIDE_EFFECT,       55, PSYCHIC_TYPE, 100, 25 ; psychic types, jynx, haunter, ninetales.
    move PSYCHIC_M,    SPECIAL_DOWN_SIDE_EFFECT,    90, PSYCHIC_TYPE, 100, 15
    move HYPNOSIS,     SLEEP_EFFECT,                 0, PSYCHIC_TYPE,  70, 20 ; hypno, poliwhirl, exeggutor, gengar.
    move MEDITATE,     SPECIAL_UP1_EFFECT,           0, BIRD,         100, 25 ; replaced 'ATTACK_UP1_EFFECT' with 'SPECIAL_UP1_EFFECT'. signature lines: machop, hitchans, kadabra, mr mime, hypno.
    move AGILITY,      SPEED_UP2_EFFECT,             0, BIRD,         100, 20 ; Natural: beedril, dodrio, arcanine, persian, rapidash, scyther, aerodactyl, electric types (except magneton).
    move QUICK_ATTACK, NO_ADDITIONAL_EFFECT,        45, NORMAL,       100, 25 ; Natural: Beedril, Dodrio, Dugtrio, Arcanine, Scyther, Persian, ekans, electric types (except magneton).
    move RAGE,         ATTACK_UP1_EFFECT,           65, DRAGON,        90, 20 ; replaced 'RAGE_EFFECT' with 'ATTACK_UP1_EFFECT'. gyarados, dragonite, tauros, primeape, marowak, rhydon, onyx, nidoking, fearow, raticate, arcanine, kangaskhan, kingler, poliwrath.
    move TELEPORT,     EVASION_UP1_EFFECT,           0, BIRD,         100, 15 ; replaced 'SWITCH_AND_TELEPORT_EFFECT' with 'EVASION_UP1_EFFECT'. alakazam, porygon.
    move NIGHT_SHADE,  SPECIAL_DAMAGE_EFFECT,        0, GHOST,        100, 25 ; gastly, ninetails, jynx.
    move MIMIC,        MIMIC_EFFECT,                 0, BIRD,         100, 20 ; mr mime, mew, golduck, wigglytuff, machamp, porygon.
    move SCREECH,      DEFENSE_DOWN2_EFFECT,         0, BIRD,         100, 20 ; onyx, magneton, electabuzz, electrode, persian, arbok, primeape, aerodactyl, golbat, jigglytuff.
    move DOUBLE_TEAM,  EVASION_UP1_EFFECT,           0, BIRD,         100, 15 ; ninetails, gengar, scyther, jolteon, electrode.
    move RECOVER,      HEAL_EFFECT,                  0, BIRD,         100, 15 ; vaporeon, muk, porygon, alakazam, starmie, lapras, tentacruel, clefairy, mewtwo.
    move HARDEN,       DEFENSE_UP1_EFFECT,           0, BIRD,         100, 30 ; metapod, kakuna, grimer.
    move MINIMIZE,     EVASION_UP1_EFFECT,           0, BIRD,         100, 15 ; jigglypuff, grimer, gastly, tentacool.
    move SMOKESCREEN,  ACCURACY_DOWN1_EFFECT,        0, BIRD,         100, 20 ; gastly, horsea, magmar, tentacool, koffing.
    move CONFUSE_RAY,  CONFUSION_EFFECT,             0, GHOST,        100, 20 ; gastly, vulpix, jynx, hypno. TODO: check if Confuse_Ray can hit Normal types.
    move WITHDRAW,     DEFENSE_UP1_EFFECT,           0, BIRD,         100, 30 ; shellder, squirtle, omanyte, kabuto.
    move DEFENSE_CURL, DEFENSE_UP1_EFFECT,           0, BIRD,         100, 30 ; geodude, onyx, sandshrew, jigglypuff, hitmonchan, kabuto, ekans, lickitung.
    move BARRIER,      DEFENSE_UP2_EFFECT,           0, BIRD,         100, 20 ; mr mime. TODO: kinda redundant, Mr Mime already has Reflect, maybe remove.
    move LIGHT_SCREEN, LIGHT_SCREEN_EFFECT,          0, BIRD,         100, 20 ; mr mime, porygon, alakazam, chansey, starmie, clefable.
    move HAZE,         POISON_SIDE_EFFECT2,         90, GAS,          100, 15 ; weezing, vileplume, gengar.
    move REFLECT,      REFLECT_EFFECT,               0, BIRD,         100, 20 ; mr mime, porygon, alakazam, chansey, starmie, clefable.
    move FOCUS_ENERGY, ATTACK_UP1_EFFECT,            0, BIRD,         100, 30 ; give to fighting types (inc. farfetch'd), persian, arcanine, scyther.
    move BIDE,         BIDE_EFFECT,                  0, BIRD,         100, 20 ; snorlax, onyx, tauros, kangaskhan, dragonite, chansey, poliwrath, metapod/kakuna, machamp.
    move METRONOME,    METRONOME_EFFECT,             0, BIRD,         100, 20 ; natural: mew, clefairy, porygon.
    move MIRROR_MOVE,  MIRROR_MOVE_EFFECT,           0, BIRD,         100, 20 ; mew, eevee, clefairy, mr mime, porygon.
    move SELFDESTRUCT, EXPLODE_EFFECT,             125, FIRE,         100,  5 ; weezing, electrode, porygon, gengar.
    move EGG_BOMB,     BURN_SIDE_EFFECT2,           90, GRASS,        100, 15 ; replaced 'NO_ADDITIONAL_EFFECT' with 'BURN_SIDE_EFFECT2'. exeggutor, chansey.
    move LICK,         PARALYZE_SIDE_EFFECT2,       30, DARK,         100, 30 ; lickitung, jynx, haunter, muk, hypno, golbat (not zubat).
    move SMOG,         POISON_SIDE_EFFECT1,         40, GAS,          100, 30 ; koffing, gloom, magmar, gastly.
    move SLUDGE,       POISON_SIDE_EFFECT2,         65, POISON,       100, 20 ; poison types.
    move BONE_CLUB,    NO_ADDITIONAL_EFFECT,        60, GROUND,       100, 30 ; replaced 'FLINCH_SIDE_EFFECT1' with 'NO_ADDITIONAL_EFFECT'.
    move FIRE_BLAST,   BURN_SIDE_EFFECT2,          110, FIRE,          80, 10
    move WATERFALL,    FLINCH_SIDE_EFFECT1,         70, WATER,        100, 20 ; replaced 'NO_ADDITIONAL_EFFECT' with 'FLINCH_SIDE_EFFECT1'.
    move CLAMP,        TRAPPING_EFFECT,             18, WATER,         85, 20 ; cloyster signature move. ; TODO: maybe change to non-trapping, higher base power, raise user defense, maybe change name to include omaster.
    move SWIFT,        PARALYZE_SIDE_EFFECT1,       40, ELECTRIC,     100, 30 ; replaced 'SWIFT_EFFECT' with 'PARALYZE_SIDE_EFFECT1'.
    move SKULL_BASH,   RECOIL_EFFECT,              100, ROCK,          90, 10 ; replaced 'CHARGE_EFFECT' with 'RECOIL_EFFECT'. Natural: Onix, Kabutops, Omastar, Aerodactyl, Golem, Tauros, Blastoise, Marowak, Cloyster.
    move SPIKE_CANNON, TWO_TO_FIVE_ATTACKS_EFFECT,  18, ROCK,          90, 20 ; cloyster, omastar, sandslash. TODO: weird attack, maybe remove.
    move CONSTRICT,    SPEED_DOWN1_EFFECT,          30, BUG,          100, 30 ; Pinsir, Tangela, lickitung.
    move AMNESIA,      SPECIAL_UP2_EFFECT,           0, BIRD,         100, 15 ; snorlax, slowbro (alakazam gets meditate), hypno, lickitung, wigglytuff, poliwrath(?).
    move CONFUSE,      SPECIAL_DOWN1_EFFECT,         0, BIRD,         100, 30 ; NEW MOVE - replaced Kinesis.
    move SOFTBOILED,   HEAL_EFFECT,                  0, BIRD,         100, 20 ; chansey.
    move HI_JUMP_KICK, NO_ADDITIONAL_EFFECT,       100, FIGHTING,      90, 15 ; replaced 'JUMP_KICK_EFFECT' with 'NO_ADDITIONAL_EFFECT'. hitmonlee's signature move.
    move GLARE,        PARALYZE_EFFECT,              0, DARK,          90, 20 ; Natural (after Scary Face): arbok, dragonite, gyarados, gengar, onyx. Learn: tauros, primeape, charizard, electabuzz, magmar, rhydon, nidoking, nidoqueen, arcanine, kangaskhan, hypno, golbat.
    move DREAM_EATER,  DREAM_EATER_EFFECT,         100, PSYCHIC_TYPE, 100, 20 ; hypno, gengar, jinx.
    move POISON_GAS,   POISON_EFFECT,                0, GAS,           80, 20 ; koffing, drowzee, grimer, gastly - early level move.
    move BARRAGE,      TWO_TO_FIVE_ATTACKS_EFFECT,  18, GRASS,         90, 20 ; exeggutor, chansey.
    move LEECH_LIFE,   DRAIN_HP_EFFECT,             70, BUG,          100, 20 ; golbat, parasect, victreebell, venomoth (high level), butterfree (high level), kabutops (trocar o kabutops aprender mega_drain naturalmente por isto).
    move LOVELY_KISS,  SLEEP_EFFECT,                 0, DARK,          75, 20 ; jynx.
    move SKY_ATTACK,   FLY_EFFECT,                 110, FLYING,       100, 10 ; replaced 'NO_ADDITIONAL_EFFECT' with 'FLY_EFFECT'. TODO: test.
    move TRANSFORM,    TRANSFORM_EFFECT,             0, BIRD,         100, 40
    move BUG_BITE,     FLINCH_SIDE_EFFECT1,         35, BUG,          100, 35 ; NEW MOVE - replaced Bubble. Natural: caterpie, weedle, pinsir, scyther, zubat.
    move DIZZY_PUNCH,  CONFUSION_SIDE_EFFECT,       75, FIGHTING,     100, 25 ; hitmonchan's signature move.
    move SPORE,        SLEEP_EFFECT,                 0, BUG,          100, 20
    move FLASH,        ACCURACY_DOWN2_EFFECT,        0, BIRD,         100, 20 ; replaced 'ACCURACY_DOWN1_EFFECT' with 'ACCURACY_DOWN2_EFFECT'. TODO: find out how to turn Flash from an HM to a TM. EDIT: nevermind; Smith: "HMs can [now] be forgotten".
    move PSYWAVE,      SPECIAL_DAMAGE_EFFECT,       40, PSYCHIC_TYPE, 100, 30
    move SPLASH,       SPLASH_EFFECT,                0, BIRD,         100, 40
    move ACID_ARMOR,   DEFENSE_UP2_EFFECT,           0, BIRD,         100, 20 ; muk, vaporeon, tentacruel.
    move CRABHAMMER,   NO_ADDITIONAL_EFFECT,       100, ROCK,          90, 15 ; deixou de ser high-crit. kingler.
    move EXPLOSION,    BURN_SIDE_EFFECT2,          100, FIRE,         100,  5 ; replaced 'EXPLODE_EFFECT' with 'BURN_SIDE_EFFECT2'. TODO: maybe remove this move.
    move FURY_SWIPES,  TWO_TO_FIVE_ATTACKS_EFFECT,  17, NORMAL,        90, 20
    move BONEMERANG,   ATTACK_TWICE_EFFECT,         40, GROUND,       100, 20
    move REST,         HEAL_EFFECT,                  0, BIRD,         100, 30 ; Natural: snorlax, slowbro.
    move ROCK_SLIDE,   PARALYZE_SIDE_EFFECT2,       90, ROCK,         100, 15 ; replaced 'NO_ADDITIONAL_EFFECT' with 'PARALYZE_SIDE_EFFECT2'.
    move HYPER_FANG,   FLINCH_SIDE_EFFECT1,         75, NORMAL,       100, 25
    move SHARPEN,      ATTACK_UP2_EFFECT,            0, BIRD,         100, 20 ; replaced 'ATTACK_UP1_EFFECT' with 'ATTACK_UP2_EFFECT'. Porygon.
    move CONVERSION,   SPECIAL_UP2_EFFECT,           0, BIRD,         100, 15 ; replaced 'CONVERSION_EFFECT' with 'SPECIAL_UP2_EFFECT'. Porygon.
    move TRI_ATTACK,   ACCURACY_UP1_EFFECT,         90, ELECTRIC,     100, 20 ; replaced 'NO_ADDITIONAL_EFFECT' with 'ACCURACY_UP1_EFFECT'. Porygon, Magneton.
    move SUPER_FANG,   SUPER_FANG_EFFECT,            1, NORMAL,        90, 20
    move SLASH,        NO_ADDITIONAL_EFFECT,        65, NORMAL,       100, 30 ; high-crit. stronger scratch.
    move SUBSTITUTE,   SUBSTITUTE_EFFECT,            0, BIRD,         100, 10 ; natural: gengar, mr mime, porygon, electrode, alakazam, jolteon.
    move STRUGGLE,      RECOIL_EFFECT,               40, BIRD,         100, 10 ; Always have Struggle as the last move on the list (due to Metronome's internal workings).
    assert_table_length NUM_ATTACKS

/*
lista de moves a adicionar:
    1 - novo HP-draining ghost type move (70 dmg/100 acc/20 pp) (Gengar, Ninetales, Jynx, hypno),
    2 - Mach Punch (Hitmonchan, Machamp signature move) - 45 power (animaçao do quick attack mas fundo branco e efeito de soco),
    3 - move TOXIC_DRAIN,   DRAIN_HP_EFFECT,             70, POISON,          100, 20 ; natural: muk, golbat, arbok, vileplume, venomoth.
    4 - Will-O-Wisp (Natural: Ninetales, Moltres. Learn: fire types and Gengar),
    5 - um Quick Attack de Electric (e aí tirar o fundo branco da animaçao do quick attack e o 'SPEED_UP1_EFFECT' e dar a este novo) - 45 power e SPEED_UP1_EFFECT,
    6 - a new fighting type signature move for Farfetch'd: "Leek Strike - 60, NO_ADDITIONAL_EFFECT, FIGHTING, 100, 30". a animacao parecida com o Karate Chop, mas na horizontal. (high crit)
    7 - Poison Fang: Arbok, Golbat, Nidoking, Nidoqueen, Raticate - POISON_SIDE_EFFECT2. (55/100/25)
    8 - Idea: create a new signature move for Mewtwo, Mew: "move MIND_BURST,     SPECIAL_DOWN1_EFFECT,      120, PSYCHIC_TYPE, 100, 10". (não prioritário)
    9 - Crunch: stronger Bite, like Body Slam is a stronger Tackle; "move CRUNCH,  DEFENSE_DOWN_SIDE_EFFECT,         70, NORMAL,       100, 30"; animacao parecida com o Bite mas mais lenta e talvez o fundo preto.
    10 - novo Magmar signature move: algo como "Magma Press" que queima sempre, 60 power e high-crit.
    11 - novo Electabuzz signature move: algo como "Shock Smash" que paraliza sempre, 60 power e high-crit.
    12 - 'Scary Face' - SPEED -2. Natural: Arbok, Hypno, Gengar, Onyx, Gyarados, Muk, Charizard, Dragonite, Tauros, Marowak. Learned before Glare and after Leer, where applicable.
    13 - Iron Defense - Defense +2 - Natural: Magneton. Learned: onyx, golem, cloyster, sandslash, metapod/kakuna (high level, lol).
    14 - move GIGA_DRAIN,   DRAIN_HP_EFFECT,             75, GRASS,          100, 20 ; Parasect, Victreebel, vileplume, Tangela, venusaur, exeggutor.
    15 - "move SLUDGE_BOMB,       POISON_SIDE_EFFECT2,         90, POISON,       100, 15 ; Natural: muk, weezing, tentacruel, victreebel, vileplume, venusaur."
    16 - "move POISON_JAB,        POISON_SIDE_EFFECT2,         90, POISON,       100, 15 ; Natural: beedril, arbok, nidoking, nodoqueen, golbat, gengar."
    17 - Rollout: Golem's signature attack.
    18 - o Marowak (e outros novos Dark type, tipo Raticate e Arbok aprenderem Pursuit - base 60 dark) aprender um dark type move.
    19 - ligeriamente mais Steel, Dark, e Fairy moves.

Pokémon que Aprendem Confuse (new move, Baixa Special):
Abra, Gastly, Magnemite, mr mime, clefairy,Jigglypuff, Drowzee, Oddish, Voltorb, Grimer, Porygon, Psyduck, Slowpoke, jinx, exeggcute.

Pokémon que Aprendem Growl (Baixa Ataque):
Bulbasaur, Pikachu, Eevee, Chansey, Clefairy, Jigglypuff, Vulpix, Growlithe, Meowth, Cubone, Horsea, Poliwag.

Pokémon que Aprendem Leer (Baixa Speed):
Ekans, Charmander, Spearow, Nidoran♂, Nidoran♀, Zubat, Machop, Rhyhorn, Growlithe, Scyther, Gastly, Magmar, Electabuzz.

Pokémon que Aprendem Tail Whip (Baixa Defense):
Rattata, Vulpix, Growlithe, Eevee, Squirtle, Meowth, Pikachu, Poliwag, Slowpoke, Ponyta, Ekans, Lickitung.

move AIR_SLASH,    NO_ADDITIONAL_EFFECT,        65, FLYING,       100, 30 ; ADDED.
move DRAGON_SLAM,  PARALYZE_SIDE_EFFECT2,       90, DRAGON,       100, 15 ; ADDED.
move GROUND_STOMP, SPEED_DOWN_SIDE_EFFECT,      40, GROUND,       100, 30 ; ADDED.
move ICY_MIST,     SPEED_DOWN_SIDE_EFFECT,      40, ICE,          100, 30 ; ADDED.
move BUG_BITE,     FLINCH_SIDE_EFFECT1,         35, BUG,          100, 35 ; ADDED.
move SHADOW_BALL,  SPECIAL_DOWN_SIDE_EFFECT,    75, GHOST,        100, 20 ; ADDED.
move DARK_PULSE,   FLINCH_SIDE_EFFECT2,         75, DARK,         100, 20 ; ADDED.
move CONFUSE,      SPECIAL_DOWN1_EFFECT,         0, BIRD,         100, 30 ; ADDED.

Maybe remove:
	move BARRIER,      DEFENSE_UP2_EFFECT,           0, BIRD,         100, 20
	move SPIKE_CANNON, TWO_TO_FIVE_ATTACKS_EFFECT,  18, ROCK,          90, 20
	move EXPLOSION,    BURN_SIDE_EFFECT2,          100, FIRE,         100,  5
*/
