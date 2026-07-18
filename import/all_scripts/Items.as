package
{
   public class Items
   {
      public static var APiconEbf5SVG:Item = new Item({
         "SID":"oj",
         "target":Target.ONE_ALLY,
         "power":100,
         "cost":500,
         "icon":1236
      });
      
      public static var pumpkin:Item = new Item({
         "SID":"pumpkin",
         "type":Item.HP,
         "target":Target.ONE_ALLY,
         "power":300,
         "subPower":20,
         "cost":30,
         "icon":523
      });
      
      public static var pineapple:Item = new Item({
         "SID":"pineapple",
         "type":Item.HP,
         "target":Target.ONE_ALLY,
         "power":1000,
         "subPower":40,
         "cost":160,
         "icon":524
      });
      
      public static var watermelon:Item = new Item({
         "SID":"watermelon",
         "type":Item.HP,
         "target":Target.ONE_ALLY,
         "power":3000,
         "subPower":60,
         "cost":700,
         "icon":525
      });
      
      public static var dragonfruit:Item = new Item({
         "SID":"dragonfruit",
         "type":Item.HP,
         "target":Target.ONE_ALLY,
         "power":10000,
         "subPower":80,
         "cost":6000,
         "icon":526
      });
      
      public static var raspberries:Item = new Item({
         "SID":"raspberries",
         "type":Item.HP,
         "target":Target.ALL_ALLY,
         "power":200,
         "subPower":20,
         "cost":250,
         "icon":527
      });
      
      public static var blueberries:Item = new Item({
         "SID":"blueberries",
         "type":Item.HP,
         "target":Target.ALL_ALLY,
         "power":1000,
         "subPower":30,
         "cost":1600,
         "icon":528
      });
      
      public static var cloudberries:Item = new Item({
         "SID":"cloudberries",
         "type":Item.HP,
         "target":Target.ALL_ALLY,
         "power":6000,
         "subPower":40,
         "cost":8000,
         "icon":529
      });
      
      public static var crisps:Item = new Item({
         "SID":"crisps",
         "type":Item.COOLDOWN,
         "target":Target.ALL_ALLY,
         "subPower":1,
         "stuffing":1,
         "cost":3000,
         "icon":535
      });
      
      public static var chips:Item = new Item({
         "SID":"chips",
         "type":Item.HP,
         "target":Target.ALL_ALLY,
         "power":0,
         "subPower":60,
         "stuffing":2,
         "cost":10000,
         "icon":536
      });
      
      public static var pretzel:Item = new Item({
         "SID":"pretzel",
         "type":Item.MISC,
         "target":Target.ALL_ALLY,
         "power":1,
         "stuffing":2,
         "cost":4000,
         "icon":534
      });
      
      public static var burger:Item = new Item({
         "SID":"burger",
         "type":Item.HP_COOLDOWN,
         "target":Target.ONE_ALLY,
         "power":999999,
         "subPower":3,
         "stuffing":3,
         "cost":10000,
         "icon":537
      });
      
      public static var pizza:Item = new Item({
         "SID":"pizza",
         "type":Item.HP_COOLDOWN,
         "target":Target.ALL_ALLY,
         "power":999999,
         "subPower":3,
         "stuffing":3,
         "cost":50000,
         "icon":538
      });
      
      public static var chili:Item = new Item({
         "SID":"chili",
         "type":Item.MISC,
         "target":Target.ONE_ALLY,
         "status":Status.SCORCHED,
         "statusDegree":5,
         "cost":50000,
         "icon":532
      });
      
      public static var garlic:Item = new Item({
         "SID":"garlic",
         "type":Item.MISC,
         "target":Target.ONE_ALLY,
         "cost":20,
         "icon":545
      });
      
      public static var apple:Item = new Item({
         "SID":"apple",
         "type":Item.COOLDOWN,
         "target":Target.ONE_ALLY,
         "power":1,
         "subPower":1,
         "cost":100,
         "icon":521
      });
      
      public static var cupcake:Item = new Item({
         "SID":"cupcake",
         "type":Item.COOLDOWN,
         "target":Target.ONE_ALLY,
         "power":2,
         "subPower":2,
         "cost":1000,
         "icon":567,
         "stuffing":3
      });
      
      public static var banana:Item = new Item({
         "SID":"banana",
         "type":Item.MISC,
         "target":Target.ONE_ALLY,
         "power":300,
         "subPower":20,
         "cost":30,
         "icon":522
      });
      
      public static var coffee:Item = new Item({
         "SID":"coffee",
         "target":Target.DEAD_ALLY,
         "power":30,
         "cost":500,
         "icon":548
      });
      
      public static var espresso:Item = new Item({
         "SID":"espresso",
         "target":Target.DEAD_ALLY,
         "power":110,
         "subPower":50,
         "cost":1000,
         "icon":549
      });
      
      public static var beer:Item = new Item({
         "SID":"beer",
         "target":Target.ONE_ALLY,
         "power":60,
         "cost":400,
         "icon":541
      });
      
      public static var cola:Item = new Item({
         "SID":"cola",
         "target":Target.ONE_ALLY,
         "power":60,
         "cost":400,
         "icon":542
      });
      
      public static var bru:Item = new Item({
         "SID":"bru",
         "target":Target.ONE_ALLY,
         "power":60,
         "cost":400,
         "icon":539
      });
      
      public static var energy:Item = new Item({
         "SID":"energy",
         "target":Target.ONE_ALLY,
         "power":60,
         "cost":400,
         "icon":540
      });
      
      public static var orangejuice:Item = new Item({
         "SID":"oj",
         "target":Target.ONE_ALLY,
         "power":100,
         "cost":500,
         "icon":544
      });
      
      public static var bacon:Item = new Item({
         "SID":"bacon",
         "type":Stats.PHYSICAL_BOOST,
         "cost":1000,
         "icon":557,
         "target":1
      });
      
      public static var beef:Item = new Item({
         "SID":"beef",
         "type":Stats.MAGIC_BOOST,
         "cost":1000,
         "icon":558,
         "target":1
      });
      
      public static var chicken:Item = new Item({
         "SID":"chicken",
         "type":Stats.DEXTERITY_BOOST,
         "cost":1000,
         "icon":559,
         "target":1
      });
      
      public static var egg:Item = new Item({
         "SID":"egg",
         "type":Stats.HEALTH_BOOST,
         "cost":1000,
         "icon":560,
         "target":1
      });
      
      public static var poptart:Item = new Item({
         "SID":"poptart",
         "type":Stats.PHYSICAL_BOOST,
         "cost":1000,
         "icon":563,
         "target":2
      });
      
      public static var donut:Item = new Item({
         "SID":"donut",
         "type":Stats.MAGIC_BOOST,
         "cost":1000,
         "icon":564,
         "target":2
      });
      
      public static var cake:Item = new Item({
         "SID":"cake",
         "type":Stats.DEXTERITY_BOOST,
         "cost":1000,
         "icon":565,
         "target":2
      });
      
      public static var lollipop:Item = new Item({
         "SID":"lollipop",
         "type":Stats.HEALTH_BOOST,
         "cost":1000,
         "icon":566,
         "target":2
      });
      
      public static var bread:Item = new Item({
         "SID":"bread",
         "type":Stats.PHYSICAL_BOOST,
         "cost":1000,
         "icon":553,
         "target":3
      });
      
      public static var potato:Item = new Item({
         "SID":"potato",
         "type":Stats.MAGIC_BOOST,
         "cost":1000,
         "icon":554,
         "target":3
      });
      
      public static var pill:Item = new Item({
         "SID":"pill",
         "type":Stats.DEXTERITY_BOOST,
         "cost":1000,
         "icon":550,
         "target":3
      });
      
      public static var mushroom:Item = new Item({
         "SID":"mushroom",
         "type":Stats.HEALTH_BOOST,
         "cost":1000,
         "icon":555,
         "target":3
      });
      
      public static var turnip:Item = new Item({
         "SID":"turnip",
         "type":Stats.PHYSICAL_BOOST,
         "cost":1000,
         "icon":556,
         "target":4
      });
      
      public static var grapes:Item = new Item({
         "SID":"grapes",
         "type":Stats.MAGIC_BOOST,
         "cost":1000,
         "icon":530,
         "target":4
      });
      
      public static var mint:Item = new Item({
         "SID":"mint",
         "type":Stats.DEXTERITY_BOOST,
         "cost":1000,
         "icon":546,
         "target":4
      });
      
      public static var nut:Item = new Item({
         "SID":"nut",
         "type":Stats.HEALTH_BOOST,
         "cost":1000,
         "icon":562,
         "target":4
      });
      
      public static var sushi:Item = new Item({
         "SID":"sushi",
         "type":Stats.PHYSICAL_BOOST,
         "cost":1000,
         "icon":551,
         "target":5
      });
      
      public static var riceball:Item = new Item({
         "SID":"riceball",
         "type":Stats.MAGIC_BOOST,
         "cost":1000,
         "icon":552,
         "target":5
      });
      
      public static var yoghurt:Item = new Item({
         "SID":"yoghurt",
         "type":Stats.DEXTERITY_BOOST,
         "cost":1000,
         "icon":547,
         "target":5
      });
      
      public static var milk:Item = new Item({
         "SID":"milk",
         "type":Stats.HEALTH_BOOST,
         "cost":1000,
         "icon":543,
         "target":5
      });
      
      public static var snowball:Item = new Item({
         "SID":"snowball",
         "cost":20,
         "icon":589,
         "target":Target.ONE_ENEMY,
         "throwable":true
      });
      
      public static var brick:Item = new Item({
         "SID":"brick",
         "cost":40,
         "icon":619,
         "target":Target.ONE_ENEMY,
         "throwable":true
      });
      
      public static var shuriken:Item = new Item({
         "SID":"shuriken",
         "cost":250,
         "icon":583,
         "target":Target.ONE_ENEMY,
         "throwable":true
      });
      
      public static var bomb:Item = new Item({
         "SID":"bomb",
         "cost":400,
         "icon":614,
         "target":Target.ONE_ENEMY,
         "throwable":true
      });
      
      public static var wool:Item = new Item({
         "SID":"wool",
         "cost":30,
         "icon":621
      });
      
      public static var turd:Item = new Item({
         "SID":"earth",
         "cost":60,
         "icon":640
      });
      
      public static var poop:Item = new Item({
         "SID":"turd",
         "cost":60,
         "icon":629
      });
      
      public static var seashell:Item = new Item({
         "SID":"seashell",
         "cost":130,
         "icon":626
      });
      
      public static var cactus:Item = new Item({
         "SID":"cactus",
         "cost":170,
         "icon":596
      });
      
      public static var iron:Item = new Item({
         "SID":"iron",
         "cost":200,
         "icon":612
      });
      
      public static var feather:Item = new Item({
         "SID":"feather",
         "cost":270,
         "icon":586
      });
      
      public static var spring:Item = new Item({
         "SID":"spring",
         "cost":330,
         "icon":580
      });
      
      public static var wood:Item = new Item({
         "SID":"wood",
         "cost":360,
         "icon":609
      });
      
      public static var herb:Item = new Item({
         "SID":"herb",
         "cost":420,
         "icon":597
      });
      
      public static var tape:Item = new Item({
         "SID":"tape",
         "cost":500,
         "icon":592
      });
      
      public static var root:Item = new Item({
         "SID":"root",
         "cost":650,
         "icon":608
      });
      
      public static var powder:Item = new Item({
         "SID":"powder",
         "cost":800,
         "icon":611
      });
      
      public static var flower:Item = new Item({
         "SID":"flower",
         "cost":300,
         "icon":622
      });
      
      public static var pipe:Item = new Item({
         "SID":"pipe",
         "cost":480,
         "icon":628
      });
      
      public static var geode:Item = new Item({
         "SID":"geode",
         "cost":600,
         "icon":595
      });
      
      public static var glass:Item = new Item({
         "SID":"glass",
         "cost":900,
         "icon":630
      });
      
      public static var fur:Item = new Item({
         "SID":"fur",
         "cost":950,
         "icon":607
      });
      
      public static var butterflywing:Item = new Item({
         "SID":"wing",
         "cost":980,
         "icon":605
      });
      
      public static var gems:Item = new Item({
         "SID":"gems",
         "cost":1000,
         "icon":632
      });
      
      public static var ice:Item = new Item({
         "SID":"ice",
         "cost":1100,
         "icon":600
      });
      
      public static var water:Item = new Item({
         "SID":"water",
         "cost":1200,
         "icon":601
      });
      
      public static var buckle:Item = new Item({
         "SID":"buckle",
         "cost":1300,
         "icon":635
      });
      
      public static var steel:Item = new Item({
         "SID":"steel",
         "cost":1400,
         "icon":581
      });
      
      public static var magma:Item = new Item({
         "SID":"magma",
         "cost":1800,
         "icon":606
      });
      
      public static var floppy:Item = new Item({
         "SID":"floppy",
         "cost":2000,
         "icon":590
      });
      
      public static var silk:Item = new Item({
         "SID":"silk",
         "cost":2100,
         "icon":623
      });
      
      public static var gear:Item = new Item({
         "SID":"gear",
         "cost":2300,
         "icon":625
      });
      
      public static var plastic:Item = new Item({
         "SID":"plastic",
         "cost":2500,
         "icon":603
      });
      
      public static var amber:Item = new Item({
         "SID":"amber",
         "cost":2700,
         "icon":633
      });
      
      public static var leather:Item = new Item({
         "SID":"leather",
         "cost":3000,
         "icon":627
      });
      
      public static var virus:Item = new Item({
         "SID":"virus",
         "cost":3200,
         "icon":598
      });
      
      public static var claw:Item = new Item({
         "SID":"claw",
         "cost":3500,
         "icon":624
      });
      
      public static var rune2:Item = new Item({
         "SID":"rune2",
         "cost":4000,
         "icon":591
      });
      
      public static var spike:Item = new Item({
         "SID":"spike",
         "cost":4500,
         "icon":587
      });
      
      public static var silver:Item = new Item({
         "SID":"silver",
         "cost":5000,
         "icon":585
      });
      
      public static var satin:Item = new Item({
         "SID":"satin",
         "cost":6000,
         "icon":604
      });
      
      public static var ruby:Item = new Item({
         "SID":"ruby",
         "cost":6600,
         "icon":616
      });
      
      public static var topaz:Item = new Item({
         "SID":"topaz",
         "cost":7700,
         "icon":637
      });
      
      public static var sapphire:Item = new Item({
         "SID":"sapphire",
         "cost":8800,
         "icon":602
      });
      
      public static var emerald:Item = new Item({
         "SID":"emerald",
         "cost":9900,
         "icon":599
      });
      
      public static var gold:Item = new Item({
         "SID":"gold",
         "cost":12000,
         "icon":638
      });
      
      public static var rune:Item = new Item({
         "SID":"rune",
         "cost":20000,
         "icon":613
      });
      
      public static var cpu:Item = new Item({
         "SID":"cpu",
         "cost":22000,
         "icon":610
      });
      
      public static var kevlar:Item = new Item({
         "SID":"kevlar",
         "cost":25000,
         "icon":634
      });
      
      public static var opal:Item = new Item({
         "SID":"opal",
         "cost":30000,
         "icon":631
      });
      
      public static var lego:Item = new Item({
         "SID":"lego",
         "cost":40000,
         "icon":617
      });
      
      public static var moonpearl:Item = new Item({
         "SID":"moonpearl",
         "cost":48000,
         "icon":588
      });
      
      public static var scales:Item = new Item({
         "SID":"scales",
         "cost":56000,
         "icon":618
      });
      
      public static var gamechild:Item = new Item({
         "SID":"gamechild",
         "cost":76000,
         "icon":594
      });
      
      public static var titanium:Item = new Item({
         "SID":"titanium",
         "cost":80000,
         "icon":593
      });
      
      public static var diamond:Item = new Item({
         "SID":"diamond",
         "cost":92000,
         "icon":584
      });
      
      public static var darkmatter:Item = new Item({
         "SID":"darkmatter",
         "cost":100000,
         "icon":615
      });
      
      public static var plutonium:Item = new Item({
         "SID":"plutonium",
         "cost":104000,
         "icon":582
      });
      
      public static var grail:Item = new Item({
         "SID":"grail",
         "cost":112000,
         "icon":639
      });
      
      public static var mythril:Item = new Item({
         "SID":"mythril",
         "cost":120000,
         "icon":620
      });
      
      public static var starfragment:Item = new Item({
         "SID":"starfragment",
         "cost":124000,
         "icon":636
      });
      
      public static var oldboots:Item = new Item({
         "SID":"oldboots",
         "icon":645
      });
      
      public static var spikedboots:Item = new Item({
         "SID":"spikedboots",
         "icon":647
      });
      
      public static var thermalboots:Item = new Item({
         "SID":"thermalboots",
         "icon":646
      });
      
      public static var leafyboots:Item = new Item({
         "SID":"leafyboots",
         "icon":648
      });
      
      public static var wingedboots:Item = new Item({
         "SID":"wingedboots",
         "icon":649
      });
      
      public static var magneticboots:Item = new Item({
         "SID":"magneticboots",
         "icon":650
      });
      
      public static var rubberboots:Item = new Item({
         "SID":"rubberboots",
         "icon":651
      });
      
      public static var raft:Item = new Item({
         "SID":"raft",
         "icon":657
      });
      
      public static var shovel:Item = new Item({
         "SID":"shovel",
         "icon":658
      });
      
      public static var stepladder:Item = new Item({
         "SID":"stepladder",
         "icon":700
      });
      
      public static var candle:Item = new Item({
         "SID":"candle",
         "icon":659
      });
      
      public static var axe:Item = new Item({
         "SID":"axe",
         "icon":660
      });
      
      public static var hammer:Item = new Item({
         "SID":"hammer",
         "icon":662
      });
      
      public static var bighammer:Item = new Item({
         "SID":"bighammer",
         "icon":663
      });
      
      public static var fishingrod:Item = new Item({
         "SID":"fishingrod",
         "icon":661
      });
      
      public static var map:Item = new Item({
         "SID":"map",
         "icon":671
      });
      
      public static var map2:Item = new Item({
         "SID":"map2",
         "icon":672
      });
      
      public static var copperkey:Item = new Item({
         "SID":"copperkey",
         "icon":675
      });
      
      public static var topazkey:Item = new Item({
         "SID":"topazkey",
         "icon":676
      });
      
      public static var coralkey:Item = new Item({
         "SID":"coralkey",
         "icon":677
      });
      
      public static var goldkey:Item = new Item({
         "SID":"goldkey",
         "icon":678
      });
      
      public static var woodenkey:Item = new Item({
         "SID":"woodenkey",
         "icon":679
      });
      
      public static var diamondkey:Item = new Item({
         "SID":"diamondkey",
         "icon":680
      });
      
      public static var earthorb:Item = new Item({
         "SID":"earthorb",
         "icon":681
      });
      
      public static var windorb:Item = new Item({
         "SID":"windorb",
         "icon":682
      });
      
      public static var waterorb:Item = new Item({
         "SID":"waterorb",
         "icon":683
      });
      
      public static var fireorb:Item = new Item({
         "SID":"fireorb",
         "icon":684
      });
      
      public static var scouter:Item = new Item({
         "SID":"scouter",
         "icon":695
      });
      
      public static var flute:Item = new Item({
         "SID":"flute",
         "icon":652
      });
      
      public static var ocarina:Item = new Item({
         "SID":"ocarina",
         "icon":653
      });
      
      public static var musicCD:Item = new Item({
         "SID":"musicCD",
         "icon":654
      });
      
      public static var stick:Item = new Item({
         "SID":"stick",
         "icon":655
      });
      
      public static var plank:Item = new Item({
         "SID":"plank",
         "icon":656
      });
      
      public static var panties:Item = new Item({
         "SID":"panties",
         "icon":664
      });
      
      public static var stonehead:Item = new Item({
         "SID":"stonehead",
         "icon":665
      });
      
      public static var earthenware:Item = new Item({
         "SID":"earthenware",
         "icon":666
      });
      
      public static var newspaper:Item = new Item({
         "SID":"newspaper",
         "icon":667
      });
      
      public static var magazine:Item = new Item({
         "SID":"magazine",
         "icon":668
      });
      
      public static var mail:Item = new Item({
         "SID":"mail",
         "icon":669
      });
      
      public static var keycard:Item = new Item({
         "SID":"keycard",
         "icon":673
      });
      
      public static var keycard2:Item = new Item({
         "SID":"keycard2",
         "icon":674
      });
      
      public static var emptybottle:Item = new Item({
         "SID":"emptybottle",
         "icon":685
      });
      
      public static var milkbottle:Item = new Item({
         "SID":"milkbottle",
         "icon":686
      });
      
      public static var waterbottle:Item = new Item({
         "SID":"waterbottle",
         "icon":687
      });
      
      public static var lavabottle:Item = new Item({
         "SID":"lavabottle",
         "icon":688
      });
      
      public static var darkbottle:Item = new Item({
         "SID":"darkbottle",
         "icon":689
      });
      
      public static var holybottle:Item = new Item({
         "SID":"holybottle",
         "icon":690
      });
      
      public static var battery:Item = new Item({
         "SID":"battery",
         "icon":691
      });
      
      public static var greenjewel:Item = new Item({
         "SID":"greenjewel",
         "icon":692
      });
      
      public static var bluejewel:Item = new Item({
         "SID":"bluejewel",
         "icon":693
      });
      
      public static var redjewel:Item = new Item({
         "SID":"redjewel",
         "icon":694
      });
      
      public static var sunglasses:Item = new Item({
         "SID":"sunglasses",
         "icon":696
      });
      
      public static var glasses:Item = new Item({
         "SID":"glasses",
         "icon":697
      });
      
      public static var sock1:Item = new Item({
         "SID":"sock1",
         "icon":701
      });
      
      public static var sock2:Item = new Item({
         "SID":"sock2",
         "icon":702
      });
      
      public static var starball:Item = new Item({
         "SID":"starball",
         "icon":703
      });
      
      public static var tomato:Item = new Item({
         "SID":"tomato",
         "icon":531
      });
      
      public static var headband:Item = new Item({
         "SID":"headband",
         "icon":698
      });
      
      public static var cookie:Item = new Item({
         "SID":"cookie",
         "icon":568
      });
      
      public static var halloweencandy:Item = new Item({
         "SID":"halloweencandy",
         "icon":570
      });
      
      public static var candycane:Item = new Item({
         "SID":"candycane",
         "icon":569
      });
      
      public static var valentine:Item = new Item({
         "SID":"valentine",
         "icon":571
      });
      
      public static var easteregg:Item = new Item({
         "SID":"easteregg",
         "icon":572
      });
      
      public static var popcorn:Item = new Item({
         "SID":"popcorn",
         "icon":533
      });
      
      public static var chocolate:Item = new Item({
         "SID":"chocolate",
         "icon":561
      });
      
      public static var CRAFT_LIST:Array = [snowball,wool,brick,turd,seashell,cactus,iron,shuriken,feather,flower,spring,wood,bomb,herb,pipe,tape,geode,root,powder,glass,fur,butterflywing,gems,ice,water,buckle,steel,magma,floppy,silk,gear,plastic,amber,leather,virus,claw,rune2,spike,silver,satin,ruby,topaz,sapphire,emerald,gold,rune,cpu,kevlar,opal,lego,moonpearl,scales,gamechild,titanium,diamond,darkmatter,plutonium,grail,mythril,starfragment];
      
      public static var FOOD_LIST:Array = [pumpkin,pineapple,watermelon,dragonfruit,raspberries,blueberries,cloudberries,garlic,banana,pretzel,apple,cupcake,beer,cola,bru,energy,coffee,espresso,chili,orangejuice,crisps,chips,burger,pizza,snowball,brick,shuriken,bomb];
      
      public static var STAT_LIST:Array = [bacon,beef,chicken,egg,poptart,donut,cake,lollipop,bread,potato,pill,mushroom,turnip,grapes,mint,nut,sushi,riceball,yoghurt,milk];
      
      public static var KEY_LIST:Array = [scouter,oldboots,magneticboots,leafyboots,spikedboots,thermalboots,wingedboots,rubberboots,hammer,bighammer,axe,shovel,stepladder,raft,candle,fishingrod,map,map2,woodenkey,coralkey,topazkey,copperkey,goldkey,diamondkey,flute,ocarina,starball,musicCD,stick,plank,panties,stonehead,earthenware,newspaper,magazine,mail,popcorn,keycard,keycard2,emptybottle,milkbottle,lavabottle,waterbottle,darkbottle,holybottle,sunglasses,glasses,sock1,sock2,headband,battery,poop,cookie,chocolate,earthorb,windorb,fireorb,waterorb,greenjewel,bluejewel,redjewel,halloweencandy,candycane,valentine,easteregg];
      
      public static var FOOD_SORTED:Array = [pumpkin,pineapple,watermelon,dragonfruit,raspberries,blueberries,cloudberries,garlic,banana,pretzel,apple,cupcake,beer,cola,bru,energy,coffee,espresso,chili,orangejuice,crisps,chips,burger,pizza];
      
      public static var PREMIUM_ITEMS:Array = [burger,pizza,chili,espresso,orangejuice];
      
      public static var ITEM_SHOP_1:Array = CRAFT_LIST.slice(0,27);
      
      public static var ITEM_SHOP_2:Array = CRAFT_LIST.slice(0,44);
      
      public static var ITEM_SHOP_3:Array = CRAFT_LIST;
      
      public static var FOOD_SHOP:Array = [pumpkin,pineapple,watermelon,dragonfruit,raspberries,blueberries,cloudberries,garlic,banana,pretzel,apple,cupcake,beer,cola,bru,energy,coffee,crisps,chips,burger];
      
      public static var RARE_FOOD_SHOP:Array = STAT_LIST;
      
      public static var RARE_FOOD_SHOP_SHORT:Array = [bacon,beef,chicken,egg,poptart,donut,cake,lollipop,sushi,riceball,yoghurt,milk];
      
      public static var ALL_ITEMS:Array = FOOD_LIST.concat(STAT_LIST).concat(CRAFT_LIST).concat(KEY_LIST).concat([tomato]);
      
      public function Items()
      {
         super();
      }
      
      public static function initItems() : *
      {
      }
      
      public static function saveItems() : *
      {
      }
      
      public static function loadItems() : *
      {
      }
      
      public static function clearKeyItems() : *
      {
         var _loc1_:Item = null;
         for each(_loc1_ in KEY_LIST)
         {
            _loc1_.quantity = 0;
         }
      }
      
      public static function init() : *
      {
         var _loc1_:Item = null;
         if(Main.newGamePlusFlag)
         {
            return;
         }
         for each(_loc1_ in ALL_ITEMS)
         {
            _loc1_.quantity = 0;
            if(Debug.allItems)
            {
               _loc1_.quantity = 99;
            }
         }
         for each(_loc1_ in RARE_FOOD_SHOP)
         {
            _loc1_.purchased = 0;
         }

         // Disable initial items as they are now handled by an event in Map152
         //oldboots.quantity = 1;
         //scouter.quantity = 1;
         //map.quantity = 1;
         //bru.quantity = 1;
         //shuriken.quantity = 1;
      }
      
      public static function resetKeyItems() : *
      {
         var _loc1_:Item = null;
         for each(_loc1_ in [axe,hammer,bighammer,shovel,stepladder,raft,leafyboots,spikedboots,thermalboots,greenjewel,bluejewel,redjewel,earthorb,waterorb,fireorb,windorb])
         {
            _loc1_.quantity = 0;
         }
      }
      
      public static function setStartingItems() : *
      {
         if(Main.newGamePlusFlag)
         {
            return;
         }
         if(Debug.skillSet == 1)
         {
            pumpkin.quantity = 7;
            pineapple.quantity = 1;
            raspberries.quantity = 4;
            garlic.quantity = 2;
            apple.quantity = 1;
            beer.quantity = 1;
            bru.quantity = 1;
            coffee.quantity = 3;
         }
         if(Debug.skillSet == 2)
         {
            pumpkin.quantity = 13;
            pineapple.quantity = 8;
            watermelon.quantity = 3;
            raspberries.quantity = 11;
            blueberries.quantity = 4;
            garlic.quantity = 5;
            banana.quantity = 6;
            apple.quantity = 4;
            cupcake.quantity = 2;
            pretzel.quantity = 2;
            beer.quantity = 4;
            bru.quantity = 3;
            cola.quantity = 3;
            energy.quantity = 4;
            coffee.quantity = 9;
            espresso.quantity = 1;
            orangejuice.quantity = 1;
            crisps.quantity = 1;
            burger.quantity = 1;
            chili.quantity = 1;
            brick.quantity = 4;
            snowball.quantity = 8;
            shuriken.quantity = 4;
            bomb.quantity = 3;
         }
         if(Debug.skillSet == 3)
         {
            pumpkin.quantity = 21;
            pineapple.quantity = 15;
            watermelon.quantity = 8;
            dragonfruit.quantity = 5;
            raspberries.quantity = 18;
            blueberries.quantity = 7;
            cloudberries.quantity = 3;
            garlic.quantity = 9;
            banana.quantity = 8;
            apple.quantity = 8;
            cupcake.quantity = 5;
            pretzel.quantity = 4;
            beer.quantity = 8;
            bru.quantity = 9;
            cola.quantity = 7;
            energy.quantity = 6;
            coffee.quantity = 32;
            espresso.quantity = 2;
            chili.quantity = 1;
            orangejuice.quantity = 2;
            crisps.quantity = 3;
            burger.quantity = 9;
            chips.quantity = 2;
            pizza.quantity = 7;
            brick.quantity = 11;
            snowball.quantity = 68;
            shuriken.quantity = 9;
            bomb.quantity = 7;
         }
      }
   }
}

