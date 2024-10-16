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
    move COMET_PUNCH,  TWO_TO_FIVE_ATTACKS_EFFECT,  20, FIGHTING,     100, 20 ; hitmonchan, kangaskhan, machamp on level-up (not machop/machoke), primeape.
    move MEGA_PUNCH,   NO_ADDITIONAL_EFFECT,        70, FIGHTING,      90, 25 ; slightly weaker comet_punch. hitmonchan, machoke-line, primeape, kangaskhan, etc.
    move GIGA_DRAIN,   DRAIN_HP_EFFECT,             75, GRASS,        100, 20 ; NEW MOVE - replaced Pay_Day. high level. Parasect, Victreebel, Tangela, venusaur.
    move FIRE_PUNCH,   BURN_SIDE_EFFECT1,           55, FIRE,         100, 25 ; TODO: also add Fang move (if enough pokemon learn it).
    move ICE_PUNCH,    FREEZE_SIDE_EFFECT,          55, ICE,          100, 25 ; TODO: also add Fang move (if enough pokemon learn it).
    move THUNDERPUNCH, PARALYZE_SIDE_EFFECT1,       55, ELECTRIC,     100, 25 ; pikachu doesn't learn thunderpunch anymore. TODO: also add Fang move (if enough pokemon learn it).
    move SCRATCH,      NO_ADDITIONAL_EFFECT,        40, NORMAL,       100, 30 ; pokemon learns either Scratch, Bite, or Tackle.
    move VICEGRIP,     PARALYZE_SIDE_EFFECT1,       75, BUG,          100, 25 ; replaced 'NO_ADDITIONAL_EFFECT' with 'PARALYZE_SIDE_EFFECT1'. pinsir, kingler.
    move GUILLOTINE,   DEFENSE_DOWN1_EFFECT,       120, BUG,           80,  5 ; replaced 'OHKO_EFFECT' with 'DEFENSE_DOWN1_EFFECT'. passou a ser high-crit.
    move LEEK_STRIKE,  NO_ADDITIONAL_EFFECT,        55, FIGHTING,     100, 30 ; NEW MOVE - replaced Razor_Wind. Farfetch'd signature. high crit.
    move SWORDS_DANCE, ATTACK_UP2_EFFECT,            0, BIRD,         100, 20 ; Natural: arcanine, dragonite, farfetch'd, primeape, scyther, persian. Learn: marowak, pinsir, kabutops, sandslash, kingler, hitmons, nidoking (high level), farfetch'd (high level).
    move CUT,          NO_ADDITIONAL_EFFECT,        60, STEEL,        100, 25 ; passou a ser high-crit.
    move GUST,         NO_ADDITIONAL_EFFECT,        35, FLYING,       100, 30 ; pokemon learns either peck or gust.
    move WING_ATTACK,  NO_ADDITIONAL_EFFECT,        50, FLYING,       100, 30
    move WHIRLWIND,    SPEED_DOWN1_EFFECT,           0, BIRD,         100, 30 ; replaced 'SWITCH_AND_TELEPORT_EFFECT' with 'SPEED_DOWN1_EFFECT'. pidgey, spearow, butterfree, farfetch'd, aerodactyl.
    move FLY,          FLY_EFFECT,                  75, FLYING,       100, 20
    move BIND,         PARALYZE_SIDE_EFFECT2,       40, ROCK,         100, 30 ; replaced 'NO_ADDITIONAL_EFFECT' with 'PARALYZE_SIDE_EFFECT2'. animação mais lenta/demorada. Onyx, Arbok, Dragonite, Gyarados, Machamp, Kangaskhan.
    move DRAGON_SLAM,  PARALYZE_SIDE_EFFECT2,       90, DRAGON,       100, 15 ; NEW MOVE - replaced Slam. Natural: onyx, dragonite, gyarados.
    move VINE_WHIP,    NO_ADDITIONAL_EFFECT,        40, GRASS,        100, 30 ; bellsprout, bulbasaur, tangela.
    move GROUND_STOMP, SPEED_DOWN_SIDE_EFFECT,      45, GROUND,       100, 25 ; NEW MOVE - replaced Stomp. também dar ao Dodrio.
    move DOUBLE_KICK,  ATTACK_TWICE_EFFECT,         30, FIGHTING,     100, 20 ; hitmonlee, nidos, kangaskhan.
    move SHADOW_BALL,  ACCURACY_DOWN1_EFFECT,       75, GHOST,        100, 15 ; NEW MOVE - replaced Mega_Kick. Natural: Gengar, Jynx, Ninetales, Marowak (high level).
    move DARK_PULSE,   FLINCH_SIDE_EFFECT2,         80, DARK,         100, 20 ; NEW MOVE - replaced Jump_Kick. Natural: Gengar, Hypno, Marowak, mewtwo.
    move ROLLING_KICK, FLINCH_SIDE_EFFECT1,         60, FIGHTING,     100, 30 ; hitmonlee's signature move.  ; replaced 'FLINCH_SIDE_EFFECT2' with 'FLINCH_SIDE_EFFECT1'.
    move SAND_ATTACK,  ACCURACY_DOWN1_EFFECT,       20, GROUND,       100, 20
    move HEADBUTT,     CONFUSION_SIDE_EFFECT,       50, NORMAL,       100, 25
    move HORN_ATTACK,  NO_ADDITIONAL_EFFECT,        50, NORMAL,       100, 25 ; passou a ser high-crit.
    move FURY_ATTACK,  TWO_TO_FIVE_ATTACKS_EFFECT,  17, NORMAL,        90, 20
    move HORN_DRILL,   DEFENSE_DOWN1_EFFECT,       120, ROCK,          80,  5 ; replaced 'OHKO_EFFECT' with 'DEFENSE_DOWN1_EFFECT'. passou a ser high-crit. pokemon learns eith horn drill or skull bash. Rhydon, Tauros (high level).
    move TACKLE,       NO_ADDITIONAL_EFFECT,        40, NORMAL,       100, 30 ; pokemon learns either Scratch, Bite, or Tackle.
    move BODY_SLAM,    PARALYZE_SIDE_EFFECT2,       80, NORMAL,       100, 20 ; tauros, gyarados, snorlax, marowak, primeape, pinsir, seaking, kangaskhan, electrode, rhydon, arcanine, onyx, etc.
    move WRAP,         TRAPPING_EFFECT,             16, GRASS,         85, 30 ; animação ligeiramente mais lenta/demorada. Tangela, Victreebel, Tentacruel.
    move TAKE_DOWN,    DEFENSE_DOWN1_EFFECT,        80, FIGHTING,     100, 20 ; replaced 'RECOIL_EFFECT' with 'DEFENSE_DOWN1_EFFECT'. versao ligeiramente mais fraca e comum do Submission.
    move THRASH,       THRASH_PETAL_DANCE_EFFECT,  100, DRAGON,       100, 10 ; gyarados, dragonite, tauros, marowak, primeape, rhydon, onyx, nidoking.
    move DOUBLE_EDGE,  RECOIL_EFFECT,              100, NORMAL,       100, 10 ; Natural: tauros, gyarados, snorlax, marowak, primeape, pinsir, seaking, etc.
    move TAIL_WHIP,    DEFENSE_DOWN1_EFFECT,         0, BIRD,         100, 30
    move POISON_STING, POISON_SIDE_EFFECT1,         35, POISON,       100, 30 ; ekans, nidos, zubat, tentacool, sandshrew, beedril.
    move TWINEEDLE,    TWINEEDLE_EFFECT,            45, BUG,          100, 20
    move PIN_MISSILE,  TWO_TO_FIVE_ATTACKS_EFFECT,  18, BUG,           90, 20 ; beedrill. TODO: maybe remove.
    move LEER,         SPEED_DOWN1_EFFECT,           0, BIRD,         100, 30 ; replaced 'DEFENSE_DOWN1_EFFECT' with 'SPEED_DOWN1_EFFECT'.
    move BITE,         NO_ADDITIONAL_EFFECT,        40, NORMAL,       100, 30 ; replaced 'FLINCH_SIDE_EFFECT1' with 'NO_ADDITIONAL_EFFECT'. pokemon learns either Scratch, Bite, or Tackle.
    move GROWL,        ATTACK_DOWN1_EFFECT,          0, BIRD,         100, 30
    move ROAR,         ATTACK_UP1_EFFECT,            0, BIRD,         100, 30 ; replaced 'SWITCH_AND_TELEPORT_EFFECT' with 'ATTACK_UP1_EFFECT'. early level move. arcanine, tauros, rhydon, primeape, onyx, snorlax, dragonite, charizard, nidoking, gyarados, aerodactyl.
    move SING,         SLEEP_EFFECT,                 0, NORMAL,        80, 20 ; jigglypuff, chansey (high level).
    move SUPERSONIC,   CONFUSION_EFFECT,             0, NORMAL,        80, 20 ; zubat, magnemite, electabuzz.
    move SONICBOOM,    SPECIAL_DAMAGE_EFFECT,        1, NORMAL,       100, 20 ; voltorb, electabuzz.
    move DISABLE,      DISABLE_EFFECT,               0, BIRD,          75, 15 ; drowzee, mr mime, jynx, clefairy, mewtwo.
    move ACID,         DEFENSE_DOWN1_EFFECT,        45, POISON,       100, 25 ; replaced 'DEFENSE_DOWN_SIDE_EFFECT' with 'DEFENSE_DOWN1_EFFECT'. grimer (egg move), poison types.
    move EMBER,        BURN_SIDE_EFFECT1,           40, FIRE,         100, 30
    move FLAMETHROWER, BURN_SIDE_EFFECT2,           90, FIRE,         100, 15 ; replaced 'BURN_SIDE_EFFECT1' with 'BURN_SIDE_EFFECT2'.
    move ICY_MIST,     SPEED_DOWN_SIDE_EFFECT,      40, ICE,          100, 30 ; NEW MOVE - replaced Mist.
    move WATER_GUN,    NO_ADDITIONAL_EFFECT,        40, WATER,        100, 30
    move HYDRO_PUMP,   SPEED_DOWN2_EFFECT,         110, WATER,         80, 10 ; replaced 'NO_ADDITIONAL_EFFECT' with 'FLINCH_SIDE_EFFECT2'.
    move SURF,         SPEED_DOWN1_EFFECT,          90, WATER,        100, 15 ; replaced 'NO_ADDITIONAL_EFFECT' with 'SPEED_DOWN_SIDE_EFFECT'.
    move ICE_BEAM,     FREEZE_SIDE_EFFECT,          90, ICE,          100, 15
    move BLIZZARD,     FREEZE_SIDE_EFFECT,         110, ICE,           80, 10
    move PSYBEAM,      SPECIAL_DOWN1_EFFECT,        65, PSYCHIC_TYPE, 100, 20 ; replaced 'CONFUSION_SIDE_EFFECT' with 'SPECIAL_DOWN_SIDE_EFFECT'.
    move BUBBLEBEAM,   CONFUSION_SIDE_EFFECT,       55, WATER,        100, 25 ; replaced 'SPEED_DOWN_SIDE_EFFECT' with 'CONFUSION_SIDE_EFFECT'.
    move AURORA_BEAM,  SPECIAL_DOWN_SIDE_EFFECT,    70, ICE,          100, 20 ; replaced 'ATTACK_DOWN_SIDE_EFFECT' with 'SPECIAL_DOWN_SIDE_EFFECT'.
    move HYPER_BEAM,   HYPER_BEAM_EFFECT,          130, DRAGON,        80,  5 ; dragonite, gyarados (high level), mewtwo.
    move PECK,         NO_ADDITIONAL_EFFECT,        35, FLYING,       100, 30 ; pokemon learns either peck or gust.
    move DRILL_PECK,   DEFENSE_DOWN1_EFFECT,        90, FLYING,       100, 15 ; replaced 'NO_ADDITIONAL_EFFECT' with 'DEFENSE_DOWN1_EFFECT'.
    move SUBMISSION,   ATTACK_DOWN1_EFFECT,         90, FIGHTING,     100, 20 ; replaced 'RECOIL_EFFECT' with 'ATTACK_DOWN1_EFFECT'. Machamp signature move.
    move LOW_KICK,     FLINCH_SIDE_EFFECT2,         45, FIGHTING,      90, 25 ; machop, mankey, poliwrath.
    move CRUNCH,       DEFENSE_DOWN_SIDE_EFFECT,    75, NORMAL,       100, 20 ; NEW MOVE - replaced Counter. omastar, gyarados, arcanine, etc.
    move SEISMIC_TOSS, SPECIAL_DAMAGE_EFFECT,        1, FIGHTING,     100, 25 ; fighting types (except farfetch'd), pinsir.
    move STRENGTH,     ATTACK_UP1_EFFECT,           60, FIGHTING,     100, 30 ; replaced 'NO_ADDITIONAL_EFFECT' with 'ATTACK_UP1_EFFECT'. machop-line and pinsir learn naturally.
    move ABSORB,       DRAIN_HP_EFFECT,             25, GRASS,        100, 30 ; paras, bellsprout, oddish, zubat, butterfree, tangela.
    move MEGA_DRAIN,   DRAIN_HP_EFFECT,             50, GRASS,        100, 25 ; parasect, weepinbell, gloom, tangela.
    move LEECH_SEED,   LEECH_SEED_EFFECT,            0, GRASS,        100, 20 ; Venusaur, Tangela, Parasect.
    move GROWTH,       SPECIAL_UP1_EFFECT,           0, BIRD,         100, 25 ; all grass types.
    move RAZOR_LEAF,   NO_ADDITIONAL_EFFECT,        70, GRASS,        100, 20 ; high-crit. weepinbell, ivysaur.
    move SOLARBEAM,    CHARGE_EFFECT,              120, GRASS,        100, 10 ; Venusaur, Tangela, Exeggutor, Victreebel, Vileplume.
    move POISONPOWDER, POISON_EFFECT,                0, GRASS,         85, 20 ; butterfree, venomoth, Venusaur, Victreebel, Vileplume.
    move STUN_SPORE,   PARALYZE_EFFECT,              0, GRASS,         80, 20 ; venomoth, Tangela, Parasect, Vileplume.
    move SLEEP_POWDER, SLEEP_EFFECT,                 0, GRASS,         75, 20 ; learned after stun spore. butterfree, venomoth, Venusaur, Parasect (before Spore), Victreebel, Vileplume.
    move PETAL_DANCE,  THRASH_PETAL_DANCE_EFFECT,  100, GRASS,        100, 10 ; venusaur, victreebel, vileplume,
    move STRING_SHOT,  SPEED_DOWN1_EFFECT,           0, BIRD,         100, 30
    move DRAGON_RAGE,  SPECIAL_DAMAGE_EFFECT,        1, DRAGON,       100, 20 ; dragonite, gyarados, charizard.
    move FIRE_SPIN,    BURN_SIDE_EFFECT1,           70, FIRE,         100, 20 ; replaced 'TRAPPING_EFFECT' with 'BURN_SIDE_EFFECT1'. TODO: rename to 'Flame Charge'.
    move THUNDERSHOCK, PARALYZE_SIDE_EFFECT1,       40, ELECTRIC,     100, 30
    move THUNDERBOLT,  PARALYZE_SIDE_EFFECT2,       90, ELECTRIC,     100, 15 ; replaced 'PARALYZE_SIDE_EFFECT1' with 'PARALYZE_SIDE_EFFECT2'.
    move THUNDER_WAVE, PARALYZE_EFFECT,              0, ELECTRIC,     100, 20 ; electric types (except electrode), alakazam.
    move THUNDER,      PARALYZE_SIDE_EFFECT2,      110, ELECTRIC,      80, 10 ; replaced 'PARALYZE_SIDE_EFFECT1' with 'PARALYZE_SIDE_EFFECT2'.
    move ROCK_THROW,   FLINCH_SIDE_EFFECT2,         65, ROCK,          90, 25 ; replaced 'NO_ADDITIONAL_EFFECT' with 'FLINCH_SIDE_EFFECT2'.
    move EARTHQUAKE,   SPEED_DOWN1_EFFECT,          90, GROUND,       100, 15 ; replaced 'NO_ADDITIONAL_EFFECT' with 'SPEED_DOWN_SIDE_EFFECT'.
    move FISSURE,      SPEED_DOWN2_EFFECT,         120, GROUND,        80,  5 ; replaced 'OHKO_EFFECT' with 'SPEED_DOWN2_EFFECT'.
    move DIG,          CHARGE_EFFECT,               75, GROUND,       100, 20 ; Natural: dugtrio, onyx, sandslash.
    move TOXIC,        POISON_EFFECT,                0, POISON,       100, 20 ; Natural: muk, weezing, tentacruel, arbok, vileplume, victreebel, golbat, venomoth, parasect, nidos.
    move CONFUSION,    CONFUSION_SIDE_EFFECT,       45, PSYCHIC_TYPE, 100, 25 ; psychic types, jynx, haunter, ninetales.
    move PSYCHIC_M,    SPECIAL_UP1_EFFECT,          85, PSYCHIC_TYPE, 100, 15 ; replaced 'SPECIAL_DOWN_SIDE_EFFECT' with 'SPECIAL_DOWN1_EFFECT'. psychic types, ninetales.
    move HYPNOSIS,     SLEEP_EFFECT,                 0, PSYCHIC_TYPE,  70, 20 ; hypno, poliwhirl, exeggutor, gengar.
    move CALM_MIND,    SPECIAL_UP1_EFFECT,           0, BIRD,         100, 25 ; NEW MOVE - replaced Meditate. signature lines: machop, hitchans, kadabra, mr mime, etc.
    move AGILITY,      SPEED_UP2_EFFECT,             0, BIRD,         100, 20 ; Natural: beedril, dodrio, arcanine, persian, rapidash (high level), scyther, aerodactyl, electric types (except magneton).
    move QUICK_ATTACK, NO_ADDITIONAL_EFFECT,        45, NORMAL,       100, 20 ; Natural: Beedril, Dodrio, Arcanine, Scyther, Persian, arbok, raticate, staryu, electric types (except magneton).
    move RAGE,         ATTACK_UP1_EFFECT,           70, DRAGON,        90, 15 ; replaced 'RAGE_EFFECT' with 'ATTACK_UP1_EFFECT'. gyarados, tauros, primeape, marowak, rhydon (egg move), nidoking, fearow, raticate (high level), arcanine (egg move), kangaskhan (egg move), kingler (egg move), poliwrath (egg move), beedrill, mewtwo, dragonite (egg move), farfetch'd (egg move).
    move MACH_PUNCH,   NO_ADDITIONAL_EFFECT,        45, FIGHTING,     100, 20 ; NEW MOVE - replaced/renamed Teleport. priority move - fighting-type quick_attack; Hitmonchan, Machamp signature move.
    move NIGHT_SHADE,  SPECIAL_DAMAGE_EFFECT,        0, GHOST,        100, 25 ; gastly, ninetails, marowak, jynx.
    move MIMIC,        MIMIC_EFFECT,                 0, BIRD,         100, 20 ; mew, mr mime, eevee, golduck, porygon.
    move SCREECH,      DEFENSE_DOWN2_EFFECT,         0, BIRD,         100, 20 ; onyx, magneton, electabuzz, electrode, persian, arbok, primeape, aerodactyl, golbat, jigglytuff.
    move BLINK_SHIFT,  EVASION_UP1_EFFECT,           0, BIRD,         100, 20 ; NEW MOVE - replaced/renamed Double_Team. ninetails, gengar, jynx, scyther, jolteon, electrode, alakazam, porygon, diglett, dodrio, mewtwo, mew.
    move RECOVER,      HEAL_EFFECT,                  0, BIRD,         100, 15 ; muk, weezing, porygon, alakazam, starmie, clefairy, snorlax, slowpoke, mewtwo, mew.
    move HARDEN,       DEFENSE_UP1_EFFECT,           0, BIRD,         100, 30 ; metapod, kakuna, pinsir, staryu.
    move BULLDOZE,     SPEED_DOWN1_EFFECT,          60, GROUND,       100, 25 ; NEW MOVE - replaced Minimize.
    move SMOKESCREEN,  ACCURACY_DOWN1_EFFECT,        0, BIRD,         100, 20 ; gastly, horsea, magmar, tentacool, koffing, venomoth, vileplume.
    move CONFUSE_RAY,  CONFUSION_EFFECT,             0, GHOST,        100, 20 ; gastly, vulpix, jynx, hypno. TODO: check if Confuse_Ray can hit Normal types.
    move WITHDRAW,     DEFENSE_UP1_EFFECT,           0, BIRD,         100, 30 ; shellder, squirtle, omanyte, kabuto.
    move DEFENSE_CURL, DEFENSE_UP1_EFFECT,           0, BIRD,         100, 30 ; geodude, onyx, sandshrew, jigglypuff, hitmonchan, ekans, lickitung.
    move BARRIER,      DEFENSE_UP2_EFFECT,           0, BIRD,         100, 20 ; mr mime, cloyster, omastar, kabutops, blastoise.
    move LIGHT_SCREEN, LIGHT_SCREEN_EFFECT,          0, BIRD,         100, 20 ; mr mime, porygon, alakazam, chansey, starmie, clefable, weezing, mewtwo.
    move HAZE,         POISON_SIDE_EFFECT2,         90, GAS,          100, 15 ; weezing, vileplume, gengar.
    move REFLECT,      REFLECT_EFFECT,               0, BIRD,         100, 20 ; mr mime, porygon, alakazam, chansey, starmie, clefable, mewtwo.
    move FOCUS_ENERGY, FOCUS_ENERGY_EFFECT,          0, BIRD,         100, 30 ; fighting types (inc. farfetch'd), persian, arcanine, scyther, beedrill, arbok, golbat, marowak, etc.
    move BIDE,         BIDE_EFFECT,                  0, BIRD,         100, 20 ; snorlax, onyx, tauros, kangaskhan, dragonite, poliwrath, machamp, marowak, eletrode.
    move METRONOME,    METRONOME_EFFECT,             0, BIRD,         100, 20 ; mew, clefairy, porygon.
    move MIRROR_MOVE,  MIRROR_MOVE_EFFECT,           0, BIRD,         100, 20 ; mew, mr mime, clefairy, jigglypuff, farfetch'd.
    move SELFDESTRUCT, EXPLODE_EFFECT,             130, FIRE,         100,  5 ; weezing, electrode, porygon, gengar, cloyster. TODO: give this attack Explosion's animation.
    move EGG_BOMB,     BURN_SIDE_EFFECT2,           70, FIRE,         100, 15 ; replaced 'NO_ADDITIONAL_EFFECT' with 'BURN_SIDE_EFFECT2'. exeggutor, chansey.
    move LICK,         PARALYZE_SIDE_EFFECT2,       20, DARK,         100, 20 ; lickitung, jynx, haunter, muk, hypno, golbat (not zubat).
    move SMOG,         POISON_SIDE_EFFECT1,         35, GAS,          100, 30 ; koffing, magmar, gastly.
    move SLUDGE,       POISON_SIDE_EFFECT1,         65, POISON,       100, 20 ; replaced 'POISON_SIDE_EFFECT2' with 'POISON_SIDE_EFFECT1'. muk, tentacruel, etc.
    move BONE_CLUB,    FLINCH_SIDE_EFFECT1,         60, GROUND,       100, 30
    move FIRE_BLAST,   BURN_SIDE_EFFECT2,          110, FIRE,          80, 10
    move WATERFALL,    FLINCH_SIDE_EFFECT1,         70, WATER,        100, 20 ; replaced 'NO_ADDITIONAL_EFFECT' with 'FLINCH_SIDE_EFFECT1'.
    move CLAMP,        TRAPPING_EFFECT,             22, ROCK,          80, 20 ; cloyster signature move.
    move DISCHARGE,    PARALYZE_SIDE_EFFECT1,       70, ELECTRIC,     100, 20 ; NEW MOVE - replaced Swift.
    move SKULL_BASH,   RECOIL_EFFECT,              100, ROCK,         100, 10 ; replaced 'CHARGE_EFFECT' with 'RECOIL_EFFECT'. Kabutops, Omastar, Aerodactyl, Blastoise, Marowak, kangaskhan.
    move ROLLOUT,      TWO_TO_FIVE_ATTACKS_EFFECT,  20, ROCK,          90, 20 ; NEW MOVE - replaced Spike_Cannon. Golem, Sandslash (high level).
    move CONSTRICT,    SPEED_DOWN1_EFFECT,          30, BUG,          100, 30 ; Pinsir, Tangela, Lickitung, Tentacruel, Arbok.
    move AMNESIA,      SPECIAL_UP2_EFFECT,           0, BIRD,         100, 15 ; snorlax, slowbro, golduck, lickitung, mr mime, weezing (high level), poliwrath (high level), clefable, wigglytuff (high level), exeggutor. Remove from Mewtwo.
    move CONFUSE,      SPECIAL_DOWN1_EFFECT,         0, BIRD,         100, 25 ; NEW MOVE - replaced Kinesis.
    move SOFTBOILED,   HEAL_EFFECT,                  0, BIRD,         100, 20 ; chansey.
    move HI_JUMP_KICK, NO_ADDITIONAL_EFFECT,       100, FIGHTING,      90, 20 ; replaced 'JUMP_KICK_EFFECT' with 'NO_ADDITIONAL_EFFECT'. hitmonlee's signature move.
    move GLARE,        PARALYZE_EFFECT,              0, DARK,          90, 20 ; TODO: rever os pokemon que aprendem. Natural (after Scary Face): arbok, dragonite, gyarados, gengar, onyx. Learn: tauros, primeape, charizard, electabuzz, magmar, rhydon, nidoking, arcanine, kangaskhan, hypno, golbat.
    move DREAM_EATER,  DREAM_EATER_EFFECT,         100, PSYCHIC_TYPE, 100, 20 ; hypno, gengar, jinx.
    move POISON_GAS,   POISON_EFFECT,                0, GAS,           80, 20 ; koffing, drowzee, grimer, gastly, magmar - early level move.
    move BARRAGE,      TWO_TO_FIVE_ATTACKS_EFFECT,  20, GRASS,         90, 15 ; exeggutor, chansey.
    move LEECH_LIFE,   DRAIN_HP_EFFECT,             60, BUG,          100, 20 ; golbat, arbok, parasect, weepinbell, venomoth (high level), butterfree (high level), kabutops (trocar o kabutops aprender mega_drain naturalmente por isto).
    move LOVELY_KISS,  SLEEP_EFFECT,                 0, DARK,          80, 20 ; jynx.
    move SKY_ATTACK,   FLY_EFFECT,                 100, FLYING,       100, 10 ; replaced 'NO_ADDITIONAL_EFFECT' with 'FLY_EFFECT'. TODO: test.
    move TRANSFORM,    TRANSFORM_EFFECT,             0, BIRD,         100, 40
    move BUG_BITE,     FLINCH_SIDE_EFFECT1,         40, BUG,          100, 30 ; NEW MOVE - replaced Bubble. Natural: caterpie, weedle, pinsir, scyther, zubat.
    move DIZZY_PUNCH,  CONFUSION_SIDE_EFFECT,       60, FIGHTING,     100, 30 ; hitmonchan's signature move.
    move SPORE,        SLEEP_EFFECT,                 0, BUG,          100, 20
    move FLASH,        ACCURACY_DOWN2_EFFECT,        0, BIRD,         100, 15 ; replaced 'ACCURACY_DOWN1_EFFECT' with 'ACCURACY_DOWN2_EFFECT'. TODO: find out how to turn Flash from an HM to a TM. EDIT: nevermind; Smith: "HMs can [now] be forgotten".
    move PSYWAVE,      CONFUSION_EFFECT,            25, PSYCHIC_TYPE, 100, 30 ; replaced 'SPECIAL_DAMAGE_EFFECT' with 'CONFUSION_SIDE_EFFECT'.
    move SPLASH,       SPLASH_EFFECT,                0, BIRD,         100, 40
    move ACID_ARMOR,   DEFENSE_UP2_EFFECT,           0, BIRD,         100, 20 ; muk, vaporeon, tentacruel.
    move CRABHAMMER,   FLINCH_SIDE_EFFECT2,         90, ROCK,          90, 20 ; replaced 'NO_ADDITIONAL_EFFECT' with 'FLINCH_SIDE_EFFECT2'. deixou de ser high-crit. kingler.
    move DRAGONBREATH, PARALYZE_SIDE_EFFECT1,       65, DRAGON,       100, 20 ; NEW MOVE - replaced Explosion. dragonair, seadra, charizard, lapras, aerodactyl.
    move FURY_SWIPES,  TWO_TO_FIVE_ATTACKS_EFFECT,  17, NORMAL,        90, 20 ; meowth, sandshrew, etc.
    move BONEMERANG,   ATTACK_TWICE_EFFECT,         40, GROUND,       100, 20
    move REST,         HEAL_EFFECT,                  0, BIRD,         100, 30 ; Natural: snorlax, slowbro.
    move ROCK_SLIDE,   PARALYZE_SIDE_EFFECT2,       90, ROCK,         100, 15 ; replaced 'NO_ADDITIONAL_EFFECT' with 'PARALYZE_SIDE_EFFECT2'.
    move HYPER_FANG,   DEFENSE_DOWN_SIDE_EFFECT,    75, NORMAL,       100, 20 ; replaced 'NO_ADDITIONAL_EFFECT' with 'DEFENSE_DOWN_SIDE_EFFECT'. now is high crit.
    move SHARPEN,      ATTACK_UP2_EFFECT,            0, BIRD,         100, 20 ; replaced 'ATTACK_UP1_EFFECT' with 'ATTACK_UP2_EFFECT'. Porygon.
    move CONVERSION,   SPECIAL_UP2_EFFECT,           0, BIRD,         100, 15 ; replaced 'CONVERSION_EFFECT' with 'SPECIAL_UP2_EFFECT'. Porygon.
    move TRI_ATTACK,   ACCURACY_UP1_EFFECT,         90, ELECTRIC,     100, 20 ; replaced 'NO_ADDITIONAL_EFFECT' with 'ACCURACY_UP1_EFFECT'. Porygon, Magneton.
    move SUPER_FANG,   SUPER_FANG_EFFECT,            1, NORMAL,        90, 15
    move SLASH,        NO_ADDITIONAL_EFFECT,        70, NORMAL,       100, 20 ; high-crit. stronger scratch.
    move SUBSTITUTE,   SUBSTITUTE_EFFECT,            0, BIRD,         100, 10 ; gengar, mr mime, porygon, electrode, alakazam (high level), jolteon (high level), arbok, muk, weezing, clefable, tangela.
    move STRUGGLE,     RECOIL_EFFECT,               40, BIRD,         100, 10 ; Always have Struggle as the last move on the list (due to Metronome's internal workings).
    assert_table_length NUM_ATTACKS

/*
Pokémon que Aprendem Growl (Baixa Ataque):
Bulbasaur, Pikachu, Eevee, Chansey, Clefairy, Jigglypuff, Vulpix, Growlithe, Meowth, Cubone, Horsea, Poliwag, nidoran-F.

Pokémon que Aprendem Tail Whip (Baixa Defense):
Rattata, Vulpix, Growlithe, Eevee, Squirtle, Meowth, Pikachu, Poliwag, Slowpoke, Ponyta, Ekans, Lickitung, Tauros.

Pokémon que Aprendem Confuse (new move, Baixa Special):
Abra, Gastly, Magnemite, mr mime, clefairy, Jigglypuff, Drowzee, Voltorb, Grimer, Porygon, Psyduck, Slowpoke, jinx, exeggcute.

Pokémon que Aprendem Leer (Baixa Speed):
Ekans, Charmander, Spearow, Nidoran-M, Machop, Rhyhorn, Growlithe, Scyther, Gastly, Magmar, Electabuzz, Tauros, Farfetch'd.

-- -- -- -- --

Ataques adicionados:

    replacements already done above:
        move LEEK_STRIKE,  NO_ADDITIONAL_EFFECT,        55, FIGHTING,     100, 30 ; ADDED - replaced Razor_Wind.
        move DRAGON_SLAM,  PARALYZE_SIDE_EFFECT2,       90, DRAGON,       100, 15 ; ADDED - replace slam.
        move GROUND_STOMP, SPEED_DOWN_SIDE_EFFECT,      45, GROUND,       100, 25 ; ADDED - replace stomp.
        move SHADOW_BALL,  ACCURACY_DOWN1_EFFECT,       75, GHOST,        100, 15 ; ADDED - replace mega_kick.
        move DARK_PULSE,   FLINCH_SIDE_EFFECT2,         80, DARK,         100, 20 ; ADDED - replace jump_kick.
        move ICY_MIST,     SPEED_DOWN_SIDE_EFFECT,      40, ICE,          100, 30 ; ADDED - replace mist.
        move CALM_MIND,    SPECIAL_UP1_EFFECT,           0, BIRD,         100, 25 ; ADDED - replaced Meditate.
        move CRUNCH,       DEFENSE_DOWN_SIDE_EFFECT,    75, NORMAL,       100, 20 ; ADDED - replaced Counter.
        move DISCHARGE,    PARALYZE_SIDE_EFFECT1,       70, ELECTRIC,     100, 20 ; ADDED - replaced Swift.
        move ROLLOUT,      TWO_TO_FIVE_ATTACKS_EFFECT,  20, ROCK,          90, 20 ; ADDED - replaced Spike_Cannon.
        move CONFUSE,      SPECIAL_DOWN1_EFFECT,         0, BIRD,         100, 30 ; ADDED - replace kinesis.
        move BUG_BITE,     FLINCH_SIDE_EFFECT1,         40, BUG,          100, 30 ; ADDED - replace bubble.
        move DRAGONBREATH, PARALYZE_SIDE_EFFECT1,       65, DRAGON,       100, 20 ; ADDED - replaced Explosion.
        move GIGA_DRAIN,   DRAIN_HP_EFFECT,             75, GRASS,        100, 20 ; ADDED - replaced Pay_Day.
        move BULLDOZE,     SPEED_DOWN1_EFFECT,          60, GROUND,       100, 25 ; ADDED - replaced Minimize.
        move BLINK_SHIFT,  EVASION_UP1_EFFECT,           0, BIRD,         100, 20 ; ADDED - replaced/renamed Double_Team.
        move MACH_PUNCH,   NO_ADDITIONAL_EFFECT,        45, FIGHTING,     100, 20 ; ADDED - replaced/renamed Teleport.

    damage moves - to be added above:
        move FLASH_ZAP,    NO_ADDITIONAL_EFFECT,        45, ELECTRIC,     100, 20 ; priority move - eletric-type quick_attack; tirar o fundo branco da animaçao do quick attack e dar a este novo.
        move BUG_BUZZ,     DEFENSE_DOWN_SIDE_EFFECT,    90, BUG,          100, 15 ; butterfree, venomoth, beedrill, scyther.
        move MEGAHORN,     DEFENSE_DOWN_SIDE_EFFECT,    90, BUG,          100, 15 ; pinsir, nidoking (high), rapidash (high level), seaking (high level), tauros, rhydon.
        move STEEL_WING,   NO_ADDITIONAL_EFFECT,        75, STEEL,        100, 20 ; pidgeot, aerodactyl, golbat (high level), fearow (high level), charizard (high level).
        move IRON_TAIL,    NO_ADDITIONAL_EFFECT,        75, STEEL,        100, 20 ; onyx, rhydon, nidoking (high level), arbok (high level), raichu (high level).
        move IRON_HEAD,    FLINCH_SIDE_EFFECT2,         90, STEEL,        100, 15 ; Rhydon, Tauros, Onix, Golem, Magneton, Electrode
        move OMINOUS_WIND, SPECIAL_DOWN1_EFFECT,        55, GHOST,        100, 20
        move SPIRIT_DRAIN, DRAIN_HP_EFFECT,             60, GHOST,        100, 20 ; Gengar, Jynx, Ninetales (high level).
        move PURSUIT,      NO_ADDITIONAL_EFFECT,        45, DARK,         100, 20 ; (priority move)
        move FAINT_ATTACK, SWIFT_EFFECT,                60, DARK,         100, 25
        move NIGHT_SLASH,  NO_ADDITIONAL_EFFECT,        70, DARK,         100, 20 ;  high crit.
        move BULLDOZE,     SPEED_DOWN1_EFFECT,          60, GROUND,       100, 25
        move TOXIC_DRAIN,  DRAIN_HP_EFFECT,             60, POISON,       100, 20 ; natural: muk, vileplume, venomoth, tentacruel.
        move SLUDGE_BOMB,  POISON_SIDE_EFFECT2,         90, POISON,       100, 15 ; Natural: muk, weezing, victreebel, vileplume, venusaur.
        move POISON_JAB,   POISON_SIDE_EFFECT2,         80, POISON,       100, 15 ; Natural: beedril, arbok, nidoking, nodoqueen, golbat, gengar, tentacruel.
        move POISON_FANG,  POISON_SIDE_EFFECT2,         60, POISON,       100, 25 ; Arbok, Golbat, Nidoking, Nidoqueen, Raticate.
        move MIST_WHIRL,   ACCURACY_DOWN1_EFFECT,       50, GAS,          100, 25 ; koffing, gastly, tentacool.
        move TOXIC_CLOUD,  POISON_SIDE_EFFECT1,         65, GAS,          100, 20 ; koffing, gastly.

    stats moves - to be added above:
        move CHARM,        ATTACK_DOWN2_EFFECT,          0, BIRD,         100, 20
        move INTIMIDATE,   ATTACK_DOWN2_EFFECT,          0, BIRD,         100, 20 ; TODO: rever os pokemon que aprendem. Natural: arbok, dragonite, gyarados, gengar, onyx. Learn: tauros, primeape, charizard, electabuzz, magmar, rhydon, nidoking, arcanine, kangaskhan, hypno, golbat.
        move FAKE_TEARS,   SPECIAL_DOWN2_EFFECT,         0, BIRD,         100, 15 ; (add or not?)
        move SCARY_FACE,   SPEED_DOWN2_EFFECT,           0, BIRD,         100, 20 ; TODO: rever os pokemon que aprendem. Natural: arbok, dragonite, gyarados, gengar, onyx. Learn: tauros, primeape, charizard, electabuzz, magmar, rhydon, nidoking, arcanine, kangaskhan, hypno, golbat.
        move NASTY_PLOT,   SPECIAL_UP1_EFFECT,           0, BIRD,         100, 25 ; hypno, marowak (on evolve), etc.
        move NIMBLE,       SPEED_UP1_EFFECT,             0, BIRD,         100, 30
        move ROCK_POLISH,  SPEED_UP1_EFFECT,             0, BIRD,         100, 30
        move LOCK_ON,      ACCURACY_UP2_EFFECT,          0, BIRD,         100, 20

-- -- -- -- --

Ataques a serem adicionados:
        x

Mais a adicionar:
    novo Electabuzz signature move: algo como "Shock Smash" que paralyze2, 60 power e high-crit.
    novo Magmar signature move: algo como "Magma Press" que burn2, 60 power e high-crit.
    talvez: create a new signature move for Mewtwo, Mew, e muito-high level para o Alakazam: "move MIND_BURST,     SPECIAL_DOWN1_EFFECT,      120, PSYCHIC_TYPE, 100, 10".

    'Charm' - Attack -2 - Pikachu, Vulpix, Clefairy, Jigglypuff, Meowth, Growlithe, Ponyta, Slowpoke, Eevee, Chansey, nidoran-F, Seel.
    'Fake Tears' - Special -2 - Clefairy, Jigglypuff, Meowth, Psyduck, Growlithe, Poliwag, Mr. Mime, Seel.
    'Scary Face' - SPEED -2. Natural: Arbok, Hypno, Gengar, Onyx, Gyarados, Muk, Charizard, Dragonite, Tauros, Marowak. Learned before Glare and after Leer, where applicable.
    'Nasty Plot' - Special +1 - Hypno, etc.
    'Nimble' - Speed + 1 - Pikachu, Sandshrew, Nidoran-F, Nidoran-M, Vulpix, Meowth, Mankey, Machop, Doduo, Hitmonlee, Hitmonchan, Scyther, Farfetch'd, Poliwhirl, Raticate.
    'Rock Polish' - Speed + 1 - rocks, etc.
    'Iron Defense' - Defense +2 - Natural: Magneton. Learned: onyx, golem, cloyster, sandslash, metapod/kakuna (high level, lol).
    'Lock On' - Accuracy +2 - Porygon, Aerodactyl, Magneton, Primeape, Marowak, Exeggutor, Mewtwo, etc.

-- -- -- -- --



*/
