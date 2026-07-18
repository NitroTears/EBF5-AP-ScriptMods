package
{
   public class Equips
   {
      public static var EQUIP_SHOP_1:Array;
      
      public static var EQUIP_SHOP_2:Array;
      
      public static var EQUIP_SHOP_3:Array;
      
      public static var long50:Array = [];
      
      public static var long100:Array = [];
      
      public static var long150:Array = [];
      
      public static var long200:Array = [];
      
      public static var short30:Array = [];
      
      public static var short50:Array = [];
      
      public static var short100:Array = [];
      
      public static var down50:Array = [];
      
      public static var down30:Array = [];
      
      public static var _long50:Array = [10,20,30,40,50];
      
      public static var _long100:Array = [20,40,60,80,100];
      
      public static var _long150:Array = [30,60,90,120,150];
      
      public static var _long200:Array = [40,80,120,160,200];
      
      public static var _short30:Array = [10,20,30];
      
      public static var _short50:Array = [20,35,50];
      
      public static var _short100:Array = [40,70,100];
      
      public static var _down30:Array = [-30,-30,-30,-30,-30];
      
      public static var _down50:Array = [-50,-50,-50,-50,-50];
      
      public static var template:Equip = new Equip({
         "name":"",
         "description":"",
         "type":Equip.SWORD,
         "icon":1,
         "skin":2,
         "map":[3],
         "HP":[0],
         "MP":[0],
         "attack":[0],
         "defence":[0],
         "magicAttack":[0],
         "magicDefence":[0],
         "accuracy":[0],
         "evade":[0],
         "resistance":{
            "derp":[long50],
            "pie":[long100],
            "cake":[long100]
         },
         "element":Element.HOLY,
         "statusEffect":Status.NONE,
         "buffEffect":Stats.NONE,
         "specials":[],
         "materials":[[Items.iron,2],[Items.steel,3],[Items.gold,3,Items.steel,5],[Items.diamond,1,Items.ruby,2]],
         "HP2":[0],
         "attack2":[0],
         "defence2":[0],
         "magicAttack2":[0],
         "magicDefence2":[0],
         "accuracy2":[0],
         "evade2":[0],
         "resistance2":{
            "derp":long50,
            "herp":long100
         },
         "element2":Element.NONE,
         "statusEffect2":Status.NONE,
         "statusChance2":[0],
         "statusDegree2":[0],
         "buffEffect2":Stats.NONE,
         "buffChance2":[0],
         "buffDegree2":[0],
         "specials2":[[Equip.BOOST,Element.HOLY],null,[Equip.CAST,Spells.holyfire,0.4],null,[Equip.DEFEND_STATUS,Status.AUTOLIFE,3]]
      });
      
      public static var heavensgate:Equip = new Equip({
         "SID":"heavensgate",
         "type":Equip.SWORD,
         "icon":226,
         "skin":1,
         "map":[3],
         "HP":[0],
         "attack":[15,30,40,50,65],
         "defence":[0],
         "magicAttack":[15,30,40,50,65],
         "magicDefence":[0],
         "accuracy":[0],
         "evade":[0,5,5,10,10],
         "resistance":{
            "holy":long50,
            "weak":long100,
            "dispel":long100
         },
         "element":Element.HOLY,
         "statusEffect":Status.NONE,
         "buffEffect":Stats.NONE,
         "specials":[[Equip.BOOST,Element.HOLY],null,[Equip.CAST,Spells.holysword,0.2],null,[Equip.COUNTER,Spells.unleash]],
         "materials":[[Items.feather,3],[Items.steel,4],[Items.gold,2,Items.steel,4],[Items.mythril,1,Summons.MirrorAngel,1]]
      });
      
      public static var inferno:Equip = new Equip({
         "SID":"inferno",
         "type":Equip.SWORD,
         "icon":230,
         "skin":2,
         "map":[3],
         "HP":[0],
         "attack":[15,25,35,45,60],
         "defence":[0],
         "magicAttack":[15,25,35,45,60],
         "magicDefence":[0],
         "accuracy":[0,0,5,10,15],
         "evade":[0,0,5,10,15],
         "resistance":{
            "bomb":Equips.long50,
            "ice":Equips.long50,
            "freeze":Equips.long100
         },
         "element":Element.FIRE,
         "statusEffect":Status.BURN,
         "statusChance":[30,50,70,85,100],
         "statusDegree":[2,2,2,3,3],
         "buffEffect":Stats.NONE,
         "buffChance":[0],
         "buffDegree":[0],
         "specials":[[Equip.BOOST,Element.FIRE],null,[Equip.CAST,Spells.fume,0.4]],
         "materials":[[Items.glass,2],[Items.magma,4],[Items.magma,4,Items.ruby,2],[Summons.FallenBurned,1,Items.magma,8,Items.ruby,2]]
      });
      
      public static var chopper:Equip = new Equip({
         "SID":"thechopper",
         "type":Equip.SWORD,
         "icon":240,
         "skin":3,
         "map":[3],
         "HP":[5,5,10,10,10],
         "attack":[20,30,40,50,60],
         "defence":[5,10,15,15,20],
         "magicAttack":[0],
         "magicDefence":[5,10,15,15,20],
         "accuracy":[-5],
         "evade":[-5],
         "resistance":{
            "water":long50,
            "bio":long50
         },
         "element":Element.EARTH,
         "statusEffect":Status.NONE,
         "buffEffect":Stats.NONE,
         "specials":[[Equip.SCARE,Foe.TREES],null,[Equip.CAST,Spells.log,1],null,[Equip.BOOST,Element.EARTH]],
         "materials":[[Items.wood,2],[Items.steel,4],[Items.steel,15,Items.emerald,3],[Items.titanium,1,Items.wood,30]]
      });
      
      public static var sapphiresaint:Equip = new Equip({
         "SID":"sapphiresaint",
         "type":Equip.SWORD,
         "icon":239,
         "skin":4,
         "map":[41],
         "HP":[0],
         "attack":[15,30,45,60,75],
         "defence":[0,5,10,15,20],
         "magicAttack":[0,5,10,15,20],
         "magicDefence":[0],
         "accuracy":[0],
         "evade":[0],
         "resistance":{
            "holy":long50,
            "fire":long50,
            "burn":long100
         },
         "element":Element.WATER,
         "buffEffect":Stats.NONE,
         "statusEffect":Status.WET,
         "statusChance":[30,40,60,80,100],
         "statusDegree":[1,1,2,2,2],
         "specials":[[Equip.BOOST,Element.WATER],null,[Equip.CAST,Spells.pouringpike,0.35]],
         "materials":[[Items.glass,1],[Items.ice,1,Items.water,1],[Items.rune2,2,Items.sapphire,1],[Items.diamond,1,Items.sapphire,3]]
      });
      
      public static var giantslayer:Equip = new Equip({
         "SID":"giantslayer",
         "type":Equip.SWORD,
         "icon":233,
         "skin":5,
         "map":[41],
         "HP":[0],
         "attack":[40,60,80,100,120],
         "defence":[0],
         "magicAttack":[0],
         "magicDefence":[0],
         "accuracy":[-30],
         "evade":[-10],
         "resistance":{
            "wind":long50,
            "stagger":long100,
            "weight":long100
         },
         "element":Element.NONE,
         "statusEffect":Status.NONE,
         "buffEffect":Stats.NONE,
         "specials":[[Equip.IGNORE_BUFFS],null,[Equip.INTIMIDATE],null,[Equip.COUNTER,Spells.slash]],
         "materials":[[Items.iron,2],[Items.iron,2,Items.pipe,2],[Items.steel,25,Items.pipe,5],[Items.titanium,1,Items.steel,15,Items.iron,10]]
      });
      
      public static var iceneedle:Equip = new Equip({
         "SID":"iceneedle",
         "type":Equip.SWORD,
         "icon":231,
         "skin":6,
         "map":[41],
         "HP":[0],
         "attack":[15,30,45,60,75],
         "defence":[0],
         "magicAttack":[15,30,40,50,60],
         "magicDefence":[0],
         "accuracy":[0],
         "evade":[0],
         "resistance":{
            "ice":long50,
            "water":long50,
            "wet":long100
         },
         "element":Element.ICE,
         "statusEffect":Status.FREEZE,
         "statusChance":[10,10,15,15,25],
         "statusDegree":[2,2,2,2,2],
         "buffEffect":Stats.NONE,
         "specials":[[Equip.BOOST,Element.ICE],null,[Equip.CAST,Spells.frostfragment,0.33]],
         "materials":[[Items.snowball,3],[Items.ice,1,Items.water,1],[Items.sapphire,3,Items.ice,2,Items.water,2],[Items.sapphire,10,Items.ice,10,Items.water,10]]
      });
      
      public static var hyperdrill:Equip = new Equip({
         "SID":"hypderdrill",
         "type":Equip.SWORD,
         "icon":223,
         "skin":7,
         "map":[48],
         "HP":[0],
         "attack":[20,35,50,70,85],
         "defence":[0,0,0,5,10],
         "magicAttack":[0],
         "magicDefence":[0],
         "accuracy":[0],
         "evade":[0],
         "resistance":{
            "earth":long50,
            "thunder":down30
         },
         "element":Element.EARTH,
         "buffEffect":Stats.DEFENCE,
         "buffChance":[60,70,80,90,100],
         "buffDegree":[-20,-25,-25,-25,-30],
         "statusEffect":Status.HEAVY,
         "statusChance":[30,40,60,80,100],
         "statusDegree":[1,1,2,2,2],
         "specials":[[Equip.BOOST,Element.EARTH],null,[Equip.CAST,Spells.stalactite2,0.25],null,[Equip.IGNORE_BUFFS]],
         "materials":[[Items.turd,4],[Items.steel,1,Items.pipe,2],[Items.silver,5,Items.pipe,2],[Items.titanium,1,Items.silver,5,Items.turd,50]]
      });
      
      public static var emeraldsmasher:Equip = new Equip({
         "SID":"emeraldsmasher",
         "type":Equip.SWORD,
         "icon":235,
         "skin":8,
         "map":[48],
         "HP":[0],
         "attack":[20,30,45,60,70],
         "defence":[0],
         "magicAttack":[20,30,45,60,70],
         "magicDefence":[0],
         "accuracy":[-5],
         "evade":[-5],
         "resistance":{
            "earth":long50,
            "bomb":long50,
            "stagger":long100
         },
         "element":Element.BIO,
         "statusEffect":Status.STAGGER,
         "statusChance":[20,40,60,80,100],
         "statusDegree":[2,2,2,2,2],
         "buffEffect":Stats.NONE,
         "specials":[[Equip.BOOST,Element.BIO],null,[Equip.COUNTER,Spells.nettleknife],null,[Equip.CAST,Spells.earthquake,0.3]],
         "materials":[[Items.iron,2],[Items.iron,6,Items.pipe,2],[Items.emerald,3,Items.virus,3],[Items.titanium,1,Items.emerald,3]]
      });
      
      public static var devilsfork:Equip = new Equip({
         "SID":"devilsfork",
         "type":Equip.SWORD,
         "icon":221,
         "skin":9,
         "map":[48],
         "HP":[0,0,0,5,10],
         "attack":[0,0,10,20,30],
         "defence":[0],
         "magicAttack":[20,30,45,60,75],
         "magicDefence":[0],
         "accuracy":[0],
         "evade":[0],
         "resistance":{
            "fire":long50,
            "ice":long50,
            "dark":long50
         },
         "element":Element.FIRE,
         "statusEffect":Status.DRY,
         "statusChance":[20,40,60,80,100],
         "statusDegree":[2,2,2,3,3],
         "buffEffect":Stats.NONE,
         "specials":[[Equip.SCARE,Foe.SLIMES],[Equip.BOOST_BUFFS,10],[Equip.CAST,Spells.blackspikes,0.5],null,[Equip.BOOST,Element.FIRE]],
         "materials":[[Items.iron,2],[Items.powder,2,Items.magma,2],[Summons.SlimeLava,1,Items.magma,8],[Summons.SlimeBigLava,1,Items.magma,16]]
      });
      
      public static var berzerker:Equip = new Equip({
         "SID":"berzerker",
         "type":Equip.SWORD,
         "icon":224,
         "skin":10,
         "map":[48],
         "HP":[0,0,5,10,15],
         "attack":[40,50,60,75,100],
         "defence":[0,0,5,10,15],
         "magicAttack":[0,5,10,15,20],
         "magicDefence":[0,0,5,10,15],
         "accuracy":[0],
         "evade":[0],
         "resistance":{
            "earth":long50,
            "wind":long50,
            "weak":long100
         },
         "element":Element.NONE,
         "statusEffect":Status.DISPEL,
         "statusChance":[20,25,30,35,50],
         "statusDegree":[1],
         "buffEffect":Stats.NONE,
         "specials":[[Equip.STATUS,Status.TIRED,1,0.5],null,[Equip.COUNTER,Spells.revenge],null,[Equip.BOOST,Element.NONE]],
         "materials":[[Items.brick,5],[Items.brick,10,Items.turd,10],[Items.rune2,5,Items.brick,10],[Items.mythril,1,Items.rune2,4]]
      });
      
      public static var ultrapro9000:Equip = new Equip({
         "SID":"ultrapro9000",
         "type":Equip.SWORD,
         "icon":227,
         "skin":11,
         "map":[15],
         "HP":[0],
         "attack":[0,10,20,30,40],
         "defence":[0],
         "magicAttack":[0,10,20,30,40],
         "magicDefence":[0],
         "accuracy":[30,35,40,45,50],
         "evade":[0,5,10,20,30],
         "resistance":{
            "ice":long50,
            "freeze":long100,
            "water":long50
         },
         "element":Element.NONE,
         "statusEffect":Status.CHILL,
         "statusChance":[30,40,60,80,100],
         "statusDegree":[2,2,2,3,3],
         "buffEffect":Stats.NONE,
         "specials":[null,null,[Equip.STEAL],[Equip.BOOST_STATUS],[Equip.BOOST_FOOD]],
         "materials":[[Items.wood,1],[Items.wood,4],[Items.lego,1,Items.leather,5],[Items.gamechild,1,Items.chips,1,Items.beer,1]]
      });
      
      public static var dragonfeather:Equip = new Equip({
         "SID":"dragonsfeather",
         "type":Equip.SWORD,
         "icon":220,
         "skin":12,
         "map":[15],
         "HP":[-25],
         "attack":[20,30,40,60,70],
         "defence":[0],
         "magicAttack":[10,20,30,40,50],
         "magicDefence":[0],
         "accuracy":[20,25,30,40,45],
         "evade":[20,25,30,40,45],
         "resistance":{
            "wind":long50,
            "holy":long50,
            "ice":long50
         },
         "element":Element.WIND,
         "statusEffect":Status.LIGHT,
         "statusChance":[30,40,60,80,100],
         "statusDegree":[1,1,2,2,2],
         "buffEffect":Stats.NONE,
         "specials":[[Equip.STATUS,Status.HASTE,2,0.2],[Equip.BOOST,Element.WIND],[Equip.CAST,Spells.gale,0.5],null,[Equip.COUNTER,Spells.slash]],
         "materials":[[Items.shuriken,2],[Items.shuriken,8],[Summons.FallenLost,1],[Items.mythril,1,Items.feather,4]]
      });
      
      public static var souleater:Equip = new Equip({
         "SID":"souleather",
         "type":Equip.SWORD,
         "icon":222,
         "skin":13,
         "map":[15],
         "HP":[0],
         "attack":[70,90,110,130,150],
         "defence":[-40],
         "magicAttack":[0],
         "magicDefence":[-40],
         "accuracy":[0],
         "evade":[0],
         "resistance":{
            "holy":down30,
            "dark":down30
         },
         "element":Element.DARK,
         "statusEffect":Status.CURSE,
         "statusChance":[30,40,50,60,70],
         "statusDegree":[2,2,2,2,2],
         "buffEffect":Stats.NONE,
         "specials":[[Equip.STATUS,Status.CURSE,1,0.5],null,[Equip.COUNTER,Spells.slash],null,[Equip.DRAIN_HP]],
         "materials":[[Items.iron,3],[Items.claw,3],[Items.amber,4,Items.spike,6],[Items.darkmatter,1,Summons.MirrorDemon,1]]
      });
      
      public static var poisonfang:Equip = new Equip({
         "SID":"poisonfang",
         "type":Equip.SWORD,
         "icon":228,
         "skin":14,
         "map":[15],
         "HP":[0],
         "attack":[10,20,30,40,55],
         "defence":[0],
         "magicAttack":[10,20,30,40,55],
         "magicDefence":[0],
         "accuracy":[0,5,10,15,20],
         "evade":[0],
         "resistance":{
            "dark":long100,
            "bio":long100,
            "curse":long100
         },
         "element":Element.BIO,
         "statusEffect":Status.POISON,
         "statusChance":[30,40,60,80,100],
         "statusDegree":[2,3,3,3,4],
         "buffEffect":Stats.NONE,
         "specials":[[Equip.BOOST,Element.BIO],null,[Equip.DRAIN_HP],null,[Equip.CAST,Spells.shreddingshrub,0.25]],
         "materials":[[Items.shuriken,2],[Items.butterflywing,4],[Items.opal,1,Items.butterflywing,6],[Items.opal,4,Items.butterflywing,8]]
      });
      
      public static var lightningbolt:Equip = new Equip({
         "SID":"lightningbolt",
         "type":Equip.SWORD,
         "icon":236,
         "skin":15,
         "map":[19],
         "HP":[0],
         "attack":[10,25,35,50,60],
         "defence":[0],
         "magicAttack":[10,25,35,50,60],
         "magicDefence":[0],
         "accuracy":[0,5,10,15,20],
         "evade":[0],
         "resistance":{
            "thunder":long50,
            "ice":long50,
            "stun":long100
         },
         "element":Element.THUNDER,
         "statusEffect":Status.STUN,
         "statusChance":[10,10,15,15,25],
         "statusDegree":[2,2,2,2,2],
         "buffEffect":Stats.NONE,
         "specials":[[Equip.BOOST,Element.THUNDER],null,[Equip.CAST,Spells.thunder,0.5],null,[Equip.COUNTER,Spells.slicingcyclone]],
         "materials":[[Items.seashell,2],[Items.seashell,3,Items.geode,2],[Items.topaz,2,Items.geode,2],[Items.starfragment,1,Items.seashell,3]]
      });
      
      public static var crimsonrazorback:Equip = new Equip({
         "SID":"crimsonrazorback",
         "type":Equip.SWORD,
         "icon":234,
         "skin":16,
         "map":[23],
         "HP":[0],
         "attack":[0,0,10,20,30],
         "defence":[0],
         "magicAttack":[20,40,60,80,100],
         "magicDefence":[0,5,10,15,20],
         "accuracy":[0],
         "evade":[0],
         "resistance":{
            "wind":long50,
            "thunder":long50,
            "syphon":long100
         },
         "element":Element.WIND,
         "buffEffect":Stats.MAGIC_ATTACK,
         "buffChance":[60,70,80,90,100],
         "buffDegree":[-20,-25,-25,-25,-30],
         "statusEffect":Status.LIGHT,
         "statusChance":[30,50,70,85,100],
         "statusDegree":[2,2,2,3,3],
         "specials":[[Equip.BOOST,Element.WIND],null,[Equip.CAST,Spells.gust,0.5],null,[Equip.SUMMON,Spells.powermetal,0.66]],
         "materials":[[Items.spring,2],[Items.spring,5,Items.beer,1],[Items.cpu,2,Items.beer,3],[Items.gamechild,1,Items.cpu,2]]
      });
      
      public static var fusionblade:Equip = new Equip({
         "SID":"fusionblade",
         "type":Equip.SWORD,
         "icon":229,
         "skin":17,
         "map":[23],
         "HP":[0,5,5,10,10],
         "attack":[15,30,40,55,70],
         "defence":[0],
         "magicAttack":[15,30,40,55,70],
         "magicDefence":[0],
         "accuracy":[0],
         "evade":[0],
         "resistance":{
            "bomb":long50,
            "bio":long50,
            "fire":long50
         },
         "element":Element.BOMB,
         "statusEffect":Status.BURN,
         "statusChance":[30,50,70,85,100],
         "statusDegree":[1,1,2,2,2],
         "buffEffect":Stats.NONE,
         "specials":[[Equip.BOOST,Element.BOMB],null,[Equip.CAST,Spells.bullet,0.33],null,[Equip.IGNORE_BUFFS]],
         "materials":[[Items.powder,2],[Items.gear,2,Items.steel,1],[Items.cpu,2,Items.gear,2],[Items.plutonium,1,Summons.FishJet,1]]
      });
      
      public static var goldenaxe:Equip = new Equip({
         "SID":"goldenaxe",
         "type":Equip.SWORD,
         "icon":237,
         "skin":18,
         "map":[23],
         "HP":[5,5,10,10,20],
         "attack":[15,30,40,50,65],
         "defence":[0],
         "magicAttack":[10,20,30,40,50],
         "magicDefence":[0],
         "accuracy":[0],
         "evade":[0],
         "resistance":{
            "thunder":long50,
            "dispel":long100,
            "death":long100
         },
         "element":Element.THUNDER,
         "statusEffect":Status.BAD_LUCK,
         "statusChance":[30,50,70,85,100],
         "statusDegree":[2,2,2,2,3],
         "buffEffect":Stats.NONE,
         "specials":[[Equip.STATUS,Status.GOOD_LUCK,2,0.5],null,[Equip.BOOST,Element.THUNDER],null,[Equip.CAST,Spells.bigspark,0.4]],
         "materials":[[Items.pipe,2],[Items.pipe,4,Items.leather,1],[Items.gold,3,Items.leather,2],[Items.grail,1,Summons.FishGold,1]]
      });
      
      public static var darkstalker:Equip = new Equip({
         "SID":"darkstalker",
         "type":Equip.SWORD,
         "icon":225,
         "skin":19,
         "map":[23],
         "HP":[0],
         "attack":[5,15,25,35,45],
         "defence":[0],
         "magicAttack":[5,15,25,35,45],
         "magicDefence":[0],
         "accuracy":[0],
         "evade":[0],
         "resistance":{
            "dark":long50,
            "bio":long50,
            "syphon":long100
         },
         "element":Element.DARK,
         "statusEffect":Status.SYPHON,
         "statusChance":[30,35,40,45,50],
         "statusDegree":[2,2,2,2,3],
         "buffEffect":Stats.ATTACK,
         "buffChance":[60,70,80,90,100],
         "buffDegree":[-30,-35,-40,-45,-50],
         "specials":[[Equip.BOOST,Element.DARK],null,[Equip.CAST,Spells.bonestar,0.5],null,null],
         "materials":[[Items.claw,1],[Items.claw,2],[Items.rune,1,Items.spike,4],[Items.darkmatter,1,Items.spike,4]]
      });
      
      public static var loveblade:Equip = new Equip({
         "SID":"loveblade",
         "type":Equip.SWORD,
         "icon":238,
         "skin":20,
         "map":[23],
         "HP":[10,15,20,25,30],
         "attack":[-50],
         "defence":[10,15,20,25,30],
         "magicAttack":[0],
         "magicDefence":[10,15,20,25,30],
         "accuracy":[0],
         "evade":[5,10,15,20,20],
         "resistance":{
            "holy":long50,
            "dark":long50,
            "death":long100
         },
         "element":Element.HOLY,
         "statusEffect":Status.NONE,
         "buffEffect":Stats.ACCURACY,
         "buffChance":[60,70,80,90,100],
         "buffDegree":[-10,-10,-15,-15,-20],
         "specials":[[Equip.BOOST_HEALING],null,[Equip.BOOST_BUFFS,10],null,[Equip.DEFEND_STATUS,Status.LOVED,1]],
         "materials":[[Items.cupcake,1],[Items.flower,4],[Items.dragonfruit,4,Items.cloudberries,4],[Items.moonpearl,2,Items.flower,8]]
      });
      
      public static var clubofwithering:Equip = new Equip({
         "SID":"clubofwithering",
         "type":Equip.SWORD,
         "icon":232,
         "skin":21,
         "map":[15],
         "HP":[0],
         "attack":[5,10,20,30,45],
         "defence":[0,5,5,10,10],
         "magicAttack":[5,10,20,30,45],
         "magicDefence":[0,5,5,10,10],
         "accuracy":[0],
         "evade":[0],
         "resistance":{
            "stagger":long100,
            "weak":long100,
            "curse":long100
         },
         "element":Element.NONE,
         "statusEffect":Status.WEAKEN,
         "statusChance":[60,70,80,90,100],
         "statusDegree":[1,2,2,3,3],
         "buffEffect":Stats.MAGIC_DEFENCE,
         "buffChance":[40,40,40,40,40],
         "buffDegree":[-20,-25,-30,-35,-40],
         "specials":[[Equip.BOOST_DEBUFFS],null,[Equip.CAST,Spells.bones,0.6],null,[Equip.SUMMON,Spells.bonestar,0.66]],
         "materials":[[Items.claw,1],[Items.claw,2],[Items.spike,3,Items.leather,2],[Items.moonpearl,2,Summons.HandSkeleton,1]]
      });
      
      public static var SWORDS:Array = [heavensgate,berzerker,inferno,iceneedle,lightningbolt,sapphiresaint,poisonfang,chopper,giantslayer,hyperdrill,emeraldsmasher,devilsfork,ultrapro9000,clubofwithering,crimsonrazorback,dragonfeather,goldenaxe,darkstalker,fusionblade,souleater,loveblade];
      
      public static var solspear:Equip = new Equip({
         "SID":"solspear",
         "type":Equip.STAFF,
         "icon":262,
         "skin":1,
         "map":[5],
         "HP":[0],
         "attack":[10,20,30,45,60],
         "defence":[0,5,5,10,15],
         "magicAttack":[10,20,30,45,60],
         "magicDefence":[0,5,5,10,15],
         "accuracy":[0],
         "evade":[0],
         "resistance":{
            "fire":long50,
            "ice":long50,
            "freeze":long100
         },
         "element":Element.FIRE,
         "statusEffect":Status.DRY,
         "statusChance":[50,60,80,100,120],
         "statusDegree":[2,2,3,3,3],
         "buffEffect":Stats.NONE,
         "specials":[[Equip.BOOST,Element.FIRE],null,[Equip.CAST,Spells.fireblast,0.5],null,[Equip.SUMMON,Spells.flare,0.66]],
         "materials":[[Items.wood,2],[Items.magma,3],[Items.gold,2,Items.satin,2],[Items.starfragment,1,Items.gold,1]]
      });
      
      public static var darktooth:Equip = new Equip({
         "SID":"darktooth",
         "type":Equip.STAFF,
         "icon":250,
         "skin":2,
         "map":[5],
         "HP":[0],
         "attack":[10,20,30,45,60],
         "defence":[0,0,5,5,10],
         "magicAttack":[10,20,30,45,60],
         "magicDefence":[0,0,5,5,10],
         "accuracy":[0],
         "evade":[0],
         "resistance":{
            "dark":long50,
            "curse":long100,
            "dispel":long100
         },
         "element":Element.DARK,
         "buffEffect":Stats.NONE,
         "statusEffect":Status.DISPEL,
         "statusChance":[20,30,40,40,50],
         "statusDegree":[1,1,1,1,1],
         "specials":[[Equip.BOOST,Element.DARK],null,[Equip.CAST,Spells.geometry2,0.33],null,[Equip.COUNTER,Spells.pulse]],
         "materials":[[Items.gems,1],[Items.gems,4],[Items.rune,3],[Items.darkmatter,1,Items.satin,3]]
      });
      
      public static var druidstaff:Equip = new Equip({
         "SID":"druidstaff",
         "type":Equip.STAFF,
         "icon":256,
         "skin":3,
         "map":[5],
         "HP":[0,5,5,10,10],
         "attack":[0,10,20,30,45],
         "defence":[5,5,10,15,25],
         "magicAttack":[10,20,30,40,55],
         "magicDefence":[5,5,10,15,25],
         "accuracy":[0],
         "evade":[0],
         "resistance":{
            "bio":long50,
            "water":long50,
            "poison":long100
         },
         "element":Element.BIO,
         "statusEffect":Status.TIRED,
         "statusChance":[40,60,80,100,120],
         "statusDegree":[2,2,3,3,3],
         "buffEffect":Stats.NONE,
         "specials":[[Equip.BOOST,Element.BIO],null,[Equip.CAST,Spells.vines,0.33],[Equip.STATUS,Status.REGEN,2,0.2],[Equip.SUMMON,Spells.mushroom,1.5]],
         "materials":[[Items.wood,1,Items.cactus,1],[Items.wood,3,Items.cactus,3],[Items.spike,5,Items.root,10],[Items.opal,4,Items.root,10]]
      });
      
      public static var arctictrident:Equip = new Equip({
         "SID":"arctictrident",
         "type":Equip.STAFF,
         "icon":259,
         "skin":4,
         "map":[5],
         "HP":[0],
         "attack":[5,20,35,50,65],
         "defence":[0],
         "magicAttack":[5,20,35,50,65],
         "magicDefence":[0],
         "accuracy":[5,5,10,10,10],
         "evade":[5,5,10,10,10],
         "resistance":{
            "ice":long50,
            "wind":long50,
            "burn":long100
         },
         "element":Element.ICE,
         "statusEffect":Status.CHILL,
         "statusChance":[30,50,70,85,100],
         "statusDegree":[2,2,2,2,2],
         "buffEffect":Stats.NONE,
         "specials":[[Equip.BOOST,Element.ICE],[Equip.STATUS,Status.CHILL,2,0.5],[Equip.CAST,Spells.deepfreeze,0.5],null,[Equip.COUNTER,Spells.iceshard]],
         "materials":[[Items.steel,1],[Items.steel,1,Items.water,1,Items.ice,1],[Items.sapphire,3,Items.steel,3],[Items.sapphire,6,Items.moonpearl,1]]
      });
      
      public static var zeuswrath:Equip = new Equip({
         "SID":"wrathofzeus",
         "type":Equip.STAFF,
         "icon":257,
         "skin":5,
         "map":[5],
         "HP":[0],
         "attack":[0,5,10,20,30],
         "defence":[0],
         "magicAttack":[10,25,40,55,70],
         "magicDefence":[0],
         "accuracy":[0,5,5,10,10],
         "evade":[0],
         "resistance":{
            "thunder":long50,
            "wind":long50,
            "stun":long100
         },
         "element":Element.THUNDER,
         "statusEffect":Status.NONE,
         "buffEffect":Stats.NONE,
         "specials":[[Equip.BOOST,Element.THUNDER],null,[Equip.CAST,Spells.plasmacage,0.5],null,[Equip.SUMMON,Spells.thunderbolt,1]],
         "materials":[[Items.seashell,2],[Items.gems,4],[Summons.DogZap,1],[Items.starfragment,1]]
      });
      
      public static var dragonwings:Equip = new Equip({
         "SID":"dragonwings",
         "type":Equip.STAFF,
         "icon":258,
         "skin":6,
         "map":[5],
         "HP":[0,5,10,15,20],
         "attack":[10,20,30,40,50],
         "defence":[0,5,5,10,10],
         "magicAttack":[10,20,30,40,50],
         "magicDefence":[0,5,5,10,10],
         "accuracy":[5,10,15,20,25],
         "evade":[5,10,15,20,25],
         "resistance":{
            "fire":long50,
            "dark":long50,
            "dispel":long100
         },
         "element":Element.FIRE,
         "statusEffect":Status.BURN,
         "statusChance":[30,50,70,85,100],
         "statusDegree":[2,2,3,3,3],
         "buffEffect":Stats.NONE,
         "specials":[[Equip.BOOST,Element.FIRE],null,[Equip.SUMMON,Summons.DragonOmega,0.15],null,[Equip.COUNTER,Spells.fireball]],
         "materials":[[Items.magma,1],[Items.amber,1],[Items.scales,1],[Items.scales,2,Items.amber,1,Items.magma,2]]
      });
      
      public static var nimbusrod:Equip = new Equip({
         "SID":"nimbusrod",
         "type":Equip.STAFF,
         "icon":247,
         "skin":7,
         "map":[5],
         "HP":[0,5,5,10,15],
         "attack":[0,5,10,15,20],
         "defence":[0],
         "magicAttack":[10,20,30,45,60],
         "magicDefence":[0],
         "accuracy":[0],
         "evade":[0],
         "resistance":{
            "water":long50,
            "fire":long50,
            "holy":long50
         },
         "element":Element.WATER,
         "statusEffect":Status.CHILL,
         "statusChance":[70,80,90,100,120],
         "statusDegree":[2,2,2,2,3],
         "buffEffect":Stats.NONE,
         "specials":[[Equip.BOOST,Element.WATER],null,[Equip.CAST,Spells.bubbleringP,0.33],null,[Equip.SUMMON,Spells.rain,1]],
         "materials":[[Items.snowball,3],[Items.ice,2,Items.snowball,2],[Items.sapphire,2,Items.ice,2],[Items.moonpearl,2,Items.sapphire,2]]
      });
      
      public static var alchemyset:Equip = new Equip({
         "SID":"alchemyset",
         "type":Equip.STAFF,
         "icon":253,
         "skin":8,
         "map":[5],
         "HP":[0,5,5,10,15],
         "attack":[0],
         "defence":[0],
         "magicAttack":[10,20,30,45,60],
         "magicDefence":[0],
         "accuracy":[0],
         "evade":[0,5,5,10,15],
         "resistance":{
            "weak":long100,
            "curse":long100
         },
         "element":Element.NONE,
         "statusEffect":Status.RANDOM,
         "statusChance":[70,80,90,100,120],
         "statusDegree":[2,2,2,2,3],
         "buffEffect":Stats.ACCURACY,
         "buffChance":[60,70,80,90,100],
         "buffDegree":[-20,-25,-30,-35,-40],
         "specials":[[Equip.BOOST_STATUS],null,[Equip.COUNTER,Spells.spectrum],null,[Equip.BOOST_DEBUFFS]],
         "materials":[[Items.glass,1],[Items.butterflywing,3,Items.powder,3],[Summons.WormFuzzy,1,Summons.WormPutrid,1,Summons.WormScaly,1],[Items.darkmatter,1,Items.glass,10]]
      });
      
      public static var kaladanda:Equip = new Equip({
         "SID":"kaladanda",
         "type":Equip.STAFF,
         "icon":252,
         "skin":9,
         "map":[15],
         "HP":[0,5,10,15,20],
         "attack":[15,30,45,60,80],
         "defence":[0,5,5,10,15],
         "magicAttack":[15,30,45,60,80],
         "magicDefence":[0,5,5,10,15],
         "accuracy":[0],
         "evade":[0],
         "resistance":{
            "stagger":long100,
            "weak":long100,
            "curse":long100
         },
         "element":Element.NONE,
         "statusEffect":Status.WEAKEN,
         "statusChance":[60,70,80,90,100],
         "statusDegree":[1,2,2,3,3],
         "buffEffect":Stats.DEFENCE,
         "buffChance":[60,70,80,90,100],
         "buffDegree":[-30,-35,-40,-45,-50],
         "specials":[[Equip.STATUS,Status.WEAKEN,1,0.5],null,[Equip.CAST,Spells.bones,0.5],null,[Equip.COUNTER,Spells.staffstrike]],
         "materials":[[Items.feather,2],[Items.claw,2],[Items.spike,3,Items.silk,2],[Items.moonpearl,2,Items.spike,5]]
      });
      
      public static var knife:Equip = new Equip({
         "SID":"knife",
         "type":Equip.STAFF,
         "icon":263,
         "skin":10,
         "map":[15],
         "HP":[0],
         "attack":[30,60,90,120,150],
         "defence":[0],
         "magicAttack":[0],
         "magicDefence":[0],
         "accuracy":[5,10,15,20,25],
         "evade":[5,10,15,20,25],
         "resistance":{
            "death":long100,
            "curse":long100
         },
         "element":Element.NONE,
         "statusEffect":Status.DEATH,
         "statusChance":[10,20,30,40,50],
         "statusDegree":[1],
         "buffEffect":Stats.NONE,
         "specials":[[Equip.BOOST_FOOD],null,[Equip.BOOST_BUFFS],null,[Equip.COUNTER,Spells.staffstrike]],
         "materials":[[Items.pumpkin,2],[Items.pineapple,4],[Items.watermelon,6,Items.blueberries,4],[Items.dragonfruit,18,Items.cloudberries,6]]
      });
      
      public static var celticcross:Equip = new Equip({
         "SID":"celticcross",
         "type":Equip.STAFF,
         "icon":255,
         "skin":11,
         "map":[15],
         "HP":[0],
         "attack":[10,20,30,40,55],
         "defence":[0],
         "magicAttack":[10,20,30,40,55],
         "magicDefence":[0,5,5,10,10],
         "accuracy":[0],
         "evade":[0,5,5,10,10],
         "resistance":{
            "holy":long50,
            "dark":long50,
            "water":long50
         },
         "element":Element.HOLY,
         "statusEffect":Status.NONE,
         "buffEffect":Stats.NONE,
         "specials":[[Equip.SCARE,Foe.GHOSTS],[Equip.BOOST,Element.HOLY],[Equip.CAST,Spells.talisman,0.5],null,[Equip.COUNTER,Spells.shine]],
         "materials":[[Items.brick,4],[Items.silk,2,Items.brick,1],[Items.rune2,5,Items.silk,2],[Items.grail,1,Items.satin,3]]
      });
      
      public static var obsidianstaff:Equip = new Equip({
         "SID":"obsidianstaff",
         "type":Equip.STAFF,
         "icon":248,
         "skin":12,
         "map":[15],
         "HP":[0],
         "attack":[10,20,30,40,50],
         "defence":[-20],
         "magicAttack":[30,45,60,85,110],
         "magicDefence":[-20],
         "accuracy":[0],
         "evade":[0],
         "resistance":{
            "fire":long50,
            "syphon":long100
         },
         "element":Element.DARK,
         "statusEffect":Status.DRY,
         "statusChance":[30,50,70,85,100],
         "statusDegree":[2,2,2,2,2],
         "buffEffect":Stats.NONE,
         "specials":[[Equip.BOOST,Element.DARK],null,[Equip.CAST,Spells.darken,0.5]],
         "materials":[[Items.powder,2],[Items.amber,2],[Items.powder,10,Items.rune,1],[Items.darkmatter,1,Summons.BoulderObsidian,1,Items.amber,3]]
      });
      
      public static var paperfan:Equip = new Equip({
         "SID":"paperfan",
         "type":Equip.STAFF,
         "icon":260,
         "skin":13,
         "map":[15],
         "HP":[0],
         "attack":[-50],
         "defence":[0],
         "magicAttack":[15,25,40,55,75],
         "magicDefence":[0],
         "accuracy":[0],
         "evade":[0,5,5,10,10],
         "resistance":{
            "bomb":long50,
            "wind":long50,
            "holy":long50
         },
         "element":Element.WIND,
         "statusEffect":Status.NONE,
         "buffEffect":Stats.NONE,
         "specials":[[Equip.BOOST,Element.WIND],null,[Equip.CAST,Spells.whirlwind,0.5],[Equip.STATUS,Status.HASTE,2,0.2]],
         "materials":[[Items.feather,2],[Items.tape,3,Items.shuriken,3],[Items.tape,10,Items.kevlar,1],[Items.kevlar,4,Items.tape,10]]
      });
      
      public static var wreckingrod:Equip = new Equip({
         "SID":"wreckingrod",
         "type":Equip.STAFF,
         "icon":249,
         "skin":14,
         "map":[15],
         "HP":[5,10,15,20,25],
         "MP":[0],
         "attack":[0],
         "defence":[10,15,20,25,30],
         "magicAttack":[15,25,40,55,70],
         "magicDefence":[0],
         "accuracy":[-10],
         "evade":[-20],
         "resistance":{
            "bomb":long50,
            "stagger":long100,
            "thunder":long50
         },
         "element":Element.BOMB,
         "statusEffect":Status.STAGGER,
         "statusChance":[50,60,70,85,100],
         "statusDegree":[1,1,1,1,1],
         "buffEffect":Stats.NONE,
         "specials":[[Equip.BOOST,Element.BOMB],null,[Equip.CAST,Spells.bigblast,0.5],null,[Equip.COUNTER,Spells.staffstrike]],
         "materials":[[Items.iron,1,Items.spring,1],[Items.iron,4,Items.spring,4],[Items.cpu,2,Items.steel,2,Items.floppy,1],[Items.plutonium,1,Items.powder,10]]
      });
      
      public static var slimestaff:Equip = new Equip({
         "SID":"slimestaff",
         "type":Equip.STAFF,
         "icon":251,
         "skin":15,
         "map":[15],
         "HP":[5,10,15,20,25],
         "attack":[0],
         "defence":[5,10,15,20,25],
         "magicAttack":[5,10,15,20,25],
         "magicDefence":[5,10,15,20,25],
         "accuracy":[0],
         "evade":[0],
         "resistance":{
            "holy":long50,
            "ice":long50,
            "syphon":long100
         },
         "element":Element.HOLY,
         "statusEffect":Status.NONE,
         "buffEffect":Stats.NONE,
         "specials":[[Equip.SCARE,Foe.SLIMES],[Equip.BOOST_HEALING],[Equip.BOOST,Element.HOLY],null,[Equip.SUMMON,Summons.SlimeBunny,0.5]],
         "materials":[[Items.wool,3],[Items.plastic,3],[Items.plastic,10,Items.satin,3,Items.flower,5],[Items.grail,1,Summons.SlimeBunny,1]]
      });
      
      public static var elderswisdom:Equip = new Equip({
         "SID":"elderswisdom",
         "type":Equip.STAFF,
         "icon":264,
         "skin":16,
         "map":[15],
         "HP":[0],
         "attack":[0,10,20,30,40],
         "defence":[0],
         "magicAttack":[10,20,30,45,60],
         "magicDefence":[0,5,10,15,20],
         "accuracy":[0],
         "evade":[0],
         "resistance":{
            "earth":long50,
            "holy":long50,
            "weight":long100
         },
         "element":Element.EARTH,
         "statusEffect":Status.NONE,
         "buffEffect":Stats.NONE,
         "specials":[[Equip.BOOST,Element.EARTH],null,[Equip.SUMMON,Spells.bigroot,1.25],[Equip.BOOST_BUFFS],[Equip.CAST,Spells.lighten,0.5]],
         "materials":[[Items.wood,2],[Items.root,2,Items.claw,2],[Items.spike,2,Items.claw,6],[Items.opal,3,Items.moonpearl,1]]
      });
      
      public static var gigavolt:Equip = new Equip({
         "SID":"gigavolt",
         "type":Equip.STAFF,
         "icon":254,
         "skin":17,
         "map":[15],
         "HP":[0],
         "attack":[20,40,70,100,130],
         "defence":[0,5,5,10,10],
         "magicAttack":[10,20,35,50,65],
         "magicDefence":[0,5,5,10,10],
         "accuracy":[5,10,15,20,25],
         "evade":[5,10,15,20,25],
         "resistance":{
            "thunder":long50,
            "bomb":long50,
            "dispel":long100
         },
         "element":Element.THUNDER,
         "statusEffect":Status.NONE,
         "buffEffect":Stats.NONE,
         "specials":[[Equip.BOOST,Element.THUNDER],null,[Equip.CAST,Spells.lasersword,0.33],null,[Equip.COUNTER,Spells.staffstrike]],
         "materials":[[Items.seashell,2],[Items.amber,2],[Items.topaz,2,Items.ruby,2],[Items.topaz,6,Items.ruby,6]]
      });
      
      public static var soulcrusher:Equip = new Equip({
         "SID":"soulcrusher",
         "type":Equip.STAFF,
         "icon":261,
         "skin":18,
         "map":[15],
         "HP":[5,5,10,15,20],
         "attack":[40,80,120,160,200],
         "defence":[10,15,20,25,30],
         "magicAttack":[0],
         "magicDefence":[10,15,20,25,30],
         "accuracy":[-20],
         "evade":[-20],
         "resistance":{
            "thunder":long50,
            "wind":long50
         },
         "element":Element.NONE,
         "statusEffect":Status.CURSE,
         "statusChance":[60,70,80,90,100],
         "statusDegree":[3,3,4,4,5],
         "buffEffect":Stats.NONE,
         "specials":[[Equip.INTIMIDATE],null,[Equip.SUMMON,Summons.WraithSteel,0.66],null,[Equip.BOOST_BUFFS]],
         "materials":[[Items.iron,2],[Items.steel,2],[Items.rune,2,Items.steel,2],[Items.titanium,1,Summons.WraithSteel,1,Items.steel,2]]
      });
      
      public static var oakstaff:Equip = new Equip({
         "SID":"oakstaff",
         "type":Equip.STAFF,
         "icon":245,
         "skin":19,
         "map":[15],
         "HP":[10,20,30,40,50],
         "attack":[-50],
         "defence":[10,15,20,30,40],
         "magicAttack":[-50],
         "magicDefence":[10,15,20,30,40],
         "accuracy":[0],
         "evade":[0],
         "resistance":{
            "earth":long50,
            "wind":long50,
            "bio":long50
         },
         "element":Element.EARTH,
         "elementDegree":50,
         "statusEffect":Status.NONE,
         "statusChance":[0],
         "statusDegree":[0],
         "buffEffect":Stats.NONE,
         "buffChance":[0],
         "buffDegree":[0],
         "specials":[[Equip.SCARE,Foe.TREES],null,[Equip.BOOST_HEALING],null,[Equip.SUMMON,Summons.GloopWood,0.25]],
         "materials":[[Items.wood,1,Items.turd,1],[Items.root,3,Items.herb,3,Items.flower,3],[Summons.IdolWood,1,Items.root,15,Items.flower,15],[Summons.GloopWood,1,Items.emerald,6,Items.opal,1]]
      });
      
      public static var shootingstar:Equip = new Equip({
         "SID":"shootingstar",
         "type":Equip.STAFF,
         "icon":246,
         "skin":20,
         "map":[15],
         "HP":[0],
         "attack":[0],
         "defence":[0],
         "magicAttack":[10,25,45,65,85],
         "magicDefence":[5,10,15,20,25],
         "accuracy":[0],
         "evade":[0],
         "resistance":{
            "dispel":long100,
            "syphon":long100,
            "death":long100
         },
         "element":Element.NONE,
         "statusEffect":Status.NONE,
         "buffEffect":Stats.NONE,
         "specials":[[Equip.BOOST,Element.NONE],null,[Equip.CAST,Spells.luckystar,0.33],[Equip.STATUS,Status.GOOD_LUCK,2,0.3],[Equip.SUMMON,Spells.starshower,0.5]],
         "materials":[[Items.gems,1],[Items.gems,4],[Items.ruby,1,Items.sapphire,1,Items.emerald,1],[Items.starfragment,1,Items.gems,10]]
      });
      
      public static var beholdingeye:Equip = new Equip({
         "SID":"beholdingeye",
         "type":Equip.STAFF,
         "icon":265,
         "skin":21,
         "map":[15],
         "HP":[0],
         "attack":[0,5,10,15,20],
         "defence":[0],
         "magicAttack":[0,5,10,15,20],
         "magicDefence":[0],
         "accuracy":[20,40,60,80,100],
         "evade":[10,20,30,40,50],
         "resistance":{
            "dark":long50,
            "bio":long50,
            "syphon":long100
         },
         "element":Element.NONE,
         "statusEffect":Status.VIRUS,
         "statusChance":[30,50,70,85,100],
         "statusDegree":[2,2,3,3,3],
         "buffEffect":Stats.NONE,
         "specials":[[Equip.BOOST_DEBUFFS],null,[Equip.CAST,Spells.tentacles,0.5],null,[Equip.BOOST_BUFFS]],
         "materials":[[Items.iron,2],[Items.virus,2],[Items.scales,1,Items.virus,1],[Summons.ChomperMutant,1,Items.rune,1]]
      });
      
      public static var STALVES:Array = [solspear,arctictrident,zeuswrath,druidstaff,nimbusrod,dragonwings,gigavolt,alchemyset,kaladanda,wreckingrod,elderswisdom,obsidianstaff,celticcross,darktooth,knife,paperfan,oakstaff,beholdingeye,soulcrusher,shootingstar,slimestaff];
      
      public static var shadowblaster:Equip = new Equip({
         "SID":"shadowblaster",
         "type":Equip.GUN,
         "icon":278,
         "skin":1,
         "map":[30],
         "HP":[0],
         "attack":[0,5,10,15,20],
         "defence":[0],
         "magicAttack":[15,30,45,60,80],
         "magicDefence":[0],
         "accuracy":[0],
         "evade":[0],
         "resistance":{
            "dark":long50,
            "thunder":long50,
            "death":long100
         },
         "element":Element.DARK,
         "statusEffect":Status.NONE,
         "buffEffect":Stats.NONE,
         "specials":[[Equip.BOOST,Element.DARK],null,[Equip.COUNTER,Spells.darkblast],null,[Equip.CAST,Spells.gravitysurge,0.2]],
         "materials":[[Items.bomb,2],[Items.rune,1],[Summons.FlybotRed,1,Items.bomb,2],[Items.darkmatter,1,Items.rune,1]]
      });
      
      public static var biohazardblaster:Equip = new Equip({
         "SID":"biohazardblaster",
         "type":Equip.GUN,
         "icon":281,
         "skin":2,
         "map":[30],
         "HP":[0,5,10,15,20],
         "attack":[10,20,30,40,50],
         "defence":[0],
         "magicAttack":[10,20,30,40,50],
         "magicDefence":[0],
         "accuracy":[0],
         "evade":[0],
         "resistance":{
            "bio":long150,
            "water":long50
         },
         "element":Element.BIO,
         "statusEffect":Status.VIRUS,
         "statusChance":[60,70,80,90,100],
         "statusDegree":[1,2,2,3,3],
         "buffEffect":Stats.NONE,
         "specials":[[Equip.BOOST,Element.BIO],null,[Equip.DRAIN_HP],null,[Equip.STATUS,Status.POISON,2,1]],
         "materials":[[Items.glass,1],[Items.glass,4,Items.plastic,1],[Items.virus,4,Items.kevlar,2],[Items.darkmatter,1,Items.virus,4]]
      });
      
      public static var coconutshooter:Equip = new Equip({
         "SID":"coconutshooter",
         "type":Equip.GUN,
         "icon":282,
         "skin":3,
         "map":[30],
         "HP":[0],
         "attack":[15,25,40,55,70],
         "defence":[5,5,5,5,10],
         "magicAttack":[5,10,20,30,40],
         "magicDefence":[5,5,5,5,10],
         "accuracy":[0],
         "evade":[-10],
         "resistance":{
            "bio":long50,
            "earth":long50,
            "water":long50
         },
         "element":Element.EARTH,
         "statusEffect":Status.STAGGER,
         "statusChance":[30,35,40,45,50],
         "statusDegree":[1,1,1,1,1],
         "buffEffect":Stats.NONE,
         "specials":[[Equip.BOOST,Element.EARTH],null,[Equip.CAST,Spells.stonefist,0.5],null,[Equip.SUMMON,Spells.lumber,1]],
         "materials":[[Items.wood,1,Items.herb,1,Items.cactus,1],[Items.wood,4,Items.herb,4,Items.cactus,4],[Items.emerald,2,Items.root,3],[Items.opal,2,Summons.MirrorWise,1]]
      });
      
      public static var gungnir:Equip = new Equip({
         "SID":"gungnir",
         "type":Equip.GUN,
         "icon":277,
         "skin":4,
         "map":[30],
         "HP":[0,5,5,10,10],
         "attack":[15,30,45,60,80],
         "defence":[0,5,5,10,10],
         "magicAttack":[15,30,45,60,80],
         "magicDefence":[0,5,5,10,10],
         "accuracy":[0,5,10,15,20],
         "evade":[0,5,10,15,20],
         "resistance":{
            "death":long100,
            "syphon":long100,
            "dispel":long100
         },
         "element":Element.NONE,
         "statusEffect":Status.STAGGER,
         "statusChance":[50,60,70,90,100],
         "statusDegree":[1,1,1,1,1],
         "buffEffect":Stats.NONE,
         "specials":[],
         "materials":[[Items.spring,3],[Items.plastic,3],[Items.lego,1,Items.plastic,4],[Items.plutonium,1,Items.plastic,6]]
      });
      
      public static var heartstopper:Equip = new Equip({
         "SID":"heartstopper",
         "type":Equip.GUN,
         "icon":288,
         "skin":5,
         "map":[30],
         "HP":[0],
         "attack":[10,25,40,55,70],
         "defence":[0,5,5,10,10],
         "magicAttack":[10,15,20,25,30],
         "magicDefence":[0,5,5,10,10],
         "accuracy":[0],
         "evade":[0],
         "resistance":{
            "stun":long100,
            "bomb":long50,
            "thunder":long50
         },
         "element":Element.THUNDER,
         "statusEffect":Status.DOOM,
         "statusChance":[30,35,40,45,50],
         "statusDegree":[3,3,3,3,2],
         "buffEffect":Stats.NONE,
         "specials":[[Equip.BOOST,Element.THUNDER],null,[Equip.CAST,Spells.spark,0.5],null,[Equip.COUNTER,Spells.doubleshot]],
         "materials":[[Items.turd,3],[Items.amber,2],[Items.topaz,3,Items.amber,4],[Items.topaz,10,Items.amber,8]]
      });
      
      public static var heavyclaw:Equip = new Equip({
         "SID":"heavyclaw",
         "type":Equip.GUN,
         "icon":270,
         "skin":6,
         "map":[30],
         "HP":[5,5,5,10,10],
         "attack":[20,35,50,60,80],
         "defence":[0,5,5,10,10],
         "magicAttack":[0],
         "magicDefence":[0],
         "accuracy":[0],
         "evade":[-20],
         "resistance":{
            "bomb":long50,
            "earth":long50,
            "dispel":long100
         },
         "element":Element.BOMB,
         "statusEffect":Status.NONE,
         "buffEffect":Stats.DEFENCE,
         "buffChance":[30,40,50,60,70],
         "buffDegree":[-20,-20,-25,-25,-30],
         "specials":[[Equip.BOOST,Element.BOMB],null,[Equip.STATUS,Status.HEAVY,2,0.5],null,[Equip.SUMMON,Spells.bullet,1]],
         "materials":[[Items.steel,2],[Items.steel,3],[Items.cpu,2,Items.gear,10],[Items.diamond,1,Items.steel,10]]
      });
      
      public static var hellfireshotgun:Equip = new Equip({
         "SID":"hellfireshotgun",
         "type":Equip.GUN,
         "icon":284,
         "skin":7,
         "map":[30],
         "HP":[0],
         "attack":[10,25,35,50,65],
         "defence":[0],
         "magicAttack":[10,20,30,45,60],
         "magicDefence":[0],
         "accuracy":[5,10,15,20,25],
         "evade":[5,5,5,10,15],
         "resistance":{
            "fire":long50,
            "bio":long50,
            "dark":long50
         },
         "element":Element.FIRE,
         "statusEffect":Status.DRY,
         "statusChance":[50,60,80,90,100],
         "statusDegree":[2,2,2,2,3],
         "buffEffect":Stats.NONE,
         "specials":[[Equip.BOOST,Element.FIRE],null,[Equip.CAST,Spells.flameburst,0.5],null,[Equip.COUNTER,Spells.snipe]],
         "materials":[[Items.pipe,2],[Items.pipe,4],[Items.lego,1,Items.powder,5],[Items.lego,3,Items.powder,5]]
      });
      
      public static var crystalwing:Equip = new Equip({
         "SID":"crystalwing",
         "type":Equip.GUN,
         "icon":279,
         "skin":8,
         "map":[30],
         "HP":[0,0,5,10,15],
         "attack":[0,10,20,30,40],
         "defence":[5,5,5,10,15],
         "magicAttack":[0,10,30,45,60],
         "magicDefence":[5,5,5,10,15],
         "accuracy":[0,5,5,10,15],
         "evade":[0,5,5,10,15],
         "resistance":{
            "holy":long50,
            "bomb":long50,
            "ice":long50
         },
         "element":Element.HOLY,
         "statusEffect":Status.SYPHON,
         "statusChance":[30,35,40,45,50],
         "statusDegree":[2,2,2,3,3],
         "buffEffect":Stats.NONE,
         "specials":[[Equip.BOOST,Element.HOLY],null,[Equip.BOOST_HEALING],[Equip.BOOST_BUFFS],[Equip.SUMMON,Spells.healmore,0.66]],
         "materials":[[Items.butterflywing,1],[Items.butterflywing,3,Items.glass,1],[Items.silver,5,Items.butterflywing,5],[Items.diamond,1,Items.silver,2]]
      });
      
      public static var spinesnapper:Equip = new Equip({
         "SID":"spinesnapper",
         "type":Equip.GUN,
         "icon":286,
         "skin":9,
         "map":[30],
         "HP":[-10],
         "attack":[0,5,10,20,30],
         "defence":[0],
         "magicAttack":[0,5,10,20,30],
         "magicDefence":[0],
         "accuracy":[0],
         "evade":[20,25,30,35,40],
         "resistance":{
            "dark":long50,
            "death":long100,
            "holy":down30
         },
         "element":Element.DARK,
         "statusEffect":Status.DEATH,
         "statusChance":[10,15,20,25,30],
         "statusDegree":[1],
         "buffEffect":Stats.NONE,
         "specials":[[Equip.BOOST,Element.DARK],null,[Equip.BOOST_DEBUFFS],[Equip.SUMMON,Summons.FallenBeheaded,0.4],[Equip.BOOST_STATUS]],
         "materials":[[Items.claw,1],[Items.claw,3],[Items.spike,2,Summons.BatBone,1],[Items.spike,12,Items.claw,12,Items.rune,1]]
      });
      
      public static var soulpistol:Equip = new Equip({
         "SID":"soulpistol",
         "type":Equip.GUN,
         "icon":287,
         "skin":10,
         "map":[30],
         "HP":[0],
         "attack":[10,25,40,60,80],
         "defence":[0,0,5,10,15],
         "magicAttack":[0],
         "magicDefence":[0,0,5,10,15],
         "accuracy":[0,5,5,10,10],
         "evade":[0,5,5,10,10],
         "resistance":{
            "wind":long50,
            "holy":long50,
            "weak":long100
         },
         "element":Element.HOLY,
         "statusEffect":Status.WEAKEN,
         "statusChance":[60,70,80,90,100],
         "statusDegree":[2,2,2,2,3],
         "buffEffect":Stats.NONE,
         "specials":[[Equip.DRAIN_HP],[Equip.BOOST,Element.HOLY],[Equip.CAST,Spells.soularrow,0.5],null,[Equip.COUNTER,Spells.doubleshot]],
         "materials":[[Items.spring,2],[Items.spring,2,Items.pipe,5],[Items.silver,3,Items.pipe,5,Items.gear,5],[Summons.FishSteam,1,Items.silver,3,Items.gold,3]]
      });
      
      public static var thundercore:Equip = new Equip({
         "SID":"thundercore",
         "type":Equip.GUN,
         "icon":283,
         "skin":11,
         "map":[30],
         "HP":[0],
         "attack":[0,5,10,20,30],
         "defence":[0],
         "magicAttack":[10,20,30,45,60],
         "magicDefence":[0],
         "accuracy":[0],
         "evade":[0],
         "resistance":{
            "thunder":long50,
            "stun":long100,
            "syphon":long100
         },
         "element":Element.THUNDER,
         "statusEffect":Status.STUN,
         "statusChance":[10,15,15,20,25],
         "statusDegree":[1,1,1,1,2],
         "buffEffect":Stats.NONE,
         "specials":[[Equip.BOOST,Element.THUNDER],null,[Equip.STATUS,Status.CHARGE,1,0.2],null,[Equip.COUNTER,Spells.plasma]],
         "materials":[[Items.glass,1],[Items.glass,4,Items.tape,1],[Summons.FlybotYellow,1,Items.tape,6],[Items.starfragment,1,Items.glass,5]]
      });
      
      public static var deepblue:Equip = new Equip({
         "SID":"deepblue",
         "type":Equip.GUN,
         "icon":273,
         "skin":12,
         "map":[30],
         "HP":[0],
         "attack":[20,35,50,70,90],
         "defence":[0],
         "magicAttack":[0,10,20,30,40],
         "magicDefence":[0],
         "accuracy":[0],
         "evade":[-10],
         "resistance":{
            "water":long50,
            "fire":long50,
            "wet":long100
         },
         "element":Element.WATER,
         "statusEffect":Status.WET,
         "statusChance":[30,35,40,45,50],
         "statusDegree":[1,1,1,1,2],
         "buffEffect":Stats.NONE,
         "specials":[[Equip.BOOST,Element.WATER],null,[Equip.CAST,Spells.surgingskewer,0.15],null,[Equip.COUNTER,Spells.crush]],
         "materials":[[Items.steel,1],[Items.ice,2,Items.steel,1],[Items.ice,5,Items.sapphire,2],[Items.mythril,1,Items.ice,5]]
      });
      
      public static var subzero:Equip = new Equip({
         "SID":"subzero",
         "type":Equip.GUN,
         "icon":272,
         "skin":13,
         "map":[30],
         "HP":[0],
         "attack":[10,20,30,45,60],
         "defence":[0],
         "magicAttack":[10,20,30,45,60],
         "magicDefence":[10,10,15,15,20],
         "accuracy":[0],
         "evade":[0],
         "resistance":{
            "ice":long50,
            "water":long50,
            "burn":long100
         },
         "element":Element.ICE,
         "statusEffect":Status.FREEZE,
         "statusChance":[5,10,15,20,25],
         "statusDegree":[1,1,1,1,2],
         "buffEffect":Stats.NONE,
         "specials":[[Equip.BOOST,Element.ICE],null,[Equip.CAST,Spells.glacialglaive,0.25],null,[Equip.STATUS,Status.CHARGE,1,0.2]],
         "materials":[[Items.floppy,1],[Items.water,2,Items.spring,2],[Summons.FlybotBlue,1,Items.spring,2],[Items.floppy,52]]
      });
      
      public static var vortexcannon:Equip = new Equip({
         "SID":"vortexcannon",
         "type":Equip.GUN,
         "icon":274,
         "skin":14,
         "map":[30],
         "HP":[0,5,5,10,10],
         "attack":[0],
         "defence":[0,5,5,10,10],
         "magicAttack":[25,40,55,65,90],
         "magicDefence":[0,5,5,10,10],
         "accuracy":[-10],
         "evade":[-10],
         "resistance":{
            "wind":long50,
            "weight":long100,
            "stagger":long100
         },
         "element":Element.WIND,
         "statusEffect":Status.DISPEL,
         "statusChance":[20,30,40,40,50],
         "statusDegree":[1,1,1,1,1],
         "buffEffect":Stats.NONE,
         "specials":[[Equip.BOOST,Element.WIND],null,[Equip.CAST,Spells.whirlwind,0.66],null,[Equip.COUNTER,Spells.airwave]],
         "materials":[[Items.pipe,2],[Items.steel,4],[Items.steel,16,Items.gear,4],[Items.cpu,2,Items.steel,60]]
      });
      
      public static var chainsawgun:Equip = new Equip({
         "SID":"chainsawgun",
         "type":Equip.GUN,
         "icon":275,
         "skin":15,
         "map":[30],
         "HP":[0],
         "MP":[0],
         "attack":[40,60,80,100,120],
         "defence":[0],
         "magicAttack":[0,5,5,10,10],
         "magicDefence":[0],
         "accuracy":[0],
         "evade":[0,5,5,10,10],
         "resistance":{
            "bomb":long50,
            "stagger":long100,
            "death":long100
         },
         "element":Element.NONE,
         "statusEffect":Status.NONE,
         "buffEffect":Stats.NONE,
         "specials":[[Equip.SCARE,Foe.TREES],[Equip.BOOST,Element.NONE],[Equip.CAST,Spells.sawblade,1],null,[Equip.IGNORE_BUFFS]],
         "materials":[[Items.gear,1],[Items.gear,3],[Items.gear,6,Items.spike,8],[Items.diamond,1,Items.gear,6]]
      });
      
      public static var nitrobomber:Equip = new Equip({
         "SID":"nitrobomber",
         "type":Equip.GUN,
         "icon":271,
         "skin":16,
         "map":[30],
         "HP":[0],
         "attack":[5,5,10,20,30],
         "defence":[0,0,0,5,10],
         "magicAttack":[10,25,40,55,70],
         "magicDefence":[0,0,0,5,10],
         "accuracy":[0],
         "evade":[0],
         "resistance":{
            "bomb":long50,
            "fire":long50,
            "thunder":long50
         },
         "element":Element.BOMB,
         "statusEffect":Status.STAGGER,
         "statusChance":[30,35,40,45,50],
         "statusDegree":[1,1,1,1,1],
         "buffEffect":Stats.NONE,
         "specials":[[Equip.BOOST,Element.BOMB],[Equip.SUMMON,Spells.airstrike2,1],[Equip.CAST,Spells.nitro,0.44],null,[Equip.COUNTER,Spells.energybomb]],
         "materials":[[Items.bomb,2],[Items.powder,5,Items.bomb,2],[Items.cpu,3,Items.bomb,5],[Items.plutonium,1,Items.bomb,5]]
      });
      
      public static var desertscorpion:Equip = new Equip({
         "SID":"desertscorpion",
         "type":Equip.GUN,
         "icon":289,
         "skin":17,
         "map":[30],
         "HP":[0,5,10,15,20],
         "attack":[10,20,30,40,55],
         "defence":[0,5,10,15,20],
         "magicAttack":[10,20,30,40,55],
         "magicDefence":[0,5,10,15,20],
         "accuracy":[0],
         "evade":[0],
         "resistance":{
            "earth":long50,
            "wet":long100,
            "fire":long50
         },
         "element":Element.BOMB,
         "statusEffect":Status.DRY,
         "statusChance":[50,60,70,85,100],
         "statusDegree":[2,2,2,3,3],
         "buffEffect":Stats.ATTACK,
         "buffChance":[60,70,80,90,100],
         "buffDegree":[-20,-25,-30,-35,-40],
         "specials":[[Equip.BOOST,Element.BOMB],null,[Equip.CAST,Spells.sandduneP,0.25],null,[Equip.SUMMON,Spells.sandstorm,0.66]],
         "materials":[[Items.turd,4],[Items.amber,1],[Items.kevlar,1,Items.amber,2],[Items.kevlar,4,Items.turd,36]]
      });
      
      public static var accelerator:Equip = new Equip({
         "SID":"accelerator",
         "type":Equip.GUN,
         "icon":290,
         "skin":18,
         "map":[30],
         "HP":[0],
         "attack":[10,20,30,40,55],
         "defence":[0],
         "magicAttack":[10,20,30,40,55],
         "magicDefence":[0],
         "accuracy":[0,5,10,10,15],
         "evade":[0,5,10,10,15],
         "resistance":{
            "fire":long50,
            "ice":long50,
            "thunder":long50
         },
         "element":Element.NONE,
         "statusEffect":Status.BAD_LUCK,
         "statusChance":[30,50,70,85,100],
         "statusDegree":[2,2,2,2,3],
         "buffEffect":Stats.ACCURACY,
         "buffChance":[60,70,80,90,100],
         "buffDegree":[-20,-25,-30,-35,-40],
         "specials":[[Equip.CAST,Spells.slowdown,0.33],null,[Equip.SUMMON,Spells.speedup,0.66],null,[Equip.STATUS,Status.HASTE,2,0.2]],
         "materials":[[Items.gear,1],[Items.gear,2,Items.spring,2],[Items.cpu,2,Items.gear,2,Items.spring,2],[Items.plutonium,1,Items.gear,2,Items.spring,4]]
      });
      
      public static var supersnipe:Equip = new Equip({
         "SID":"supersnipe",
         "type":Equip.GUN,
         "icon":276,
         "skin":19,
         "map":[30],
         "HP":[0],
         "MP":[0],
         "attack":[15,30,45,60,80],
         "defence":[0],
         "magicAttack":[0,5,10,20,30],
         "magicDefence":[0],
         "accuracy":[25,30,35,40,50],
         "evade":[0,5,10,15,20],
         "resistance":{
            "wind":long50,
            "weak":long100,
            "syphon":long100
         },
         "element":Element.NONE,
         "statusEffect":Status.DEATH,
         "statusChance":[10,20,30,40,50],
         "statusDegree":[1,1,1,1,1],
         "buffEffect":Stats.NONE,
         "specials":[[Equip.BOOST,Element.WIND],null,[Equip.SUMMON,Spells.lockon,1],[Equip.COUNTER,Spells.snipe],[Equip.CAST,Spells.geometryP,0.2]],
         "materials":[[Items.floppy,1],[Items.pipe,4],[Items.cpu,2,Items.glass,3],[Items.gamechild,1,Items.cpu,2]]
      });
      
      public static var greengoliath:Equip = new Equip({
         "SID":"greengoliath",
         "type":Equip.GUN,
         "icon":280,
         "skin":20,
         "map":[30],
         "HP":[0],
         "MP":[0],
         "attack":[25,35,50,75,100],
         "defence":[0],
         "magicAttack":[25,35,50,75,100],
         "magicDefence":[0],
         "accuracy":[-10],
         "evade":[-10],
         "resistance":{
            "wind":long50,
            "weak":long100,
            "syphon":long100
         },
         "element":Element.NONE,
         "statusEffect":Status.TIRED,
         "statusChance":[30,35,40,45,50],
         "statusDegree":[2,2,2,2,3],
         "buffEffect":Stats.NONE,
         "specials":[[Equip.STATUS,Status.TIRED,1,0.5],[Equip.BOOST,Element.BIO],null,null,[Equip.CAST,Spells.bamboo2,0.5]],
         "materials":[[Items.herb,4],[Items.floppy,2],[Items.cpu,1,Items.kevlar,1,Items.herb,12],[Items.titanium,1,Items.cpu,1]]
      });
      
      public static var flametitan:Equip = new Equip({
         "SID":"flametitan",
         "type":Equip.GUN,
         "icon":285,
         "skin":21,
         "map":[30],
         "HP":[0],
         "attack":[0,5,10,15,20],
         "defence":[0],
         "magicAttack":[20,35,55,70,90],
         "magicDefence":[0],
         "accuracy":[-10],
         "evade":[-10],
         "resistance":{
            "earth":long50,
            "wind":long50,
            "weight":long100
         },
         "element":Element.FIRE,
         "statusEffect":Status.BURN,
         "statusChance":[50,65,80,90,100],
         "statusDegree":[2,2,2,2,3],
         "buffEffect":Stats.NONE,
         "specials":[[Equip.BOOST,Element.FIRE],null,[Equip.STATUS,Status.HEAVY,2,0.5]],
         "materials":[[Items.pipe,2],[Items.pipe,8],[Items.scales,1,Items.pipe,6],[Items.scales,2,Summons.SpriteFire,1]]
      });
      
      public static var GUNS:Array = [nitrobomber,hellfireshotgun,thundercore,deepblue,chainsawgun,vortexcannon,subzero,shadowblaster,biohazardblaster,crystalwing,heavyclaw,soulpistol,supersnipe,coconutshooter,flametitan,heartstopper,gungnir,spinesnapper,desertscorpion,accelerator,greengoliath];
      
      public static var fairybow:Equip = new Equip({
         "SID":"fairybow",
         "type":Equip.BOW,
         "icon":309,
         "skin":2,
         "map":[56],
         "HP":[0],
         "attack":[15,25,35,50,65],
         "defence":[5,5,10,10,15],
         "magicAttack":[15,25,35,50,65],
         "magicDefence":[0],
         "accuracy":[0],
         "evade":[0],
         "resistance":{
            "bio":long50,
            "earth":long50,
            "water":long50
         },
         "element":Element.BIO,
         "statusEffect":Status.POISON,
         "statusChance":[50,60,70,80,100],
         "statusDegree":[2,2,2,2,2],
         "specials":[[Equip.BOOST,Element.BIO],null,[Equip.CAST,Spells.razorleaf,0.5],null,[Equip.SUMMON,Spells.lumber,1]],
         "materials":[[Items.wood,2],[Items.wood,4,Items.herb,1],[Items.emerald,1,Items.virus,3,Items.root,10],[Items.emerald,3,Items.opal,3,Items.virus,3]]
      });
      
      public static var emeraldcyclone:Equip = new Equip({
         "SID":"emeraldcyclone",
         "type":Equip.BOW,
         "icon":303,
         "skin":3,
         "map":[56],
         "HP":[0],
         "attack":[10,25,40,55,70],
         "defence":[0],
         "magicAttack":[10,25,40,55,70],
         "magicDefence":[0],
         "accuracy":[0],
         "evade":[0,5,5,10,15],
         "resistance":{
            "wind":long50,
            "earth":long50,
            "weak":long100
         },
         "element":Element.WIND,
         "statusEffect":Status.DISPEL,
         "statusChance":[20,30,40,40,50],
         "statusDegree":[1,1,1,1,1],
         "specials":[[Equip.BOOST,Element.WIND],null,[Equip.SUMMON,Spells.hurricane,0.75],null,[Equip.COUNTER,Spells.piercingshot]],
         "materials":[[Items.cactus,2],[Items.cactus,8],[Items.emerald,3,Items.cactus,16],[Items.emerald,10,Items.leather,8]]
      });
      
      public static var crimsondragon:Equip = new Equip({
         "SID":"crimsondragon",
         "type":Equip.BOW,
         "icon":312,
         "skin":4,
         "map":[56],
         "HP":[0],
         "MP":[0],
         "attack":[15,30,45,60,75],
         "defence":[0],
         "magicAttack":[15,30,45,60,75],
         "magicDefence":[0],
         "accuracy":[0],
         "evade":[0],
         "resistance":{
            "fire":long50,
            "water":down30,
            "ice":long50
         },
         "element":Element.FIRE,
         "statusEffect":Status.BURN,
         "statusChance":[50,60,70,80,100],
         "statusDegree":[2,2,2,2,2],
         "specials":[[Equip.BOOST,Element.FIRE],null,[Equip.CAST,Spells.firecrystals,0.33],null,[Equip.SUMMON,Spells.firespin,1]],
         "materials":[[Items.magma,1],[Items.magma,3],[Items.scales,1,Items.magma,1],[Items.ruby,10,Items.magma,2]]
      });
      
      public static var coldsteel:Equip = new Equip({
         "SID":"coldsteel",
         "type":Equip.BOW,
         "icon":308,
         "skin":5,
         "map":[56],
         "HP":[0],
         "MP":[0],
         "attack":[15,30,40,55,70],
         "defence":[0,5,5,10,10],
         "magicAttack":[10,20,30,40,55],
         "magicDefence":[0,5,5,10,10],
         "accuracy":[0],
         "evade":[-10],
         "resistance":{
            "water":long50,
            "ice":long50,
            "freeze":long100
         },
         "element":Element.ICE,
         "statusEffect":Status.FREEZE,
         "statusChance":[10,15,20,25,30],
         "statusDegree":[2,2,2,2,2],
         "specials":[[Equip.BOOST,Element.ICE],null,[Equip.CAST,Spells.iceshard,0.5],null,[Equip.COUNTER,Spells.arrowcut]],
         "materials":[[Items.steel,1],[Items.steel,2,Items.water,2],[Summons.CreepIcicle,1,Items.water,5],[Items.sapphire,10,Items.steel,15]]
      });
      
      public static var thorshammer:Equip = new Equip({
         "SID":"thorshammer",
         "type":Equip.BOW,
         "icon":314,
         "skin":6,
         "map":[56],
         "HP":[0],
         "MP":[0],
         "attack":[10,20,30,40,50],
         "defence":[0],
         "magicAttack":[10,20,30,45,60],
         "magicDefence":[0],
         "accuracy":[10,15,15,15,20],
         "evade":[0,5,5,10,10],
         "resistance":{
            "wind":long50,
            "thunder":long50,
            "stun":long100
         },
         "element":Element.THUNDER,
         "statusEffect":Status.STUN,
         "statusChance":[10,20,40,60,80],
         "statusDegree":[1,1,1,1,1],
         "specials":[[Equip.BOOST,Element.THUNDER],null,[Equip.SUMMON,Spells.thunderstorm,0.35],[Equip.CAST,Spells.thunderbolt,0.45],[Equip.COUNTER,Spells.piercingshot]],
         "materials":[[Items.seashell,2],[Items.seashell,8],[Items.topaz,3,Items.amber,6],[Items.topaz,10,Items.amber,10]]
      });
      
      public static var gaiasgift:Equip = new Equip({
         "SID":"gaiasgift",
         "type":Equip.BOW,
         "icon":305,
         "skin":7,
         "map":[56],
         "HP":[5,5,10,15,20],
         "MP":[0],
         "attack":[0,5,10,20,30],
         "defence":[5,5,5,5,10],
         "magicAttack":[0,5,10,20,30],
         "magicDefence":[5,5,5,5,10],
         "accuracy":[0],
         "evade":[0],
         "resistance":{
            "earth":long50,
            "bio":long50,
            "dark":long50
         },
         "element":Element.EARTH,
         "statusEffect":Status.HEAVY,
         "statusChance":[50,60,70,80,100],
         "statusDegree":[2,2,2,2,2],
         "specials":[[Equip.BOOST,Element.EARTH],null,[Equip.CAST,Spells.darken,0.33],[Equip.STATUS,Status.REGEN,2,0.2],[Equip.BOOST_HEALING]],
         "materials":[[Items.turd,3],[Items.gems,4],[Items.emerald,2,Summons.BitPoison,1],[Items.emerald,3,Items.opal,3]]
      });
      
      public static var irontusk:Equip = new Equip({
         "SID":"irontusk",
         "type":Equip.BOW,
         "icon":295,
         "skin":8,
         "map":[56],
         "HP":[0],
         "MP":[0],
         "attack":[25,35,50,70,90],
         "defence":[0,5,10,10,10],
         "magicAttack":[0],
         "magicDefence":[0,5,10,10,10],
         "accuracy":[-10],
         "evade":[-10],
         "resistance":{
            "stagger":long100,
            "bomb":long50,
            "thunder":long50
         },
         "element":Element.BOMB,
         "statusEffect":Status.STAGGER,
         "statusChance":[50,60,70,80,100],
         "statusDegree":[1,1,1,1,1],
         "specials":[[Equip.BOOST,Element.BOMB],null,[Equip.CAST,Spells.energybomb,0.5],null,[Equip.COUNTER,Spells.bowwhack]],
         "materials":[[Items.iron,2],[Items.steel,3],[Items.silver,5,Items.steel,12],[Items.titanium,1,Items.silver,5]]
      });
      
      public static var chiefshorns:Equip = new Equip({
         "SID":"chieftainshorns",
         "type":Equip.BOW,
         "icon":296,
         "skin":9,
         "map":[56],
         "HP":[5,10,15,20,25],
         "MP":[0],
         "attack":[0,5,10,20,30],
         "defence":[0,5,5,5,10],
         "magicAttack":[0,5,10,20,30],
         "magicDefence":[0,5,5,5,10],
         "accuracy":[0],
         "evade":[0],
         "resistance":{
            "earth":long50,
            "holy":long50,
            "bomb":long50
         },
         "element":Element.WIND,
         "statusEffect":Status.LIGHT,
         "statusChance":[50,60,70,80,100],
         "statusDegree":[2,2,2,2,2],
         "buffEffect":Stats.MAGIC_DEFENCE,
         "buffChance":[60,70,80,90,100],
         "buffDegree":[-20,-25,-25,-25,-30],
         "specials":[[Equip.BOOST,Element.WIND],null,[Equip.SUMMON,Spells.remedy,1],[Equip.BOOST_BUFFS],[Equip.COUNTER,Spells.arrowcut]],
         "materials":[[Items.feather,2],[Items.claw,2],[Items.spike,4,Items.claw,6],[Items.opal,4,Items.spike,4,Items.feather,6]]
      });
      
      public static var juggernaught:Equip = new Equip({
         "SID":"juggernaut",
         "type":Equip.BOW,
         "icon":301,
         "skin":10,
         "map":[56],
         "HP":[0,5,5,10,10],
         "MP":[0],
         "attack":[10,20,30,40,50],
         "defence":[5,10,15,20,25],
         "magicAttack":[10,20,30,40,50],
         "magicDefence":[5,10,15,20,25],
         "accuracy":[0],
         "evade":[-10],
         "resistance":{
            "dispel":long100,
            "stagger":long100,
            "stun":long100
         },
         "element":Element.BOMB,
         "statusEffect":Status.DISPEL,
         "statusChance":[30,50,60,70,80],
         "statusDegree":[1,1,1,1,1],
         "specials":[[Equip.BOOST,Element.BOMB],null,[Equip.INTIMIDATE],null,[Equip.CAST,Spells.blast,0.5]],
         "materials":[[Items.bomb,2],[Items.powder,3,Items.bomb,3],[Items.kevlar,2,Items.cpu,1],[Items.titanium,1,Items.powder,10,Items.bomb,10]]
      });
      
      public static var aquamarine:Equip = new Equip({
         "SID":"aquamarine",
         "type":Equip.BOW,
         "icon":313,
         "skin":11,
         "map":[56],
         "HP":[0],
         "attack":[10,20,30,45,60],
         "defence":[0],
         "magicAttack":[20,30,40,50,60],
         "magicDefence":[0,5,5,10,10],
         "accuracy":[0],
         "evade":[0],
         "resistance":{
            "water":long50,
            "fire":long50,
            "ice":long50
         },
         "element":Element.WATER,
         "statusEffect":Status.CHILL,
         "statusChance":[30,40,50,60,70],
         "statusDegree":[2,2,2,3,3],
         "specials":[[Equip.BOOST,Element.WATER],null,[Equip.COUNTER,Spells.aquaarrow],null,[Equip.CAST,Spells.lighten,0.25]],
         "materials":[[Items.snowball,5],[Items.ice,2],[Items.sapphire,3,Summons.BitWater,1],[Items.moonpearl,2,Items.sapphire,2]]
      });
      
      public static var eagleeye:Equip = new Equip({
         "SID":"eagleeye",
         "type":Equip.BOW,
         "icon":306,
         "skin":12,
         "map":[56],
         "HP":[0],
         "attack":[10,20,35,50,65],
         "defence":[0],
         "magicAttack":[0,10,20,30,40],
         "magicDefence":[0],
         "accuracy":[30,45,60,75,100],
         "evade":[10,15,20,25,30],
         "resistance":{
            "stagger":long100,
            "syphon":long100,
            "weak":long100
         },
         "element":Element.NONE,
         "elementDegree":100,
         "statusEffect":Status.BAD_LUCK,
         "statusChance":[30,40,60,80,100],
         "statusDegree":[2,2,2,3,3],
         "specials":[[Equip.COUNTER,Spells.piercingshot],null,[Equip.STATUS,Status.GOOD_LUCK,2,0.3],null,[Equip.SUMMON,Spells.bind,1]],
         "materials":[[Items.gear,1],[Items.gear,3],[Items.cpu,1,Items.gear,5,Items.pipe,5],[Items.gamechild,1,Items.cpu,1]]
      });
      
      public static var thestinger:Equip = new Equip({
         "SID":"thestinger",
         "type":Equip.BOW,
         "icon":302,
         "skin":13,
         "map":[56],
         "HP":[0],
         "attack":[25,40,55,65,90],
         "defence":[0],
         "magicAttack":[-20],
         "magicDefence":[0],
         "accuracy":[0],
         "evade":[0,5,5,10,10],
         "resistance":{
            "bio":long50,
            "dark":long50,
            "burn":down30
         },
         "element":Element.BIO,
         "statusEffect":Status.STUN,
         "statusChance":[10,20,30,40,50],
         "statusDegree":[1,1,1,1,1],
         "specials":[[Equip.BOOST,Element.BIO],null,[Equip.CAST,Spells.vines,0.33],null,[Equip.SUMMON,Spells.razorleaf2,0.66]],
         "materials":[[Items.cactus,2],[Items.cactus,8],[Items.root,12,Items.virus,10],[Summons.ChomperLeafy,1,Items.emerald,4]]
      });
      
      public static var thedeceased:Equip = new Equip({
         "SID":"thedeceased",
         "type":Equip.BOW,
         "icon":304,
         "skin":14,
         "map":[56],
         "HP":[0],
         "MP":[0],
         "attack":[5,15,30,45,60],
         "defence":[0],
         "magicAttack":[5,15,30,45,60],
         "magicDefence":[0],
         "accuracy":[10,15,20,25,30],
         "evade":[0],
         "resistance":{
            "weak":long100,
            "curse":long100,
            "death":long100
         },
         "element":Element.NONE,
         "statusEffect":Status.DOOM,
         "statusChance":[30,35,40,45,50],
         "statusDegree":[3,3,3,3,2],
         "buffEffect":Stats.DEFENCE,
         "buffChance":[50,70,80,90,100],
         "buffDegree":[-20,-20,-25,-25,-30],
         "specials":[[Equip.BOOST_DEBUFFS],null,[Equip.SUMMON,Summons.HandZombie,0.8],null,[Equip.CAST,Spells.bonestar,0.5]],
         "materials":[[Items.claw,1],[Items.claw,2],[Items.spike,3,Items.virus,2],[Items.darkmatter,1,Items.spike,5]]
      });
      
      public static var blackwidow:Equip = new Equip({
         "SID":"blackwidow",
         "type":Equip.BOW,
         "icon":311,
         "skin":15,
         "map":[56],
         "HP":[0],
         "attack":[15,25,35,55,70],
         "defence":[0],
         "magicAttack":[0,5,10,20,30],
         "magicDefence":[0],
         "accuracy":[0],
         "evade":[0],
         "resistance":{
            "dark":long50,
            "curse":long100,
            "death":long100
         },
         "element":Element.DARK,
         "statusEffect":Status.CURSE,
         "statusChance":[20,40,60,80,100],
         "statusDegree":[3,3,3,3,3],
         "specials":[[Equip.BOOST,Element.DARK],[Equip.INTIMIDATE],[Equip.COUNTER,Spells.arrowcut],null,[Equip.SUMMON,Spells.spiders,0.66]],
         "materials":[[Items.powder,2],[Items.powder,3,Items.claw,2],[Items.rune,2,Items.virus,2],[Items.darkmatter,1,Items.virus,2]]
      });
      
      public static var sharanga:Equip = new Equip({
         "SID":"sharanga",
         "type":Equip.BOW,
         "icon":300,
         "skin":16,
         "map":[56],
         "HP":[0,5,5,10,10],
         "attack":[15,30,45,60,80],
         "defence":[0],
         "magicAttack":[15,30,45,60,80],
         "magicDefence":[0],
         "accuracy":[0,5,10,15,20],
         "evade":[0,5,10,15,20],
         "resistance":{
            "weight":long100,
            "wet":long100,
            "dispel":long100
         },
         "element":Element.NONE,
         "statusEffect":Status.DISPEL,
         "statusChance":[20,30,40,40,50],
         "statusDegree":[1,1,1,1,1],
         "buffEffect":Stats.NONE,
         "specials":[null,null,[Equip.CAST,Spells.geometryP,0.2]],
         "materials":[[Items.geode,2],[Items.geode,6],[Items.opal,2,Items.geode,4],[Items.diamond,1,Items.opal,1]]
      });
      
      public static var heavensvoice:Equip = new Equip({
         "SID":"heavensvoice",
         "type":Equip.BOW,
         "icon":297,
         "skin":17,
         "map":[56],
         "HP":[0],
         "attack":[10,20,30,40,50],
         "defence":[0],
         "magicAttack":[0,5,10,20,30],
         "magicDefence":[0,5,10,15,20],
         "accuracy":[0],
         "evade":[0],
         "resistance":{
            "weight":long100,
            "syphon":long100,
            "holy":long100
         },
         "element":Element.HOLY,
         "statusEffect":Status.SYPHON,
         "statusChance":[20,30,40,40,50],
         "statusDegree":[2,2,2,2,2],
         "buffEffect":Stats.NONE,
         "specials":[[Equip.BOOST,Element.HOLY],null,[Equip.CAST,Spells.judgement,0.33],null,[Equip.COUNTER,Spells.piercingshot]],
         "materials":[[Items.feather,2],[Items.gems,5],[Items.gold,2,Items.ruby,1],[Items.grail,1,Items.gold,2,Items.ruby,1]]
      });
      
      public static var fenrirsjaw:Equip = new Equip({
         "SID":"fenrirsjaw",
         "type":Equip.BOW,
         "icon":315,
         "skin":18,
         "map":[56],
         "HP":[0,5,5,10,10],
         "attack":[20,35,50,65,80],
         "defence":[0],
         "magicAttack":[0],
         "magicDefence":[0],
         "accuracy":[0,5,5,10,10],
         "evade":[0,5,5,10,10],
         "resistance":{
            "death":long100,
            "poison":long100
         },
         "element":Element.NONE,
         "statusEffect":Status.TIRED,
         "statusChance":[20,30,40,40,50],
         "statusDegree":[2,2,2,2,2],
         "specials":[[Equip.DRAIN_HP],[Equip.BOOST,Element.NONE],[Equip.COUNTER,Spells.arrowcut],null,[Equip.SUMMON,Summons.FallenLost,0.3]],
         "materials":[[Items.spring,2],[Items.spring,8],[Items.silver,6],[Items.mythril,1,Items.spring,5]]
      });
      
      public static var alchemistsbow:Equip = new Equip({
         "SID":"alchemistsbow",
         "type":Equip.BOW,
         "icon":310,
         "skin":19,
         "map":[56],
         "HP":[5,5,5,10,15],
         "attack":[0,5,15,25,35],
         "defence":[0],
         "magicAttack":[0,5,15,25,35],
         "magicDefence":[0],
         "accuracy":[0],
         "evade":[0],
         "resistance":{
            "syphon":long100,
            "poison":long100,
            "burn":long100
         },
         "element":Element.NONE,
         "statusEffect":Status.RANDOM,
         "statusChance":[60,70,80,90,100],
         "statusDegree":[1,1,1,1,1],
         "buffEffect":Stats.NONE,
         "specials":[[Equip.BOOST_STATUS],null,[Equip.BOOST_FOOD],null,[Equip.COUNTER,Spells.arrowcut]],
         "materials":[[Items.glass,2],[Items.glass,8],[Summons.SlimeSand,1,Summons.SlimeWater,1,Summons.SlimeMouse,1],[Items.emerald,3,Items.sapphire,3,Items.ruby,3]]
      });
      
      public static var angelwing:Equip = new Equip({
         "SID":"angelwing",
         "type":Equip.BOW,
         "icon":307,
         "skin":20,
         "map":[56],
         "HP":[0],
         "MP":[0],
         "attack":[10,20,30,45,60],
         "defence":[0],
         "magicAttack":[10,20,30,45,60],
         "magicDefence":[0],
         "accuracy":[0,0,0,5,15],
         "evade":[0],
         "resistance":{
            "holy":long50,
            "fire":long50,
            "weak":long100
         },
         "element":Element.HOLY,
         "statusEffect":Status.WEAKEN,
         "statusChance":[20,40,60,80,100],
         "statusDegree":[3,3,3,3,3],
         "specials":[[Equip.BOOST,Element.HOLY],null,[Equip.SUMMON,Spells.arrowrain,0.66],null,[Equip.STATUS,Status.AUTOLIFE,1,0.3]],
         "materials":[[Items.feather,1,Items.butterflywing,1],[Items.feather,3,Items.butterflywing,3],[Items.silver,7,Items.feather,2],[Items.diamond,1,Items.silver,5]]
      });
      
      public static var earthswhisper:Equip = new Equip({
         "SID":"earthswhisper",
         "type":Equip.BOW,
         "icon":299,
         "skin":21,
         "map":[56],
         "HP":[0],
         "attack":[0,10,20,30,40],
         "defence":[0,5,10,15,20],
         "magicAttack":[10,20,30,40,50],
         "magicDefence":[0],
         "accuracy":[0],
         "evade":[0],
         "resistance":{
            "bio":long100,
            "earth":long100
         },
         "element":Element.EARTH,
         "statusEffect":Status.HEAVY,
         "statusChance":[20,30,40,40,50],
         "statusDegree":[2,2,2,2,2],
         "buffEffect":Stats.NONE,
         "specials":[[Equip.BOOST,Element.EARTH],null,[Equip.CAST,Spells.cataclysmiccut,0.33],null,[Equip.SUMMON,Spells.remedy,1.25]],
         "materials":[[Items.root,2],[Items.root,4,Items.wood,4],[Items.opal,1,Items.rune2,1],[Items.opal,4,Items.rune2,3]]
      });
      
      public static var regalturtle:Equip = new Equip({
         "SID":"regalturtle",
         "type":Equip.BOW,
         "icon":298,
         "skin":22,
         "map":[56],
         "HP":[10,15,20,30,40],
         "MP":[0],
         "attack":[0,5,5,10,10],
         "defence":[10,15,20,30,40],
         "magicAttack":[-50],
         "magicDefence":[0],
         "accuracy":[0],
         "evade":[0],
         "resistance":{
            "holy":long50,
            "fire":long50,
            "bomb":long50
         },
         "element":Element.HOLY,
         "specials":[[Equip.BOOST_HEALING],null,[Equip.STATUS,Status.DEFEND,1,0.33],null,[Equip.BOOST,Element.HOLY]],
         "materials":[[Items.seashell,1,Items.iron,1],[Items.buckle,4],[Summons.CreepRed,1],[Items.grail,1,Items.gold,1,Items.silver,1]]
      });
      
      public static var BOWS:Array = [fairybow,coldsteel,thorshammer,aquamarine,gaiasgift,crimsondragon,irontusk,fenrirsjaw,thedeceased,juggernaught,emeraldcyclone,eagleeye,thestinger,chiefshorns,regalturtle,alchemistsbow,blackwidow,angelwing,sharanga,earthswhisper,heavensvoice];
      
      public static var steelbuckler:Equip = new Equip({
         "SID":"steelbuckler",
         "type":Equip.TOYS,
         "icon":323,
         "skin":1,
         "map":[56],
         "HP":[0,5,5,5,10],
         "MP":[0],
         "attack":[10,20,35,50,65],
         "defence":[10,15,20,25,30],
         "magicAttack":[0,10,10,20,30],
         "magicDefence":[10,15,20,25,30],
         "accuracy":[0],
         "evade":[0],
         "resistance":{
            "earth":long50,
            "wind":long50,
            "weight":long100
         },
         "element":Element.NONE,
         "statusEffect":null,
         "specials":[[Equip.BOOST,Element.NONE],null,[Equip.COUNTER,Spells.rapidslash2],null,null],
         "materials":[[Items.steel,1],[Items.steel,3],[Items.rune2,2,Items.silver,6],[Items.titanium,1,Items.silver,6]]
      });
      
      public static var elvenshield:Equip = new Equip({
         "SID":"elvenshield",
         "type":Equip.TOYS,
         "icon":324,
         "skin":2,
         "map":[56],
         "HP":[0],
         "attack":[10,20,30,45,60],
         "defence":[0,5,5,10,15],
         "magicAttack":[10,20,30,45,60],
         "magicDefence":[0,5,5,10,15],
         "accuracy":[0],
         "evade":[0],
         "resistance":{
            "bio":long100,
            "earth":long100,
            "holy":long100
         },
         "element":Element.EARTH,
         "statusEffect":Status.BAD_LUCK,
         "statusChance":[30,50,70,85,100],
         "statusDegree":[2,2,2,2,3],
         "specials":[[Equip.BOOST,Element.EARTH],null,[Equip.SUMMON,Spells.fairybomb,1.5],[Equip.CAST,Spells.stonefist,0.35],[Equip.STATUS,Status.GOOD_LUCK,2,0.3]],
         "materials":[[Items.wood,2],[Items.wood,8],[Items.rune2,2,Items.silver,3],[Items.mythril,1,Items.silver,1]]
      });
      
      public static var vikingbuckler:Equip = new Equip({
         "SID":"vikingbuckler",
         "type":Equip.TOYS,
         "icon":322,
         "skin":3,
         "map":[56],
         "HP":[0],
         "attack":[20,40,60,80,100],
         "defence":[10,15,20,25,30],
         "magicAttack":[0],
         "magicDefence":[0],
         "accuracy":[0],
         "evade":[0],
         "resistance":{
            "water":long50,
            "ice":long50,
            "wind":long50
         },
         "element":Element.NONE,
         "statusEffect":Status.STAGGER,
         "statusChance":[20,30,40,50,60],
         "statusDegree":[1],
         "specials":[[Equip.STATUS,Status.BERSERK,1,2],null,[Equip.COUNTER,Spells.sworddance2],null,[Equip.CAST,Spells.groundblade,0.33]],
         "materials":[[Items.wood,1,Items.iron,1],[Items.wood,4,Items.iron,4],[Items.rune2,4,Items.wood,8],[Items.diamond,1,Items.rune,2]]
      });
      
      public static var pixelpopper:Equip = new Equip({
         "SID":"pixelpopper",
         "type":Equip.TOYS,
         "icon":321,
         "skin":4,
         "map":[56],
         "HP":[0],
         "attack":[15,30,45,60,80],
         "defence":[0],
         "magicAttack":[15,30,45,60,80],
         "magicDefence":[0],
         "accuracy":[0],
         "evade":[5,10,15,25,30],
         "resistance":{
            "weight":long100,
            "thunder":long50,
            "stun":long100
         },
         "element":Element.NONE,
         "statusEffect":Status.RANDOM,
         "statusChance":[60,70,80,90,100],
         "statusDegree":[1],
         "specials":[[Equip.BOOST,Element.NONE],null,[Equip.CAST,Spells.pixelfish,0.25],null,[Equip.SUMMON,Spells.pixelriceball,0.66]],
         "materials":[[Items.floppy,1],[Items.tape,8],[Items.cpu,1,Items.tape,2],[Items.gamechild,2]]
      });
      
      public static var godlybook:Equip = new Equip({
         "SID":"godlybook",
         "type":Equip.TOYS,
         "icon":325,
         "skin":5,
         "map":[56],
         "HP":[0],
         "attack":[0,10,20,30,40],
         "defence":[0],
         "magicAttack":[20,30,40,50,60],
         "magicDefence":[0,5,10,15,20],
         "accuracy":[0],
         "evade":[0],
         "resistance":{
            "holy":long50,
            "dark":long50,
            "syphon":long100
         },
         "element":Element.HOLY,
         "statusEffect":Status.CURSE,
         "statusChance":[30,50,70,85,100],
         "statusDegree":[2,3,3,4,5],
         "specials":[[Equip.BOOST,Element.HOLY],null,[Equip.CAST,Spells.talisman,0.5],null,[Equip.STATUS,Status.AUTOLIFE,1,0.5]],
         "materials":[[Items.leather,1],[Items.leather,3],[Items.gold,2,Items.silver,2],[Items.grail,1,Items.leather,3]]
      });
      
      public static var humanskull:Equip = new Equip({
         "SID":"humanskull",
         "type":Equip.TOYS,
         "icon":327,
         "skin":6,
         "map":[56],
         "HP":[0],
         "attack":[0,10,20,30,40],
         "defence":[0,5,10,20,30],
         "magicAttack":[0,5,10,20,30],
         "magicDefence":[0,5,10,20,30],
         "accuracy":[0],
         "evade":[0,5,10,20,30],
         "resistance":{
            "bio":long100,
            "dark":long50,
            "curse":long100
         },
         "element":Element.NONE,
         "statusEffect":Status.BAD_LUCK,
         "statusChance":[30,50,70,85,100],
         "statusDegree":[2,2,2,2,3],
         "buffEffect":Stats.DEFENCE,
         "buffChance":[30,40,50,60,70],
         "buffDegree":[-20,-20,-25,-25,-30],
         "specials":[[Equip.BOOST_DEBUFFS],null,[Equip.SUMMON,Spells.deathP,1],null,[Equip.BOOST_STATUS]],
         "materials":[[Items.claw,1],[Items.claw,3],[Items.spike,4,Items.claw,4],[Items.moonpearl,1,Items.rune,3]]
      });
      
      public static var devilssunrise:Equip = new Equip({
         "SID":"devilssunrise",
         "type":Equip.TOYS,
         "icon":332,
         "skin":7,
         "map":[56],
         "HP":[0],
         "attack":[25,35,50,70,90],
         "defence":[0,5,10,15,20],
         "magicAttack":[-30],
         "magicDefence":[0,5,10,15,20],
         "accuracy":[0],
         "evade":[-10],
         "resistance":{
            "holy":long100,
            "burn":long100,
            "weak":long100
         },
         "element":Element.DARK,
         "statusEffect":Status.DOOM,
         "statusChance":[30,35,40,45,50],
         "statusDegree":[3,3,3,3,2],
         "specials":[[Equip.BOOST,Element.DARK],null,null,null,[Equip.CAST,Spells.blackspikes,0.5]],
         "materials":[[Items.iron,2],[Items.iron,4,Items.shuriken,4],[Items.rune,2,Items.shuriken,3],[Items.rune,5,Summons.FallenBeheaded,1]]
      });
      
      public static var kingsguard:Equip = new Equip({
         "SID":"kingsguard",
         "type":Equip.TOYS,
         "icon":333,
         "skin":8,
         "map":[56],
         "HP":[0],
         "attack":[15,25,40,55,70],
         "defence":[0,5,10,15,20],
         "magicAttack":[15,25,40,55,70],
         "magicDefence":[0,5,10,15,20],
         "accuracy":[0],
         "evade":[-10],
         "resistance":{
            "death":long100,
            "dark":long100,
            "curse":long100
         },
         "element":Element.HOLY,
         "statusEffect":Status.NONE,
         "buffEffect":Stats.ACCURACY,
         "buffChance":[30,40,50,60,70],
         "buffDegree":[-20,-20,-25,-25,-30],
         "specials":[[Equip.BOOST,Element.HOLY],null,[Equip.DEFEND_STATUS,Status.BRAVE,2],null,[Equip.STATUS,Status.BRAVE,1,0.3]],
         "materials":[[Items.buckle,1],[Items.buckle,3],[Items.gold,3,Items.ruby,1],[Items.gold,7,Summons.FallenCrucified,1]]
      });
      
      public static var masamune:Equip = new Equip({
         "SID":"masamune",
         "type":Equip.TOYS,
         "icon":331,
         "skin":9,
         "map":[56],
         "HP":[-50],
         "attack":[70,90,110,130,150],
         "defence":[0],
         "magicAttack":[70,90,110,130,150],
         "magicDefence":[0],
         "accuracy":[0,5,10,15,20],
         "evade":[0,5,10,15,20],
         "resistance":{
            "wind":long50,
            "thunder":long50,
            "stun":long100
         },
         "element":Element.WIND,
         "statusEffect":Status.NONE,
         "specials":[[Equip.BOOST,Element.WIND],null,[Equip.COUNTER,Spells.backstab],null,[Equip.CAST,Spells.tempest,0.3]],
         "materials":[[Items.shuriken,2],[Items.shuriken,8],[Items.gold,3,Items.shuriken,16],[Items.mythril,1,Items.shuriken,32]]
      });
      
      public static var leafshield:Equip = new Equip({
         "SID":"leafshield",
         "type":Equip.TOYS,
         "icon":330,
         "skin":10,
         "map":[56],
         "HP":[0,0,5,10,20],
         "attack":[-50],
         "defence":[10,15,20,30,40],
         "magicAttack":[0],
         "magicDefence":[10,15,20,30,40],
         "accuracy":[0],
         "evade":[20],
         "resistance":{
            "earth":long50,
            "water":long50,
            "bio":long50
         },
         "element":Element.EARTH,
         "specials":[[Equip.BOOST_HEALING],null,[Equip.SUMMON,Summons.IdolWood,0.5],null,[Equip.STATUS,Status.REGEN,2,0.2]],
         "materials":[[Items.herb,2],[Items.herb,8,Items.root,2],[Items.root,10,Items.emerald,2],[Items.emerald,6,Items.opal,2]]
      });
      
      public static var dogsausage:Equip = new Equip({
         "SID":"dogsausage",
         "type":Equip.TOYS,
         "icon":326,
         "skin":11,
         "map":[56],
         "HP":[0],
         "attack":[5,10,20,30,40],
         "defence":[0],
         "magicAttack":[15,25,40,55,75],
         "magicDefence":[0],
         "accuracy":[0],
         "evade":[20],
         "resistance":{
            "fire":long50,
            "burn":long100,
            "freeze":long100
         },
         "element":Element.FIRE,
         "statusEffect":Status.BURN,
         "statusChance":[50,60,70,80,100],
         "statusDegree":[2,2,2,2,2],
         "specials":[[Equip.SCARE,Foe.BEASTS],[Equip.BOOST,Element.FIRE],[Equip.BOOST_FOOD],null,[Equip.BOOST_BUFFS]],
         "materials":[[Items.beer,1],[Items.crisps,2],[Items.chips,1,Summons.DogTanuki,1],[Items.chips,12,Items.beer,8]]
      });
      
      public static var bloodbank:Equip = new Equip({
         "SID":"bloodbank",
         "type":Equip.TOYS,
         "icon":339,
         "skin":12,
         "map":[56],
         "HP":[10,15,20,25,30],
         "attack":[20,30,45,60,75],
         "defence":[0],
         "magicAttack":[0,10,20,30,40],
         "magicDefence":[0],
         "accuracy":[0,5,5,10,10],
         "evade":[0],
         "resistance":{
            "poison":long100,
            "death":long100,
            "weak":long100
         },
         "element":Element.BIO,
         "statusEffect":Status.POISON,
         "statusChance":[50,60,70,80,100],
         "statusDegree":[2,2,2,2,2],
         "specials":[[Equip.BOOST,Element.BIO],null,[Equip.DRAIN_HP],null,[Equip.STATUS,Status.REGEN,2,0.3]],
         "materials":[[Items.raspberries,2],[Items.blueberries,4],[Items.cloudberries,4,Items.virus,4],[Items.darkmatter,1,Items.virus,2]]
      });
      
      public static var bookofspells:Equip = new Equip({
         "SID":"bookofspells",
         "type":Equip.TOYS,
         "icon":335,
         "skin":13,
         "map":[56],
         "HP":[0],
         "attack":[0],
         "defence":[0],
         "magicAttack":[15,25,35,45,60],
         "magicDefence":[10,20,25,30,40],
         "accuracy":[-10],
         "evade":[0],
         "resistance":{
            "ice":long50,
            "wind":long50,
            "water":long50
         },
         "element":Element.ICE,
         "statusEffect":Status.FREEZE,
         "statusChance":[30,40,50,60,75],
         "statusDegree":[2,2,2,2,2],
         "specials":[[Equip.BOOST,Element.ICE],null,[Equip.CAST,Spells.lighten,0.25],null,[Equip.SUMMON,Spells.hail,0.66]],
         "materials":[[Items.snowball,5],[Items.snowball,25],[Items.ice,20,Items.water,20],[Items.diamond,1,Items.sapphire,2]]
      });
      
      public static var turtleshell:Equip = new Equip({
         "SID":"turtleshell",
         "type":Equip.TOYS,
         "icon":334,
         "skin":14,
         "map":[56],
         "HP":[0,5,5,10,10],
         "attack":[20,35,50,65,80],
         "defence":[5,10,15,20,25],
         "magicAttack":[0],
         "magicDefence":[5,10,15,20,25],
         "accuracy":[0],
         "evade":[0],
         "resistance":{
            "water":long50,
            "wet":long100,
            "fire":long50
         },
         "element":Element.WATER,
         "specials":[[Equip.BOOST,Element.WATER],null,[Equip.CAST,Spells.pouringpike,0.4],null,[Equip.BOOST_FOOD]],
         "materials":[[Items.seashell,2],[Items.seashell,7,Items.tape,1],[Summons.CreepGreen,1,Items.seashell,12],[Items.moonpearl,2,Items.sapphire,2]]
      });
      
      public static var icecreamsandwich:Equip = new Equip({
         "SID":"icecreamsandwich",
         "type":Equip.TOYS,
         "icon":336,
         "skin":15,
         "map":[56],
         "HP":[0,5,5,10,15],
         "attack":[0],
         "defence":[5,10,15,20,30],
         "magicAttack":[10,20,30,40,50],
         "magicDefence":[5,10,15,20,30],
         "accuracy":[0],
         "evade":[0,5,5,10,10],
         "resistance":{
            "water":long50,
            "wet":long100,
            "fire":long50
         },
         "element":Element.ICE,
         "statusEffect":Status.CHILL,
         "statusChance":[50,60,70,80,100],
         "statusDegree":[2,2,2,2,2],
         "specials":[[Equip.BOOST_BUFFS],[Equip.BOOST,Element.ICE],[Equip.CAST,Spells.wafer,0.5],null,[Equip.BOOST_HEALING]],
         "materials":[[Items.snowball,2,Items.raspberries,1],[Items.cupcake,2,Items.snowball,4],[Items.moonpearl,1,Summons.SlimeIcecream,1],[Items.moonpearl,1,Summons.SlimeBigIcecream,1]]
      });
      
      public static var neonlightbulb:Equip = new Equip({
         "SID":"neonlightbulb",
         "type":Equip.TOYS,
         "icon":338,
         "skin":16,
         "map":[56],
         "HP":[0],
         "attack":[10,20,30,40,50],
         "defence":[0],
         "magicAttack":[10,20,30,40,50],
         "magicDefence":[0],
         "accuracy":[0],
         "evade":[0,10,20,35,50],
         "resistance":{
            "thunder":long50,
            "dark":long50,
            "earth":down30
         },
         "element":Element.THUNDER,
         "statusEffect":Status.STUN,
         "statusChance":[10,20,30,40,50],
         "statusDegree":[2,2,2,2,2],
         "specials":[[Equip.BOOST,Element.THUNDER],null,[Equip.CAST,Spells.plasmacage,0.25],null,[Equip.COUNTER,Spells.backstab]],
         "materials":[[Items.spring,2],[Items.glass,5],[Items.topaz,2,Items.glass,20,Items.plastic,2],[Items.topaz,7,Summons.BatThunder,1]]
      });
      
      public static var riotshield:Equip = new Equip({
         "SID":"riotshield",
         "type":Equip.TOYS,
         "icon":328,
         "skin":17,
         "map":[56],
         "HP":[30,35,40,45,50],
         "attack":[10,20,35,50,65],
         "defence":[10,20,30,40,50],
         "magicAttack":[0],
         "magicDefence":[10,20,30,40,50],
         "accuracy":[0],
         "evade":[-50],
         "resistance":{
            "dark":long50,
            "stagger":long100,
            "death":long100
         },
         "element":Element.DARK,
         "statusEffect":Status.WEAKEN,
         "statusChance":[30,50,70,85,100],
         "statusDegree":[2,2,2,2,3],
         "specials":[[Equip.BOOST,Element.DARK],null,[Equip.COUNTER,Spells.backstab],null,[Equip.SUMMON,Spells.bind,1]],
         "materials":[[Items.bomb,2],[Items.plastic,3],[Items.kevlar,2,Items.plastic,15],[Items.rune,2,Items.cpu,1,Items.kevlar,1]]
      });
      
      public static var banditblade:Equip = new Equip({
         "SID":"banditblade",
         "type":Equip.TOYS,
         "icon":341,
         "skin":18,
         "map":[56],
         "HP":[0],
         "attack":[10,20,30,45,60],
         "defence":[0],
         "magicAttack":[10,20,30,45,60],
         "magicDefence":[0],
         "accuracy":[0],
         "evade":[5,10,15,20,25],
         "resistance":{
            "wind":long50,
            "stun":long100,
            "stagger":long100
         },
         "element":Element.WATER,
         "specials":[[Equip.BOOST,Element.WATER],null,[Equip.STEAL],null,[Equip.STATUS,Status.HASTE,2,0.2]],
         "materials":[[Items.buckle,1],[Items.buckle,2,Items.leather,1],[Items.silver,4,Items.leather,4],[Items.moonpearl,2,Items.silver,4,Items.buckle,8]]
      });
      
      public static var powerpaw:Equip = new Equip({
         "SID":"powerpaw",
         "type":Equip.TOYS,
         "icon":329,
         "skin":19,
         "map":[56],
         "HP":[0,5,5,10,10],
         "attack":[20,35,45,60,75],
         "defence":[0],
         "magicAttack":[0,10,20,30,40],
         "magicDefence":[0],
         "accuracy":[5,10,15,20,25],
         "evade":[0],
         "resistance":{
            "bomb":long50,
            "thunder":long50,
            "bio":long50
         },
         "element":Element.BOMB,
         "statusEffect":Status.STAGGER,
         "statusChance":[30,35,40,45,50],
         "statusDegree":[1],
         "specials":[[Equip.BOOST,Element.BOMB],null,[Equip.CAST,Spells.bullet,0.66],null,[Equip.SUMMON,Summons.PixelIdol,0.8]],
         "materials":[[Items.spring,1,Items.tape,1],[Items.floppy,2,Items.tape,2],[Items.cpu,1,Summons.IdolMetal,1],[Items.gamechild,1,Items.cpu,1,Items.floppy,2]]
      });
      
      public static var starhammer:Equip = new Equip({
         "SID":"starhammer",
         "type":Equip.TOYS,
         "icon":337,
         "skin":20,
         "map":[56],
         "HP":[0],
         "attack":[20,40,60,80,100],
         "defence":[0,5,10,15,20],
         "magicAttack":[20,40,60,80,100],
         "magicDefence":[0,5,10,15,20],
         "accuracy":[0],
         "evade":[0],
         "resistance":{
            "fire":long50,
            "ice":long50,
            "thunder":long50
         },
         "element":Element.NONE,
         "statusEffect":Status.DISPEL,
         "statusChance":[20,40,60,80,100],
         "statusDegree":[1],
         "specials":[[Equip.BOOST,Element.NONE],null,[Equip.CAST,Spells.starpow,1],null,[Equip.SUMMON,Spells.luckystar2,1]],
         "materials":[[Items.lego,1,Items.wood,10],[Items.lego,2,Items.wood,20],[Items.grail,1,Items.gold,5],[Items.starfragment,3,Items.darkmatter,1]]
      });
      
      public static var bustersword:Equip = new Equip({
         "SID":"bustersword",
         "type":Equip.TOYS,
         "icon":320,
         "skin":21,
         "map":[56],
         "HP":[5,10,15,20,25],
         "attack":[30,40,50,60,75],
         "defence":[5,5,5,10,10],
         "magicAttack":[30,40,50,60,75],
         "magicDefence":[5,5,5,10,10],
         "accuracy":[5,5,5,10,10],
         "evade":[5,5,5,10,10],
         "resistance":{
            "fire":down30,
            "water":down30,
            "wind":down30
         },
         "element":Element.NONE,
         "specials":[[Equip.CAST,Spells.paperStars,0.2],null,[Equip.COUNTER,Spells.backstab],null,[Equip.BOOST_BUFFS]],
         "materials":[[Items.wool,2],[Items.brick,4],[Items.turd,5],[Items.snowball,1]]
      });
      
      public static var TOYS:Array = [steelbuckler,banditblade,neonlightbulb,masamune,riotshield,leafshield,starhammer,dogsausage,icecreamsandwich,godlybook,humanskull,bloodbank,vikingbuckler,turtleshell,elvenshield,pixelpopper,bookofspells,powerpaw,devilssunrise,kingsguard,bustersword];
      
      public static var captainhat:Equip = new Equip({
         "SID":"captainshat",
         "type":Equip.HAT_MALE,
         "icon":345,
         "skin":2,
         "map":[3],
         "HP":[5,5,5,5,10],
         "attack":[0],
         "defence":[0,5,10,15,20],
         "magicAttack":[0],
         "magicDefence":[0,5,10,15,20],
         "accuracy":[0],
         "evade":[0,0,0,5,10],
         "resistance":{
            "dark":long50,
            "bomb":long50
         },
         "specials":[null,null,[Equip.BOOST_STATUS]],
         "materials":[[Items.wool,1],[Items.feather,3,Items.seashell,1],[Items.satin,1,Items.seashell,6],[Items.moonpearl,1,Items.rune2,1,Items.feather,3]]
      });
      
      public static var scottishcap:Equip = new Equip({
         "SID":"scottishcap",
         "type":Equip.HAT_MALE,
         "icon":348,
         "skin":3,
         "map":[4],
         "HP":[0],
         "attack":[0],
         "defence":[0,5,10,15,20],
         "magicAttack":[0],
         "magicDefence":[0,5,10,15,20],
         "accuracy":[0],
         "evade":[0],
         "resistance":{
            "water":long50,
            "wind":long50,
            "death":long100
         },
         "specials":[[Equip.STATUS,Status.BLESS,2,0.25],null,null,null,[Equip.DEFEND_STATUS,Status.BLESS,2]],
         "materials":[[Items.wool,1],[Items.silk,1],[Items.silk,4],[Items.opal,2,Items.silk,1]]
      });
      
      public static var dragonhelm:Equip = new Equip({
         "SID":"dragonhelm",
         "type":Equip.HAT_MALE,
         "icon":349,
         "skin":4,
         "map":[9],
         "HP":[0],
         "attack":[0,5,5,5,10],
         "defence":[5,10,15,20,25],
         "magicAttack":[0,5,5,5,10],
         "magicDefence":[5,10,15,20,25],
         "accuracy":[0],
         "evade":[0],
         "resistance":{
            "fire":long50,
            "earth":long50,
            "burn":long100
         },
         "specials":[null,null,[Equip.STATUS,Status.BRAVE,2,0.15]],
         "materials":[[Items.brick,2],[Items.magma,1,Items.brick,1],[Items.topaz,1,Items.magma,2],[Items.scales,1,Items.topaz,1]]
      });
      
      public static var deathmask:Equip = new Equip({
         "SID":"deathmask",
         "type":Equip.HAT_MALE,
         "icon":361,
         "skin":5,
         "map":[10],
         "HP":[0],
         "attack":[15,20,30,40,50],
         "defence":[0],
         "magicAttack":[0],
         "magicDefence":[0],
         "accuracy":[-25],
         "evade":[-25],
         "resistance":{
            "fire":down30,
            "burn":down30
         },
         "specials":[],
         "materials":[[Items.wood,1],[Items.wood,5],[Items.spike,2,Items.root,4],[Items.darkmatter,1]]
      });
      
      public static var spacehelmet:Equip = new Equip({
         "SID":"spacehelmet",
         "type":Equip.HAT_MALE,
         "icon":359,
         "skin":6,
         "map":[27],
         "HP":[5,5,10,10,15],
         "attack":[0],
         "defence":[10,15,20,25,30],
         "magicAttack":[0],
         "magicDefence":[10,15,20,25,30],
         "accuracy":[0],
         "evade":[0],
         "resistance":{
            "poison":long100,
            "burn":long100,
            "wet":long100
         },
         "specials":[null,null,[Equip.STATUS,Status.REGEN,1,0.5]],
         "materials":[[Items.glass,1],[Items.glass,3],[Items.plastic,8,Items.satin,1],[Items.cpu,1,Items.plastic,2]]
      });
      
      public static var headband:Equip = new Equip({
         "SID":"headband",
         "type":Equip.HAT_MALE,
         "icon":360,
         "skin":7,
         "map":[11],
         "HP":[0],
         "attack":[0],
         "defence":[0,5,5,10,10],
         "magicAttack":[0],
         "magicDefence":[0,5,5,10,10],
         "accuracy":[5,10,10,15,15],
         "evade":[5,5,10,10,15],
         "resistance":{
            "fire":long50,
            "bomb":long50,
            "holy":long50
         },
         "specials":[[Equip.STATUS,Status.BRAVE,2,0.5],null,[Equip.DEFEND_BUFF,Stats.MAGIC_DEFENCE,80]],
         "materials":[[Items.wool,2],[Items.silk,1],[Items.satin,1,Items.silk,3],[Items.satin,6]]
      });
      
      public static var cardboardbox:Equip = new Equip({
         "SID":"cardboardbox",
         "type":Equip.HAT_MALE,
         "icon":351,
         "skin":8,
         "map":[5],
         "HP":[0],
         "attack":[0],
         "defence":[0,5,5,10,10],
         "magicAttack":[0,5,5,10,10],
         "magicDefence":[0,5,10,15,20],
         "accuracy":[0],
         "evade":[0],
         "resistance":{
            "thunder":long50,
            "dispel":long100,
            "syphon":long100
         },
         "specials":[[Equip.BOOST_BUFFS,10],null,null,null,[Equip.BOOST_DEBUFFS,10]],
         "materials":[[Items.wool,1],[Items.floppy,1],[Items.cpu,1],[Items.cpu,2,Items.floppy,1]]
      });
      
      public static var puppyhat:Equip = new Equip({
         "SID":"puppyhat",
         "type":Equip.HAT_MALE,
         "icon":363,
         "skin":9,
         "map":[29],
         "HP":[0,0,5,5,10],
         "attack":[0],
         "defence":[0,5,10,15,20],
         "magicAttack":[5,5,10,15,20],
         "magicDefence":[0,5,10,15,20],
         "accuracy":[0],
         "evade":[0],
         "resistance":{
            "freeze":long100,
            "stun":long100,
            "dispel":long100
         },
         "specials":[[Equip.BOOST_CATCH],null,[Equip.SUMMON,Summons.DogMaxi,0.5]],
         "materials":[[Items.fur,1],[Items.fur,2,Items.crisps,1],[Items.satin,1,Items.buckle,1,Items.fur,8],[Items.lego,1,Items.burger,2]]
      });
      
      public static var armyhelmet:Equip = new Equip({
         "SID":"armyhelmet",
         "type":Equip.HAT_MALE,
         "icon":356,
         "skin":10,
         "map":[18],
         "HP":[0],
         "attack":[0],
         "defence":[5,10,15,20,25],
         "magicAttack":[0],
         "magicDefence":[5,10,15,20,25],
         "accuracy":[0],
         "evade":[0],
         "resistance":{
            "bomb":long50,
            "stagger":long100,
            "stun":long100
         },
         "specials":[null,null,[Equip.SUMMON,Spells.medipack,1]],
         "materials":[[Items.plastic,1],[Items.plastic,2],[Items.cpu,1],[Items.lego,1,Items.plastic,4]]
      });
      
      public static var gasmask:Equip = new Equip({
         "SID":"gasmask",
         "type":Equip.HAT_MALE,
         "icon":352,
         "skin":11,
         "map":[25],
         "HP":[0,5,5,10,10],
         "attack":[0],
         "defence":[0,5,10,15,20],
         "magicAttack":[0],
         "magicDefence":[0,5,10,15,20],
         "accuracy":[-10],
         "evade":[-10],
         "resistance":{
            "bio":long100,
            "poison":long100
         },
         "specials":[null,null,[Equip.SUMMON,Spells.poisongas,0.66]],
         "materials":[[Items.glass,1],[Items.glass,2,Items.plastic,1],[Items.plastic,1,Items.cpu,1],[Items.cpu,2,Items.plastic,1]]
      });
      
      public static var spelunkinghat:Equip = new Equip({
         "SID":"spelunkinghat",
         "type":Equip.HAT_MALE,
         "icon":355,
         "skin":12,
         "map":[24],
         "HP":[0],
         "MP":[0],
         "attack":[0],
         "defence":[0,5,10,15,20],
         "magicAttack":[0],
         "magicDefence":[0,5,10,15,20],
         "accuracy":[20,25,30,35,40],
         "evade":[0,5,5,10,10],
         "resistance":{
            "dark":long50,
            "earth":long50,
            "stagger":long100
         },
         "specials":[null,null,[Equip.BOOST_CATCH],null,null],
         "materials":[[Items.wool,1],[Items.silk,1,Items.wool,2],[Items.satin,2,Items.buckle,1],[Items.satin,6,Items.buckle,2]]
      });
      
      public static var genjihelmet:Equip = new Equip({
         "SID":"genjihelmet",
         "type":Equip.HAT_MALE,
         "icon":354,
         "skin":14,
         "map":[26],
         "HP":[0],
         "attack":[5,5,10,15,20],
         "defence":[5,10,15,20,25],
         "magicAttack":[0],
         "magicDefence":[0],
         "accuracy":[0],
         "evade":[5,5,5,5,5],
         "resistance":{
            "earth":long50,
            "wind":long50
         },
         "specials":[null,null,null,null,[Equip.DEFEND_STATUS,Status.GOOD_LUCK,3]],
         "materials":[[Items.shuriken,1],[Items.shuriken,4],[Items.kevlar,1,Items.buckle,1],[Items.kevlar,2]]
      });
      
      public static var pumpkinhead:Equip = new Equip({
         "SID":"pumpkinhead",
         "type":Equip.HAT_MALE,
         "icon":364,
         "skin":15,
         "map":[31],
         "HP":[0],
         "attack":[0],
         "defence":[5,10,15,20,25],
         "magicAttack":[0],
         "magicDefence":[5,10,15,20,25],
         "accuracy":[0],
         "evade":[0],
         "resistance":{
            "holy":long50,
            "bio":long50,
            "curse":long100
         },
         "specials":[[Equip.INTIMIDATE],null,null,[Equip.SUMMON,Summons.BatBlood,0.8]],
         "materials":[[Items.pumpkin,1],[Items.pumpkin,4],[Items.watermelon,6],[Items.dragonfruit,8,Items.pumpkin,8]]
      });
      
      public static var wizardhat:Equip = new Equip({
         "SID":"wizardhat",
         "type":Equip.HAT_MALE,
         "icon":358,
         "skin":16,
         "map":[15],
         "HP":[0],
         "attack":[0],
         "defence":[0],
         "magicAttack":[5,10,15,20,25],
         "magicDefence":[5,10,15,20,25],
         "accuracy":[0],
         "evade":[0],
         "resistance":{
            "holy":long50,
            "syphon":long100,
            "dispel":long100
         },
         "specials":[[Equip.BOOST_HEALING]],
         "materials":[[Items.wool,1],[Items.wool,2,Items.buckle,1],[Items.satin,2,Items.buckle,1],[Items.satin,6,Items.silk,1,Items.herb,1]]
      });
      
      public static var baskethat:Equip = new Equip({
         "SID":"baskethat",
         "type":Equip.HAT_MALE,
         "icon":350,
         "skin":17,
         "map":[13],
         "HP":[0],
         "attack":[0],
         "defence":[0,5,10,10,10],
         "magicAttack":[0],
         "magicDefence":[0,5,5,10,10],
         "accuracy":[5,10,15,20,25],
         "evade":[5,10,15,20,25],
         "resistance":{
            "weak":long100,
            "death":long100,
            "thunder":long50
         },
         "specials":[null,null,[Equip.BOOST_THROWS]],
         "materials":[[Items.shuriken,1],[Items.shuriken,2,Items.herb,1],[Items.leather,4,Items.butterflywing,2],[Items.kevlar,2,Items.butterflywing,2]]
      });
      
      public static var hornedhelmet:Equip = new Equip({
         "SID":"hornedhelmet",
         "type":Equip.HAT_MALE,
         "icon":357,
         "skin":18,
         "map":[22],
         "HP":[0],
         "attack":[10,15,20,25,30],
         "defence":[5,10,15,20,25],
         "magicAttack":[-20],
         "magicDefence":[5,10,15,20,25],
         "accuracy":[0],
         "evade":[0],
         "resistance":{
            "ice":long50,
            "wind":long50
         },
         "specials":[[Equip.STATUS,Status.BERSERK,1,2]],
         "materials":[[Items.iron,1],[Items.claw,1],[Items.spike,3,Items.beer,1],[Items.spike,8,Items.beer,2]]
      });
      
      public static var santahat:Equip = new Equip({
         "SID":"santahat",
         "type":Equip.HAT_MALE,
         "icon":365,
         "skin":19,
         "map":[14],
         "HP":[0,0,0,5,10],
         "attack":[0],
         "defence":[0,5,10,15,20],
         "magicAttack":[0,0,0,5,10],
         "magicDefence":[0,5,10,15,20],
         "accuracy":[0],
         "evade":[0],
         "resistance":{
            "ice":long50,
            "freeze":long100,
            "holy":long50
         },
         "specials":[[Equip.SUMMON,Spells.present,1.5],null,null,null,[Equip.BOOST_FOOD]],
         "materials":[[Items.wool,1,Items.snowball,1],[Items.silk,1,Items.snowball,1],[Items.satin,2,Items.snowball,1],[Items.satin,7,Items.snowball,5]]
      });
      
      public static var knighthelmet:Equip = new Equip({
         "SID":"knightshelmet",
         "type":Equip.HAT_MALE,
         "icon":347,
         "skin":13,
         "map":[20],
         "HP":[5,5,5,10,15],
         "attack":[0],
         "defence":[15,20,25,30,40],
         "magicAttack":[0],
         "magicDefence":[5,10,15,20,25],
         "accuracy":[0],
         "evade":[0],
         "resistance":{
            "fire":down30,
            "water":down30,
            "thunder":long50
         },
         "specials":[null,null,[Equip.SUMMON,Summons.CatWarrior,0.66]],
         "materials":[[Items.iron,1],[Items.steel,1],[Items.silver,3,Items.steel,2],[Items.silver,8,Items.steel,2]]
      });
      
      public static var officerhat:Equip = new Equip({
         "SID":"officershat",
         "type":Equip.HAT_MALE,
         "icon":346,
         "skin":20,
         "map":[8],
         "HP":[0],
         "attack":[0,0,5,10,15],
         "defence":[0,5,5,10,10],
         "magicAttack":[0,0,5,10,15],
         "magicDefence":[0,5,10,10,10],
         "accuracy":[0],
         "evade":[0],
         "resistance":{
            "dark":long50,
            "thunder":long50,
            "fire":long50
         },
         "specials":[null,null,null,null,[Equip.SUMMON,Spells.tankcannon,0.66]],
         "materials":[[Items.wool,1],[Items.silk,1],[Items.satin,1,Items.silk,4],[Items.satin,5,Items.powder,10,Items.bomb,10]]
      });
      
      public static var spartanhelmet:Equip = new Equip({
         "SID":"spartanhelmet",
         "type":Equip.HAT_MALE,
         "icon":362,
         "skin":21,
         "map":[33],
         "HP":[0,5,5,10,10],
         "attack":[0],
         "defence":[5,10,15,20,25],
         "magicAttack":[0],
         "magicDefence":[5,10,15,20,25],
         "accuracy":[0],
         "evade":[0],
         "resistance":{
            "fire":long50,
            "death":long100
         },
         "specials":[[Equip.DEFEND_BUFF,Stats.HP,20],null,[Equip.STATUS,Status.MORALE,2,0.5]],
         "materials":[[Items.iron,1],[Items.buckle,1],[Items.gold,1,Items.buckle,1],[Items.gold,3,Items.amber,1]]
      });
      
      public static var skullhelmet:Equip = new Equip({
         "SID":"necromandershelmet",
         "type":Equip.HAT_MALE,
         "icon":353,
         "skin":22,
         "map":[32],
         "HP":[0],
         "attack":[10,15,20,25,30],
         "defence":[10,15,20,25,30],
         "magicAttack":[10,15,20,25,30],
         "magicDefence":[10,15,20,25,30],
         "accuracy":[0],
         "evade":[0],
         "resistance":{
            "holy":down30,
            "fire":down30
         },
         "specials":[[Equip.STATUS,Status.CURSE,2,0.5]],
         "materials":[[Items.seashell,1],[Items.claw,1],[Items.spike,2,Items.gems,2],[Items.spike,5,Items.rune,1]]
      });
      
      public static var MALE_HATS:Array = [captainhat,knighthelmet,hornedhelmet,spartanhelmet,genjihelmet,baskethat,dragonhelm,armyhelmet,officerhat,spacehelmet,scottishcap,spelunkinghat,wizardhat,headband,skullhelmet,cardboardbox,gasmask,deathmask,puppyhat,pumpkinhead,santahat];
      
      public static var bunnyears:Equip = new Equip({
         "SID":"bunnyears",
         "type":Equip.HAT_FEMALE,
         "icon":400,
         "skin":2,
         "map":[34],
         "HP":[0],
         "attack":[0],
         "defence":[0],
         "magicAttack":[0],
         "magicDefence":[0],
         "accuracy":[0],
         "evade":[10,15,20,25,35],
         "resistance":{
            "stun":long100,
            "stagger":long100
         },
         "specials":[[Equip.STATUS,Status.HASTE,2,0.125],null,[Equip.DEFEND_BUFF,Stats.EVADE,30],null,[Equip.BOOST_CATCH]],
         "materials":[[Items.feather,1],[Items.silk,1,Items.feather,1],[Items.silk,2,Items.amber,4],[Items.moonpearl,1,Items.silk,2]]
      });
      
      public static var redribbon:Equip = new Equip({
         "SID":"redribbon",
         "type":Equip.HAT_FEMALE,
         "icon":395,
         "skin":3,
         "map":[35],
         "HP":[0],
         "attack":[0,0,0,5,10],
         "defence":[0,5,10,15,20],
         "magicAttack":[0,0,0,5,10],
         "magicDefence":[0,5,10,15,20],
         "accuracy":[0],
         "evade":[0],
         "resistance":{
            "fire":long50,
            "ice":long50,
            "thunder":long50
         },
         "specials":[null,null,null,null,[Equip.STATUS,Status.AUTOLIFE,2,0.15]],
         "materials":[[Items.wool,1],[Items.silk,1],[Items.satin,1,Items.gems,10],[Items.satin,3,Items.gems,20]]
      });
      
      public static var catears:Equip = new Equip({
         "SID":"kittyears",
         "type":Equip.HAT_FEMALE,
         "icon":405,
         "skin":4,
         "map":[36],
         "HP":[0],
         "attack":[0],
         "defence":[0,5,5,10,10],
         "magicAttack":[0],
         "magicDefence":[0,5,5,10,10],
         "accuracy":[5,5,10,10,15],
         "evade":[5,5,10,10,15],
         "resistance":{
            "curse":long100,
            "weak":long100
         },
         "specials":[null,[Equip.DEFEND_STATUS,Status.GOOD_LUCK,3],null,[Equip.SUMMON,Summons.CatWizard,1]],
         "materials":[[Items.shuriken,1],[Items.powder,2,Items.wool,1],[Items.satin,2,Items.powder,2],[Items.rune,1,Items.satin,3]]
      });
      
      public static var cowhorns:Equip = new Equip({
         "SID":"curlyhorns",
         "type":Equip.HAT_FEMALE,
         "icon":404,
         "skin":5,
         "map":[37],
         "HP":[0,5,5,10,15],
         "attack":[0],
         "defence":[0,5,10,15,20],
         "magicAttack":[0],
         "magicDefence":[0,5,10,15,20],
         "accuracy":[0],
         "evade":[0],
         "resistance":{
            "dispel":long100,
            "syphon":long100,
            "stagger":long100
         },
         "specials":[null,null,[Equip.DEFEND_BUFF,Stats.DEFENCE,80],null,[Equip.BOOST_CATCH]],
         "materials":[[Items.brick,1],[Items.coffee,1],[Items.coffee,3,Items.spike,2],[Items.coffee,10,Items.spike,6]]
      });
      
      public static var nursehat:Equip = new Equip({
         "SID":"nursehat",
         "type":Equip.HAT_FEMALE,
         "icon":399,
         "skin":6,
         "map":[38],
         "HP":[0,0,0,0,5],
         "attack":[0],
         "defence":[0,5,10,15,20],
         "magicAttack":[0,0,0,0,5],
         "magicDefence":[0,5,10,15,20],
         "accuracy":[0],
         "evade":[0],
         "resistance":{
            "stun":long100,
            "death":long100,
            "dark":long50
         },
         "specials":[[Equip.BOOST_HEALING],null,[Equip.SUMMON,Spells.heal,0.66]],
         "materials":[[Items.apple,1],[Items.cupcake,1],[Items.coffee,2,Items.satin,2],[Items.lego,1,Items.burger,2]]
      });
      
      public static var iceshards:Equip = new Equip({
         "SID":"iceshards",
         "type":Equip.HAT_FEMALE,
         "icon":396,
         "skin":7,
         "map":[39],
         "HP":[0],
         "attack":[0],
         "defence":[5,10,15,20,25],
         "magicAttack":[0],
         "magicDefence":[5,10,15,20,25],
         "accuracy":[0],
         "evade":[0,5,10,15,20],
         "resistance":{
            "ice":long50,
            "fire":long50,
            "freeze":long100
         },
         "specials":[null,null,[Equip.SUMMON,Summons.CreepIcicle,0.6]],
         "materials":[[Items.snowball,2],[Items.water,1],[Items.water,6,Items.ice,6],[Items.sapphire,4,Items.water,7]]
      });
      
      public static var leafclip:Equip = new Equip({
         "SID":"leafyhairclip",
         "type":Equip.HAT_FEMALE,
         "icon":401,
         "skin":8,
         "map":[40],
         "HP":[0],
         "MP":[0],
         "attack":[5,5,5,10,10],
         "defence":[0,5,10,15,20],
         "magicAttack":[5,5,5,10,10],
         "magicDefence":[0,5,10,15,20],
         "accuracy":[0],
         "evade":[0],
         "resistance":{
            "bio":long50,
            "earth":long50,
            "poison":long100
         },
         "specials":[null,null,[Equip.DEFEND_STATUS,Status.BLESS,2],null,[Equip.SUMMON,Summons.WraithLeaf,0.33]],
         "materials":[[Items.herb,1],[Items.herb,2,Items.flower,2],[Items.flower,8,Items.amber,6],[Items.emerald,3,Items.amber,3]]
      });
      
      public static var robotears:Equip = new Equip({
         "SID":"robotears",
         "type":Equip.HAT_FEMALE,
         "icon":413,
         "skin":9,
         "map":[41],
         "HP":[0],
         "MP":[0],
         "attack":[0,5,5,10,15],
         "defence":[5,5,10,15,20],
         "magicAttack":[0,5,5,10,15],
         "magicDefence":[5,5,10,15,20],
         "accuracy":[10,15,20,25,30],
         "evade":[0],
         "resistance":{
            "bio":long50,
            "bomb":long50,
            "thunder":down30
         },
         "specials":[[Equip.SUMMON,Summons.CatSniper,1]],
         "materials":[[Items.spring,1],[Items.tape,2],[Items.cpu,1,Items.floppy,1],[Items.cpu,2]]
      });
      
      public static var rubberduck:Equip = new Equip({
         "SID":"rubberduck",
         "type":Equip.HAT_FEMALE,
         "icon":403,
         "skin":10,
         "map":[42],
         "HP":[5,5,5,5,10],
         "attack":[0,5,5,10,10],
         "defence":[0,5,5,10,10],
         "magicAttack":[0],
         "magicDefence":[0],
         "accuracy":[0],
         "evade":[0],
         "resistance":{
            "water":long50,
            "fire":long50,
            "burn":long100
         },
         "specials":[[Equip.BOOST_BUFFS,10],null,null,null,[Equip.BOOST_DEBUFFS,10]],
         "materials":[[Items.feather,1],[Items.ice,1],[Items.ice,8],[Items.moonpearl,1,Items.ice,8]]
      });
      
      public static var darkbauble:Equip = new Equip({
         "SID":"darkbobble",
         "type":Equip.HAT_FEMALE,
         "icon":409,
         "skin":11,
         "map":[43],
         "HP":[0],
         "attack":[0],
         "defence":[0],
         "magicAttack":[10,15,20,25,30],
         "magicDefence":[10,15,20,25,30],
         "accuracy":[0],
         "evade":[0],
         "resistance":{
            "dark":long50,
            "syphon":long100
         },
         "specials":[null,null,[Equip.DEFEND_BUFF,Stats.MAGIC_ATTACK,80]],
         "materials":[[Items.powder,1],[Items.powder,3],[Items.rune,1],[Items.rune,2,Items.opal,1]]
      });
      
      public static var popehat:Equip = new Equip({
         "SID":"popehat",
         "type":Equip.HAT_FEMALE,
         "icon":397,
         "skin":12,
         "map":[53],
         "HP":[0],
         "attack":[0],
         "defence":[0],
         "magicAttack":[0],
         "magicDefence":[20,30,40,50,60],
         "accuracy":[0],
         "evade":[0],
         "resistance":{
            "holy":long50,
            "water":long50,
            "curse":long100
         },
         "specials":[[Equip.SCARE,Foe.GHOSTS]],
         "materials":[[Items.wool,1],[Items.silk,1,Items.butterflywing,1],[Items.satin,1,Items.gold,1],[Items.satin,3,Items.gold,3]]
      });
      
      public static var hollyhairpin:Equip = new Equip({
         "SID":"hollyhairpin",
         "type":Equip.HAT_FEMALE,
         "icon":415,
         "skin":13,
         "map":[49],
         "HP":[0],
         "MP":[0],
         "attack":[0,5,5,10,10],
         "defence":[5,10,15,20,25],
         "magicAttack":[0,5,5,10,10],
         "magicDefence":[5,10,15,20,25],
         "accuracy":[0],
         "evade":[0],
         "resistance":{
            "holy":long50,
            "dispel":long100,
            "freeze":long100
         },
         "specials":[[Equip.SUMMON,Spells.candycane,1],null,null,null,[Equip.BOOST_FOOD]],
         "materials":[[Items.snowball,2],[Items.snowball,8],[Items.satin,1,Items.silk,4],[Items.lego,1,Items.satin,1]]
      });
      
      public static var flowerbobble:Equip = new Equip({
         "SID":"flowerbobble",
         "type":Equip.HAT_FEMALE,
         "icon":411,
         "skin":14,
         "map":[51],
         "HP":[0],
         "MP":[0],
         "attack":[0],
         "defence":[0,5,10,15,20],
         "magicAttack":[0],
         "magicDefence":[5,10,15,20,25],
         "accuracy":[0],
         "evade":[0,0,0,5,10],
         "resistance":{
            "earth":long50,
            "weak":long100,
            "holy":long50
         },
         "specials":[null,[Equip.STATUS,Status.LOVED,1,0.3],null,[Equip.SUMMON,Spells.remedy,0.66]],
         "materials":[[Items.flower,1],[Items.flower,3],[Items.rune2,3],[Items.opal,1,Items.rune2,2]]
      });
      
      public static var drillbits:Equip = new Equip({
         "SID":"drillbits",
         "type":Equip.HAT_FEMALE,
         "icon":398,
         "skin":15,
         "map":[52],
         "HP":[0],
         "MP":[0],
         "attack":[15,20,25,30,35],
         "defence":[15,20,25,30,35],
         "magicAttack":[0],
         "magicDefence":[0],
         "accuracy":[0],
         "evade":[0],
         "resistance":{
            "earth":long50,
            "thunder":down30,
            "stun":down30
         },
         "specials":[null],
         "materials":[[Items.turd,2],[Items.turd,4,Items.iron,3],[Items.silver,3,Items.steel,4],[Items.silver,8]]
      });
      
      public static var spiderbobble:Equip = new Equip({
         "SID":"spiderbobble",
         "type":Equip.HAT_FEMALE,
         "icon":414,
         "skin":16,
         "map":[48],
         "HP":[0],
         "attack":[0,5,5,10,10],
         "defence":[5,5,10,15,20],
         "magicAttack":[0,5,5,10,10],
         "magicDefence":[5,5,10,15,20],
         "accuracy":[0],
         "evade":[0,5,5,10,10],
         "resistance":{
            "death":long100,
            "dark":long50,
            "curse":long100
         },
         "specials":[[Equip.INTIMIDATE],null,[Equip.SUMMON,Spells.spiders,0.66]],
         "materials":[[Items.powder,1],[Items.powder,3],[Items.virus,6],[Items.virus,6,Items.rune,2]]
      });
      
      public static var royalcrown:Equip = new Equip({
         "SID":"royalcrown",
         "type":Equip.HAT_FEMALE,
         "icon":402,
         "skin":17,
         "map":[47],
         "HP":[0],
         "MP":[0],
         "attack":[5,10,10,15,20],
         "defence":[0,5,5,10,10],
         "magicAttack":[5,10,10,15,20],
         "magicDefence":[0,5,5,10,10],
         "accuracy":[0],
         "evade":[0],
         "resistance":{
            "thunder":long50,
            "water":long50
         },
         "specials":[null,null,[Equip.STATUS,Status.BRAVE,2,0.15]],
         "materials":[[Items.silver,1],[Items.gold,1],[Items.gold,1,Items.gems,1],[Items.gold,1,Items.sapphire,2]]
      });
      
      public static var slimebunny:Equip = new Equip({
         "SID":"slimebunny",
         "type":Equip.HAT_FEMALE,
         "icon":407,
         "skin":18,
         "map":[56],
         "HP":[10,15,20,25,30],
         "MP":[0],
         "attack":[0],
         "defence":[5,5,10,15,20],
         "magicAttack":[0],
         "magicDefence":[5,5,10,15,20],
         "accuracy":[0],
         "evade":[0],
         "resistance":{
            "death":down30,
            "dark":down30,
            "curse":long100
         },
         "specials":[[Equip.STATUS,Status.REGEN,2,0.15],null,null,null,[Equip.SUMMON,Spells.cleanse,1]],
         "materials":[[Items.flower,1],[Items.flower,3],[Items.amber,10],[Items.moonpearl,1,Items.cupcake,5]]
      });
      
      public static var furhat:Equip = new Equip({
         "SID":"furhat",
         "type":Equip.HAT_FEMALE,
         "icon":406,
         "skin":19,
         "map":[55],
         "HP":[0,5,5,10,10],
         "MP":[0],
         "attack":[0],
         "defence":[10,15,20,25,30],
         "magicAttack":[0],
         "magicDefence":[10,15,20,25,30],
         "accuracy":[0],
         "evade":[0],
         "resistance":{
            "ice":long50,
            "water":long50,
            "wind":long50
         },
         "specials":[null,null,[Equip.SUMMON,Summons.MammothWooly,0.15]],
         "materials":[[Items.fur,1],[Items.fur,3],[Items.fur,20],[Items.satin,4,Items.fur,20]]
      });
      
      public static var blueelephant:Equip = new Equip({
         "SID":"blueelephant",
         "type":Equip.HAT_FEMALE,
         "icon":408,
         "skin":20,
         "map":[54],
         "HP":[10,15,15,20,20],
         "attack":[0,0,0,0,5],
         "defence":[0],
         "magicAttack":[0,0,0,0,5],
         "magicDefence":[0],
         "accuracy":[0],
         "evade":[0],
         "resistance":{
            "bomb":long50,
            "water":long50,
            "bio":long50
         },
         "specials":[null,null,[Equip.BOOST_STATUS],null,[Equip.SUMMON,Summons.MammothWar,0.15]],
         "materials":[[Items.tape,2],[Items.pretzel,2],[Items.burger,1],[Items.gamechild,1]]
      });
      
      public static var ninjachopsticks:Equip = new Equip({
         "SID":"ninjachopsticks",
         "type":Equip.HAT_FEMALE,
         "icon":412,
         "skin":21,
         "map":[46],
         "HP":[0],
         "attack":[0],
         "defence":[0,5,10,10,10],
         "magicAttack":[0],
         "magicDefence":[0,5,5,10,10],
         "accuracy":[5,10,15,20,25],
         "evade":[5,10,15,20,25],
         "resistance":{
            "weak":long100,
            "wind":long50,
            "thunder":long50
         },
         "specials":[null,null,[Equip.BOOST_THROWS]],
         "materials":[[Items.shuriken,1],[Items.shuriken,4],[Items.shuriken,8,Items.silver,3],[Items.rune,3,Items.shuriken,2]]
      });
      
      public static var orangebauble:Equip = new Equip({
         "SID":"fierybobble",
         "type":Equip.HAT_FEMALE,
         "icon":410,
         "skin":22,
         "map":[44],
         "HP":[0],
         "attack":[0],
         "defence":[5,5,5,10,10],
         "magicAttack":[5,5,5,10,10],
         "magicDefence":[0,5,10,15,25],
         "accuracy":[0],
         "evade":[5,5,5,10,10],
         "resistance":{
            "fire":long50,
            "thunder":long50,
            "holy":long50
         },
         "specials":[null,null,[Equip.SUMMON,Summons.GloopWood,0.25]],
         "materials":[[Items.geode,1],[Items.amber,1],[Items.amber,7],[Items.magma,7,Items.amber,7]]
      });
      
      public static var FEMALE_HATS:Array = [redribbon,orangebauble,nursehat,furhat,popehat,leafclip,cowhorns,catears,flowerbobble,darkbauble,slimebunny,ninjachopsticks,robotears,drillbits,bunnyears,iceshards,royalcrown,rubberduck,blueelephant,spiderbobble,hollyhairpin];
      
      public static var hoboclothes:Equip = new Equip({
         "SID":"hoboclothes",
         "type":Equip.ARMOR_MALE,
         "icon":370,
         "skin":2,
         "map":[2,12,2],
         "HP":[0],
         "attack":[0,5,5,10,10],
         "defence":[5,10,15,20,25],
         "magicAttack":[0,5,5,10,10],
         "magicDefence":[5,10,15,20,25],
         "accuracy":[0],
         "evade":[5,5,5,5,10],
         "resistance":{
            "stun":long100,
            "bio":long50,
            "death":long100
         },
         "specials":[null,null,[Equip.BOOST,Element.EARTH],[Equip.STEAL],[Equip.BOOST_DEBUFFS]],
         "materials":[[Items.wool,1,Items.turd,1],[Items.wool,4,Items.turd,4],[Items.leather,12,Items.virus,3],[Items.kevlar,2,Items.leather,4]]
      });
      
      public static var shellarmor:Equip = new Equip({
         "SID":"shellarmor",
         "type":Equip.ARMOR_MALE,
         "icon":376,
         "skin":3,
         "map":[8,17,2],
         "HP":[0],
         "attack":[0],
         "defence":[10,15,25,30,40],
         "magicAttack":[0,5,5,10,10],
         "magicDefence":[10,20,25,30,40],
         "accuracy":[0],
         "evade":[0],
         "resistance":{
            "holy":long100,
            "dispel":long100
         },
         "specials":[[Equip.BOOST,Element.HOLY],null,[Equip.DEFEND_STATUS,Status.ENCHANTED,1]],
         "materials":[[Items.gems,1],[Items.silver,1],[Items.gold,2,Items.silver,1],[Items.gold,5,Items.ruby,1]]
      });
      
      public static var coatofteeth:Equip = new Equip({
         "SID":"coatofteeth",
         "type":Equip.ARMOR_MALE,
         "icon":389,
         "skin":4,
         "map":[11,8,2],
         "HP":[0],
         "attack":[0],
         "defence":[0,5,10,15,20],
         "magicAttack":[5,10,15,20,25],
         "magicDefence":[0,5,10,15,20],
         "accuracy":[0],
         "evade":[10],
         "resistance":{
            "dark":long50,
            "curse":long100,
            "death":long100
         },
         "specials":[[Equip.BOOST,Element.DARK],null,[Equip.BOOST_DEBUFFS,10],null,[Equip.SUMMON,Spells.arcadeTeeth,0.6]],
         "materials":[[Items.claw,1],[Items.claw,2],[Items.spike,1,Items.rune,1],[Items.rune,4]]
      });
      
      public static var explorersjacket:Equip = new Equip({
         "SID":"explorersjacket",
         "type":Equip.ARMOR_MALE,
         "icon":378,
         "skin":5,
         "map":[4,11,2],
         "HP":[0],
         "attack":[0],
         "defence":[10,15,20,25,30],
         "magicAttack":[0],
         "magicDefence":[10,15,20,25,30],
         "accuracy":[20,25,30,40,50],
         "evade":[0],
         "resistance":{
            "poison":long100,
            "bio":long50,
            "wet":long100
         },
         "specials":[[Equip.BOOST,Element.BIO],null,[Equip.BOOST_CATCH]],
         "materials":[[Items.wool,2],[Items.silk,2],[Items.kevlar,1,Items.buckle,4],[Items.kevlar,3,Items.buckle,4]]
      });
      
      public static var spaceace:Equip = new Equip({
         "SID":"spaceace",
         "type":Equip.ARMOR_MALE,
         "icon":384,
         "skin":6,
         "map":[25,15,14],
         "HP":[5,5,5,10,15],
         "attack":[0],
         "defence":[10,15,20,30,40],
         "magicAttack":[0],
         "magicDefence":[10,15,20,30,40],
         "accuracy":[0],
         "evade":[0],
         "resistance":{
            "weight":long100,
            "stun":long100,
            "freeze":long100
         },
         "specials":[[Equip.BOOST,Element.THUNDER],null,[Equip.SUMMON,Spells.flare,0.6],null,[Equip.DEFEND_STATUS,Status.REGEN,3]],
         "materials":[[Items.tape,2],[Items.plastic,2],[Items.kevlar,1,Items.plastic,2],[Items.kevlar,1,Items.lego,1,Items.plastic,4]]
      });
      
      public static var spartancuirass:Equip = new Equip({
         "SID":"spartancuirass",
         "type":Equip.ARMOR_MALE,
         "icon":374,
         "skin":7,
         "map":[27,15,2],
         "HP":[5,5,10,10,15],
         "attack":[0],
         "defence":[10,15,25,30,40],
         "magicAttack":[0],
         "magicDefence":[10,20,25,30,40],
         "accuracy":[5],
         "evade":[5],
         "resistance":{
            "bomb":long50,
            "weak":long100
         },
         "specials":[null,[Equip.DEFEND_BUFF,Stats.DEFENCE,80],null,[Equip.SUMMON,Summons.FallenCrucified,0.25],[Equip.BOOST,Element.FIRE]],
         "materials":[[Items.iron,2],[Items.silver,1],[Items.silver,2,Items.gold,1],[Items.gold,6,Items.buckle,4]]
      });
      
      public static var flamesuit:Equip = new Equip({
         "SID":"flamesuit",
         "type":Equip.ARMOR_MALE,
         "icon":377,
         "skin":8,
         "map":[23,4,2],
         "HP":[0],
         "attack":[0],
         "defence":[5,10,15,25,30],
         "magicAttack":[0],
         "magicDefence":[5,10,20,25,30],
         "accuracy":[0],
         "evade":[0],
         "resistance":{
            "fire":long100,
            "burn":long100
         },
         "specials":[[Equip.BOOST,Element.WATER],[Equip.BOOST_STATUS],null,[Equip.BOOST_BUFFS,10],null],
         "materials":[[Items.tape,2],[Items.plastic,2],[Items.kevlar,1,Items.buckle,2],[Items.kevlar,3,Items.plastic,2]]
      });
      
      public static var dragonarmor:Equip = new Equip({
         "SID":"dragonarmor",
         "type":Equip.ARMOR_MALE,
         "icon":385,
         "skin":9,
         "map":[22,9,2],
         "HP":[0],
         "attack":[0,0,5,10,10],
         "defence":[10,15,20,25,35],
         "magicAttack":[0,0,5,10,10],
         "magicDefence":[10,15,20,25,35],
         "accuracy":[0,0,0,0,5],
         "evade":[0,0,0,0,5],
         "resistance":{
            "ice":long50,
            "thunder":long50,
            "fire":long50
         },
         "specials":[[Equip.BOOST,Element.FIRE],[Equip.STATUS,Status.GOOD_LUCK,2,0.5],null],
         "materials":[[Items.brick,2],[Items.brick,8,Items.magma,1],[Items.gold,1,Items.magma,6],[Items.scales,1,Items.gold,1]]
      });
      
      public static var officercoat:Equip = new Equip({
         "SID":"officerscoat",
         "type":Equip.ARMOR_MALE,
         "icon":379,
         "skin":10,
         "map":[21,8,2],
         "HP":[0],
         "attack":[0,5,5,10,10],
         "defence":[5,10,15,25,30],
         "magicAttack":[0,5,5,10,10],
         "magicDefence":[5,10,20,25,30],
         "accuracy":[0],
         "evade":[0],
         "resistance":{
            "dark":long50,
            "thunder":long50,
            "fire":long50
         },
         "specials":[[Equip.BOOST,Element.DARK],null,[Equip.SUMMON,Spells.tankgun,0.45]],
         "materials":[[Items.wool,2],[Items.silk,1,Items.bomb,3],[Items.satin,2,Items.rune,1],[Items.satin,6,Items.rune,2,Items.bomb,6]]
      });
      
      public static var scottishkilt:Equip = new Equip({
         "SID":"scottishkilt",
         "type":Equip.ARMOR_MALE,
         "icon":387,
         "skin":11,
         "map":[19,10,2],
         "HP":[0],
         "attack":[5,5,10,10,15],
         "defence":[5,10,15,25,30],
         "magicAttack":[0],
         "magicDefence":[5,10,20,25,30],
         "accuracy":[5,5,10,10,15],
         "evade":[0,5,5,10,15],
         "resistance":{
            "earth":long50,
            "wet":long100,
            "ice":down30
         },
         "specials":[null,[Equip.STATUS,Status.MORALE,2,0.5],null,[Equip.SUMMON,Spells.rain,0.66],null],
         "materials":[[Items.wool,2],[Items.geode,4],[Items.satin,2,Items.buckle,4,Items.geode,4],[Items.opal,2,Items.buckle,2]]
      });
      
      public static var heroicarmor:Equip = new Equip({
         "SID":"heroicarmor",
         "type":Equip.ARMOR_MALE,
         "icon":373,
         "skin":12,
         "map":[10,16,2],
         "HP":[0,0,0,5,10],
         "attack":[0],
         "defence":[10,20,40,50,65],
         "magicAttack":[0],
         "magicDefence":[10,15,20,30,45],
         "accuracy":[0],
         "evade":[-20],
         "resistance":{
            "fire":down30,
            "water":down30,
            "thunder":long100
         },
         "specials":[[Equip.BOOST,Element.NONE],null,[Equip.STATUS,Status.DEFEND,1,0.33],null,null],
         "materials":[[Items.steel,1],[Items.steel,3],[Items.silver,6,Items.steel,8],[Items.titanium,1]]
      });
      
      public static var camojacket:Equip = new Equip({
         "SID":"camojacket",
         "type":Equip.ARMOR_MALE,
         "icon":380,
         "skin":13,
         "map":[5,12,2],
         "HP":[0],
         "MP":[0],
         "attack":[0],
         "defence":[10,15,20,25,30],
         "magicAttack":[0],
         "magicDefence":[10,15,20,25,30],
         "accuracy":[0],
         "evade":[0,5,10,15,20],
         "resistance":{
            "bomb":long50,
            "stagger":long100
         },
         "specials":[[Equip.BOOST,Element.BOMB],null,[Equip.SUMMON,Spells.airstrike1,1]],
         "materials":[[Items.turd,2],[Items.turd,2,Items.cactus,2,Items.root,2],[Items.kevlar,1,Items.floppy,3],[Items.kevlar,3,Items.bomb,4]]
      });
      
      public static var priesttunic:Equip = new Equip({
         "SID":"prieststunic",
         "type":Equip.ARMOR_MALE,
         "icon":375,
         "skin":14,
         "map":[15,11,2],
         "HP":[5,5,5,5,10],
         "attack":[-10],
         "defence":[5,10,15,25,30],
         "magicAttack":[0],
         "magicDefence":[20,25,30,35,40],
         "accuracy":[0],
         "evade":[10],
         "resistance":{
            "holy":long50,
            "dark":long50,
            "poison":long100
         },
         "specials":[[Equip.BOOST_HEALING],[Equip.BOOST,Element.HOLY],null,null,[Equip.STATUS,Status.AUTOLIFE,1,0.3]],
         "materials":[[Items.feather,2],[Items.feather,6,Items.buckle,1],[Items.silk,4,Items.silver,2],[Items.moonpearl,1,Items.silver,4]]
      });
      
      public static var wizardcloak:Equip = new Equip({
         "SID":"wizardrobe",
         "type":Equip.ARMOR_MALE,
         "icon":388,
         "skin":15,
         "map":[14,10,2],
         "HP":[-10],
         "attack":[-20],
         "defence":[0,5,10,15,20],
         "magicAttack":[15,20,25,30,45],
         "magicDefence":[0,5,10,15,20],
         "accuracy":[10],
         "evade":[0],
         "resistance":{
            "dispel":long100,
            "syphon":long100
         },
         "specials":[null,null,[Equip.DEFEND_BUFF,Stats.MAGIC_ATTACK,80]],
         "materials":[[Items.wool,2],[Items.butterflywing,3],[Items.satin,2,Items.gems,2],[Items.ruby,3,Items.emerald,3,Items.sapphire,3]]
      });
      
      public static var genjiarmor:Equip = new Equip({
         "SID":"genjiarmor",
         "type":Equip.ARMOR_MALE,
         "icon":382,
         "skin":16,
         "map":[16,9,2],
         "HP":[0],
         "attack":[5,5,10,15,20],
         "defence":[10,20,30,35,40],
         "magicAttack":[0],
         "magicDefence":[0,0,5,5,10],
         "accuracy":[0],
         "evade":[0],
         "resistance":{
            "earth":long50,
            "wind":long50
         },
         "specials":[[Equip.BOOST,Element.EARTH],null,[Equip.DEFEND_BUFF,Stats.ATTACK,80]],
         "materials":[[Items.shuriken,1,Items.brick,1],[Items.shuriken,4,Items.brick,4],[Items.kevlar,2,Items.buckle,4],[Items.gold,2,Items.kevlar,1,Items.buckle,2]]
      });
      
      public static var ninjagear:Equip = new Equip({
         "SID":"ninjagear",
         "type":Equip.ARMOR_MALE,
         "icon":381,
         "skin":17,
         "map":[17,8,2],
         "HP":[0],
         "attack":[0],
         "defence":[0,5,5,10,15],
         "magicAttack":[0],
         "magicDefence":[0,5,5,10,15],
         "accuracy":[10,15,15,20,25],
         "evade":[10,10,15,20,25],
         "resistance":{
            "wind":long50,
            "thunder":long50,
            "weight":long100
         },
         "specials":[[Equip.BOOST,Element.WIND],[Equip.DEFEND_STATUS,Status.INVISIBLE,1],null,[Equip.BOOST_THROWS],null],
         "materials":[[Items.shuriken,1,Items.bomb,1],[Items.shuriken,4,Items.bomb,4],[Items.rune,1,Items.bomb,2,Items.shuriken,2],[Items.kevlar,2,Items.rune,2]]
      });
      
      public static var vikingfur:Equip = new Equip({
         "SID":"vikingfur",
         "type":Equip.ARMOR_MALE,
         "icon":372,
         "skin":18,
         "map":[18,12,2],
         "HP":[0],
         "attack":[0,5,10,15,20],
         "defence":[10,15,20,25,30],
         "magicAttack":[-20],
         "magicDefence":[10,15,20,25,30],
         "accuracy":[0],
         "evade":[0],
         "resistance":{
            "water":long50,
            "ice":long50,
            "freeze":long100
         },
         "specials":[[Equip.BOOST,Element.ICE],null,[Equip.SUMMON,Summons.BearBrown,0.5],null,[Equip.BOOST_CATCH]],
         "materials":[[Items.fur,1],[Items.fur,2,Items.buckle,1],[Items.spike,2,Items.fur,12,Items.buckle,1],[Items.rune2,15,Items.buckle,1]]
      });
      
      public static var santaoutfit:Equip = new Equip({
         "SID":"santaoutfit",
         "type":Equip.ARMOR_MALE,
         "icon":390,
         "skin":19,
         "map":[12,8,2],
         "HP":[0,0,5,10,15],
         "attack":[0],
         "defence":[10,15,20,25,30],
         "magicAttack":[0,5,5,10,15],
         "magicDefence":[10,15,20,25,30],
         "accuracy":[0],
         "evade":[-5],
         "resistance":{
            "ice":long50,
            "freeze":long100,
            "holy":long50
         },
         "specials":[[Equip.BOOST,Element.ICE],null,[Equip.SUMMON,Spells.present,2]],
         "materials":[[Items.snowball,2,Items.wool,1],[Items.snowball,8,Items.wool,4],[Items.burger,1,Items.leather,8],[Items.lego,1,Items.burger,2]]
      });
      
      public static var turtlegi:Equip = new Equip({
         "SID":"turtlegi",
         "type":Equip.ARMOR_MALE,
         "icon":383,
         "skin":20,
         "map":[13,14,2],
         "HP":[0,0,5,5,10],
         "attack":[0],
         "defence":[0],
         "magicAttack":[0],
         "magicDefence":[0],
         "accuracy":[0,5,10,15,20],
         "evade":[0,5,10,15,20],
         "resistance":{
            "stun":long100,
            "stagger":long100,
            "dispel":long100
         },
         "specials":[[Equip.RANDOM_BUFFS],null,null,null,[Equip.STATUS,Status.MORALE,1,1]],
         "materials":[[Items.wool,1,Items.brick,1],[Items.silk,1,Items.brick,8],[Items.satin,2,Items.rune2,2],[Items.scales,1,Items.satin,2]]
      });
      
      public static var hipstershirt:Equip = new Equip({
         "SID":"hipstershirt",
         "type":Equip.ARMOR_MALE,
         "icon":386,
         "skin":21,
         "map":[7,13,2],
         "HP":[0,5,5,5,10],
         "attack":[0],
         "defence":[0,5,10,15,20],
         "magicAttack":[0],
         "magicDefence":[0,5,10,15,20],
         "accuracy":[0],
         "evade":[0,5,5,5,10],
         "resistance":{
            "water":long50,
            "stun":long100,
            "death":long100
         },
         "specials":[[Equip.BOOST_FOOD],null,[Equip.BOOST_BUFFS,10]],
         "materials":[[Items.wool,2],[Items.coffee,1],[Items.coffee,2,Items.pretzel,2,Items.burger,2],[Items.burger,6,Items.bru,2]]
      });
      
      public static var captainscoat:Equip = new Equip({
         "SID":"captainscoat",
         "type":Equip.ARMOR_MALE,
         "icon":371,
         "skin":22,
         "map":[3,5,2],
         "HP":[0],
         "MP":[0],
         "attack":[0,5,5,10,10],
         "defence":[5,10,15,20,25],
         "magicAttack":[0,5,5,10,10],
         "magicDefence":[5,10,15,20,25],
         "accuracy":[0],
         "evade":[5,5,5,5,10],
         "resistance":{
            "water":long50,
            "bomb":long50
         },
         "specials":[[Equip.BOOST,Element.WATER],null,[Equip.SUMMON,Summons.SquidPink,0.22],null,[Equip.BOOST_STATUS]],
         "materials":[[Items.seashell,2],[Items.buckle,2],[Items.leather,8,Items.sapphire,2],[Items.sapphire,5,Items.leather,3]]
      });
      
      public static var MALE_ARMOR:Array = [captainscoat,heroicarmor,vikingfur,spartancuirass,genjiarmor,ninjagear,dragonarmor,camojacket,officercoat,spaceace,scottishkilt,explorersjacket,wizardcloak,turtlegi,flamesuit,hoboclothes,hipstershirt,shellarmor,priesttunic,coatofteeth,santaoutfit];
      
      public static var magicalskirt:Equip = new Equip({
         "SID":"magicalskirt",
         "type":Equip.ARMOR_FEMALE,
         "icon":430,
         "skin":2,
         "map":[35,18,2],
         "HP":[0,5,5,10,10],
         "attack":[0],
         "defence":[10,15,20,25,30],
         "magicAttack":[0],
         "magicDefence":[10,15,20,25,30],
         "accuracy":[0],
         "evade":[0],
         "resistance":{
            "poison":long100,
            "death":long100,
            "curse":long100
         },
         "specials":[[Equip.BOOST,Element.NONE],[Equip.STATUS,Status.LOVED,2,0.15],null,null,[Equip.SUMMON,Summons.SlimeBunny,0.5]],
         "materials":[[Items.feather,1],[Items.silk,2],[Items.satin,2,Items.gems,4],[Items.moonpearl,1,Items.opal,1]]
      });
      
      public static var bluedress:Equip = new Equip({
         "SID":"bubblydress",
         "type":Equip.ARMOR_FEMALE,
         "icon":432,
         "skin":3,
         "map":[37,19,2],
         "HP":[0],
         "attack":[0],
         "defence":[10,15,20,25,30],
         "magicAttack":[5,5,10,15,20],
         "magicDefence":[10,15,20,25,30],
         "accuracy":[0],
         "evade":[0],
         "resistance":{
            "water":long50,
            "dispel":long100,
            "weak":long100
         },
         "specials":[[Equip.BOOST,Element.WATER],null,[Equip.DEFEND_STATUS,Status.ENCHANTED,1],null,[Equip.SUMMON,Summons.BitIce,0.3]],
         "materials":[[Items.butterflywing,1],[Items.ice,2],[Items.ice,4,Items.satin,2],[Items.sapphire,2,Items.moonpearl,1]]
      });
      
      public static var rangerskirt:Equip = new Equip({
         "SID":"rangerskirt",
         "type":Equip.ARMOR_FEMALE,
         "icon":421,
         "skin":4,
         "map":[34,9,2],
         "HP":[0],
         "attack":[5,5,10,15,20],
         "defence":[0,5,10,15,20],
         "magicAttack":[0],
         "magicDefence":[0,5,10,15,20],
         "accuracy":[0],
         "evade":[5,10,15,20,25],
         "resistance":{
            "earth":long50,
            "bio":long50,
            "weak":long100
         },
         "specials":[[Equip.BOOST,Element.EARTH],null,[Equip.SUMMON,Spells.bind,1],null,[Equip.BOOST_CATCH]],
         "materials":[[Items.herb,1],[Items.herb,2,Items.leather,1],[Items.leather,10,Items.buckle,2],[Items.kevlar,2,Items.leather,6]]
      });
      
      public static var maidoutfit:Equip = new Equip({
         "SID":"maidoutfit",
         "type":Equip.ARMOR_FEMALE,
         "icon":433,
         "skin":5,
         "map":[39,8,2],
         "HP":[0,5,5,10,10],
         "attack":[0,0,5,5,10],
         "defence":[10,15,20,25,30],
         "magicAttack":[0,0,5,5,10],
         "magicDefence":[10,15,20,25,30],
         "accuracy":[0],
         "evade":[0],
         "resistance":{
            "wind":long50,
            "earth":long50,
            "stun":long100
         },
         "specials":[[Equip.BOOST_FOOD],null,[Equip.BOOST_THROWS]],
         "materials":[[Items.cupcake,1],[Items.coffee,1],[Items.coffee,2,Items.burger,2],[Items.coffee,10,Items.burger,5]]
      });
      
      public static var schooluniform:Equip = new Equip({
         "SID":"schooluniform",
         "type":Equip.ARMOR_FEMALE,
         "icon":428,
         "skin":6,
         "map":[40,15,2],
         "HP":[0],
         "MP":[0],
         "attack":[0,5,10,15,20],
         "defence":[0],
         "magicAttack":[0],
         "magicDefence":[0],
         "accuracy":[0],
         "evade":[10,15,20,30,40],
         "resistance":{
            "weight":long100,
            "weak":long100,
            "curse":long100
         },
         "specials":[null,null,[Equip.DEFEND_BUFF,Stats.ATTACK,80],[Equip.STEAL]],
         "materials":[[Items.cola,1],[Items.cola,2],[Items.satin,3,Items.cola,3],[Items.satin,12,Items.cola,10]]
      });
      
      public static var camoskirt:Equip = new Equip({
         "SID":"camoskirt",
         "type":Equip.ARMOR_FEMALE,
         "icon":435,
         "skin":7,
         "map":[42,5,2],
         "HP":[0],
         "attack":[5,10,10,15,20],
         "defence":[5,5,10,15,20],
         "magicAttack":[5,10,10,15,20],
         "magicDefence":[5,5,10,15,20],
         "accuracy":[0],
         "evade":[0],
         "resistance":{
            "bomb":long50,
            "bio":long50,
            "stagger":long100
         },
         "specials":[[Equip.BOOST,Element.BOMB],null,[Equip.SUMMON,Spells.medipack,1],null],
         "materials":[[Items.cactus,2],[Items.cactus,6],[Items.leather,8,Items.bomb,10],[Items.kevlar,3,Items.cactus,2]]
      });
      
      public static var reddress:Equip = new Equip({
         "SID":"reddress",
         "type":Equip.ARMOR_FEMALE,
         "icon":420,
         "skin":8,
         "map":[43,9,2],
         "HP":[0],
         "attack":[0],
         "defence":[0,5,10,15,20],
         "magicAttack":[0,5,5,10,10],
         "magicDefence":[15,20,25,30,40],
         "accuracy":[0],
         "evade":[0],
         "resistance":{
            "fire":long50,
            "thunder":long50,
            "ice":long50
         },
         "specials":[null,null,[Equip.STATUS,Status.GOOD_LUCK,2,0.5],null,[Equip.BOOST_STATUS]],
         "materials":[[Items.butterflywing,1],[Items.gems,3],[Items.gems,15,Items.satin,4],[Items.sapphire,2,Items.topaz,2,Items.ruby,2]]
      });
      
      public static var obsidianarmor:Equip = new Equip({
         "SID":"obsidianarmor",
         "type":Equip.ARMOR_FEMALE,
         "icon":436,
         "skin":9,
         "map":[44,8,13],
         "HP":[0],
         "attack":[0],
         "defence":[20,30,40,50,60],
         "magicAttack":[0],
         "magicDefence":[15,20,25,30,30],
         "accuracy":[0],
         "evade":[-20],
         "resistance":{
            "fire":long50,
            "burn":long100
         },
         "specials":[[Equip.BOOST,Element.FIRE],null,[Equip.STATUS,Status.BRAVE,2,0.2],null,[Equip.SUMMON,Summons.GloopAsh,0.3]],
         "materials":[[Items.iron,1],[Items.iron,2,Items.geode,2],[Items.rune,1,Items.geode,10],[Items.scales,1,Items.iron,12]]
      });
      
      public static var summerkimono:Equip = new Equip({
         "SID":"summerkimono",
         "type":Equip.ARMOR_FEMALE,
         "icon":438,
         "skin":10,
         "map":[45,19,2],
         "HP":[0],
         "attack":[0],
         "defence":[5,10,15,20,25],
         "magicAttack":[0],
         "magicDefence":[5,10,15,20,25],
         "accuracy":[0],
         "evade":[0,5,10,15,20],
         "resistance":{
            "wind":long50,
            "thunder":long50,
            "stun":long100
         },
         "specials":[[Equip.BOOST,Element.THUNDER],null,[Equip.STATUS,Status.BLESS,2,0.25],null,[Equip.SUMMON,Spells.blossom,0.25]],
         "materials":[[Items.wool,2],[Items.wool,8,Items.shuriken,4],[Items.topaz,2,Items.satin,2],[Items.topaz,4,Items.opal,1]]
      });
      
      public static var popedress:Equip = new Equip({
         "SID":"popedress",
         "type":Equip.ARMOR_FEMALE,
         "icon":426,
         "skin":11,
         "map":[48,20,2],
         "HP":[0],
         "attack":[0],
         "defence":[0,5,10,15,20],
         "magicAttack":[0],
         "magicDefence":[20,30,40,55,70],
         "accuracy":[0],
         "evade":[0],
         "resistance":{
            "dark":long50,
            "holy":long50,
            "curse":long100
         },
         "specials":[[Equip.BOOST,Element.HOLY],null,null,null,[Equip.STATUS,Status.AUTOLIFE,1,0.3]],
         "materials":[[Items.flower,1],[Items.silk,2],[Items.silver,2,Items.gold,1],[Items.grail,1]]
      });
      
      public static var nurseuniform:Equip = new Equip({
         "SID":"nurseuniform",
         "type":Equip.ARMOR_FEMALE,
         "icon":437,
         "skin":12,
         "map":[49,18,2],
         "HP":[0,5,5,10,10],
         "attack":[0],
         "defence":[5,10,15,20,25],
         "magicAttack":[0],
         "magicDefence":[5,10,15,20,25],
         "accuracy":[0],
         "evade":[0],
         "resistance":{
            "holy":long50,
            "poison":long100,
            "syphon":long100
         },
         "specials":[[Equip.BOOST_HEALING],null,[Equip.BOOST,Element.HOLY],null,[Equip.SUMMON,Spells.healmore,0.5]],
         "materials":[[Items.apple,2],[Items.banana,3],[Items.coffee,6,Items.satin,2],[Items.lego,2,Items.cupcake,6]]
      });
      
      public static var darkgown:Equip = new Equip({
         "SID":"darkgown",
         "type":Equip.ARMOR_FEMALE,
         "icon":434,
         "skin":13,
         "map":[50,20,2],
         "HP":[0],
         "MP":[0],
         "attack":[0],
         "defence":[0],
         "magicAttack":[10,15,20,25,30],
         "magicDefence":[15,20,25,30,40],
         "accuracy":[0],
         "evade":[0],
         "resistance":{
            "dark":long50,
            "death":long100,
            "holy":down30
         },
         "specials":[[Equip.BOOST,Element.DARK],null,null,[Equip.DEFEND_BUFF,Stats.MAGIC_DEFENCE,80]],
         "materials":[[Items.flower,1],[Items.silk,2],[Items.satin,1,Items.rune,1],[Items.darkmatter,1]]
      });
      
      public static var samidress:Equip = new Equip({
         "SID":"samidress",
         "type":Equip.ARMOR_FEMALE,
         "icon":431,
         "skin":14,
         "map":[53,20,2],
         "HP":[0],
         "attack":[0,5,5,10,10],
         "defence":[5,10,15,20,25],
         "magicAttack":[0,5,5,10,10],
         "magicDefence":[5,10,15,20,25],
         "accuracy":[0],
         "evade":[0],
         "resistance":{
            "wind":long50,
            "holy":long50
         },
         "specials":[[Equip.BOOST,Element.WIND],null,null,[Equip.BOOST_BUFFS,10]],
         "materials":[[Items.wool,1,Items.feather,1],[Items.fur,2,Items.feather,4],[Items.satin,4,Items.fur,8],[Items.rune2,10,Items.fur,12]]
      });
      
      public static var cowcostume:Equip = new Equip({
         "SID":"cowcostume",
         "type":Equip.ARMOR_FEMALE,
         "icon":422,
         "skin":15,
         "map":[51,9,2],
         "HP":[5,5,10,15,20],
         "MP":[0],
         "attack":[0],
         "defence":[5,10,15,20,25],
         "magicAttack":[0],
         "magicDefence":[5,10,15,20,25],
         "accuracy":[0],
         "evade":[0],
         "resistance":{
            "dispel":long100,
            "earth":long50,
            "water":long50
         },
         "specials":[[Equip.BOOST,Element.EARTH],null,null,[Equip.BOOST_DEBUFFS,10],[Equip.DEFEND_BUFF,Stats.HP,20]],
         "materials":[[Items.buckle,1],[Items.leather,2],[Items.silk,6,Items.leather,12],[Items.burger,3,Items.leather,12]]
      });
      
      public static var furdress:Equip = new Equip({
         "SID":"furdress",
         "type":Equip.ARMOR_FEMALE,
         "icon":423,
         "skin":16,
         "map":[57,9,2],
         "HP":[0],
         "MP":[0],
         "attack":[0,5,5,10,10],
         "defence":[10,15,20,25,30],
         "magicAttack":[0,5,5,10,10],
         "magicDefence":[10,15,20,25,30],
         "accuracy":[0],
         "evade":[0],
         "resistance":{
            "ice":long50,
            "water":long50,
            "freeze":long100
         },
         "specials":[[Equip.BOOST,Element.ICE],null,[Equip.SUMMON,Summons.MonolithViking,0.15],null,[Equip.BOOST_CATCH]],
         "materials":[[Items.fur,1],[Items.fur,2,Items.buckle,1],[Items.spike,2,Items.fur,12,Items.buckle,1],[Items.rune2,15,Items.buckle,1]]
      });
      
      public static var santaskirt:Equip = new Equip({
         "SID":"santaskirt",
         "type":Equip.ARMOR_FEMALE,
         "icon":440,
         "skin":17,
         "map":[58,8,2],
         "HP":[0,5,5,10,10],
         "attack":[0],
         "defence":[10,15,20,25,30],
         "magicAttack":[0,5,10,15,20],
         "magicDefence":[10,15,20,25,30],
         "accuracy":[0],
         "evade":[0,0,5,10,15],
         "resistance":{
            "ice":long50,
            "freeze":long100,
            "wet":long100
         },
         "specials":[[Equip.BOOST,Element.ICE],null,[Equip.SUMMON,Spells.candycane2,1]],
         "materials":[[Items.snowball,2,Items.wool,1],[Items.snowball,8,Items.wool,4],[Items.satin,2,Items.leather,8],[Items.lego,1,Items.satin,2]]
      });
      
      public static var mechaarmor:Equip = new Equip({
         "SID":"mechasuit",
         "type":Equip.ARMOR_FEMALE,
         "icon":427,
         "skin":18,
         "map":[59,13,2],
         "HP":[5,10,15,20,25],
         "attack":[0,0,0,0,5],
         "defence":[10,15,20,25,35],
         "magicAttack":[0,0,0,0,5],
         "magicDefence":[10,15,20,25,35],
         "accuracy":[0],
         "evade":[0],
         "resistance":{
            "bio":long50,
            "bomb":long50,
            "thunder":down30
         },
         "specials":[[Equip.BOOST,Element.BOMB],null,[Equip.SUMMON,Summons.CatBomber,0.9]],
         "materials":[[Items.iron,2],[Items.bomb,2,Items.steel,2],[Items.cpu,1,Items.powder,2],[Items.gamechild,1]]
      });
      
      public static var cactusdress:Equip = new Equip({
         "SID":"cactusdress",
         "type":Equip.ARMOR_FEMALE,
         "icon":429,
         "skin":19,
         "map":[60,11,2],
         "HP":[0],
         "MP":[0],
         "attack":[5,10,10,15,20],
         "defence":[10,15,20,25,30],
         "magicAttack":[0],
         "magicDefence":[10,15,20,25,30],
         "accuracy":[0],
         "evade":[0],
         "resistance":{
            "earth":long50,
            "bio":long50,
            "poison":long100
         },
         "specials":[[Equip.BOOST,Element.BIO],null,[Equip.SUMMON,Spells.cactus,2]],
         "materials":[[Items.cactus,2],[Items.cactus,8],[Items.geode,8,Items.emerald,2],[Items.emerald,7,Items.herb,3,Items.cactus,3]]
      });
      
      public static var ninjaskirt:Equip = new Equip({
         "SID":"ninjaskirt",
         "type":Equip.ARMOR_FEMALE,
         "icon":425,
         "skin":20,
         "map":[61,8,2],
         "HP":[0],
         "attack":[0],
         "defence":[0,0,5,10,15],
         "magicAttack":[0],
         "magicDefence":[0,0,5,10,15],
         "accuracy":[10,15,15,20,25],
         "evade":[10,10,15,20,25],
         "resistance":{
            "wind":long50,
            "dark":long50,
            "stun":long100
         },
         "specials":[[Equip.BOOST,Element.WIND],[Equip.DEFEND_STATUS,Status.INVISIBLE,1],null,[Equip.BOOST_THROWS],null],
         "materials":[[Items.shuriken,1,Items.flower,1],[Items.shuriken,4,Items.flower,2],[Items.rune,1,Items.flower,2,Items.shuriken,2],[Items.kevlar,2,Items.rune,2]]
      });
      
      public static var casualskirt:Equip = new Equip({
         "SID":"casualskirt",
         "type":Equip.ARMOR_FEMALE,
         "icon":424,
         "skin":21,
         "map":[62,9,2],
         "HP":[0],
         "attack":[0,5,5,10,15],
         "defence":[0,5,10,15,20],
         "magicAttack":[0,5,5,10,15],
         "magicDefence":[0,5,10,15,20],
         "accuracy":[0],
         "evade":[10,10,15,20,25],
         "resistance":{
            "death":long100,
            "syphon":long100,
            "stun":long100
         },
         "specials":[[Equip.BOOST_FOOD],null,[Equip.BOOST_BUFFS,10]],
         "materials":[[Items.wool,2],[Items.coffee,1],[Items.raspberries,4,Items.pretzel,2,Items.burger,2],[Items.burger,6,Items.cola,2]]
      });
      
      public static var spidergown:Equip = new Equip({
         "SID":"spidergown",
         "type":Equip.ARMOR_FEMALE,
         "icon":439,
         "skin":22,
         "map":[52,20,2],
         "HP":[0,5,5,10,10],
         "attack":[0],
         "defence":[10,15,20,25,35],
         "magicAttack":[0],
         "magicDefence":[10,15,20,25,30],
         "accuracy":[0],
         "evade":[0],
         "resistance":{
            "dark":long50,
            "fire":long50,
            "earth":long50
         },
         "specials":[[Equip.BOOST,Element.DARK],null,[Equip.SUMMON,Summons.MirrorHaunted,0.5],null,[Equip.BOOST_DEBUFFS]],
         "materials":[[Items.shuriken,2],[Items.amber,1],[Items.rune,1,Items.amber,4],[Items.rune,4]]
      });
      
      public static var FEMALE_ARMOR:Array = [reddress,rangerskirt,nurseuniform,furdress,popedress,cactusdress,cowcostume,maidoutfit,summerkimono,darkgown,magicalskirt,ninjaskirt,mechaarmor,obsidianarmor,schooluniform,bluedress,camoskirt,samidress,casualskirt,spidergown,santaskirt];
      
      public static var empty:Equip = new Equip({
         "SID":"empty",
         "type":Equip.FLAIR,
         "icon":515,
         "skin":2,
         "materials":[]
      });
      
      public static var swordmedal:Equip = new Equip({
         "SID":"swordmedal",
         "type":Equip.FLAIR,
         "icon":445,
         "skin":15,
         "attack":[10,20,30],
         "materials":[[Items.silver,1,Items.gold,1],[Items.silver,4,Items.gold,4]]
      });
      
      public static var shieldmedal:Equip = new Equip({
         "SID":"shieldmedal",
         "type":Equip.FLAIR,
         "icon":454,
         "skin":16,
         "defence":[10,20,30],
         "materials":[[Items.silver,1,Items.gold,1],[Items.silver,4,Items.gold,4]]
      });
      
      public static var goldstar:Equip = new Equip({
         "SID":"goldstar",
         "type":Equip.FLAIR,
         "icon":463,
         "skin":10,
         "magicAttack":[10,20,30],
         "materials":[[Items.gold,1,Items.gems,5],[Items.gold,5]]
      });
      
      public static var platinumstar:Equip = new Equip({
         "SID":"platinumstar",
         "type":Equip.FLAIR,
         "icon":472,
         "skin":11,
         "magicDefence":[10,20,30],
         "materials":[[Items.silver,2,Items.gems,5],[Items.silver,10]]
      });
      
      public static var chillcloud:Equip = new Equip({
         "SID":"smallcloud",
         "type":Equip.FLAIR,
         "icon":446,
         "skin":21,
         "HP":[0,5,10],
         "resistance":{"water":short30},
         "specials":[[Equip.MORE_SP]],
         "materials":[[Items.ice,2,Items.water,2],[Items.ice,10,Items.water,10]]
      });
      
      public static var ironcross:Equip = new Equip({
         "SID":"ironcross",
         "type":Equip.FLAIR,
         "icon":476,
         "skin":7,
         "resistance":{
            "bomb":short50,
            "stagger":short100
         },
         "materials":[[Items.iron,5,Items.steel,5],[Items.iron,10,Items.steel,10,Items.silver,3]]
      });
      
      public static var bandage:Equip = new Equip({
         "SID":"bandage",
         "type":Equip.FLAIR,
         "icon":447,
         "skin":18,
         "resistance":{
            "earth":short50,
            "death":short100
         },
         "materials":[[Items.silk,4,Items.turd,2],[Items.silk,14,Items.turd,10]]
      });
      
      public static var pentagram:Equip = new Equip({
         "SID":"goldenpentagram",
         "type":Equip.FLAIR,
         "icon":448,
         "skin":28,
         "resistance":{
            "holy":short50,
            "weak":short100
         },
         "materials":[[Items.gold,1],[Items.gold,2,Items.silver,1]]
      });
      
      public static var targetbadge:Equip = new Equip({
         "SID":"targetbadge",
         "type":Equip.FLAIR,
         "icon":449,
         "skin":4,
         "resistance":{"wind":short30},
         "accuracy":[10,20,30],
         "specials":[null,null,[Equip.DEFEND_STATUS,Status.TARGET,2]],
         "materials":[[Items.plastic,3],[Items.plastic,10]]
      });
      
      public static var eyebrows:Equip = new Equip({
         "SID":"bigeyebrows",
         "type":Equip.FLAIR,
         "icon":450,
         "skin":34,
         "resistance":{
            "death":short100,
            "stun":short100,
            "stagger":short100
         },
         "specials":[],
         "materials":[[Items.leather,2],[Items.leather,10]]
      });
      
      public static var icebadge:Equip = new Equip({
         "SID":"frostbadge",
         "type":Equip.FLAIR,
         "icon":451,
         "skin":9,
         "resistance":{
            "ice":short50,
            "freeze":short100
         },
         "materials":[[Items.water,8],[Items.sapphire,1,Items.water,16]]
      });
      
      public static var hoopearings:Equip = new Equip({
         "SID":"hoopearings",
         "type":Equip.FLAIR,
         "icon":452,
         "skin":24,
         "magicAttack":[0,5,10],
         "resistance":{"thunder":short30},
         "specials":[[Equip.STATUS,Status.GOOD_LUCK,2,0.25],null,[Equip.DEFEND_STATUS,Status.GOOD_LUCK,2]],
         "materials":[[Items.gold,1],[Items.gold,2]]
      });
      
      public static var pearlnecklace:Equip = new Equip({
         "SID":"pearlnecklace",
         "type":Equip.FLAIR,
         "icon":453,
         "skin":37,
         "resistance":{
            "water":short50,
            "wet":short100
         },
         "materials":[[Items.ice,8],[Items.sapphire,1,Items.ice,16]]
      });
      
      public static var greencross:Equip = new Equip({
         "SID":"greencross",
         "type":Equip.FLAIR,
         "icon":473,
         "skin":3,
         "magicDefence":[0,5,10],
         "resistance":{"burn":short50},
         "specials":[[Equip.STATUS,Status.REGEN,2,0.3],null,[Equip.DEFEND_STATUS,Status.REGEN,2]],
         "materials":[[Items.silver,2],[Items.emerald,1,Items.silver,4]]
      });
      
      public static var minidrone:Equip = new Equip({
         "SID":"minidrone",
         "type":Equip.FLAIR,
         "icon":455,
         "skin":23,
         "accuracy":[0,5,10],
         "resistance":{
            "bomb":short30,
            "earth":short30
         },
         "specials":[[Equip.BOOST_CATCH]],
         "materials":[[Items.spring,3,Items.tape,3],[Items.cpu,3]]
      });
      
      public static var surgicalmask:Equip = new Equip({
         "SID":"surgicalmask",
         "type":Equip.FLAIR,
         "icon":456,
         "skin":19,
         "resistance":{
            "bio":short50,
            "poison":short100
         },
         "materials":[[Items.silk,2,Items.garlic,2],[Items.garlic,8,Items.kevlar,1]]
      });
      
      public static var silvercross:Equip = new Equip({
         "SID":"silvercross",
         "type":Equip.FLAIR,
         "icon":457,
         "skin":31,
         "resistance":{
            "dark":short50,
            "curse":short100
         },
         "materials":[[Items.silver,2],[Items.silver,6]]
      });
      
      public static var balancebadge:Equip = new Equip({
         "SID":"balancebadge",
         "type":Equip.FLAIR,
         "icon":458,
         "skin":5,
         "resistance":{
            "dark":short30,
            "holy":short30
         },
         "HP":[0,0,5],
         "attack":[5,5,5],
         "defence":[0,5,5],
         "magicAttack":[5,5,5],
         "magicDefence":[0,5,5],
         "accuracy":[5,5,5],
         "evade":[0,0,5],
         "materials":[[Items.rune,1,Items.rune2,1],[Items.rune,1,Items.rune2,1]]
      });
      
      public static var fakemustache:Equip = new Equip({
         "SID":"fakemustache",
         "type":Equip.FLAIR,
         "icon":459,
         "skin":33,
         "resistance":{"ice":short30},
         "specials":[[Equip.STEAL]],
         "materials":[[Items.fur,2,Items.silver,1],[Items.fur,8,Items.gold,1]]
      });
      
      public static var thunderbadge:Equip = new Equip({
         "SID":"lightningbadge",
         "type":Equip.FLAIR,
         "icon":460,
         "skin":8,
         "resistance":{
            "thunder":short50,
            "stun":short100
         },
         "materials":[[Items.amber,2],[Items.amber,2,Items.topaz,3]]
      });
      
      public static var chromeearings:Equip = new Equip({
         "SID":"chromeearings",
         "type":Equip.FLAIR,
         "icon":461,
         "skin":26,
         "statusEffect":Status.FREEZE,
         "statusChance":[10,20,30],
         "statusDegree":[2,2,2],
         "resistance":{"ice":short30},
         "specials":[[Equip.NO_STACK]],
         "materials":[[Items.silver,2,Items.water,1],[Items.silver,6,Items.water,3]]
      });
      
      public static var cattail:Equip = new Equip({
         "SID":"cattail",
         "type":Equip.FLAIR,
         "icon":462,
         "skin":35,
         "evade":[10,15,15],
         "resistance":{"dark":short30},
         "specials":[null,null,[Equip.DEFEND_BUFF,Stats.EVADE,30]],
         "materials":[[Items.fur,4,Items.leather,2],[Items.fur,10,Items.leather,5]]
      });
      
      public static var fatfly:Equip = new Equip({
         "SID":"fatfly",
         "type":Equip.FLAIR,
         "icon":464,
         "skin":22,
         "statusEffect":Status.DOOM,
         "statusChance":[30,40,50],
         "statusDegree":[3,3,2],
         "resistance":{
            "dark":short30,
            "bio":short30
         },
         "specials":[[Equip.NO_STACK],null,[Equip.SUMMON,Spells.flybomb,1.25]],
         "materials":[[Items.virus,2],[Items.virus,10]]
      });
      
      public static var luckyclover:Equip = new Equip({
         "SID":"luckyclover",
         "type":Equip.FLAIR,
         "icon":465,
         "skin":6,
         "resistance":{"bio":short30},
         "specials":[[Equip.STATUS,Status.BLESS,2,0.25],null,[Equip.DEFEND_STATUS,Status.BLESS,2]],
         "materials":[[Items.geode,4],[Items.emerald,3,Items.geode,4]]
      });
      
      public static var heartpendant:Equip = new Equip({
         "SID":"heartpendant",
         "type":Equip.FLAIR,
         "icon":466,
         "skin":29,
         "defence":[0,0,5],
         "magicDefence":[0,0,5],
         "resistance":{"death":short100},
         "specials":[[Equip.STATUS,Status.LOVED,2,0.25],null,[Equip.DEFEND_STATUS,Status.LOVED,2]],
         "materials":[[Items.gems,5],[Items.ruby,4]]
      });
      
      public static var crossbonepin:Equip = new Equip({
         "SID":"crossbonepin",
         "type":Equip.FLAIR,
         "icon":467,
         "skin":12,
         "statusEffect":Status.CURSE,
         "statusChance":[30,45,60],
         "statusDegree":[4,5,6],
         "resistance":{
            "death":short50,
            "curse":short50
         },
         "specials":[[Equip.NO_STACK]],
         "materials":[[Items.claw,4],[Items.spike,4]]
      });
      
      public static var battlepaint:Equip = new Equip({
         "SID":"battlepaint",
         "type":Equip.FLAIR,
         "icon":468,
         "skin":32,
         "attack":[0,5,10],
         "resistance":{"water":short30},
         "specials":[[Equip.STATUS,Status.BRAVE,2,0.2],null,[Equip.DEFEND_STATUS,Status.BRAVE,4]],
         "materials":[[Items.blueberries,6],[Items.blueberries,20]]
      });
      
      public static var firebadge:Equip = new Equip({
         "SID":"flamebadge",
         "type":Equip.FLAIR,
         "icon":469,
         "skin":14,
         "resistance":{
            "fire":short50,
            "burn":short100
         },
         "materials":[[Items.magma,6],[Items.magma,2,Items.ruby,3]]
      });
      
      public static var amethystearings:Equip = new Equip({
         "SID":"amethystearings",
         "type":Equip.FLAIR,
         "icon":470,
         "skin":27,
         "statusEffect":Status.DRY,
         "statusChance":[100,100,100],
         "statusDegree":[2,3,4],
         "resistance":{"dispel":short50},
         "specials":[[Equip.NO_STACK]],
         "materials":[[Items.butterflywing,8],[Items.butterflywing,36]]
      });
      
      public static var tentacle:Equip = new Equip({
         "SID":"tentacle",
         "type":Equip.FLAIR,
         "icon":471,
         "skin":36,
         "statusEffect":Status.VIRUS,
         "statusChance":[30,60,100],
         "statusDegree":[1,1,1],
         "resistance":{"stun":short50},
         "specials":[[Equip.NO_STACK],null,[Equip.SUMMON,Spells.tentacles,1.25]],
         "materials":[[Items.virus,2],[Items.virus,10]]
      });
      
      public static var fairy:Equip = new Equip({
         "SID":"fairy",
         "type":Equip.FLAIR,
         "icon":474,
         "skin":20,
         "resistance":{"holy":short30},
         "specials":[[Equip.STATUS,Status.AUTOLIFE,2,0.15],null,[Equip.DEFEND_STATUS,Status.AUTOLIFE,1]],
         "materials":[[Items.butterflywing,8],[Items.moonpearl,1,Items.butterflywing,8]]
      });
      
      public static var triforce:Equip = new Equip({
         "SID":"thetriforce",
         "type":Equip.FLAIR,
         "icon":475,
         "skin":30,
         "resistance":{
            "dispel":short50,
            "syphon":short50
         },
         "specials":[[Equip.STATUS,Status.MORALE,2,0.25],null,[Equip.DEFEND_STATUS,Status.MORALE,2]],
         "materials":[[Items.gold,1],[Items.gold,3]]
      });
      
      public static var peacebadge:Equip = new Equip({
         "SID":"peacebadge",
         "type":Equip.FLAIR,
         "icon":477,
         "skin":1,
         "statusEffect":Status.WEAKEN,
         "statusChance":[30,45,60],
         "statusDegree":[4,5,6],
         "defence":[0,5,10],
         "resistance":{"weak":short50},
         "specials":[[Equip.NO_STACK]],
         "materials":[[Items.tape,14],[Items.tape,60]]
      });
      
      public static var angelpin:Equip = new Equip({
         "SID":"angelpin",
         "type":Equip.FLAIR,
         "icon":478,
         "skin":13,
         "resistance":{
            "wind":short50,
            "weight":short100
         },
         "materials":[[Items.feather,2,Items.silk,2],[Items.silver,6,Items.feather,12]]
      });
      
      public static var emeraldearings:Equip = new Equip({
         "SID":"emeraldearings",
         "type":Equip.FLAIR,
         "icon":479,
         "skin":25,
         "statusEffect":Status.POISON,
         "statusChance":[50,80,100],
         "statusDegree":[2,2,3],
         "resistance":{"bio":short30},
         "specials":[[Equip.NO_STACK]],
         "materials":[[Items.virus,2],[Items.emerald,2]]
      });
      
      public static var angryfaic:Equip = new Equip({
         "SID":"angryfaic",
         "type":Equip.FLAIR,
         "icon":480,
         "skin":38,
         "defence":[0,5,5],
         "magicDefence":[0,5,5],
         "resistance":{"fire":short30},
         "specials":[[Equip.DEFEND_STATUS,Status.TARGET,3],null,[Equip.INTIMIDATE]],
         "materials":[[Items.amber,3],[Items.rune,1,Items.amber,5]]
      });
      
      public static var pocketwatch:Equip = new Equip({
         "SID":"pocketwatch",
         "type":Equip.FLAIR,
         "icon":481,
         "skin":2,
         "resistance":{"stun":short50},
         "specials":[[Equip.STATUS,Status.HASTE,2,0.2]],
         "materials":[[Items.spring,2,Items.gear,4],[Items.spring,10,Items.gear,20]]
      });
      
      public static var coincharm:Equip = new Equip({
         "SID":"coincharm",
         "type":Equip.FLAIR,
         "icon":483,
         "skin":40,
         "attack":[0,0,5],
         "magicAttack":[0,5,5],
         "specials":[[Equip.MORE_GOLD]],
         "materials":[[Items.silver,2,Items.map2,5],[Items.grail,1,Items.map2,5]]
      });
      
      public static var luckyfish:Equip = new Equip({
         "SID":"luckyfish",
         "type":Equip.FLAIR,
         "icon":484,
         "skin":41,
         "defence":[0,5,5],
         "magicDefence":[0,0,5],
         "specials":[[Equip.MORE_ITEMS]],
         "materials":[[Items.gold,1,Items.map2,5],[Items.scales,3,Items.map2,5]]
      });
      
      public static var petrock:Equip = new Equip({
         "SID":"petrock",
         "type":Equip.FLAIR,
         "icon":443 + 44,
         "skin":54,
         "defence":[0,5,5],
         "magicDefence":[0,0,5],
         "statusEffect":Status.HEAVY,
         "statusChance":[100,100,100],
         "statusDegree":[2,3,4],
         "resistance":{"wind":short30},
         "specials":[[Equip.NO_STACK]],
         "materials":[[Items.turd,5,Items.rune2,1],[Items.turd,20,Items.rune2,4]]
      });
      
      public static var narutomaki:Equip = new Equip({
         "SID":"narutomaki",
         "type":Equip.FLAIR,
         "icon":443 + 56,
         "skin":42,
         "defence":[0,0,5],
         "magicDefence":[0,0,5],
         "resistance":{"water":short30},
         "specials":[[Equip.REVIVE_BUFF,40,60,80]],
         "materials":[[Items.watermelon,4],[Items.dragonfruit,8]]
      });
      
      public static var biteybadge:Equip = new Equip({
         "SID":"biteybadge",
         "type":Equip.FLAIR,
         "icon":443 + 45,
         "skin":43,
         "HP":[0,0,5],
         "statusEffect":Status.TIRED,
         "statusChance":[100,100,100],
         "statusDegree":[2,3,4],
         "resistance":{
            "dark":short30,
            "weak":short50
         },
         "specials":[[Equip.NO_STACK]],
         "materials":[[Items.fur,4],[Items.fur,22,Items.spike,2]]
      });
      
      public static var dinoegg:Equip = new Equip({
         "SID":"dinoegg",
         "type":Equip.FLAIR,
         "icon":443 + 49,
         "skin":51,
         "HP":[0,0,5],
         "evade":[0,5,5],
         "specials":[[Equip.MORE_AP,1.1,1.15,1.2]],
         "materials":[[Items.feather,20],[Items.scales,3]]
      });
      
      public static var viridian:Equip = new Equip({
         "SID":"viridian",
         "type":Equip.FLAIR,
         "icon":443 + 48,
         "skin":44,
         "resistance":{
            "wind":short30,
            "earth":short30,
            "weight":short50
         },
         "specials":[[Equip.SKIP_HASTE]],
         "materials":[[Items.floppy,5,Items.plastic,1],[Items.gamechild,1]]
      });
      
      public static var tetromino:Equip = new Equip({
         "SID":"tetromino",
         "type":Equip.FLAIR,
         "icon":443 + 52,
         "skin":52,
         "accuracy":[0,5,10],
         "evade":[0,5,10],
         "specials":[[Equip.TETRIS]],
         "materials":[[Items.brick,16],[Items.lego,1]]
      });
      
      public static var dogtags:Equip = new Equip({
         "SID":"dogtags",
         "type":Equip.FLAIR,
         "icon":443 + 54,
         "skin":48,
         "attack":[0,0,5],
         "magicAttack":[0,0,5],
         "resistance":{"bomb":short30},
         "specials":[[Equip.REVIVE_BUFF,40,60,80]],
         "materials":[[Items.steel,2,Items.spring,2],[Items.kevlar,3]]
      });
      
      public static var companioncube:Equip = new Equip({
         "SID":"companioncube",
         "type":Equip.FLAIR,
         "icon":443 + 51,
         "skin":50,
         "HP":[0,0,5],
         "resistance":{"thunder":short30},
         "specials":[[Equip.REVIVE_BUFF,20,30,50]],
         "materials":[[Items.plastic,4],[Items.gamechild,1]]
      });
      
      public static var pixelglasses:Equip = new Equip({
         "SID":"pixelglasses",
         "type":Equip.FLAIR,
         "icon":443 + 50,
         "skin":49,
         "accuracy":[-10],
         "resistance":{
            "dark":short30,
            "holy":short30
         },
         "specials":[[Equip.DEAL_WITH_IT]],
         "materials":[[Items.glass,8,Items.plastic,2],[Items.glass,8,Items.lego,1]]
      });
      
      public static var nanomachines:Equip = new Equip({
         "SID":"nanomachines",
         "type":Equip.FLAIR,
         "icon":443 + 55,
         "skin":2,
         "attack":[0,0,5],
         "magicAttack":[0,0,5],
         "resistance":{
            "syphon":short50,
            "poison":short50
         },
         "specials":[[Equip.FAST_COOLDOWN]],
         "materials":[[Items.spring,12,Items.gear,2],[Items.cpu,1,Items.gear,2]]
      });
      
      public static var meowmeowbadge:Equip = new Equip({
         "SID":"meowmeowbadge",
         "type":Equip.FLAIR,
         "icon":443 + 46,
         "skin":45,
         "attack":[0,0,5],
         "magicAttack":[0,0,5],
         "resistance":{"stun":short50},
         "specials":[],
         "materials":[[Items.buckle,6],[Items.spike,6]]
      });
      
      public static var ramchip:Equip = new Equip({
         "SID":"ramchip",
         "type":Equip.FLAIR,
         "icon":443 + 53,
         "skin":46,
         "resistance":{"dispel":short50},
         "specials":[[Equip.MORE_MAX_SP,1.033,1.066,1.1]],
         "materials":[[Items.cpu,1],[Items.gamechild,1]]
      });
      
      public static var babypenguin:Equip = new Equip({
         "SID":"babypenguin",
         "type":Equip.FLAIR,
         "icon":443 + 47,
         "skin":55,
         "evade":[0,0,5],
         "statusEffect":Status.WET,
         "statusChance":[100,100,100],
         "statusDegree":[2,3,4],
         "resistance":{"ice":short30},
         "specials":[[Equip.NO_STACK]],
         "materials":[[Items.snowball,10,Items.blueberries,3],[Items.snowball,10,Items.cloudberries,3],[]]
      });
      
      public static var onering:Equip = new Equip({
         "SID":"onering",
         "type":Equip.FLAIR,
         "icon":443 + 57,
         "skin":47,
         "HP":[10,10,10],
         "attack":[15,20,25],
         "defence":[15,20,25],
         "magicAttack":[15,20,25],
         "magicDefence":[15,20,25],
         "accuracy":[0,5,10],
         "evade":[0,5,10],
         "resistance":{
            "ice":short30,
            "freeze":short50
         },
         "specials":[[Equip.STATUS,Status.SCORCHED,2,1]],
         "materials":[[Items.gold,1],[Items.grail,1]]
      });
      
      public static var juicybeast:Equip = new Equip({
         "SID":"juicybeast",
         "type":Equip.FLAIR,
         "icon":443 + 43,
         "skin":53,
         "resistance":{"bio":short30},
         "specials":[[Equip.SP_RECOVERY],[1.2,1.8,2.5]],
         "materials":[[Items.virus,3,Items.fur,3],[Items.virus,10,Items.fur,10]]
      });
      
      public static var tooth:Equip = new Equip({
         "SID":"tooth",
         "type":Equip.FLAIR,
         "icon":443 + 58,
         "skin":2,
         "HP":[10,15,15],
         "resistance":{"holy":short30},
         "specials":[null,null,[Equip.DEFEND_BUFF,Stats.HP,20]],
         "materials":[[Items.claw,5],[Items.spike,5]]
      });
      
      public static var FLAIRS:Array = [firebadge,thunderbadge,icebadge,pearlnecklace,surgicalmask,angelpin,bandage,ironcross,silvercross,pentagram,battlepaint,luckyclover,hoopearings,triforce,greencross,fairy,pocketwatch,angryfaic,targetbadge,balancebadge,tentacle,peacebadge,crossbonepin,chromeearings,amethystearings,emeraldearings,fatfly,fakemustache,eyebrows,chillcloud,cattail,minidrone,swordmedal,shieldmedal,goldstar,platinumstar,heartpendant];
      
      public static var FLAIRS_PLUS:Array = [firebadge,thunderbadge,icebadge,pearlnecklace,surgicalmask,angelpin,bandage,ironcross,silvercross,pentagram,battlepaint,luckyclover,hoopearings,triforce,greencross,fairy,pocketwatch,angryfaic,targetbadge,balancebadge,tentacle,peacebadge,crossbonepin,chromeearings,amethystearings,emeraldearings,fatfly,fakemustache,eyebrows,chillcloud,cattail,minidrone,swordmedal,shieldmedal,goldstar,platinumstar,heartpendant,luckyfish,coincharm,juicybeast,onering,babypenguin,ramchip,meowmeowbadge,nanomachines,pixelglasses,companioncube,dogtags,tetromino,viridian,dinoegg,biteybadge,narutomaki,petrock,tooth];
      
      public static var FLAIRS_DISPLAY:Array = [firebadge,thunderbadge,icebadge,pearlnecklace,surgicalmask,angelpin,bandage,ironcross,silvercross,pentagram,nanomachines,battlepaint,luckyclover,hoopearings,triforce,greencross,fairy,pocketwatch,meowmeowbadge,viridian,angryfaic,targetbadge,tentacle,peacebadge,crossbonepin,chromeearings,amethystearings,emeraldearings,fatfly,biteybadge,babypenguin,petrock,tetromino,pixelglasses,fakemustache,eyebrows,ramchip,juicybeast,chillcloud,dinoegg,luckyfish,coincharm,minidrone,heartpendant,onering,companioncube,dogtags,narutomaki,cattail,tooth,balancebadge,swordmedal,shieldmedal,goldstar,platinumstar];
      
      public static var ALL_EQUIPS:Array = FLAIRS.concat(MALE_HATS).concat(FEMALE_HATS).concat(MALE_ARMOR).concat(FEMALE_ARMOR).concat(BOWS).concat(GUNS).concat(STALVES).concat(SWORDS).concat(TOYS).concat([empty]).concat([luckyfish,coincharm,juicybeast,onering,babypenguin,ramchip,meowmeowbadge,nanomachines,pixelglasses,companioncube,dogtags,tetromino,viridian,dinoegg,biteybadge,narutomaki,petrock,tooth]);
      
      public static var PREMIUM_EQUIPS:Array = [slimebunny,schooluniform,gigavolt,bookofspells,flametitan,devilsfork,catears,scottishcap,scottishkilt,irontusk,headband,greengoliath,flamesuit,robotears,mechaarmor,gungnir,fusionblade,shootingstar,earthswhisper,thestinger,soulcrusher,deathmask,shellarmor,maidoutfit,kingsguard,elvenshield,goldenaxe,dragonfeather,puppyhat,heartstopper,dragonwings,spartanhelmet,spartancuirass,regalturtle,emeraldsmasher,oakstaff,bunnyears,accelerator,emeraldcyclone,devilssunrise,turtlegi,samidress,swordmedal,shieldmedal,goldstar,platinumstar,bustersword,starhammer];
      
      public function Equips()
      {
         super();
      }
      
      public static function setEquipResistances() : *
      {
         if(Options.lessPlayerResistance)
         {
            long50[0] = 10;
            long50[1] = 15;
            long50[2] = 20;
            long50[3] = 25;
            long50[4] = 30;
            long100[0] = 20;
            long100[1] = 30;
            long100[2] = 40;
            long100[3] = 50;
            long100[4] = 60;
            long150[0] = 30;
            long150[1] = 45;
            long150[2] = 60;
            long150[3] = 75;
            long150[4] = 90;
            long200[0] = 40;
            long200[1] = 60;
            long200[2] = 80;
            long200[3] = 100;
            long200[4] = 120;
            short30[0] = 10;
            short30[1] = 15;
            short30[2] = 20;
            short50[0] = 20;
            short50[1] = 25;
            short50[2] = 30;
            short100[0] = 30;
            short100[1] = 45;
            short100[2] = 60;
            down30[0] = -50;
            down30[1] = -50;
            down30[2] = -50;
            down30[3] = -50;
            down30[4] = -50;
            down50[0] = -75;
            down50[1] = -75;
            down50[2] = -75;
            down50[3] = -75;
            down50[4] = -75;
         }
         else
         {
            long50[0] = 10;
            long50[1] = 20;
            long50[2] = 30;
            long50[3] = 40;
            long50[4] = 50;
            long100[0] = 20;
            long100[1] = 40;
            long100[2] = 60;
            long100[3] = 80;
            long100[4] = 100;
            long150[0] = 30;
            long150[1] = 60;
            long150[2] = 90;
            long150[3] = 120;
            long150[4] = 150;
            long200[0] = 40;
            long200[1] = 80;
            long200[2] = 120;
            long200[3] = 160;
            long200[4] = 200;
            short30[0] = 10;
            short30[1] = 20;
            short30[2] = 30;
            short50[0] = 20;
            short50[1] = 35;
            short50[2] = 50;
            short100[0] = 40;
            short100[1] = 70;
            short100[2] = 100;
            down30[0] = -30;
            down30[1] = -30;
            down30[2] = -30;
            down30[3] = -30;
            down30[4] = -30;
            down50[0] = -50;
            down50[1] = -50;
            down50[2] = -50;
            down50[3] = -50;
            down50[4] = -50;
         }
      }
      
      public static function init() : *
      {
         var _loc1_:Equip = null;
         var _loc2_:Array = null;
         var _loc3_:Array = null;
         var _loc4_:Array = null;
         var _loc5_:Array = null;
         var _loc6_:Array = null;
         setEquipResistances();
         for each(_loc1_ in ALL_EQUIPS)
         {
            _loc1_.backupStatusResistance();
            (EquipsAlt[_loc1_.SID] as Equip).backupStatusResistance();
         }
         _loc2_ = [];
         _loc3_ = [];
         _loc4_ = [];
         _loc5_ = [];
         _loc6_ = [];
         FLAIRS[37] = luckyfish;
         FLAIRS[38] = coincharm;
         Flags.checkSeason();
         if(Flags.CHRISTMAS.quantity)
         {
            _loc3_ = [santahat,hollyhairpin];
         }
         if(Flags.HALLOWEEN.quantity)
         {
            _loc2_ = [pumpkinhead,spiderbobble];
         }
         if(Flags.EASTER.quantity)
         {
            _loc4_ = [slimestaff];
         }
         if(Flags.VALENTINES.quantity)
         {
            _loc5_ = [heartpendant];
         }
         if(Flags.LUNAR.quantity)
         {
            _loc6_ = [luckyfish];
         }
         EQUIP_SHOP_1 = [armyhelmet,nursehat,genjiarmor,nurseuniform,pocketwatch,poisonfang,icecreamsandwich,vortexcannon,fenrirsjaw,nimbusrod,vikingfur,bluedress,giantslayer,alchemistsbow,vikingbuckler].concat(_loc3_).concat(_loc2_).concat(_loc5_).concat(_loc4_).concat(_loc6_);
         EQUIP_SHOP_2 = EQUIP_SHOP_1;
         EQUIP_SHOP_3 = EQUIP_SHOP_1;
         for each(_loc1_ in ALL_EQUIPS)
         {
            if(_loc1_)
            {
               if(Debug.weaponSet == 3)
               {
                  _loc1_.owned = true;
               }
               else
               {
                  _loc1_.owned = false;
               }
               if(Debug.skillSet == 0)
               {
                  if(_loc1_.type == Equip.FLAIR)
                  {
                     _loc1_.level = 1;
                  }
                  else
                  {
                     _loc1_.level = 1;
                  }
               }
               if(Debug.skillSet == 1)
               {
                  if(_loc1_.type == Equip.FLAIR)
                  {
                     _loc1_.level = 1;
                  }
                  else
                  {
                     _loc1_.level = 1;
                  }
               }
               if(Debug.skillSet == 2)
               {
                  if(_loc1_.type == Equip.FLAIR)
                  {
                     _loc1_.level = 2;
                  }
                  else
                  {
                     _loc1_.level = 3;
                  }
               }
               if(Debug.skillSet == 3)
               {
                  if(_loc1_.type == Equip.FLAIR)
                  {
                     _loc1_.level = 3;
                  }
                  else
                  {
                     _loc1_.level = 5;
                  }
               }
            }
         }
         for each(_loc1_ in PREMIUM_EQUIPS)
         {
            _loc1_.premium = true;
         }
         for each(_loc1_ in SWORDS)
         {
            _loc1_.type = Equip.SWORD;
         }
         for each(_loc1_ in STALVES)
         {
            _loc1_.type = Equip.STAFF;
         }
         for each(_loc1_ in GUNS)
         {
            _loc1_.type = Equip.GUN;
         }
         for each(_loc1_ in BOWS)
         {
            _loc1_.type = Equip.BOW;
         }
         for each(_loc1_ in TOYS)
         {
            _loc1_.type = Equip.TOYS;
         }
         for each(_loc1_ in FEMALE_HATS)
         {
            _loc1_.type = Equip.HAT_FEMALE;
         }
         for each(_loc1_ in MALE_HATS)
         {
            _loc1_.type = Equip.HAT_MALE;
         }
         for each(_loc1_ in FEMALE_ARMOR)
         {
            _loc1_.type = Equip.ARMOR_FEMALE;
         }
         for each(_loc1_ in MALE_ARMOR)
         {
            _loc1_.type = Equip.ARMOR_MALE;
         }
         for each(_loc1_ in FLAIRS)
         {
            _loc1_.type = Equip.FLAIR;
         }
         if(!Options.altEquipLocations)
         {
            // AP - Remove Matt's starting equip from being owned by default.
            //for each(_loc1_ in [empty,captainhat,hoboclothes,ultrapro9000])
            for each(_loc1_ in [empty])
            {
               _loc1_.owned = true;
            }
            setStartingEquips();
            armyhelmet.cost = 300;
            nursehat.cost = 300;
            genjiarmor.cost = 600;
            nurseuniform.cost = 600;
            pocketwatch.cost = 1000;
            poisonfang.cost = 1000;
            icecreamsandwich.cost = 1000;
            alchemistsbow.cost = 8000;
            vortexcannon.cost = 8000;
            nimbusrod.cost = 8000;
            vikingfur.cost = 20000;
            bluedress.cost = 20000;
            giantslayer.cost = 60000;
            fenrirsjaw.cost = 60000;
            vikingbuckler.cost = 60000;
            luckyfish.cost = 888;
            santahat.cost = 300;
            hollyhairpin.cost = 300;
            pumpkinhead.cost = 300;
            spiderbobble.cost = 300;
            heartpendant.cost = 3000;
            slimestaff.cost = 60000;
         }
         else
         {
            empty.owned = true;
         }
         countTotalCost();
         var _loc7_:int = 0;
         while(_loc7_ < Equips.ALL_EQUIPS.length)
         {
            if(Equips.ALL_EQUIPS[_loc7_])
            {
               (Equips.ALL_EQUIPS[_loc7_] as Equip).ID = _loc7_;
            }
            _loc7_++;
         }
      }
      
      public static function setStartingEquips() : *
      {
         if(Debug.weaponSet == 1)
         {
            for each(e in [ultrapro9000,crimsonrazorback,darktooth,druidstaff,shadowblaster,nitrobomber,steelbuckler,banditblade,fairybow,eagleeye])
            {
               e.owned = true;
            }
            for each(e in [orangebauble,leafclip,flowerbobble,schooluniform,cactusdress,redribbon,rangerskirt,reddress])
            {
               e.owned = true;
            }
            for each(e in [knighthelmet,heroicarmor,captainhat,cardboardbox,hoboclothes,armyhelmet,camojacket,officercoat,officerhat])
            {
               e.owned = true;
            }
            for each(e in [hoopearings,bandage,targetbadge])
            {
               e.owned = true;
            }
         }
         if(Debug.weaponSet == 2)
         {
            for each(e in [ultrapro9000,crimsonrazorback,heavensgate,berzerker,devilsfork,iceneedle,sapphiresaint,chopper,clubofwithering,dragonfeather,goldenaxe,solspear,arctictrident,zeuswrath,nimbusrod,alchemyset,wreckingrod,elderswisdom,celticcross,knife,darktooth,druidstaff,shadowblaster,nitrobomber,heartstopper,hellfireshotgun,desertscorpion,vortexcannon,biohazardblaster,supersnipe,soulpistol,heavyclaw,gungnir,fairybow,eagleeye,coldsteel,thorshammer,gaiasgift,irontusk,juggernaught,thestinger,chiefshorns,heavensvoice,sharanga,steelbuckler,banditblade,neonlightbulb,masamune,devilssunrise,godlybook,pixelpopper,turtleshell,leafshield,starhammer,bookofspells])
            {
               e.owned = true;
            }
            for each(e in [orangebauble,leafclip,flowerbobble,schooluniform,cactusdress,redribbon,rangerskirt,reddress,nursehat,nurseuniform,bunnyears,ninjachopsticks,ninjaskirt,cowhorns,cowcostume,mechaarmor,robotears,summerkimono,samidress,blueelephant,drillbits])
            {
               e.owned = true;
            }
            for each(e in [knighthelmet,heroicarmor,captainhat,captainscoat,cardboardbox,hoboclothes,armyhelmet,camojacket,officercoat,officerhat,hornedhelmet,vikingfur,spartancuirass,spartanhelmet,ninjagear,baskethat,wizardcloak,wizardhat,gasmask,puppyhat,captainscoat,hipstershirt,priesttunic])
            {
               e.owned = true;
            }
            for each(e in [hoopearings,bandage,targetbadge,firebadge,icebadge,thunderbadge,pearlnecklace,surgicalmask,eyebrows,fakemustache,cattail,battlepaint,chromeearings,emeraldearings,balancebadge,fairy,chillcloud])
            {
               e.owned = true;
            }
         }
      }
      
      public static function countTotalCost() : *
      {
         var _loc1_:Array = null;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         for each(_loc1_ in [FLAIRS_DISPLAY])
         {
            _loc2_ = 0;
            _loc3_ = 0;
            while(_loc3_ < _loc1_.length)
            {
               _loc2_ += (_loc1_[_loc3_] as Equip).upgradeCost();
               _loc3_++;
            }
         }
      }
      
      public static function countTotalResistance() : *
      {
         var _loc2_:String = null;
         var _loc3_:Equip = null;
         var _loc1_:int = 0;
         for each(_loc2_ in Element.ELEMENTS)
         {
            _loc1_ = 0;
            for each(_loc3_ in BOWS.concat(GUNS).concat(STALVES).concat(SWORDS).concat(TOYS))
            {
               _loc1_ += _loc3_.elementalResistance[_loc2_][_loc3_.level - 1];
            }
         }
         for each(_loc2_ in Status.RESISTANCE)
         {
            _loc1_ = 0;
            for each(_loc3_ in BOWS.concat(GUNS).concat(STALVES).concat(SWORDS).concat(TOYS))
            {
               _loc1_ += _loc3_.statusResistance[_loc2_][_loc3_.level - 1];
            }
         }
         for each(_loc2_ in Element.ELEMENTS)
         {
            _loc1_ = 0;
            for each(_loc3_ in FLAIRS.concat(MALE_HATS).concat(FEMALE_HATS).concat(MALE_ARMOR).concat(FEMALE_ARMOR))
            {
               _loc1_ += _loc3_.elementalResistance[_loc2_][_loc3_.level - 1];
            }
         }
         for each(_loc2_ in Status.RESISTANCE)
         {
            _loc1_ = 0;
            for each(_loc3_ in FLAIRS.concat(MALE_HATS).concat(FEMALE_HATS).concat(MALE_ARMOR).concat(FEMALE_ARMOR))
            {
               _loc1_ += _loc3_.statusResistance[_loc2_][_loc3_.level - 1];
            }
         }
      }
      
      public static function customerMedal() : *
      {
         var _loc1_:Equip = null;
         for each(_loc1_ in EQUIP_SHOP_1)
         {
            if(!_loc1_.owned)
            {
               return;
            }
         }
         Medals.unlock(Medals.bestCustomer);
      }
      
      public static function get(param1:*) : Equip
      {
         if(param1 == undefined)
         {
            return empty;
         }
         return ALL_EQUIPS[param1];
      }
      
      public static function removeDuplicateFlairs(param1:int) : *
      {
      }
      
      public static function emptyFlairs(param1:*) : *
      {
         var _loc2_:Player = Players.PLAYERS[param1 - 1];
         _loc2_.flair1 = empty;
         _loc2_.flair2 = empty;
         _loc2_.flair3 = empty;
      }
      
      public static function initRandomEquips() : *
      {
         if(!Options.altEquipLocations)
         {
            return;
         }
         EQUIP_SHOP_1 = [];
         var _loc1_:Array = [armyhelmet,nursehat,genjiarmor,nurseuniform,pocketwatch,poisonfang,nimbusrod,vortexcannon,fenrirsjaw,icecreamsandwich,pumpkinhead,spiderbobble,santahat,hollyhairpin,heartpendant,giantslayer,slimestaff,alchemistsbow,vikingbuckler,luckyfish,vikingfur,bluedress];
         var _loc2_:int = 0;
         while(_loc2_ < 22)
         {
            EQUIP_SHOP_1[_loc2_] = Equip.getRandomEquip((_loc1_[_loc2_] as Equip).type,true);
            _loc2_++;
         }
         EQUIP_SHOP_2 = EQUIP_SHOP_1;
         EQUIP_SHOP_3 = EQUIP_SHOP_1;
         if(EQUIP_SHOP_1[0])
         {
            EQUIP_SHOP_1[0].cost = 800;
         }
         if(EQUIP_SHOP_1[1])
         {
            EQUIP_SHOP_1[1].cost = 800;
         }
         if(EQUIP_SHOP_1[2])
         {
            EQUIP_SHOP_1[2].cost = 800;
         }
         if(EQUIP_SHOP_1[3])
         {
            EQUIP_SHOP_1[3].cost = 800;
         }
         if(EQUIP_SHOP_1[4])
         {
            EQUIP_SHOP_1[4].cost = 1000;
         }
         if(EQUIP_SHOP_1[5])
         {
            EQUIP_SHOP_1[5].cost = 1000;
         }
         if(EQUIP_SHOP_1[6])
         {
            EQUIP_SHOP_1[6].cost = 1000;
         }
         if(EQUIP_SHOP_1[7])
         {
            EQUIP_SHOP_1[7].cost = 8000;
         }
         if(EQUIP_SHOP_1[8])
         {
            EQUIP_SHOP_1[8].cost = 8000;
         }
         if(EQUIP_SHOP_1[9])
         {
            EQUIP_SHOP_1[9].cost = 8000;
         }
         if(EQUIP_SHOP_1[10])
         {
            EQUIP_SHOP_1[10].cost = 4000;
         }
         if(EQUIP_SHOP_1[11])
         {
            EQUIP_SHOP_1[11].cost = 4000;
         }
         if(EQUIP_SHOP_1[12])
         {
            EQUIP_SHOP_1[12].cost = 12000;
         }
         if(EQUIP_SHOP_1[13])
         {
            EQUIP_SHOP_1[13].cost = 12000;
         }
         if(EQUIP_SHOP_1[14])
         {
            EQUIP_SHOP_1[14].cost = 12000;
         }
         if(EQUIP_SHOP_1[15])
         {
            EQUIP_SHOP_1[15].cost = 60000;
         }
         if(EQUIP_SHOP_1[16])
         {
            EQUIP_SHOP_1[16].cost = 60000;
         }
         if(EQUIP_SHOP_1[17])
         {
            EQUIP_SHOP_1[17].cost = 60000;
         }
         if(EQUIP_SHOP_1[18])
         {
            EQUIP_SHOP_1[18].cost = 60000;
         }
         if(EQUIP_SHOP_1[19])
         {
            EQUIP_SHOP_1[19].cost = 30000;
         }
         if(EQUIP_SHOP_1[20])
         {
            EQUIP_SHOP_1[20].cost = 30000;
         }
         if(EQUIP_SHOP_1[21])
         {
            EQUIP_SHOP_1[21].cost = 30000;
         }
         if(!Players.player1.weapon.owned)
         {
            Players.player1.weapon = Equip.getRandomEquip(ultrapro9000.type);
            Players.player1.armor = Equip.getRandomEquip(hoboclothes.type);
            Players.player1.hat = Equip.getRandomEquip(captainhat.type);
         }
         if(!Players.player2.weapon.owned)
         {
            Players.player2.weapon = Equip.getRandomEquip(Equips.darktooth.type);
            Players.player2.armor = Equip.getRandomEquip(Equips.reddress.type);
            Players.player2.hat = Equip.getRandomEquip(Equips.redribbon.type);
         }
         if(!Players.player3.weapon.owned)
         {
            Players.player3.weapon = Equip.getRandomEquip(Equips.shadowblaster.type);
            Players.player3.armor = Equip.getRandomEquip(Equips.officercoat.type);
            Players.player3.hat = Equip.getRandomEquip(Equips.officerhat.type);
         }
         if(!Players.player4.weapon.owned)
         {
            Players.player4.weapon = Equip.getRandomEquip(Equips.fairybow.type);
            Players.player4.armor = Equip.getRandomEquip(Equips.rangerskirt.type);
            Players.player4.hat = Equip.getRandomEquip(Equips.orangebauble.type);
         }
         if(!Players.player5.weapon.owned)
         {
            Players.player5.weapon = Equip.getRandomEquip(Equips.steelbuckler.type);
            Players.player5.armor = Equip.getRandomEquip(Equips.heroicarmor.type);
            Players.player5.hat = Equip.getRandomEquip(Equips.knighthelmet.type);
         }
         Players.player1.hat.owned = true;
         Players.player1.armor.owned = true;
         Players.player1.weapon.owned = true;
         Players.player1.setEquipGraphics();
      }
   }
}

