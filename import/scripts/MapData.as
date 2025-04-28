package {
  import flash.display.MovieClip;
  import foes.*;
  import text.*;
  
  public class MapData {
    public static var temp:Object;
    
    public static var temp0:Object;
    
    public static var temp1:Object;
    
    public static var temp2:Object;
    
    public static var areaNo:int;
    
    public static var map:Maps;
    
    public static const CHEST:String = "chest";
    
    public static const PUSH_BLOCK:String = "push block";
    
    public static const ICE_BLOCK:String = "ice block";
    
    public static const KEY_BLOCK:String = "key block";
    
    public static const SECRET:String = "secret";
    
    public static const NOTE:String = "note";
    
    public static const SWITCH:String = "switch";
    
    public static const BUNNY:String = "bunny";
    
    public static const SIGN:String = "sign";
    
    public static const SIGN2:String = "sign2";
    
    public static const TORCH:String = "torch";
    
    public static const ROCK:String = "rock";
    
    public static const TREE:String = "tree";
    
    public static const PED:String = "pedestal";
    
    public static const LADDER:String = "ladder";
    
    public static const FOE:String = "foe";
    
    public static const SHOP:String = "shop";
    
    public static const NPCMC:String = "npc";
    
    public static const WARP:String = "warp";
    
    public static const ANIMAL:String = "animal";
    
    public static const SCENE:String = "scene";
    
    public static const EQUIP_SHOP:String = "equip shop";
    
    public static const ITEM_SHOP:String = "item shop";
    
    public static const FOOD_SHOP:String = "food shop";
    
    public static const RARE_FOOD_SHOP:String = "rare shop";
    
    public static const tempMusic:String = "";
    
    public static var t:Boolean = false;
    
    public static var MY:int = 4;
    
    public static var MX:int = 4;
    
    public static var area:String = "";
    
    public static var battles:Array = [];
    
    public static var battlesAlt:Array = [];
    
    public static var battleIcons:Array = [];
    
    public static var battleIconsAlt:Array = [];
    
    public static var battleBG:Array = [];
    
    public static var battleBGM:Array = [];
    
    public static var battleFlags:Array = [];
    
    public static var respawn:Array = [];
    
    public static var doorLinks:Array = [];
    
    public static var weather:Array = [];
    
    public static var altWeather:Array = [];
    
    public static const HOPE_HARBOR:String = "HOPE_HARBOR";
    
    public static const WILD_TROPICS:String = "WILD_TROPICS";
    
    public static const GRAND_GALLERY:String = "GRAND_GALLERY";
    
    public static const ICE_CAVE:String = "ICE_CAVE";
    
    public static const THE_WASTELANDS:String = "THE_WASTELANDS";
    
    public static const IRON_FORTRESS:String = "IRON_FORTRESS";
    
    public static const GREENWOOD_VILLAGE:String = "GREENWOOD_VILLAGE";
    
    public static const MYSTIC_WOODS:String = "MYSTIC_WOODS";
    
    public static const FORGOTTEN_RUINS:String = "FORGOTTEN_RUINS";
    
    public static const RAINBOW_RIVER:String = "RAINBOW_RIVER";
    
    public static const FROZEN_VALLEY:String = "FROZEN_VALLEY";
    
    public static const REDPINE_TOWN:String = "REDPINE_TOWN";
    
    public static const THE_RAPTURE:String = "THE_RAPTURE";
    
    public static const LAVA_LAKE:String = "LAVA_LAKE";
    
    public static const UNKNOWN_LOCATION:String = "UNKNOWN_LOCATION";
    
    public static const GLITCH_ZONE:String = "GLITCH_ZONE";
    
    public static const GLITCH_ZONE_2:String = "GLITCH_ZONE_2";
    
    public static const WARP_ZONE:String = "WARP_ZONE";
    
    public static const WORMHOLE:String = "WORMHOLE";
    
    public static const FREEZEFLAME_DUNGEON:String = "FREEZEFLAME_DUNGEON";
    
    public static const MINESHAFT_MAZE:String = "MINESHAFT_MAZE";
    
    public static const DEATHLY_HOLLOWS:String = "DEATHLY_HOLLOWS";
    
    public static const CRYSTAL_CAVERNS:String = "CRYSTAL_CAVERNS";
    
    public static const TEMPLE_OF_TRIALS:String = "TEMPLE_OF_TRIALS";
    
    public static const THE_SEA:String = "THE_SEA";
    
    public static const DATA_BUNKER:String = "DATA_BUNKER";
    
    public static const BATTLE_ARENA:String = "BATTLE_ARENA";
    
    public static const LIBRARY:String = "GREENWOOD_LIBRARY";
    
    public static var wasInBattle:Boolean = false;
    
    public static var mapNo:int = 0;
    
    public function MapData() {
      super();
    }
    
    public static function retroactiveCards(param1:int) : * {
      var _loc2_:Array = null;
      var _loc3_:Object = null;
      for each(_loc3_ in Maps.instance.objectData) {
        if(_loc3_.mc == "chest" + param1) {
          _loc2_ = _loc3_.data;
        }
      }
      if(!_loc2_) {
        return;
      }
      var _loc4_:int = 0;
      while(_loc4_ < _loc2_.length) {
        if(_loc2_[_loc4_] is Card && !(_loc2_[_loc4_] as Card).quantity) {
          (_loc2_[_loc4_] as Card).quantity = 1;
          Cards.calculatePerks();
        }
        _loc4_ += 2;
      }
    }
    
    public static function initMapVars() : * {
      Maps.switchData[0] = true;
      Maps.switchData[1] = true;
      Maps.switchData[11] = true;
      Maps.switchData[12] = true;
      Maps.switchData[13] = true;
      Maps.switchData[18] = true;
      Maps.switchData[31] = true;
      Maps.switchData[32] = true;
      Maps.switchData[33] = true;
      Maps.switchData[34] = true;
      Maps.switchData[35] = true;
      Maps.switchData[36] = true;
      Maps.switchData[37] = true;
      Maps.switchData[38] = true;
      Maps.switchData[39] = true;
      Maps.switchData[40] = true;
      Maps.switchData[44] = true;
      Maps.switchData[45] = true;
      Maps.switchData[46] = true;
      Maps.switchData[47] = true;
      Maps.switchData[48] = true;
      Maps.switchData[49] = true;
      Maps.switchData[57] = true;
      Maps.switchData[58] = true;
      Maps.switchData[59] = true;
      Maps.switchData[60] = true;
      Maps.switchData[65] = true;
      Maps.switchData[66] = true;
      Maps.switchData[67] = true;
      Maps.switchData[68] = true;
      Maps.switchData[69] = true;
      Maps.switchData[70] = true;
      Maps.switchData[71] = true;
      Maps.switchData[72] = true;
      Maps.switchData[73] = true;
      Maps.switchData[74] = true;
      Maps.switchData[75] = true;
      Maps.switchData[76] = true;
      Maps.switchData[77] = true;
      Maps.switchData[78] = true;
      Maps.switchData[79] = true;
      Maps.switchData[80] = true;
      Maps.switchData[81] = true;
      Maps.switchData[82] = true;
      Maps.switchData[83] = true;
      Maps.switchData[84] = true;
      Maps.switchData[85] = true;
      Maps.switchData[86] = true;
      Maps.switchData[106] = true;
      Maps.switchData[107] = false;
      Maps.switchData[108] = true;
      Maps.switchData[109] = true;
      Maps.switchData[110] = true;
      Maps.switchData[111] = true;
      Maps.switchData[112] = true;
      Maps.switchData[113] = true;
      Maps.switchData[114] = true;
      Maps.switchData[115] = true;
      Maps.switchData[116] = true;
      Maps.switchData[117] = true;
      Maps.switchData[118] = true;
      Maps.switchData[119] = true;
      Maps.switchData[133] = true;
      Maps.switchData[134] = true;
      Maps.switchData[135] = true;
      Maps.switchData[136] = true;
      Maps.switchData[137] = true;
      Maps.switchData[138] = true;
      Maps.switchData[139] = true;
      Maps.switchData[140] = true;
      Maps.switchData[141] = true;
      Maps.switchData[142] = true;
      Maps.switchData[145] = true;
      Maps.switchData[146] = true;
      Maps.switchData[147] = true;
      Maps.switchData[148] = true;
      Maps.switchData[149] = true;
      Maps.switchData[155] = true;
      Maps.switchData[156] = true;
      Maps.switchData[157] = true;
      Maps.switchData[158] = true;
      Maps.switchData[160] = true;
      Maps.switchData[161] = true;
      Maps.switchData[162] = true;
      Maps.switchData[163] = true;
      Maps.switchData[164] = true;
      Maps.switchData[165] = true;
      Maps.switchData[166] = true;
      Maps.switchData[167] = true;
      Maps.switchData[168] = true;
      Maps.switchData[180] = true;
      Maps.switchData[181] = true;
      Maps.switchData[182] = true;
    }
    
    public static function setArea(param1:String, param2:Boolean = true) : * {
      var medals:int;
      var a:String = param1;
      var b:Boolean = param2;
      if(a == RAINBOW_RIVER && !Flags.TANK_DEFEATED.quantity) {
        a = THE_WASTELANDS;
      }
      if(MapMenu.faderFrame) {
        Maps.instance.fader.gotoAndPlay(MapMenu.faderFrame + 1);
        MapMenu.faderFrame = 0;
      } else {
        Maps.instance.fader.play();
      }
      Maps.instance.switchEvent = function():* {
      };
      Maps.foeJumps = [];
      medals = Medals.countMedals();
      Flags.MEDAL_COUNT.quantity = medals;
      if(medals >= 10) {
        Flags.MIN_MEDALS.quantity = 1;
      } else {
        Flags.MIN_MEDALS.quantity = 0;
      }
      if(medals >= 25) {
        Flags.MAN_MEDALS.quantity = 1;
      } else {
        Flags.MAN_MEDALS.quantity = 0;
      }
      if(medals >= 35) {
        Flags.DAO_MEDALS.quantity = 1;
      } else {
        Flags.DAO_MEDALS.quantity = 0;
      }
      if(medals >= 45) {
        Flags.GIM_MEDALS.quantity = 1;
      } else {
        Flags.GIM_MEDALS.quantity = 0;
      }
      if(medals >= 15) {
        Flags.LEO_MEDALS.quantity = 1;
      } else {
        Flags.LEO_MEDALS.quantity = 0;
      }
      if(medals >= Medals.MAX_MEDAL_COUNT) {
        Flags.MAX_MEDALS.quantity = 1;
      } else {
        Flags.MAX_MEDALS.quantity = 0;
        Flags.GOLD_ENTERED.quantity = 0;
        Flags.SUPER_CHEATS.quantity = 0;
      }
      Maps.minimapCoords = [Maps.mapX,Maps.mapY];
      if(a == FREEZEFLAME_DUNGEON) {
        Maps.minimapCoords = [-1,-1];
      }
      if(a == MINESHAFT_MAZE) {
        Maps.minimapCoords = [-1,-1];
      }
      if(a == DEATHLY_HOLLOWS) {
        Maps.minimapCoords = [-1,-1];
      }
      if(a == CRYSTAL_CAVERNS) {
        Maps.minimapCoords = [-1,-1];
      }
      if((a != area || a == "" || wasInBattle) && (b || area == "")) {
        if(a == HOPE_HARBOR) {
          areaNo = 2;
          BGM.play(BGM.SUNSET_HARBOR,false);
        }
        if(a == WILD_TROPICS) {
          areaNo = 3;
          BGM.play(BGM.RAINY_FOREST_MORNING,false);
        }
        if(a == GRAND_GALLERY) {
          areaNo = 4;
          BGM.play(BGM.PLAISANTERIE_SAVANTE,false);
        }
        if(a == ICE_CAVE) {
          areaNo = 5;
          BGM.play(BGM.CAVE_AMBIENCE,true);
        }
        if(a == THE_WASTELANDS) {
          areaNo = 6;
          BGM.play(BGM.FORTRESS_THEME,true);
        }
        if(a == IRON_FORTRESS) {
          areaNo = 7;
          BGM.play(BGM.FORTRESS_THEME,false);
        }
        if(a == GREENWOOD_VILLAGE) {
          areaNo = 8;
          BGM.play(BGM.BREEZE_FROM_HOME,false);
        }
        if(a == MYSTIC_WOODS) {
          areaNo = 9;
          BGM.play(BGM.PATH_TO_YGGDRASIL,false);
        }
        if(a == FORGOTTEN_RUINS) {
          areaNo = 10;
          BGM.play(BGM.RAINY_FOREST_MORNING,false);
        }
        if(a == RAINBOW_RIVER) {
          areaNo = 11;
          BGM.play(BGM.SUNSET_HARBOR,false);
        }
        if(a == FROZEN_VALLEY) {
          areaNo = 12;
          BGM.play(BGM.SNOWDRIFT_ON_THE_CLOUDS,false);
        }
        if(a == REDPINE_TOWN) {
          areaNo = 13;
          BGM.play(BGM.REDPINE_THEME,false);
        }
        if(a == THE_RAPTURE) {
          areaNo = 14;
          BGM.play(BGM.RAPTURE_THEME,false);
        }
        if(a == LAVA_LAKE) {
          areaNo = 15;
          BGM.play(BGM.RAPTURE_THEME,false);
        }
        if(a == UNKNOWN_LOCATION) {
          areaNo = 16;
        }
        if(a == WORMHOLE) {
          areaNo = 26;
          BGM.play(BGM.RAPTURE_THEME,false);
        }
        if(a == WARP_ZONE) {
          areaNo = 17;
        }
        if(a == GLITCH_ZONE) {
          areaNo = 18;
          BGM.play(BGM.CAPTAIN_8BIT,true);
        }
        if(a == GLITCH_ZONE_2) {
          areaNo = 25;
          BGM.play(BGM.GLITCH,true);
        }
        if(a == FREEZEFLAME_DUNGEON) {
          areaNo = 19;
          BGM.play(BGM.ANIMA,false);
        }
        if(a == MINESHAFT_MAZE) {
          areaNo = 20;
          BGM.play(BGM.FORTRESS_THEME,true);
        }
        if(a == DEATHLY_HOLLOWS) {
          areaNo = 21;
          BGM.play(BGM.WALKING_BONES,true);
        }
        if(a == CRYSTAL_CAVERNS) {
          areaNo = 22;
          BGM.play(BGM.ANIMA,false);
        }
        if(a == TEMPLE_OF_TRIALS) {
          areaNo = 23;
          BGM.play(BGM.WALKING_BONES,false);
        }
        if(a == THE_SEA) {
          areaNo = 30;
          Maps.minimapCoords = [-1,-1];
          BGM.play(BGM.ANIMA,false);
        }
        if(a == DATA_BUNKER) {
          areaNo = 31;
          Maps.minimapCoords = [-1,-1];
          BGM.play(BGM.OF_RAINBOWS,false);
        }
        if(a == BATTLE_ARENA) {
          areaNo = 32;
          Maps.minimapCoords = [-1,-1];
          BGM.play(BGM.FORTRESS_THEME,false);
        }
        if(a == LIBRARY) {
          areaNo = 33;
          BGM.play(BGM.HOUSE_THEME,false);
        }
        if(b) {
          map.fader.areaLabel.play();
        }
        if(area != "" && !wasInBattle && b) {
          Maps.instance.respawnFoes();
        }
        wasInBattle = false;
      }
      if(b) {
        area = a;
      }
    }
    
    public static function xor(param1:Boolean, param2:Boolean) : Boolean {
      return !(param1 && param2) && (param1 || param2);
    }
    
    public static function dropChest(param1:int) : * {
      if(!Maps.chestData[MapData.mapNo]) {
        Maps.chestData[MapData.mapNo] = [];
      }
      if(map.getChildByName("chest" + param1).state == -1 && !Maps.chestData[MapData.mapNo][param1]) {
        map.getChildByName("chest" + param1).gotoAndPlay("fall");
      }
    }
    
    public static function hideChest(param1:int) : * {
      if(map.getChildByName("chest" + param1).state != 1) {
        map.getChildByName("chest" + param1).state = -1;
      }
    }
    
    public static function initSwitch(param1:int, param2:int) : * {
      map.getChildByName("switch" + param1).init(param2);
    }
    
    public static function initPed(param1:int, param2:int, param3:Item, param4:Boolean) : * {
      map.getChildByName("ped" + param1).init(param2,param3,param4);
    }
    
    public static function initNPC(param1:int, param2:NPC, param3:Boolean = true) : * {
      map.getChildByName("npc" + param1).init(param2,param3);
    }
    
    public static function initKey(param1:int, param2:Item) : * {
      map.getChildByName("key" + param1).init(param2);
    }
    
    public static function setSpikes(param1:Array, param2:Array) : * {
      var _loc4_:int = 0;
      var _loc5_:MovieClip = null;
      var _loc6_:Boolean = false;
      var _loc7_:Boolean = false;
      var _loc3_:Boolean = true;
      for each(_loc4_ in param1) {
        if(!_loc4_) {
          _loc3_ = false;
        }
      }
      _loc6_ = false;
      _loc7_ = false;
      for each(_loc4_ in param2) {
        _loc5_ = map.getChildByName("spikes" + _loc4_);
        if(_loc3_) {
          if(_loc5_.state == 0) {
            _loc5_.gotoAndPlay("down");
            _loc7_ = true;
          }
        } else if(_loc5_.state == 1) {
          _loc5_.gotoAndPlay("up");
          _loc6_ = true;
        }
      }
      if(_loc6_) {
        Maps.playSound("spikes");
      }
    }
    
    public static function setDoors(param1:Array, param2:Array, param3:Boolean = false) : * {
      var _loc5_:int = 0;
      var _loc6_:MovieClip = null;
      var _loc4_:Boolean = true;
      for each(_loc5_ in param1) {
        if(!_loc5_) {
          _loc4_ = false;
        }
      }
      for each(_loc5_ in param2) {
        _loc6_ = map.getChildByName("door" + _loc5_);
        if(_loc4_) {
          if(_loc6_.state == 0) {
            if(param3) {
              ++_loc6_.parent.busy;
              _loc6_.gotoAndPlay("up2");
            } else {
              _loc6_.gotoAndPlay("down");
            }
          }
        } else if(_loc6_.state == 1) {
          _loc6_.gotoAndPlay("up");
        }
      }
    }
    
    public static function disableCutscene(param1:int) : * {
      if(!Maps.sceneData[MapData.mapNo]) {
        Maps.sceneData[MapData.mapNo] = [];
      }
      Maps.sceneData[MapData.mapNo][param1] = true;
    }
    
    public static function allInParty(param1:Array) : Boolean {
      var _loc3_:int = 0;
      if(MapData.mapNo == 53 || MapData.mapNo == 152) {
        return true;
      }
      var _loc2_:int = 1;
      while(_loc2_ < param1.length) {
        if(param1[_loc2_] != 0 && param1[_loc2_] != 333) {
          _loc3_ = Math.floor((param1[_loc2_] - 1) / 30);
          if(Game.party.indexOf(Players.PLAYERS[_loc3_]) == -1) {
            return false;
          }
        }
        _loc2_ += 2;
      }
      return true;
    }
    
    public static function initScene(param1:String, param2:int, param3:Array = null, param4:Object = null, param5:int = 1, param6:int = -1) : * {
      var _loc7_:Array = null;
      if(!Debug.showMinorCutscenes) {
        return;
      }
      if(!Debug.showCutscenes && (param4 || param3)) {
        return;
      }
      if(param1 == "ending") {
        _loc7_ = MapText.endingText;
      } else {
        _loc7_ = SetStrings.getCutscene(param1);
      }
      if(param4 && param4.quantity != param5 && (param6 == -1 || param4.quantity != param6)) {
        return;
      }
      if(!Maps.sceneData[MapData.mapNo]) {
        Maps.sceneData[MapData.mapNo] = [];
      }
      if(Maps.sceneData[MapData.mapNo][param2]) {
        return;
      }
      if(!allInParty(_loc7_)) {
        return;
      }
      ++map.busy;
      Maps.sceneData[MapData.mapNo][param2] = true;
      ((map.parent as MapMenu).textbox as MapText).page = 0;
      ((map.parent as MapMenu).textbox as MapText).NpcData = null;
      ((map.parent as MapMenu).textbox as MapText).scene(_loc7_,param3);
      if(param1 == "ending") {
        ((map.parent as MapMenu).textbox as MapText).box.x = 134 - 66;
        ((map.parent as MapMenu).textbox as MapText).gui.visible = false;
      }
    }
    
    public static function initScenes(param1:Array, param2:String, param3:int, param4:Array = null, param5:Object = null, param6:int = 1) : * {
      var _loc8_:int = 0;
      if(!Debug.showMinorCutscenes) {
        return;
      }
      if(!Debug.showCutscenes && (param5 || param4)) {
        return;
      }
      var _loc7_:Array = SetStrings.getCutscene(param2);
      if(Boolean(param5) && param5.quantity != param6) {
        return;
      }
      if(!allInParty(_loc7_)) {
        return;
      }
      for each(_loc8_ in param1) {
        map.objectData.push({
          "mc":"scene" + _loc8_,
          "type":Maps.SCENE,
          "data":_loc7_,
          "id":param3,
          "slides":param4
        });
      }
    }
    
    public static function initPainting(param1:int, param2:int) : * {
      map.objectData.push({
        "mc":"painting" + param1,
        "type":Maps.PAINTING,
        "data":param2
      });
    }
    
    public static function setUpPremium() : * {
      if(Main.hasPremium) {
      }
    }
    
    public static function init(param1:int, param2:Maps) : * {
      var setLadders:*;
      var j:int = 0;
      var roids:int = 0;
      var count:int = 0;
      var i:int = 0;
      var b:Boolean = false;
      var c:int = 0;
      var notUsed:int = param1;
      var maps:Maps = param2;
      var glitchScene:* = function():* {
        var _loc2_:Object = null;
        var _loc1_:int = 0;
        for each(_loc2_ in [Flags.GLITCH_1_REACHED,Flags.GLITCH_2_REACHED,Flags.GLITCH_3_REACHED,Flags.GLITCH_4_REACHED]) {
          if(_loc2_.quantity) {
            _loc1_++;
          }
        }
        if(_loc1_ == 1) {
          initScene("retro1",0);
        }
        if(_loc1_ == 2) {
          initScene("retro2",0);
        }
        if(_loc1_ == 3) {
          initScene("retro3",0);
        }
        if(_loc1_ == 4) {
          initScene("retro4",0);
        }
      };
      var enableChest:* = function(param1:int):* {
        maps["chest" + param1].visible = true;
        maps["chest" + param1].play();
      };
      var setPaths:* = function(param1:int, param2:int, param3:int, param4:int):* {
        var _loc5_:int = 0;
        while(_loc5_ <= 8) {
          if(maps["special" + _loc5_]) {
            maps["special" + _loc5_].visible = false;
          }
          _loc5_++;
        }
        if(param3 == 1) {
          maps.special4.visible = true;
          blockOff("leftWall");
        }
        if(param4 == 1) {
          maps.special5.visible = true;
          blockOff("rightWall");
        }
        if(param1 == 1) {
          maps.special8.visible = true;
          maps.special6.visible = true;
          blockOff("upWall");
        }
        if(param2 == 1) {
          maps.special7.visible = true;
          blockOff("downWall");
        }
        if(param3 == 2) {
          maps.special0.visible = true;
          blockOff("leftDirt");
        }
        if(param4 == 2) {
          maps.special1.visible = true;
          blockOff("rightDirt");
        }
        if(param1 == 2) {
          maps.special2.visible = true;
          blockOff("upDirt");
        }
        if(param2 == 2) {
          maps.special3.visible = true;
          blockOff("downDirt");
        }
        if(param3 == 3) {
          maps.special0.visible = true;
          maps.special0.gotoAndStop(2);
          blockOff("leftDirt2");
        }
        if(param4 == 3) {
          maps.special1.visible = true;
          maps.special1.gotoAndStop(2);
          blockOff("rightDirt2");
        }
      };
      var setDecor:* = function(param1:int = 1, param2:int = 1, param3:int = 2, param4:int = 3, param5:int = 1):* {
        maps.special9.gotoAndStop(param3);
        maps.special10.gotoAndStop(param1);
        maps.special11.gotoAndStop(param2);
        maps.special12.gotoAndStop(param4);
        maps.special13.gotoAndStop(param5);
      };
      var blockOff:* = function(param1:String):* {
        var _loc2_:Array = null;
        if(param1 == "leftDirt" || param1 == "leftWall") {
          _loc2_ = [[0,5],[0,6],[0,7],[0,8],[1,5],[1,6],[1,7],[1,8],[2,5],[2,6],[2,7],[2,8],[3,5],[3,6],[3,7],[3,8]];
        }
        if(param1 == "leftWall") {
          _loc2_ = _loc2_.concat([[4,5],[4,6],[4,7],[4,8],[5,5],[5,6],[5,7],[5,8],[6,5],[6,6],[6,7],[6,8],[7,5],[7,6],[7,7],[7,8]]);
        }
        if(param1 == "rightDirt" || param1 == "rightWall") {
          _loc2_ = [[19,5],[19,6],[19,7],[19,8],[18,5],[18,6],[18,7],[18,8],[17,5],[17,6],[17,7],[17,8],[16,5],[16,6],[16,7],[16,8],[15,5]];
        }
        if(param1 == "rightWall") {
          _loc2_ = _loc2_.concat([[15,6],[15,7],[15,8],[14,5],[14,6],[14,7],[14,8],[13,5],[13,6],[13,7],[13,8],[12,5],[12,6],[12,7],[12,8]]);
        }
        if(param1 == "upDirt" || param1 == "upWall") {
          _loc2_ = [[8,0],[9,0],[10,0],[11,0],[8,1],[9,1],[10,1],[11,1],[8,2],[9,2],[10,2],[11,2],[8,3],[9,3],[10,3],[11,3]];
        }
        if(param1 == "upWall") {
          _loc2_ = _loc2_.concat([[8,4],[9,4],[10,4],[11,4]]);
        }
        if(param1 == "downDirt" || param1 == "downWall") {
          _loc2_ = [[8,9],[9,9],[10,9],[11,9],[8,10],[9,10],[10,10],[11,10],[8,11],[9,11],[10,11],[11,11]];
        }
        if(param1 == "leftDirt2") {
          _loc2_ = [[2,8],[3,5],[3,6],[3,7],[3,8],[4,5],[4,6],[4,7],[4,8],[5,5],[5,6],[5,7],[5,8],[6,5],[6,6],[6,7],[6,8]];
        }
        if(param1 == "rightDirt2") {
          _loc2_ = [[16,5],[16,6],[16,7],[16,8],[15,5],[15,6],[15,7],[15,8],[14,5],[14,6],[14,7],[14,8],[13,5],[13,6],[13,7],[13,8]];
        }
        blockTheseOff(_loc2_);
      };
      var blockTheseOff:* = function(param1:Array):* {
        var _loc2_:int = 0;
        while(_loc2_ < param1.length) {
          maps.addTile(1,param1[_loc2_][0],param1[_loc2_][1],false);
          _loc2_++;
        }
      };
      map = maps;
      t = false;
      Flags.expStyle = Flags.NORMAL;
      battleIcons = [];
      battleIconsAlt = null;
      battles = [];
      battlesAlt = null;
      battleBG = [];
      battleFlags = [];
      respawn = [];
      battleBGM = [];
      weather = [Weather.NONE];
      altWeather = [Weather.NONE];
      if(mapNo == 17) {
        SetStrings.setBardText();
        setArea(WARP_ZONE);
        BGM.play(BGM.HOUSE_THEME,false);
        Maps.minimapCoords = [-1,-1];
        Flags.expStyle = Flags.SCALE_TO_LEVEL;
        battleBGM = [BGM.PETALS_OF_BLADE,BGM.PETALS_OF_BLADE,BGM.PETALS_OF_BLADE,BGM.PETALS_OF_BLADE];
        battleIcons = [WormCutie,Defender1,BushDark];
        battles = [Battles.ebf1test,Battles.arenaTest,Battles.sketchTest];
        battleBG = [Backgrounds.PAPER,Backgrounds.SUPER_NOLEGS,Backgrounds.SUPER_NOLEGS];
        respawn = [true,true,true];
        weather = [];
        altWeather = [];
        initNPC(0,NPCs.bunni);
        initNPC(1,NPCs.amy);
        initNPC(2,NPCs.sally);
        initNPC(3,NPCs.jack);
        initNPC(4,NPCs.odin);
        initNPC(5,NPCs.odinB);
        initNPC(6,NPCs.bard,!(Options.onePlayerMode || Options.twoPlayerMode));
        initNPC(7,NPCs.lunar);
        j = 0;
        while(j < 10) {
          if(Maps.warpData[j]) {
            maps["special" + j].gotoAndStop(2);
          }
          j++;
        }
        if(Maps.warpData[11]) {
          maps.special11.gotoAndStop(2);
        }
        maps.objectData = [];
        doorLinks = [[207,10,5,1,"ladder"]];
        initScene("warpZone",0);
      }
      if(mapNo == 138) {
        setArea(GLITCH_ZONE);
        if(Flags.UNDERLEGS_DEFEATED.quantity == 1) {
          BGM.play(BGM.SPACE_AMBIENCE);
        }
        Maps.minimapCoords = [-1,-1];
        Medals.unlock(Medals.secretWorld);
        maps.objectData = [{
          "mc":"chest0",
          "type":CHEST,
          "data":[Items.sushi,1,Items.espresso,2,Items.cupcake,3]
        },{
          "mc":"chest1",
          "type":CHEST,
          "data":[Items.bacon,1,Items.pizza,2,Items.coffee,11]
        }];
        doorLinks = [[137,9,8,2,"glitch"]];
        initScene("snowflake1",0,MapText.snowflake1Scenes);
      }
      if(mapNo == 139) {
        setArea(GLITCH_ZONE);
        if(Flags.UNDERLEGS_DEFEATED.quantity == 1) {
          BGM.play(BGM.SPACE_AMBIENCE);
        }
        Maps.minimapCoords = [-1,-1];
        Text.resetArcadeText();
        Flags.expStyle = Flags.SCALE_TO_LEVEL;
        battleBGM = [BGM.NO_X1B];
        battleIcons = ["underlegs"];
        battles = [Battles.snowflake];
        battlesAlt = [BattlesAlt.snowflake];
        battleBG = [59];
        respawn = [true];
        battleFlags = [Flags.SNOWFLAKE];
        if(Flags.UNDERLEGS_DEFEATED.quantity) {
          maps.spikes0.visible = false;
          maps.spikes1.visible = false;
          maps.spikes2.visible = false;
          maps.spikes3.visible = false;
          maps.spikes4.visible = false;
          maps.spikes5.visible = false;
        } else {
          maps.addTile(1,10,2,false);
          maps.addTile(1,12,2,false);
        }
        maps.switchEvent = function():* {
          setSpikes([Maps.switchData[143] || Flags.UNDERLEGS_DEFEATED.quantity],[0,1,2]);
          setSpikes([Maps.switchData[144] || Flags.UNDERLEGS_DEFEATED.quantity],[3,4,5]);
        };
        initSwitch(0,143);
        initSwitch(1,144);
        maps.objectData = [{
          "mc":"chest0",
          "type":CHEST,
          "data":[Equips.powerpaw,1,Items.turnip,1,Items.poptart,1]
        },{
          "mc":"chest1",
          "type":CHEST,
          "data":[Equips.popedress,1,Items.bread,1,Items.riceball,1]
        }];
        initScene("snowflake2",0);
        initScene("snowflake3",1,null,Flags.UNDERLEGS_DEFEATED,1,2);
      }
      if(mapNo == 21) {
        setArea(HOPE_HARBOR);
        if(Maps.switchData[201]) {
          BGM.play(BGM.PURITY,false);
        }
        maps.push2.skin(16);
        maps.push3.skin(12);
        initNPC(0,NPCs.jerryB);
        initNPC(1,NPCs.jerryC);
        if(Flags.TANK_DEFEATED.quantity == 0) {
          maps.door0.stop();
          maps.door1.stop();
          maps.special0.visible = false;
          maps.addTile(1,13,2,false);
          maps.addTile(1,13,3,false);
        }
        initPed(0,31,Items.earthenware,false);
        initSwitch(0,201);
        maps.switchEvent = function():* {
          if(Maps.switchData[201]) {
            BGM.play(BGM.PURITY,true,true);
            maps.special1.gotoAndPlay(1);
          } else {
            BGM.play(BGM.SUNSET_HARBOR,false,true);
            maps.special1.gotoAndStop(1);
          }
        };
        maps.objectData = [{
          "mc":"sign0",
          "type":SIGN,
          "data":"sign1"
        },{
          "mc":"chest1",
          "type":CHEST,
          "data":[Items.herb,2,Items.seashell,2]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Equips.luckyclover,1,Items.turd,2]
        },{
          "mc":"chest3",
          "type":CHEST,
          "data":[Items.wool,8,Items.buckle,1]
        },{
          "mc":"chest4",
          "type":CHEST,
          "data":[Items.gold,2,Items.silver,4]
        },{
          "mc":"chest5",
          "type":CHEST,
          "data":[Items.cactus,1]
        }];
        doorLinks = [[150,8,9,1,"door"],[150,8,9,1,"door"]];
        initScenes([0,1],"jerryGone",0);
      }
      if(mapNo == 22) {
        setArea(HOPE_HARBOR);
        BGM.play(BGM.SUNSET_HARBOR);
        if(SaveData.questNo != 1) {
          maps.setMapXY(22);
        }
        initPed(0,107,Items.flower,false);
        initNPC(0,NPCs.jeff);
        maps.objectData = [{
          "mc":"chest5",
          "type":CHEST,
          "data":[Items.cactus,1]
        }];
        doorLinks = [[152,6,9,1,"door"]];
        initScenes([0,1],"goingOut",0);
        if(Options.showTips) {
          initScene("controlIntro",1);
        }
      }
      if(mapNo == 23) {
        setArea(HOPE_HARBOR);
        battleBGM = [undefined,undefined,undefined,BGM.TPF_TRANS];
        battleIcons = [IdolStone,CreepHermit,SlimeWater,""];
        battleIconsAlt = [SlimeBunny,BoulderCoral,IdolWood,""];
        battles = [Battles.pier1,Battles.pier3,Battles.pier2,Battles.pier4];
        battlesAlt = [BattlesAlt.pier1,BattlesAlt.pier3,BattlesAlt.pier2,BattlesAlt.pier4];
        battleFlags = [undefined,undefined,undefined,Flags.NOLEGS_BATTLE];
        battleBG = [3,3,3,3];
        respawn = [true,true,undefined];
        maps.objectData = [{
          "mc":"chest1",
          "type":CHEST,
          "data":[Items.wood,2,Items.iron,2,Items.pumpkin,2]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Items.bacon,1,Items.pumpkin,2,Items.raspberries,2]
        },{
          "mc":"chest6",
          "type":CHEST,
          "data":[Items.pumpkin,1,Items.blueberries,1]
        }];
        initScene("firstFoes",0);
        initScenes([0],"nolegsAmbush",1);
        initScene("nolegsJoins",2,MapText.nolegsJoinsScenes,{"quantity":Game.party.length},2);
      }
      if(mapNo == 27) {
        setArea(HOPE_HARBOR);
        initNPC(0,NPCs.dennis);
        initNPC(1,NPCs.chad);
        maps.success = function():* {
          dropChest(2);
        };
        maps.objectData = [{
          "mc":"chest1",
          "type":CHEST,
          "data":[Items.brick,3,Items.beer,1]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Items.sushi,1,Items.beer,1]
        },{
          "mc":"chest5",
          "type":CHEST,
          "data":[Items.chili,1]
        },{
          "mc":"chest6",
          "type":CHEST,
          "data":[Items.wood,1]
        },{
          "mc":"chest3",
          "type":CHEST,
          "data":[Equips.souleater,1,Equips.soulcrusher,1,Equips.wizardhat,1]
        },{
          "mc":"chest4",
          "type":CHEST,
          "data":[Equips.vikingbuckler,1,Equips.shadowblaster,1,Equips.wizardcloak,1]
        },{
          "mc":"chest9",
          "type":CHEST,
          "data":[Equips.obsidianstaff,1,Equips.thunderbadge,1,Equips.officerhat,1]
        },{
          "mc":"chest7",
          "type":CHEST,
          "data":[Equips.nursehat,1,Equips.fairybow,1,Equips.redribbon,1]
        },{
          "mc":"chest8",
          "type":CHEST,
          "data":[Equips.thorshammer,1,Equips.santahat,1,Equips.officercoat,1]
        }];
        hideChest(2);
        doorLinks = [[153,11,9,1,"door"],[154,9,9,1,"door"]];
      }
      if(mapNo == 26) {
        setArea(WILD_TROPICS);
        battleBGM = [BGM.NYMPHIS_FAE,BGM.NYMPHIS_FAE,BGM.NYMPHIS_FAE,BGM.NYMPHIS_FAE];
        battleIcons = [BushGreen,CreepThorny,BoulderDirt,WormPutrid];
        battleIconsAlt = [BushMud,CreepGreen,CreepRed,SlimeMud];
        battles = [Battles.jungle2,Battles.jungle3,Battles.jungle4,Battles.jungle1];
        battlesAlt = [BattlesAlt.jungle2,BattlesAlt.jungle3,BattlesAlt.jungle4,BattlesAlt.jungle1];
        battleBG = [1,1,1,1];
        respawn = [undefined,true,true,true];
        initNPC(0,NPCs.edward);
        initPed(0,32,Items.earthenware,false);
        Medals.unlock(Medals.wanderingOut);
        maps.objectData = [{
          "mc":"chest1",
          "type":CHEST,
          "data":[Items.egg,1,Equips.battlepaint,1]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Items.iron,2,Items.wood,2,Items.coffee,2]
        },{
          "mc":"chest3",
          "type":CHEST,
          "data":[Items.wool,2,Items.garlic,2,Items.pumpkin,3]
        },{
          "mc":"chest4",
          "type":CHEST,
          "data":[Items.leather,1,Items.buckle,1,Items.wool,2]
        },{
          "mc":"chest5",
          "type":CHEST,
          "data":[Items.garlic,2]
        }];
        if(SaveData.questNo == 1) {
          initScene("rightClick",0);
        }
      }
      if(mapNo == 25) {
        setArea(WILD_TROPICS);
        if(Flags.DOG_GET.quantity == 0) {
          maps.foe0.stop();
          maps.foe0.visible = false;
        }
        battleBGM = [undefined,BGM.NYMPHIS_FAE];
        battleIcons = [DogFriend,BoulderDirt];
        battleIconsAlt = [DogFriend,CreepRed];
        battles = [Battles.dog,Battles.jungle5];
        battlesAlt = [BattlesAlt.dog,BattlesAlt.jungle5];
        battleFlags = [Flags.DOG_BATTLE];
        battleBG = [1,1];
        respawn = [undefined,true];
        if(!(Boolean(Flags.RAPTURE_REACHED.quantity) && NPCs.molly.flag == false)) {
          initNPC(0,NPCs.molly);
        }
        initNPC(1,NPCs.bessie);
        initNPC(2,NPCs.bessieB);
        initNPC(3,NPCs.bessieC);
        maps.objectData = [{
          "mc":"chest1",
          "type":CHEST,
          "data":[Items.spring,2,Items.iron,2,Items.wood,2]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Items.seashell,1,Items.feather,2,Items.shuriken,1]
        },{
          "mc":"chest3",
          "type":CHEST,
          "data":[Items.turd,2,Items.geode,1]
        },{
          "mc":"chest5",
          "type":CHEST,
          "data":[Items.cactus,1]
        },{
          "mc":"chest6",
          "type":CHEST,
          "data":[Items.root,1]
        }];
        initScene("firstQuests",0);
        initScenes([0],"blockPuzzle",1);
      }
      if(mapNo == 29) {
        setArea(WILD_TROPICS);
        battleBGM = [BGM.NYMPHIS_FAE,BGM.NYMPHIS_FAE];
        battleIcons = [IdolStone,BushGreen];
        battleIconsAlt = [IdolStone,BushMud];
        battles = [Battles.jungle6,Battles.jungle7];
        battlesAlt = [BattlesAlt.jungle6,BattlesAlt.jungle7];
        battleBG = [1,1];
        respawn = [undefined,true];
        weather = [undefined,Weather.RAIN];
        altWeather = [Weather.SUNNY,Weather.LEAVES];
        initNPC(0,NPCs.jake);
        initNPC(1,NPCs.jakeB);
        maps.push6.skin(11);
        maps.push3.skin(11);
        maps.push5.skin(12);
        maps.push4.skin(13);
        maps.objectData = [{
          "mc":"chest1",
          "type":CHEST,
          "data":[Items.cola,1,Items.beer,1,Items.energy,1]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Equips.cardboardbox,1,Items.brick,1]
        },{
          "mc":"chest3",
          "type":CHEST,
          "data":[Equips.banditblade,1,Items.shuriken,1,Items.bomb,1]
        },{
          "mc":"chest4",
          "type":CHEST,
          "data":[Items.raspberries,1,Items.garlic,1,Items.pumpkin,1]
        },{
          "mc":"chest5",
          "type":CHEST,
          "data":[Items.beer,2]
        },{
          "mc":"chest6",
          "type":CHEST,
          "data":[Items.pumpkin,2]
        },{
          "mc":"chest7",
          "type":CHEST,
          "data":[Items.garlic,2]
        }];
      }
      if(mapNo == 30) {
        setArea(WILD_TROPICS);
        battleBGM = [BGM.NYMPHIS_FAE,BGM.NYMPHIS_FAE,BGM.NYMPHIS_FAE,BGM.NYMPHIS_FAE,BGM.NYMPHIS_FAE];
        battleIcons = [BatBlood,CreepThorny,ChomperLeafy,IdolWood,WormPutrid];
        battleIconsAlt = [BatBone,CreepBlue,BearBrown,BatBlood,WormScaly];
        Maps.foeJumps = ["","","","","slime"];
        battles = [Battles.jungle8,Battles.jungle9,Battles.jungle11,Battles.jungle10,Battles.jungle11B];
        battlesAlt = [BattlesAlt.jungle8,BattlesAlt.jungle9,BattlesAlt.jungle11,BattlesAlt.jungle10,BattlesAlt.jungle11B];
        battleBG = [1,1,1,1,1];
        respawn = [true,undefined,undefined,true];
        weather = [undefined,Weather.RAIN,Weather.RAIN,Weather.RAIN,Weather.RAIN];
        altWeather = [Weather.SUNNY,undefined,undefined,Weather.LEAVES,Weather.LEAVES];
        initPed(0,33,Items.earthenware,false);
        maps.objectData = [{
          "mc":"chest1",
          "type":CHEST,
          "data":[Items.butterflywing,1,Items.flower,2]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Items.seashell,2,Items.wood,2,Items.pipe,1]
        },{
          "mc":"chest3",
          "type":CHEST,
          "data":[Equips.camojacket,1,Items.herb,2]
        },{
          "mc":"chest4",
          "type":CHEST,
          "data":[Items.bomb,1,Items.iron,2]
        },{
          "mc":"chest5",
          "type":CHEST,
          "data":[Cards.card1,1]
        }];
        if(!Options.showTips || Players.player2.inParty()) {
          disableCutscene(0);
        }
        if(Players.player1.AP >= 30 || Players.player5.AP >= 30) {
          initScene("newSkills",0);
        }
        initScenes([0,1,2],"dirt",1);
      }
      if(mapNo == 31) {
        setArea(WILD_TROPICS);
        BGM.play(BGM.RAINY_FOREST_MORNING);
        Maps.warpData[1] = true;
        Maps.warpData[10] = true;
        battleBGM = [BGM.NYMPHIS_FAE,BGM.NYMPHIS_FAE,BGM.NYMPHIS_FAE];
        battleIcons = [ChomperLeafy,CreepThorny,BatBlood];
        battleIconsAlt = [BearBrown,CreepRed,BatBone];
        Maps.foeJumps = ["","","fly"];
        battles = [Battles.jungle12,Battles.jungle13,Battles.jungle14];
        battlesAlt = [BattlesAlt.jungle12,BattlesAlt.jungle13,BattlesAlt.jungle14];
        battleBG = [1,1,1];
        respawn = [undefined,true];
        weather = [Weather.RAIN,Weather.ENERGY,Weather.ENERGY];
        altWeather = [Weather.RADIATION,Weather.RADIATION,Weather.RADIATION];
        initNPC(0,NPCs.indy);
        initNPC(1,NPCs.watson);
        if(Options.mature) {
          initNPC(2,NPCs.jeffC);
        } else {
          map.npc2.stop();
          map.npc2.visible = false;
        }
        if(!Flags.MONOLITH_MOVED.quantity) {
          maps.addTile(1,17,7,false);
          maps.addTile(1,16,7,false);
          maps.door1.stop();
        }
        maps.objectData = [{
          "mc":"chest1",
          "type":CHEST,
          "data":[Items.milk,1,Items.coffee,1,Items.cola,1]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Items.raspberries,2,Items.banana,2,Items.garlic,2]
        }];
        doorLinks = [[166,8,7,1,"ladder"],[167,3,7,1,"ladder"]];
        initScene("firstMonolith",0,MapText.firstMonolithScenes);
      }
      if(mapNo == 35) {
        setArea(HOPE_HARBOR);
        BGM.play(BGM.SUNSET_HARBOR);
        initPed(0,34,Items.earthenware,false);
        maps.special0.skin = 5;
        if(!Flags.CHAIR_DEFEATED.quantity && Items.raft.quantity && maps.player.Y != 4) {
          maps.special0.play();
        }
        initNPC(0,NPCs.thief);
        initNPC(1,NPCs.lynne);
        if(!(Boolean(Flags.RAPTURE_REACHED.quantity) && NPCs.mungus.flag == false)) {
          initNPC(2,NPCs.mungusB);
        }
        initNPC(3,NPCs.mungus);
        if(Items.bluejewel.quantity) {
          Medals.unlock(Medals.dimDepths);
        }
        maps.objectData = [{
          "mc":"sign0",
          "type":SIGN,
          "data":"sign2"
        },{
          "mc":"chest1",
          "type":CHEST,
          "data":[Cards.card25,1,Items.wool,2,Items.feather,2]
        },{
          "mc":"chest6",
          "type":CHEST,
          "data":[Items.wood,1,Items.brick,2]
        }];
        initScene("passiveHealing",0);
        doorLinks = [[156,10,10,1,"door"],[157,9,9,1,"door"],[157,13,3,1,"door"],[331,7,6,1,"ladder"]];
        initScene("basement3",1,null,Items.bluejewel,1);
      }
      if(mapNo == 33) {
        setArea(HOPE_HARBOR);
        if(!Items.raft.quantity || !Options.customEnabled()) {
          maps.special0.visible = false;
          maps.addTile(0,8,10,false);
          maps.door0.stop();
        }
        battleBGM = [BGM.NYMPHIS_FAE];
        battleIcons = [WormPutrid];
        battleIconsAlt = [WormCutie];
        battles = [Battles.road3];
        battlesAlt = [BattlesAlt.road3];
        battleBG = [2];
        respawn = [true];
        hideChest(5);
        maps.success = function():* {
          dropChest(5);
        };
        initNPC(0,NPCs.pam);
        initNPC(1,NPCs.ned);
        initNPC(2,NPCs.rory);
        initNPC(3,NPCs.ross);
        maps.switchEvent = function():* {
          if(Maps.switchData[0]) {
            Flags.STEAL_SHOVEL.quantity = 1;
          }
        };
        initPed(0,0,Items.shovel,false);
        initPed(1,1,Items.beef,false);
        maps.objectData = [{
          "mc":"shop0",
          "type":SHOP,
          "data":[FOOD_SHOP,Items.FOOD_SHOP]
        },{
          "mc":"shop1",
          "type":SHOP,
          "data":[RARE_FOOD_SHOP,Items.RARE_FOOD_SHOP_SHORT]
        },{
          "mc":"chest1",
          "type":CHEST,
          "data":[Equips.druidstaff,1,Items.raspberries,2,Items.turd,2]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Items.glasses,1,Items.coffee,1]
        },{
          "mc":"chest3",
          "type":CHEST,
          "data":[Items.copperkey,1,Items.pipe,1]
        },{
          "mc":"chest4",
          "type":CHEST,
          "data":[Equips.chillcloud,1,Items.water,2,Items.snowball,12]
        },{
          "mc":"chest5",
          "type":CHEST,
          "data":[Items.beer,3,Items.pumpkin,4,Items.garlic,5]
        },{
          "mc":"chest6",
          "type":CHEST,
          "data":[Items.bacon,1]
        }];
        doorLinks = [[146,10,6,2,"glitch"]];
        initScene("farmersMarket",0);
        initScenes([0],"marketTheft",1);
      }
      if(mapNo == 34) {
        setArea(HOPE_HARBOR);
        if(!Items.raft.quantity || Options.customEnabled()) {
          maps.special0.visible = false;
          maps.addTile(0,8,5,false);
          maps.door0.stop();
        }
        battleBGM = [BGM.NYMPHIS_FAE,BGM.NYMPHIS_FAE,BGM.BLOSSOM,BGM.BLOSSOM,BGM.BLOSSOM,BGM.BLOSSOM];
        battleIcons = [BushGreen,WormPutrid,"","","",""];
        battleIconsAlt = [GloopFab,WormBook,"","","",""];
        battles = [Battles.road2,Battles.road1,Battles.natalie,Battles.natalie,Battles.natalie,Battles.natalie];
        battlesAlt = [BattlesAlt.road2,BattlesAlt.road1,BattlesAlt.natalie,BattlesAlt.natalie,BattlesAlt.natalie,BattlesAlt.natalie];
        battleFlags = [undefined,undefined,Flags.NATALIE_BATTLE,Flags.NATALIE_BATTLE,Flags.NATALIE_BATTLE,Flags.NATALIE_BATTLE];
        battleBG = [2,2,2,2,2,2];
        respawn = [true,undefined];
        altWeather = [Weather.WINDY,Weather.WINDY,Weather.BLOSSOM,Weather.BLOSSOM,Weather.BLOSSOM,Weather.BLOSSOM];
        initNPC(0,NPCs.tandalf);
        initNPC(1,NPCs.randalf);
        initNPC(2,NPCs.maskerE);
        if(!Items.shovel.quantity) {
          maps.foe2.stop();
          maps.foe2.visible = false;
          maps.foe3.stop();
          maps.foe3.visible = false;
          maps.foe4.stop();
          maps.foe4.visible = false;
          maps.foe5.stop();
          maps.foe5.visible = false;
        }
        maps.objectData = [{
          "mc":"chest1",
          "type":CHEST,
          "data":[Items.mint,1,Items.potato,1,Items.lollipop,1]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Items.glass,2,Items.tape,2,Items.iron,2]
        }];
        hideChest(1);
        maps.darkLevel = 2;
        maps.success = function():* {
          dropChest(1);
        };
        doorLinks = [[146,10,6,2,"glitch"]];
        initScene("natalieJoins",1,MapText.natalieJoinsScenes,{"quantity":Game.party.length},3);
      }
      if(mapNo == 152) {
        setArea(HOPE_HARBOR,false);
        if(SaveData.questNo != 1) {
          BGM.play(BGM.OF_RAINBOWS,true);
        }
        Maps.minimapCoords = [1,5];
        Text.resetArcadeText();
        Flags.expStyle = Flags.NO_EXP;
        battleBGM = [BGM.ARCADE];
        battleIcons = [ArcadePumpkus];
        battles = [Battles.arcadeRush];
        battlesAlt = [BattlesAlt.arcadeRush];
        battleBG = [Backgrounds.PUMPKUS];
        respawn = [true];
        altWeather = [Weather.GLITCH];
        battleFlags = [Flags.ARCADE_RUSH];
        hideChest(4);
        if(Boolean(Flags.CHAIR_DEFEATED.quantity) && Boolean(Flags.PUMPKUS_DEFEATED.quantity) && Boolean(Flags.TRAEGURE_DEFEATED.quantity) && Boolean(Flags.PHOENIX_DEFEATED.quantity) && Boolean(Flags.BOSH_DEFEATED.quantity) && Boolean(Flags.SNEK_DEFEATED.quantity) && Boolean(Flags.ROBO_DEFEATED.quantity) && Boolean(Flags.GLOB_DEFEATED.quantity) && Boolean(Flags.TOTOM_DEFEATED.quantity) && Boolean(Flags.GUEYE_DEFEATED.quantity) && Boolean(Flags.MERMAID_DEFEATED.quantity) && Boolean(Flags.MAW_DEFEATED.quantity)) {
          maps.sign1.stop();
          maps.sign2.stop();
          maps.addTile(1,12,7,false);
          if(Boolean(Maps.foeData[mapNo]) && Maps.foeData[mapNo][0] == 3) {
            dropChest(4);
            maps.addTile(1,11,7,false);
            maps.foe0.stop();
          }
        } else {
          maps.foe0.stop();
          maps.foe0.visible = false;
          maps.special6.nextFrame();
        }
        initPed(0,36,Items.coffee,false);
        initPed(1,37,Items.newspaper,false);
        initNPC(0,NPCs.chadB);
        maps.objectData = [{
          "mc":"sign0",
          "type":SIGN2,
          "data":"mattConsole"
        },{
          "mc":"sign1",
          "type":SIGN2,
          "data":"mattPC"
        },{
          "mc":"sign2",
          "type":SIGN2,
          "data":"mattPC"
        },{
          "mc":"chest0",
          "type":CHEST,
          "data":[Equips.bandage,1,Items.buckle,1]
        },{
          "mc":"chest1",
          "type":CHEST,
          "data":[Items.beer,1,Items.cola,1]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Items.sock1,1,Items.wool,2]
        },{
          "mc":"chest3",
          "type":CHEST,
          "data":[Items.sock2,1,Items.spring,2]
        },{
          "mc":"chest4",
          "type":CHEST,
          "data":[Items.gamechild,1,Equips.ramchip,1,Items.gamechild,1]
        }];
        doorLinks = [[22,7,6,2,"door"]];
        if(SaveData.questNo == 1) {
          initScene("gameIntro",0,MapText.gameIntroScenes);
        }
        initScenes([0],"hiddenRoom",1);
        if(Flags.FINAL_BOSS_DEFEATED.quantity) {
          MapText.assembleEnding();
        }
        initScene("ending",2,MapText.endingScenees,Flags.FINAL_BOSS_DEFEATED,1);
      }
      if(mapNo == 166) {
        setArea(WILD_TROPICS,false);
        BGM.play(BGM.CAVE_AMBIENCE);
        Maps.minimapCoords = [2,3];
        Flags.expStyle = Flags.SCALE_TO_LEVEL;
        battleBGM = [BGM.NYMPHIS_FAE,BGM.NYMPHIS_FAE];
        battleIcons = [IdolGem,BoulderMarble];
        battleIconsAlt = [FishJet,IdolMetal];
        battles = [Battles.sandcave3,Battles.sandcave4];
        battlesAlt = [BattlesAlt.sandcave3,BattlesAlt.sandcave4];
        battleBG = [6,6];
        respawn = [];
        altWeather = [Weather.CURSED,Weather.CURSED];
        hideChest(2);
        maps.special0.skin = 12;
        if(!Flags.PHOENIX_DEFEATED.quantity && Items.candle.quantity && maps.player.Y != 5) {
          maps.special0.play();
        }
        maps.objectData = [{
          "mc":"chest0",
          "type":CHEST,
          "data":[Equips.dragonarmor,1,Items.dragonfruit,2]
        },{
          "mc":"chest1",
          "type":CHEST,
          "data":[Equips.dragonhelm,1,Items.scales,1]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Items.waterbottle,1,Items.mushroom,1,Items.nut,1]
        },{
          "mc":"chest3",
          "type":CHEST,
          "data":[Items.turd,3,Items.turd,2,Items.turd,5]
        }];
        maps.darkLevel = 4;
        maps.success = function():* {
          dropChest(2);
        };
        doorLinks = [[31,6,5,2,"ladder"],[324,18,5,1,"cave"]];
      }
      if(mapNo == 167) {
        setArea(WILD_TROPICS,false);
        BGM.play(BGM.CAVE_AMBIENCE);
        Maps.minimapCoords = [2,3];
        battleBGM = [BGM.NYMPHIS_FAE,BGM.NYMPHIS_FAE];
        if(Options.altFoes) {
          battleBGM = [BGM.NYMPHIS_FAE,BGM.HEROES_MARCH];
        }
        Flags.expStyle = Flags.SCALE_TO_LEVEL;
        battleFlags = [undefined,Flags.MIMIC];
        battleIcons = [IdolGem,"mimic"];
        battleIconsAlt = [IdolMetal,"mimic"];
        battles = [Battles.sandcave1,Battles.sandcave2];
        battlesAlt = [BattlesAlt.sandcave1,BattlesAlt.sandcave2];
        battleBG = [6,6];
        if(Options.altFoes) {
          battleBG = [6,Backgrounds.EBF3_PROTECTOR];
        }
        respawn = [];
        altWeather = [Weather.SUNNY,Weather.SUNNY];
        if(Options.altFoes) {
          weather[1] = null;
          altWeather[1] = null;
        }
        initNPC(0,NPCs.indyB);
        maps.push0.skin(19);
        maps.push1.skin(14);
        maps.push2.skin(12);
        maps.push3.skin(15);
        maps.push4.skin(17);
        maps.push5.skin(17);
        maps.push6.skin(11);
        maps.objectData = [{
          "mc":"sign0",
          "type":SIGN2,
          "data":"skull"
        },{
          "mc":"chest0",
          "type":CHEST,
          "data":[Items.copperkey,1,Items.bread,1,Items.steel,3]
        },{
          "mc":"chest1",
          "type":CHEST,
          "data":[Equips.spelunkinghat,1,Items.silk,2,Items.buckle,2]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Items.donut,1,Items.chicken,1,Items.blueberries,2]
        }];
        doorLinks = [[31,17,8,2,"ladder"]];
      }
      if(mapNo == 150) {
        setArea(HOPE_HARBOR,false);
        if(Maps.switchData[201]) {
          BGM.play(BGM.PURITY,false);
        }
        Maps.minimapCoords = [0,5];
        initPed(0,119,Items.sushi,false);
        maps.objectData = [{
          "mc":"sign0",
          "type":SIGN2,
          "data":"crapTV"
        },{
          "mc":"chest0",
          "type":CHEST,
          "data":[Items.chocolate,1,Items.poptart,1]
        },{
          "mc":"chest1",
          "type":CHEST,
          "data":[Items.keycard,1,Items.buckle,2,Items.leather,2]
        }];
        doorLinks = [[21,13,4,2,"door"],[151,10,5,1,"ladder"]];
      }
      if(mapNo == 151) {
        setArea(HOPE_HARBOR,false);
        BGM.play(BGM.CAVE_AMBIENCE);
        Maps.minimapCoords = [0,5];
        maps.push0.skin(18);
        maps.push1.skin(18);
        maps.push2.skin(18);
        maps.push3.skin(20);
        maps.push4.skin(18);
        maps.push5.skin(20);
        maps.push6.skin(20);
        maps.objectData = [{
          "mc":"chest1",
          "type":CHEST,
          "data":[Items.sunglasses,1]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Items.fishingrod,1]
        }];
        doorLinks = [[150,8,5,1,"ladder"]];
      }
      if(mapNo == 153) {
        setArea(HOPE_HARBOR,false);
        Maps.minimapCoords = [2,4];
        initNPC(0,NPCs.shop1);
        initNPC(1,NPCs.annie);
        maps.objectData = [{
          "mc":"shop0",
          "type":SHOP,
          "data":[ITEM_SHOP,Items.ITEM_SHOP_1]
        },{
          "mc":"sign1",
          "type":SIGN2,
          "data":"skull"
        },{
          "mc":"sign0",
          "type":SIGN2,
          "data":"N64"
        },{
          "mc":"chest0",
          "type":CHEST,
          "data":[Equips.greencross,1,Items.chocolate,1,Items.apple,1]
        }];
        doorLinks = [[27,10,4,2,"door"]];
        initScenes([0],"mouseControls",0);
      }
      if(mapNo == 154) {
        setArea(HOPE_HARBOR,false);
        Maps.minimapCoords = [2,4];
        initPed(0,118,Items.riceball,false);
        initNPC(0,NPCs.shop2);
        maps.objectData = [{
          "mc":"shop0",
          "type":SHOP,
          "data":[FOOD_SHOP,Items.FOOD_SHOP]
        },{
          "mc":"sign1",
          "type":SIGN2,
          "data":"deadFish"
        },{
          "mc":"sign0",
          "type":SIGN2,
          "data":"deadFish"
        },{
          "mc":"chest0",
          "type":CHEST,
          "data":[Items.headband,1,Items.buckle,1,Items.leather,1]
        }];
        doorLinks = [[27,3,7,2,"door"],[155,12,5,1,"ladder"]];
        initScene("fishShop",0,null);
      }
      if(mapNo == 155) {
        setArea(HOPE_HARBOR,false);
        Maps.minimapCoords = [2,4];
        initPed(0,39,Items.water,true);
        initNPC(0,NPCs.byrd);
        initNPC(1,NPCs.linwood);
        maps.objectData = [{
          "mc":"sign0",
          "type":SIGN2,
          "data":"sink"
        },{
          "mc":"chest0",
          "type":CHEST,
          "data":[Items.coralkey,1,Items.seashell,3]
        }];
        doorLinks = [[154,12,5,1,"ladder"]];
      }
      if(mapNo == 156) {
        setArea(HOPE_HARBOR,false);
        Maps.minimapCoords = [2,2];
        initPed(0,116,Items.yoghurt,false);
        initPed(0,117,Items.poptart,false);
        initNPC(0,NPCs.yiffy);
        initNPC(1,NPCs.bud);
        initNPC(2,NPCs.jimbo);
        initNPC(3,NPCs.pickle);
        maps.objectData = [{
          "mc":"sign1",
          "type":SIGN2,
          "data":"painting2"
        },{
          "mc":"chest0",
          "type":CHEST,
          "data":[Items.chocolate,1,Items.raspberries,1,Items.cupcake,1]
        },{
          "mc":"chest1",
          "type":CHEST,
          "data":[Items.cola,1,Items.energy,1,Items.milkbottle,1]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Items.magma,1,Items.powder,1]
        }];
        doorLinks = [[35,5,6,2,"door"]];
        initScene("restaurant",0,null);
      }
      if(mapNo == 157) {
        setArea(HOPE_HARBOR,false);
        Maps.minimapCoords = [2,2];
        initNPC(0,NPCs.donald);
        initNPC(1,NPCs.donaldB);
        maps.push0.skin(10);
        maps.success = function():* {
        };
        initPed(0,38,Items.iron,false);
        maps.objectData = [{
          "mc":"sign3",
          "type":SIGN2,
          "data":"spears"
        },{
          "mc":"shop0",
          "type":SHOP,
          "data":[EQUIP_SHOP,Equips.EQUIP_SHOP_1]
        },{
          "mc":"chest0",
          "type":CHEST,
          "data":[Items.headband,1,Items.steel,4,Items.bomb,6]
        },{
          "mc":"sign1",
          "type":SIGN2,
          "data":"buster"
        },{
          "mc":"sign0",
          "type":SIGN2,
          "data":"buster"
        },{
          "mc":"sign2",
          "type":SIGN2,
          "data":"squall"
        }];
        doorLinks = [[35,15,5,2,"door"],[158,11,3,1,"ladder"],[35,17,2,2,"door"]];
        initScene("weaponShop",0,null);
      }
      if(mapNo == 158) {
        setArea(HOPE_HARBOR,false);
        BGM.play(BGM.EVIL_AMBIENCE);
        Maps.minimapCoords = [-1,-1];
        Flags.expStyle = Flags.SCALE_TO_LEVEL;
        battleBGM = [];
        battleIcons = [MirrorHaunted,DollNoLegs];
        battleIconsAlt = [MirrorHaunted,WraithOrigami];
        battles = [Battles.basement1,Battles.basement2];
        battlesAlt = [BattlesAlt.basement1,BattlesAlt.basement2];
        battleBG = [55,55];
        respawn = [];
        altWeather = [Weather.UNDEAD,Weather.UNDEAD];
        initNPC(2,NPCs.cultist1);
        initNPC(1,NPCs.cultist2);
        initNPC(0,NPCs.cultist3);
        initNPC(3,NPCs.cultist4);
        maps.objectData = [{
          "mc":"chest0",
          "type":CHEST,
          "data":[Items.woodenkey,1,Items.virus,2,Items.cloudberries,1]
        },{
          "mc":"chest1",
          "type":CHEST,
          "data":[Items.sapphire,1,Items.bluejewel,1,Items.sapphire,1]
        }];
        doorLinks = [[157,9,3,1,"ladder"]];
        initScenes([0],"basement1",0);
        initScenes([1],"basement2",1);
      }
      if(mapNo == 36) {
        setArea(HOPE_HARBOR);
        BGM.play(BGM.SUNSET_HARBOR);
        Main.unlockPremiumStuff();
        battleBGM = [BGM.NYMPHIS_FAE,BGM.NYMPHIS_FAE];
        battleIcons = [BushSand,SlimeSand];
        battleIconsAlt = [BoulderMarble,SlimeWater];
        battles = [Battles.desert2,Battles.desert1];
        battlesAlt = [BattlesAlt.desert2,BattlesAlt.desert1];
        battleBG = [4,4];
        respawn = [true];
        weather = [Weather.SANDSTORM,Weather.SANDSTORM];
        altWeather = [Weather.WINDY,Weather.WINDY];
        initPed(0,35,Items.earthenware,false);
        initNPC(0,NPCs.jeffB);
        initNPC(1,NPCs.slasher);
        initNPC(2,NPCs.slasherB);
        maps.objectData = [{
          "mc":"sign0",
          "type":SIGN,
          "data":"sign5"
        },{
          "mc":"chest1",
          "type":CHEST,
          "data":[Equips.cactusdress,1,Items.cactus,3]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Items.satin,2,Items.pizza,1,Items.cloudberries,2]
        },{
          "mc":"chest3",
          "type":CHEST,
          "data":[Equips.wizardcloak,1,Items.emerald,1,Items.topaz,1]
        },{
          "mc":"chest4",
          "type":CHEST,
          "data":[Equips.wizardhat,1,Items.sapphire,1,Items.ruby,1]
        },{
          "mc":"chest5",
          "type":CHEST,
          "data":[Items.burger,1,Items.mint,1,Items.espresso,1]
        }];
        doorLinks = [[191,12,8,1,"ladder"]];
      }
      if(mapNo == 32) {
        setArea(HOPE_HARBOR);
        Maps.warpData[2] = true;
        battleBGM = [BGM.NYMPHIS_FAE,BGM.NYMPHIS_FAE];
        battleIcons = [BoulderSandstone,IdolWood];
        battleIconsAlt = [CreepRed,IdolStone];
        battles = [Battles.desert3,Battles.desert4];
        battlesAlt = [BattlesAlt.desert3,BattlesAlt.desert4];
        battleBG = [4,4];
        respawn = [true,true];
        weather = [Weather.SANDSTORM,Weather.SANDSTORM];
        altWeather = [Weather.WINDY,Weather.WINDY];
        initNPC(0,NPCs.wohehiv);
        initNPC(1,NPCs.wohehivB);
        initNPC(2,NPCs.winona);
        initNPC(3,NPCs.makya);
        initNPC(4,NPCs.haniaB,Flags.CYCLOPS_DEFEATED.quantity);
        maps.objectData = [{
          "mc":"sign0",
          "type":SIGN2,
          "data":"angryBird"
        },{
          "mc":"sign1",
          "type":SIGN2,
          "data":"cutTheRope"
        },{
          "mc":"chest1",
          "type":CHEST,
          "data":[Items.chicken,1,Equips.sapphiresaint,1]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Items.goldkey,1,Items.gold,1]
        },{
          "mc":"chest3",
          "type":CHEST,
          "data":[Equips.emeraldearings,1,Items.herb,5,Items.garlic,2]
        },{
          "mc":"chest5",
          "type":CHEST,
          "data":[Items.sushi,1]
        },{
          "mc":"chest6",
          "type":CHEST,
          "data":[Items.chili,1]
        }];
        initScene("puzzleGames",1);
        initScenes([0],"indianTheft",0);
      }
      if(mapNo == 28) {
        setArea(HOPE_HARBOR);
        battleBGM = [BGM.NYMPHIS_FAE,BGM.NYMPHIS_FAE,BGM.NYMPHIS_FAE,BGM.NYMPHIS_FAE];
        battleIcons = [SlimeSand,SlimeBigSand,MammothCamel,IdolStone];
        battleIconsAlt = [SlimeSand,GolemBone,MammothWar,WormFuzzy];
        battles = [Battles.desert5,Battles.desert6,Battles.mammoth,Battles.desert7];
        battlesAlt = [BattlesAlt.desert5,BattlesAlt.desert6,BattlesAlt.mammoth,BattlesAlt.desert7];
        battleBG = [4,4,5,4];
        respawn = [true,undefined,undefined];
        weather = [Weather.SANDSTORM,Weather.SANDSTORM,Weather.SUNNY,Weather.SANDSTORM];
        altWeather = [Weather.EARTHQUAKE,Weather.EARTHQUAKE,Weather.EARTHQUAKE,Weather.WINDY];
        initNPC(0,NPCs.moody);
        initNPC(1,NPCs.moodyB);
        maps.push0.skin(15);
        maps.objectData = [{
          "mc":"sign0",
          "type":SIGN,
          "data":"desertSign"
        },{
          "mc":"chest1",
          "type":CHEST,
          "data":[Items.seashell,4,Items.steel,2]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Items.coffee,1,Items.beer,1,Items.cola,1]
        },{
          "mc":"chest3",
          "type":CHEST,
          "data":[Equips.desertscorpion,1,Items.gold,3,Items.scales,2]
        },{
          "mc":"chest5",
          "type":CHEST,
          "data":[Items.cactus,3,Items.flower,2]
        }];
        doorLinks = [[19,8,2,1,"ladder"]];
        initScene("itemShopping",1);
        initScenes([0],"bigBlock",0);
      }
      if(mapNo == 24) {
        setArea(HOPE_HARBOR);
        if(Flags.CYCLOPS_DEFEATED.quantity) {
          Game.clearBossBattle(2);
        }
        battleBGM = [BGM.NYMPHIS_FAE,BGM.NYMPHIS_FAE,BGM.BLADE_AND_SWITCH];
        battleIcons = [BoulderSandstone,BoulderCoral,BossCyclopsDesert];
        battleIconsAlt = [CreepGreen,SquidPink,BossCyclopsDesert];
        Maps.foeJumps = ["jump"];
        battles = [Battles.desert9,Battles.desert8,Battles.boss1];
        battlesAlt = [BattlesAlt.desert9,BattlesAlt.desert8,BattlesAlt.boss1];
        battleBG = [5,5,5];
        battleFlags = [undefined,undefined];
        respawn = [undefined,true];
        weather = [Weather.SANDSTORM,Weather.SANDSTORM,Weather.SANDSTORM];
        altWeather = [Weather.WINDY,Weather.EARTHQUAKE,Weather.EARTHQUAKE];
        initNPC(0,NPCs.hania);
        initNPC(1,NPCs.herald);
        maps.objectData = [{
          "mc":"chest1",
          "type":CHEST,
          "data":[Equips.furhat,1,Items.fur,2,Items.feather,2]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Items.steel,2,Items.buckle,2]
        },{
          "mc":"chest3",
          "type":CHEST,
          "data":[Equips.inferno,1,Items.yoghurt,1,Items.coffee,1]
        },{
          "mc":"chest4",
          "type":CHEST,
          "data":[Equips.furdress,1,Items.fur,2,Items.claw,1]
        },{
          "mc":"chest5",
          "type":CHEST,
          "data":[Items.leather,3,Items.buckle,2,Items.steel,1]
        },{
          "mc":"chest6",
          "type":CHEST,
          "data":[Items.spike,1]
        }];
        doorLinks = [[18,5,9,1,"cave"],[18,6,9,1,"cave"]];
        initScenes([0,1,2],"firstBoss",0);
        initScene("firstBossBeat",1,MapText.firstBossBeatScenes,Flags.CYCLOPS_DEFEATED,1,2);
      }
      if(mapNo == 86) {
        setArea(FORGOTTEN_RUINS);
        hideChest(4);
        Flags.expStyle = Flags.NO_EXP;
        battleBGM = [BGM.SECONDARY_BATTLE,BGM.SECONDARY_BATTLE,BGM.SECONDARY_BATTLE,BGM.SECONDARY_BATTLE];
        battleIcons = [BoulderDirt,IdolGem,MonolithAncient,MirrorAngel];
        battleIconsAlt = [BoulderDirt,SlimeMouse,IdolStone,FishGold];
        battles = [Battles.cliffs3,Battles.cliffs2,Battles.cliffs1,Battles.cliffs4];
        battlesAlt = [BattlesAlt.cliffs3,BattlesAlt.cliffs2,BattlesAlt.cliffs1,BattlesAlt.cliffs4];
        battleBG = [37,37,37,37];
        respawn = [true];
        weather = [undefined,undefined,undefined,Weather.WINDY];
        altWeather = [Weather.RAIN,Weather.RAIN,Weather.RAIN];
        initNPC(0,NPCs.student);
        maps.success = function():* {
          dropChest(4);
        };
        maps.objectData = [{
          "mc":"sign0",
          "type":SIGN,
          "data":(Options.alwaysGiveEXP ? "signDungeonAlt2" : (Options.alwaysScaleFoes ? "signDungeonAlt" : "signDungeon"))
        },{
          "mc":"chest0",
          "type":CHEST,
          "data":[Items.opal,1,Items.silk,4,Items.milk,1]
        },{
          "mc":"chest1",
          "type":CHEST,
          "data":[Items.satin,2,Items.wool,12,Items.grapes,1]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Items.leather,10,Items.buckle,12,Items.fur,8]
        },{
          "mc":"chest3",
          "type":CHEST,
          "data":[Items.waterbottle,1,Items.moonpearl,1]
        },{
          "mc":"chest4",
          "type":CHEST,
          "data":[Items.rune2,2,Items.amber,4,Items.garlic,2]
        },{
          "mc":"chest5",
          "type":CHEST,
          "data":[Items.emerald,1,Items.turd,1]
        },{
          "mc":"chest6",
          "type":CHEST,
          "data":[Items.herb,3,Items.root,4]
        }];
      }
      if(mapNo == 76) {
        setArea(FORGOTTEN_RUINS);
        maps.push0.skin(12);
        maps.push1.skin(12);
        Flags.expStyle = Flags.NO_EXP;
        battleBGM = [BGM.SECONDARY_BATTLE,BGM.SECONDARY_BATTLE,BGM.SECONDARY_BATTLE,BGM.SECONDARY_BATTLE];
        battleIcons = [BoulderMarble,FallenCrucified,DragonSky,MonolithAncient];
        battleIconsAlt = [BearPanda,WraithOrigami,WraithOrigami,MonolithAncient];
        battles = [Battles.cliffs11,Battles.cliffs12,Battles.cliffs13,Battles.cliffs14];
        battlesAlt = [BattlesAlt.cliffs11,BattlesAlt.cliffs12,BattlesAlt.cliffs13,BattlesAlt.cliffs14];
        battleBG = [36,36,36,36];
        respawn = [undefined,undefined,true,true];
        weather = [Weather.WINDY,undefined,Weather.THUNDERSTORM,Weather.THUNDERSTORM];
        altWeather = [Weather.LEAVES,Weather.RAIN,Weather.LEAVES,Weather.RAIN];
        maps.objectData = [{
          "mc":"chest0",
          "type":CHEST,
          "data":[Items.bread,1,Items.cloudberries,2,Items.dragonfruit,2]
        },{
          "mc":"chest1",
          "type":CHEST,
          "data":[Items.rune2,2,Items.gold,1,Items.topaz,1]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Items.rune2,2,Items.diamond,1,Items.silver,2]
        },{
          "mc":"chest3",
          "type":CHEST,
          "data":[Items.cake,1,Items.espresso,1,Items.pizza,1]
        },{
          "mc":"chest4",
          "type":CHEST,
          "data":[Items.opal,1,Items.herb,2]
        }];
      }
      if(mapNo == 87) {
        setArea(FORGOTTEN_RUINS);
        Flags.expStyle = Flags.NO_EXP;
        battleFlags = [undefined,undefined,Flags.MIMIC];
        battleBGM = [BGM.SECONDARY_BATTLE,BGM.SECONDARY_BATTLE,BGM.SECONDARY_BATTLE,BGM.SECONDARY_BATTLE];
        if(Options.altFoes) {
          battleBGM = [BGM.SECONDARY_BATTLE,BGM.SECONDARY_BATTLE,BGM.YOULL_NEVER_GUESS,BGM.SECONDARY_BATTLE];
        }
        battleIcons = [DragonEarth,MirrorAngel,"mimic",DragonSky];
        battleIconsAlt = [CreepThorny,ChomperLeafy,"mimic",MonolithAncient];
        battleBG = [37,37,36,36];
        if(Options.altFoes) {
          battleBG = [37,37,Backgrounds.EBF3_JACK,36];
        }
        battles = [Battles.cliffs5,Battles.cliffs7,Battles.cliffs15,Battles.cliffs6];
        battlesAlt = [BattlesAlt.cliffs5,BattlesAlt.cliffs7,BattlesAlt.cliffs15,BattlesAlt.cliffs6];
        respawn = [true,undefined,undefined,true];
        weather = [Weather.WINDY,Weather.ELECTRIC,Weather.WINDY,Weather.ELECTRIC];
        altWeather = [undefined,Weather.OVERGROWTH,undefined,Weather.OVERGROWTH];
        if(Options.altFoes) {
          weather[2] = null;
          altWeather[2] = null;
        }
        hideChest(6);
        hideChest(2);
        hideChest(3);
        hideChest(4);
        hideChest(5);
        initPed(0,121,Items.flower,true);
        initPed(1,122,Items.flower,true);
        initPed(2,123,Items.flower,true);
        initPed(3,124,Items.flower,true);
        initPed(4,125,Items.flower,true);
        initPed(5,126,Items.flower,true);
        initPed(6,127,Items.flower,true);
        initPed(7,128,Items.flower,true);
        initPed(8,129,Items.flower,true);
        maps.switchEvent = function():* {
          if(Maps.switchData[121] && Maps.switchData[122] && Maps.switchData[123] && Maps.switchData[124] && !Maps.switchData[125] && Maps.switchData[126] && Maps.switchData[127] && !Maps.switchData[128] && Boolean(Maps.switchData[129])) {
            dropChest(6);
            Medals.unlock(Medals.codeBreaker);
          }
          if(Maps.switchData[121] && !Maps.switchData[122] && !Maps.switchData[123] && Maps.switchData[124] && Maps.switchData[125] && !Maps.switchData[126] && Boolean(Maps.switchData[127]) && Boolean(Maps.switchData[128]) && Boolean(Maps.switchData[129])) {
            dropChest(2);
            Medals.unlock(Medals.codeBreaker);
          }
          if(!Maps.switchData[121] && !Maps.switchData[122] && Maps.switchData[123] && Maps.switchData[124] && Maps.switchData[125] && Maps.switchData[126] && !Maps.switchData[127] && !Maps.switchData[128] && Boolean(Maps.switchData[129])) {
            dropChest(3);
            Medals.unlock(Medals.codeBreaker);
          }
          if(!Maps.switchData[121] && Maps.switchData[122] && !Maps.switchData[123] && Maps.switchData[124] && Maps.switchData[125] && Maps.switchData[126] && Maps.switchData[127] && !Maps.switchData[128] && Boolean(Maps.switchData[129])) {
            dropChest(4);
            Medals.unlock(Medals.codeBreaker);
          }
          if(!Maps.switchData[121] && !Maps.switchData[122] && Maps.switchData[123] && !Maps.switchData[124] && Maps.switchData[125] && !Maps.switchData[126] && Maps.switchData[127] && !Maps.switchData[128] && Boolean(Maps.switchData[129])) {
            dropChest(5);
            Medals.unlock(Medals.codeBreaker);
          }
        };
        maps.push0.skin(17);
        maps.push1.skin(22);
        maps.objectData = [{
          "mc":"chest0",
          "type":CHEST,
          "data":[Items.keycard,1,Items.turnip,1,Items.rune2,1]
        },{
          "mc":"chest1",
          "type":CHEST,
          "data":[Items.flower,9,Items.feather,6,Items.emerald,1]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Items.silver,3,Items.diamondkey,1,Items.silver,3]
        },{
          "mc":"chest3",
          "type":CHEST,
          "data":[Items.diamond,1,Items.lollipop,1,Items.nut,1]
        },{
          "mc":"chest4",
          "type":CHEST,
          "data":[Items.scales,1,Equips.tentacle,1,Items.scales,1]
        },{
          "mc":"chest5",
          "type":CHEST,
          "data":[Equips.subzero,1,Items.titanium,1,Items.cpu,1]
        },{
          "mc":"chest6",
          "type":CHEST,
          "data":[Items.feather,1,Items.wingedboots,1,Items.feather,1]
        },{
          "mc":"chest7",
          "type":CHEST,
          "data":[Items.gold,1,Items.silver,3,Items.rune,1]
        },{
          "mc":"chest8",
          "type":CHEST,
          "data":[Items.pill,1,Items.plastic,3,Items.cola,2]
        }];
      }
      if(mapNo == 88) {
        setArea(FORGOTTEN_RUINS);
        initNPC(0,NPCs.studentB);
        Flags.expStyle = Flags.NO_EXP;
        battleBGM = [BGM.SECONDARY_BATTLE,BGM.SECONDARY_BATTLE,BGM.SECONDARY_BATTLE];
        battleIcons = [FallenCrucified,DragonEarth,IdolGem];
        battleIconsAlt = [ChomperLeafy,DragonEarth,BearPanda];
        battleBG = [36,36,36];
        battles = [Battles.cliffs8,Battles.cliffs10,Battles.cliffs9];
        battlesAlt = [BattlesAlt.cliffs8,BattlesAlt.cliffs10,BattlesAlt.cliffs9];
        respawn = [];
        weather = [Weather.ELECTRIC,Weather.THUNDERSTORM,Weather.WINDY];
        altWeather = [Weather.OVERGROWTH,Weather.OVERGROWTH,Weather.OVERGROWTH];
        maps.objectData = [{
          "mc":"chest0",
          "type":CHEST,
          "data":[Equips.gaiasgift,1,Items.emerald,1]
        },{
          "mc":"chest1",
          "type":CHEST,
          "data":[Items.pipe,4,Items.copperkey,1,Items.pipe,4]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Items.gold,1,Items.rune2,1,Items.geode,3]
        },{
          "mc":"chest3",
          "type":CHEST,
          "data":[Items.burger,3,Items.beef,1,Items.orangejuice,1]
        },{
          "mc":"chest4",
          "type":CHEST,
          "data":[Items.grapes,1,Items.wood,11,Items.butterflywing,8]
        },{
          "mc":"chest5",
          "type":CHEST,
          "data":[Items.silver,1,Items.silk,2]
        },{
          "mc":"chest6",
          "type":CHEST,
          "data":[Items.rune2,1,Items.gems,3]
        }];
        doorLinks = [[137,9,10,1,"stone"]];
      }
      if(mapNo == 137) {
        setArea(FORGOTTEN_RUINS,false);
        Flags.TEMPLE_REACHED.quantity = 1;
        Maps.minimapCoords = [4,0];
        initPed(0,130,Items.bluejewel,true);
        initPed(1,131,Items.greenjewel,true);
        initPed(2,132,Items.redjewel,true);
        initKey(0,Items.diamondkey);
        initKey(1,Items.diamondkey);
        initKey(2,Items.diamondkey);
        initKey(3,Items.diamondkey);
        maps.switchEvent = function():* {
          setDoors([Maps.switchData[130],Maps.switchData[131],Maps.switchData[132]],[0]);
        };
        maps.objectData = [{
          "mc":"chest0",
          "type":CHEST,
          "data":[Equips.spinesnapper,1,Items.gear,18,Items.egg,1]
        },{
          "mc":"chest1",
          "type":CHEST,
          "data":[Equips.souleater,1,Items.mushroom,1]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Equips.skullhelmet,1,Items.emerald,2,Items.yoghurt,1]
        },{
          "mc":"chest3",
          "type":CHEST,
          "data":[Equips.obsidianstaff,1,Items.donut,1]
        },{
          "mc":"chest4",
          "type":CHEST,
          "data":[Items.mint,1,Items.herb,2]
        }];
        doorLinks = [[138,2,8,2,"glitch"],[88,12,5,2,"stone"]];
        initScene("forgottenRuins",0);
      }
      if(mapNo == 18) {
        setArea(ICE_CAVE);
        if(Maps.switchData[202]) {
          BGM.play(BGM.INNOCENCE);
        }
        Maps.minimapCoords = [3,5];
        initNPC(0,NPCs.arne);
        initNPC(1,NPCs.knut);
        initNPC(2,NPCs.heraldB);
        initSwitch(0,202);
        maps.switchEvent = function():* {
          if(Maps.switchData[202]) {
            BGM.play(BGM.INNOCENCE,true,true);
            maps.special0.gotoAndPlay(1);
          } else {
            BGM.play(BGM.CAVE_AMBIENCE,false,true);
            maps.special0.gotoAndStop(1);
          }
        };
        maps.objectData = [{
          "mc":"chest1",
          "type":CHEST,
          "data":[Items.fur,2,Items.raspberries,2]
        },{
          "mc":"chest6",
          "type":CHEST,
          "data":[Items.chili,1]
        }];
        doorLinks = [[24,15,7,2,"cave"],[24,16,7,2,"cave"]];
        initScenes([0,1],"iceControls",0);
      }
      if(mapNo == 19) {
        setArea(ICE_CAVE);
        if(Maps.switchData[202]) {
          BGM.play(BGM.INNOCENCE);
        }
        Maps.minimapCoords = [3,4];
        Maps.switchData[18] = true;
        Maps.switchData[107] = true;
        Maps.foeJumps = ["","fly",""];
        battleBGM = [BGM.RETURN_OF_SNOW_QUEEN,BGM.RETURN_OF_SNOW_QUEEN,BGM.RETURN_OF_SNOW_QUEEN];
        battleIcons = [BitIce,BatSnow,CreepIcicle];
        battleIconsAlt = [DogWolf,BitIce,WormScaly];
        battles = [Battles.icecave1,Battles.icecave3,Battles.icecave2];
        battlesAlt = [BattlesAlt.icecave1,BattlesAlt.icecave3,BattlesAlt.icecave2];
        battleBG = [11,11,11];
        respawn = [undefined,undefined,true];
        altWeather = [Weather.GEYSERS,Weather.GEYSERS,Weather.GEYSERS];
        maps.objectData = [{
          "mc":"chest1",
          "type":CHEST,
          "data":[Items.snowball,3,Items.ice,1,Items.snowball,2]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Items.glass,1,Equips.icebadge,1,Items.glass,1]
        },{
          "mc":"chest3",
          "type":CHEST,
          "data":[Items.water,2,Items.ice,1]
        }];
        Medals.unlock(Medals.slipNSlide);
        doorLinks = [[28,11,8,2,"ladder"]];
        initScene("dejavu",0);
      }
      if(mapNo == 20) {
        setArea(ICE_CAVE);
        if(Maps.switchData[202]) {
          BGM.play(BGM.INNOCENCE);
        }
        Maps.minimapCoords = [4,3];
        Main.unlockPremiumStuff();
        initNPC(0,NPCs.wally);
        initNPC(1,NPCs.wallyB);
        battleBGM = [BGM.RETURN_OF_SNOW_QUEEN,BGM.RETURN_OF_SNOW_QUEEN];
        battleIcons = [BitIce,MonolithViking];
        battleIconsAlt = [BearGrolar,FlybotBlue];
        battles = [Battles.icecave4,Battles.icecave5];
        battlesAlt = [BattlesAlt.icecave4,BattlesAlt.icecave5];
        battleBG = [11,11];
        respawn = [true];
        altWeather = [Weather.GEYSERS,Weather.STALACTITES];
        maps.objectData = [{
          "mc":"chest1",
          "type":CHEST,
          "data":[Items.steel,2,Items.fur,2]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Equips.iceneedle,1,Items.ice,1,Items.water,1]
        },{
          "mc":"chest3",
          "type":CHEST,
          "data":[Items.snowball,2,Items.snowball,1]
        }];
        doorLinks = [[44,6,4,2,"cave"],[44,7,4,2,"cave"],[201,2,10,1,"cave"],[201,3,10,1,"cave"]];
        initScene("longCave",0);
      }
      if(mapNo == 38) {
        setArea(GRAND_GALLERY);
        if(Maps.switchData[204]) {
          BGM.play(BGM.WINGS);
        }
        Flags.expStyle = Flags.NO_EXP;
        battleIcons = [BushDark,WormCutie];
        battles = [Battles.gallery5,Battles.gallery19];
        battlesAlt = [BattlesAlt.gallery5,BattlesAlt.gallery19];
        battleBG = [7,7];
        respawn = [true,true,true,true];
        weather = [Weather.SUNNY,Weather.SUNNY];
        altWeather = [];
        initNPC(0,NPCs.guardA);
        initNPC(1,NPCs.guardB);
        initNPC(2,NPCs.xun);
        initNPC(3,NPCs.osho);
        maps.objectData = [{
          "mc":"sign0",
          "type":SIGN,
          "data":(Options.alwaysGiveEXP ? "signDungeonAlt2" : (Options.alwaysScaleFoes ? "signDungeonAlt" : "signDungeon"))
        },{
          "mc":"chest1",
          "type":CHEST,
          "data":[Items.riceball,1,Items.orangejuice,1,Items.espresso,1]
        },{
          "mc":"chest3",
          "type":CHEST,
          "data":[Items.keycard,1,Items.opal,2,Items.cake,1]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Items.poptart,1,Items.pizza,2,Items.burger,3]
        }];
        doorLinks = [[41,8,8,1,"door"],[41,9,8,1,"door"]];
        initScene("mansionIntro",0);
      }
      if(mapNo == 37) {
        setArea(GRAND_GALLERY);
        if(Maps.switchData[204]) {
          BGM.play(BGM.WINGS);
        }
        Flags.expStyle = Flags.NO_EXP;
        battleIcons = [SlimeMouse,SlimeMud,SlimeBunny,ChomperLeafy];
        battles = [Battles.gallery1,Battles.gallery2,Battles.gallery3,Battles.gallery6];
        battlesAlt = [BattlesAlt.gallery1,BattlesAlt.gallery2,BattlesAlt.gallery3,BattlesAlt.gallery6];
        battleBG = [7,7,7,7];
        respawn = [true,true,true,true];
        weather = [Weather.SUNNY,Weather.SUNNY,Weather.SUNNY,Weather.SUNNY];
        altWeather = [];
        initNPC(0,NPCs.daoB);
        initNPC(1,NPCs.manletB);
        maps.push1.skin(17);
        maps.objectData = [{
          "mc":"chest0",
          "type":CHEST,
          "data":[Items.potato,1,Items.floppy,5,Items.spring,8]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Items.flower,6,1,Items.silk,3,Items.poptart,1]
        },{
          "mc":"chest1",
          "type":CHEST,
          "data":[Equips.minidrone,1,Items.spring,3,Items.gear,3]
        },{
          "mc":"chest3",
          "type":CHEST,
          "data":[Items.turnip,1,Items.cactus,8,Items.virus,1]
        },{
          "mc":"chest4",
          "type":CHEST,
          "data":[Equips.thunderbadge,1,Items.topaz,1,Items.cloudberries,2]
        },{
          "mc":"chest6",
          "type":CHEST,
          "data":[Items.flower,2]
        }];
        doorLinks = [[40,3,7,1,"door"],[40,9,7,1,"door"]];
      }
      if(mapNo == 39) {
        setArea(GRAND_GALLERY);
        if(Maps.switchData[204]) {
          BGM.play(BGM.WINGS);
        }
        Flags.expStyle = Flags.NO_EXP;
        battleIcons = [IdolWood,SquidPink,CreepGreen,CreepThorny];
        battles = [Battles.gallery4,Battles.gallery24,Battles.gallery9,Battles.gallery10];
        battlesAlt = [BattlesAlt.gallery4,BattlesAlt.gallery24,BattlesAlt.gallery9,BattlesAlt.gallery10];
        battleBG = [7,7,7,7];
        respawn = [true,true,true,true];
        weather = [Weather.SUNNY,Weather.SUNNY,Weather.SUNNY,Weather.SUNNY];
        altWeather = [];
        initNPC(0,NPCs.gimliB);
        initNPC(1,NPCs.leonidasB);
        initSwitch(0,204);
        maps.switchEvent = function():* {
          if(Maps.switchData[204]) {
            BGM.play(BGM.WINGS,true,true);
            maps.special0.gotoAndPlay(1);
          } else {
            BGM.play(BGM.PLAISANTERIE_SAVANTE,false,true);
            maps.special0.gotoAndStop(1);
          }
        };
        maps.objectData = [{
          "mc":"chest0",
          "type":CHEST,
          "data":[Items.cake,1,Items.espresso,1,Items.emerald,1]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Equips.eyebrows,1,Cards.card30,1]
        },{
          "mc":"chest1",
          "type":CHEST,
          "data":[Items.cloudberries,4,Items.chips,3,Items.orangejuice,1]
        },{
          "mc":"chest3",
          "type":CHEST,
          "data":[Items.mint,1,Items.bacon,1,Items.beer,6]
        },{
          "mc":"chest4",
          "type":CHEST,
          "data":[Equips.hoopearings,1,Items.gold,1,Items.gems,3]
        },{
          "mc":"chest5",
          "type":CHEST,
          "data":[Equips.fakemustache,1,Items.grapes,1,Items.coffee,3]
        },{
          "mc":"chest6",
          "type":CHEST,
          "data":[Items.flower,1,Items.turd,2]
        }];
        doorLinks = [[42,10,7,1,"door"],[42,16,7,1,"door"]];
      }
      if(mapNo == 41) {
        setArea(GRAND_GALLERY);
        BGM.play(BGM.PLAISANTERIE_SAVANTE);
        initNPC(0,NPCs.guardAB);
        initNPC(1,NPCs.guardBB);
        initNPC(2,NPCs.princessB);
        if(Flags.MEDAL_COUNT.quantity < 70) {
          maps.addTile(1,3,3,false);
          maps.addTile(1,3,4,false);
          maps.door4.stop();
          maps.door5.stop();
        } else {
          maps.special0.visible = false;
        }
        if(Flags.MEDAL_COUNT.quantity < 60) {
          maps.addTile(1,14,3,false);
          maps.addTile(1,14,4,false);
          maps.door6.stop();
          maps.door7.stop();
        } else {
          maps.special1.visible = false;
        }
        maps.objectData = [{
          "mc":"sign0",
          "type":SIGN2,
          "data":"guestbook"
        }];
        initPainting(0,95);
        initPainting(1,60);
        initPainting(2,89);
        initPainting(3,105);
        initPainting(4,107);
        doorLinks = [[38,8,5,2,"door"],[38,9,5,2,"door"],[163,9,9,1,"door"],[163,9,10,1,"door"],[164,18,10,1,"door"],[164,18,10,1,"door"],[165,1,10,1,"door"],[165,1,10,1,"door"]];
        if(Game.party.length < 3) {
          disableCutscene(0);
        }
        initScene("mansionEnter",0);
      }
      if(mapNo == 165) {
        setArea(GRAND_GALLERY);
        if(Maps.switchData[205]) {
          BGM.play(BGM.CHAOS_OF_MIND);
        } else {
          BGM.play(BGM.MACHINE_AMBIENCE);
        }
        Maps.minimapCoords = [1,0];
        Flags.expStyle = Flags.NO_EXP;
        battleBGM = [BGM.SECONDARY_BATTLE,BGM.SECONDARY_BATTLE];
        battleIcons = [FlybotRed,FlybotYellow];
        battles = [Battles.gallery20,Battles.gallery25];
        battlesAlt = [BattlesAlt.gallery20,BattlesAlt.gallery25];
        battleBG = [9,9];
        respawn = [true,true];
        weather = [Weather.RADIATION,Weather.RADIATION];
        altWeather = [Weather.AIRSTRIKES,Weather.AIRSTRIKES];
        hideChest(4);
        maps.success = function():* {
          dropChest(4);
        };
        maps.objectData = [{
          "mc":"chest0",
          "type":CHEST,
          "data":[Items.spring,6,Items.floppy,12,Items.diamond,1]
        },{
          "mc":"chest3",
          "type":CHEST,
          "data":[Equips.soulpistol,1,Items.riceball,1,Items.pipe,4]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Items.mushroom,1,Items.lollipop,1,Items.cupcake,4]
        },{
          "mc":"chest1",
          "type":CHEST,
          "data":[Items.powder,12,Items.bomb,9,Items.plutonium,1]
        },{
          "mc":"chest4",
          "type":CHEST,
          "data":[Items.sapphire,1,Equips.royalcrown,1,Items.ruby,1]
        }];
        initPainting(0,13);
        initPainting(1,14);
        initPainting(2,15);
        initPainting(3,16);
        initPainting(4,17);
        initPainting(5,18);
        initPainting(6,19);
        initPainting(7,20);
        initPainting(8,21);
        initPainting(9,22);
        doorLinks = [[41,14,5,1,"door"]];
      }
      if(mapNo == 164) {
        setArea(GRAND_GALLERY);
        if(Maps.switchData[205]) {
          BGM.play(BGM.CHAOS_OF_MIND);
        } else {
          BGM.play(BGM.MACHINE_AMBIENCE);
        }
        Maps.minimapCoords = [1,0];
        Flags.expStyle = Flags.NO_EXP;
        battleBGM = [BGM.SECONDARY_BATTLE,BGM.SECONDARY_BATTLE,BGM.SECONDARY_BATTLE];
        battleIcons = [MammothWar,FishJet,MonolithViking];
        battles = [Battles.gallery26,Battles.gallery15,Battles.gallery23];
        battlesAlt = [BattlesAlt.gallery26,BattlesAlt.gallery15,BattlesAlt.gallery23];
        battleBG = [9,9,9];
        respawn = [true,true,true];
        weather = [Weather.HIGH_GRAVITY,Weather.HIGH_GRAVITY,Weather.HIGH_GRAVITY];
        altWeather = [Weather.ENERGY,Weather.ENERGY,Weather.ENERGY];
        initSwitch(0,205);
        maps.switchEvent = function():* {
          if(Maps.switchData[205]) {
            BGM.play(BGM.CHAOS_OF_MIND,true,true);
            maps.special0.gotoAndPlay(1);
          } else {
            BGM.play(BGM.MACHINE_AMBIENCE,false,true);
            maps.special0.gotoAndStop(1);
          }
        };
        maps.objectData = [{
          "mc":"chest1",
          "type":CHEST,
          "data":[Items.milk,1,Items.pill,1,Items.energy,6]
        },{
          "mc":"chest0",
          "type":CHEST,
          "data":[Items.darkmatter,1,Items.lego,1,Items.gamechild,1]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Items.chips,4,Items.pizza,1,Items.burger,2]
        },{
          "mc":"chest3",
          "type":CHEST,
          "data":[Equips.crystalwing,1,Items.plastic,4,Items.moonpearl,1]
        },{
          "mc":"chest4",
          "type":CHEST,
          "data":[Equips.popehat,1,Items.wool,7,Items.satin,2]
        },{
          "mc":"chest5",
          "type":CHEST,
          "data":[Items.egg,1,Items.beef,1,Items.garlic,8]
        }];
        initPainting(0,3);
        initPainting(1,4);
        initPainting(2,5);
        initPainting(3,6);
        initPainting(4,7);
        initPainting(5,8);
        initPainting(6,9);
        initPainting(7,10);
        initPainting(8,11);
        initPainting(9,12);
        doorLinks = [[41,3,5,1,"door"]];
      }
      if(mapNo == 40) {
        setArea(GRAND_GALLERY);
        BGM.play(BGM.PLAISANTERIE_SAVANTE);
        initKey(0,Items.goldkey);
        initKey(1,Items.goldkey);
        initKey(2,Items.goldkey);
        initNPC(0,NPCs.dao);
        initNPC(1,NPCs.manlet);
        initNPC(2,NPCs.princess);
        if(Flags.MEDAL_COUNT.quantity < 20) {
          maps.addTile(1,6,2,false);
          maps.addTile(1,6,3,false);
          maps.door2.stop();
          maps.door3.stop();
        } else {
          maps.special0.visible = false;
        }
        if(Flags.MEDAL_COUNT.quantity < 30) {
          maps.addTile(1,16,3,false);
          maps.addTile(1,16,4,false);
          maps.door4.stop();
          maps.door5.stop();
        } else {
          maps.special1.visible = false;
        }
        if(Flags.MEDAL_COUNT.quantity < 90) {
          maps.addTile(1,10,2,false);
          maps.addTile(1,10,3,false);
          maps.door6.stop();
          maps.door7.stop();
        } else {
          maps.special2.visible = false;
        }
        maps.objectData = [{
          "mc":"chest0",
          "type":CHEST,
          "data":[Items.cola,3,Equips.crimsonrazorback,1,Items.cola,3]
        },{
          "mc":"chest1",
          "type":CHEST,
          "data":[Items.flower,1,Equips.flowerbobble,1,Items.flower,1]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Items.root,1,Cards.card50,1,Items.root,1]
        },{
          "mc":"chest3",
          "type":CHEST,
          "data":[Items.silver,1,Equips.chromeearings,1,Items.silver,1]
        }];
        initPainting(0,39);
        initPainting(1,38);
        initPainting(2,96);
        initPainting(3,106);
        initScene("galleryFull",6);
        doorLinks = [[37,1,5,2,"door"],[37,12,4,2,"door"],[159,10,10,1,"door"],[159,10,10,1,"door"],[161,9,10,1,"door"],[161,9,10,1,"door"],[335,2,10,1,"door"],[335,2,10,1,"door"]];
      }
      if(mapNo == 159) {
        setArea(GRAND_GALLERY);
        Maps.minimapCoords = [0,0];
        Flags.expStyle = Flags.NO_EXP;
        battleBGM = [BGM.POSH_BATTLE,BGM.POSH_BATTLE,BGM.POSH_BATTLE,BGM.POSH_BATTLE];
        battleIcons = [CatNinja,DollMatt,DogFriend,CatWarrior];
        battles = [Battles.gallery18B,Battles.gallery12,Battles.gallery17,Battles.gallery18];
        battlesAlt = [BattlesAlt.gallery18B,BattlesAlt.gallery12,BattlesAlt.gallery17,BattlesAlt.gallery18];
        battleBG = [8,8,8,8];
        respawn = [true,true,true,true];
        altWeather = [Weather.SACRED,Weather.SACRED,Weather.SACRED,Weather.SACRED];
        maps.objectData = [{
          "mc":"chest0",
          "type":CHEST,
          "data":[Items.pizza,1,Items.leather,3,Items.pretzel,2]
        },{
          "mc":"chest1",
          "type":CHEST,
          "data":[Items.crisps,3,Items.cola,2,Items.cupcake,1]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Items.turd,1,Equips.drillbits,1,Items.turd,1]
        },{
          "mc":"chest3",
          "type":CHEST,
          "data":[Items.grapes,1,Items.bread,1,Items.chicken,1]
        },{
          "mc":"chest4",
          "type":CHEST,
          "data":[Items.potato,1,Items.nut,1,Items.sushi,1]
        },{
          "mc":"chest5",
          "type":CHEST,
          "data":[Items.coffee,1,Equips.hipstershirt,1,Items.coffee,1]
        }];
        initPainting(0,37);
        initPainting(1,41);
        initPainting(2,42);
        initPainting(3,43);
        if(Options.titties) {
          initPainting(4,44);
        } else {
          maps.special0.visible = false;
          maps.special1.stop();
          maps.special2.stop();
          maps.painting4.stop();
          maps.painting7.stop();
          maps.addTile(1,5,7,false);
          maps.addTile(1,5,8,false);
          maps.addTile(1,15,7,false);
          maps.addTile(1,15,8,false);
        }
        initPainting(6,46);
        if(Options.titties) {
          initPainting(7,47);
        }
        if(Options.titties) {
          initPainting(8,61);
        } else {
          maps.special4.visible = false;
          maps.special5.stop();
          maps.painting8.stop();
          maps.addTile(1,10,1,false);
          maps.addTile(1,10,2,false);
        }
        initPainting(9,108);
        initPainting(10,114);
        if(Options.blood) {
          initPainting(5,45);
        } else {
          maps.special6.visible = false;
          maps.special7.stop();
          maps.painting5.stop();
          maps.addTile(1,7,7,false);
          maps.addTile(1,7,8,false);
        }
        doorLinks = [[40,6,4,1,"door"]];
        if(!Options.titties) {
          disableCutscene(0);
        }
        initScene("dirtyDrawing",0);
      }
      if(mapNo == 161) {
        setArea(GRAND_GALLERY);
        Maps.minimapCoords = [0,0];
        Flags.expStyle = Flags.NO_EXP;
        battleBGM = [BGM.POSH_BATTLE,BGM.POSH_BATTLE];
        battleIcons = [FallenCrucified,MirrorAngel];
        battles = [Battles.gallery14,Battles.gallery13];
        battlesAlt = [BattlesAlt.gallery14,BattlesAlt.gallery13];
        battleBG = [8,8];
        respawn = [true,true];
        altWeather = [Weather.SACRED,Weather.SACRED];
        maps.objectData = [{
          "mc":"chest0",
          "type":CHEST,
          "data":[Items.gold,1,Items.ruby,1,Items.gold,1]
        },{
          "mc":"chest1",
          "type":CHEST,
          "data":[Items.gold,1,Items.emerald,1,Items.gold,1]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Items.beef,1,Items.mint,1,Items.pizza,1]
        },{
          "mc":"chest3",
          "type":CHEST,
          "data":[Items.spike,1,Equips.berzerker,1,Items.spike,1]
        },{
          "mc":"chest4",
          "type":CHEST,
          "data":[Items.riceball,1,Items.milk,1,Items.orangejuice,1]
        },{
          "mc":"chest5",
          "type":CHEST,
          "data":[Items.leather,1,Equips.priesttunic,1,Items.leather,1]
        }];
        initPainting(0,48);
        initPainting(1,49);
        if(Options.blood) {
          initPainting(2,50);
        } else {
          maps.special0.visible = false;
          maps.special1.stop();
          maps.painting2.stop();
          maps.addTile(1,7,1,false);
          maps.addTile(1,7,2,false);
        }
        if(Options.titties) {
          initPainting(8,88);
        } else {
          maps.special2.visible = false;
          maps.special3.stop();
          maps.painting8.stop();
          maps.addTile(1,15,1,false);
          maps.addTile(1,15,2,false);
        }
        initPainting(3,51);
        initPainting(4,52);
        initPainting(5,53);
        initPainting(6,54);
        initPainting(7,55);
        doorLinks = [[40,16,5,1,"door"]];
        initScene("partyDrawing",0);
      }
      if(mapNo == 42) {
        setArea(GRAND_GALLERY);
        BGM.play(BGM.PLAISANTERIE_SAVANTE);
        initKey(0,Items.goldkey);
        initKey(1,Items.goldkey);
        initKey(2,Items.goldkey);
        initNPC(0,NPCs.gimli);
        initNPC(1,NPCs.leonidas);
        initNPC(2,NPCs.raymond);
        initNPC(3,NPCs.helen);
        if(Flags.MEDAL_COUNT.quantity < 40) {
          maps.addTile(1,3,3,false);
          maps.addTile(1,3,4,false);
          maps.door0.stop();
          maps.door1.stop();
        } else {
          maps.special0.visible = false;
        }
        if(Flags.MEDAL_COUNT.quantity < 50) {
          maps.addTile(1,13,2,false);
          maps.addTile(1,13,3,false);
          maps.door2.stop();
          maps.door3.stop();
        } else {
          maps.special1.visible = false;
        }
        if(Flags.MEDAL_COUNT.quantity < 80) {
          maps.addTile(1,17,2,false);
          maps.addTile(1,17,3,false);
          maps.door6.stop();
          maps.door7.stop();
        } else {
          maps.special2.visible = false;
        }
        maps.objectData = [{
          "mc":"chest0",
          "type":CHEST,
          "data":[Items.chicken,1,Items.yoghurt,1,Items.lollipop,1]
        },{
          "mc":"chest1",
          "type":CHEST,
          "data":[Items.watermelon,1,Equips.casualskirt,1,Items.watermelon,1]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Items.steel,1,Equips.arctictrident,1,Items.steel,1]
        },{
          "mc":"chest3",
          "type":CHEST,
          "data":[Items.herb,1,Equips.leafshield,1,Items.herb,1]
        },{
          "mc":"sign0",
          "type":SIGN2,
          "data":"mansionBook"
        }];
        initPainting(0,40);
        initPainting(1,93);
        initPainting(2,101);
        initPainting(3,103);
        initPainting(4,112);
        doorLinks = [[160,9,10,1,"door"],[160,9,10,1,"door"],[162,9,10,1,"door"],[162,9,10,1,"door"],[39,13,4,2,"door"],[39,17,5,2,"door"],[336,9,10,1,"door"],[336,9,10,1,"door"]];
      }
      if(mapNo == 162) {
        setArea(GRAND_GALLERY);
        Maps.minimapCoords = [2,0];
        Flags.expStyle = Flags.NO_EXP;
        battleBGM = [BGM.POSH_BATTLE,BGM.POSH_BATTLE,BGM.POSH_BATTLE,BGM.POSH_BATTLE];
        battleIcons = [HandSkeleton,BatSnow,WraithLeaf,DragonEarth];
        battles = [Battles.gallery11,Battles.gallery22,Battles.gallery16,Battles.gallery27B];
        battlesAlt = [BattlesAlt.gallery11,BattlesAlt.gallery22,BattlesAlt.gallery16,BattlesAlt.gallery27B];
        battleBG = [8,8,8,8];
        respawn = [true,true,true,true];
        altWeather = [Weather.LEAVES,Weather.LEAVES,Weather.LEAVES,Weather.LEAVES];
        maps.objectData = [{
          "mc":"chest0",
          "type":CHEST,
          "data":[Items.moonpearl,1,Items.grail,1,Items.silk,3]
        },{
          "mc":"chest1",
          "type":CHEST,
          "data":[Items.opal,1,Items.gems,2,Items.wood,3]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Equips.biohazardblaster,1,Items.glass,11,Items.virus,3]
        },{
          "mc":"chest3",
          "type":CHEST,
          "data":[Items.yoghurt,1,Items.turnip,1,Items.pizza,1]
        },{
          "mc":"chest4",
          "type":CHEST,
          "data":[Items.nut,1,Items.egg,1,Items.burger,1]
        },{
          "mc":"chest5",
          "type":CHEST,
          "data":[Items.virus,1,Equips.blackwidow,1,Items.virus,1]
        }];
        initPainting(0,24);
        initPainting(1,25);
        initPainting(2,26);
        initPainting(3,27);
        initPainting(4,28);
        if(Options.titties) {
          initPainting(5,90);
        } else {
          maps.special0.visible = false;
          maps.special1.stop();
          maps.painting5.stop();
          maps.addTile(1,12,5,false);
          maps.addTile(1,12,6,false);
        }
        initPainting(6,92);
        initPainting(7,99);
        initPainting(8,102);
        doorLinks = [[42,13,4,1,"door"]];
      }
      if(mapNo == 160) {
        setArea(GRAND_GALLERY);
        Maps.minimapCoords = [2,0];
        Flags.expStyle = Flags.NO_EXP;
        battleBGM = [BGM.POSH_BATTLE,BGM.POSH_BATTLE,BGM.POSH_BATTLE];
        battleIcons = [BoulderObsidian,BitThunder,BearPanda];
        battles = [Battles.gallery7,Battles.gallery8,Battles.gallery21];
        battlesAlt = [BattlesAlt.gallery7,BattlesAlt.gallery8,BattlesAlt.gallery21];
        battleBG = [8,8,8];
        respawn = [true,true,true];
        altWeather = [Weather.EARTHQUAKE,Weather.EARTHQUAKE,Weather.EARTHQUAKE];
        initNPC(0,NPCs.jam,Game.party.length > 4);
        maps.objectData = [{
          "mc":"chest0",
          "type":CHEST,
          "data":[Items.rune2,2,Items.sapphire,1,Items.mythril,1]
        },{
          "mc":"chest1",
          "type":CHEST,
          "data":[Items.rune,1,Items.topaz,1,Items.cloudberries,2]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Items.leather,1,Equips.genjihelmet,1,Items.leather,1]
        },{
          "mc":"chest3",
          "type":CHEST,
          "data":[Items.poptart,1,Items.mushroom,1,Items.garlic,1]
        },{
          "mc":"chest4",
          "type":CHEST,
          "data":[Items.bacon,1,Items.donut,1,Items.cupcake,1]
        },{
          "mc":"chest5",
          "type":CHEST,
          "data":[Items.bomb,1,Equips.obsidianarmor,1,Items.bomb,1]
        }];
        initPainting(0,29);
        initPainting(1,30);
        initPainting(2,31);
        initPainting(3,32);
        initPainting(4,33);
        initPainting(5,34);
        initPainting(6,62);
        if(Options.titties) {
          initPainting(7,91);
        } else {
          maps.special0.visible = false;
          maps.painting7.stop();
          maps.addTile(1,3,8,false);
        }
        initPainting(8,110);
        initPainting(9,111);
        doorLinks = [[42,3,5,1,"door"]];
      }
      if(mapNo == 163) {
        setArea(GRAND_GALLERY);
        BGM.play(BGM.HOUSE_THEME,false);
        Maps.minimapCoords = [1,0];
        initNPC(0,NPCs.raymondB);
        if(Flags.TANK_DEFEATED.quantity) {
          Flags.GOLD_ENTERED.quantity = 1;
        }
        Flags.SUPER_CHEATS.quantity = 1;
        Flags.expStyle = Flags.NO_EXP;
        battleBGM = [BGM.NO_X1B,BGM.BLADE_AND_SWITCH];
        battleIcons = ["nolegs","nolegs"];
        battles = [Battles.gallery28,Battles.gallery27];
        battlesAlt = [BattlesAlt.gallery28,BattlesAlt.gallery27];
        battleBG = [10,10];
        respawn = [true,true];
        altWeather = [Weather.SACRED,Weather.SACRED];
        roids = 1;
        if(Main.hasPremium) {
          roids = 1;
        }
        maps.objectData = [{
          "mc":"sign0",
          "type":SIGN,
          "data":"goldbook"
        },{
          "mc":"sign1",
          "type":SIGN,
          "data":"goldnote"
        },{
          "mc":"chest0",
          "type":CHEST,
          "data":[Items.egg,roids,Items.turnip,roids,Items.cloudberries,roids]
        },{
          "mc":"chest1",
          "type":CHEST,
          "data":[Items.donut,roids,Items.milk,roids,Items.pizza,roids]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Items.poptart,roids,Items.chicken,roids,Items.pretzel,roids]
        },{
          "mc":"chest3",
          "type":CHEST,
          "data":[Items.cake,roids,Items.lollipop,roids,Items.orangejuice,roids]
        },{
          "mc":"chest4",
          "type":CHEST,
          "data":[Items.beef,roids,Items.bread,roids,Items.burger,roids]
        },{
          "mc":"chest5",
          "type":CHEST,
          "data":[Items.potato,roids,Items.grapes,roids,Items.chips,roids]
        },{
          "mc":"chest6",
          "type":CHEST,
          "data":[Items.riceball,roids,Items.mint,roids,Items.espresso,roids]
        },{
          "mc":"chest7",
          "type":CHEST,
          "data":[Items.pill,roids,Items.yoghurt,roids,Items.dragonfruit,roids]
        },{
          "mc":"chest8",
          "type":CHEST,
          "data":[Items.bacon,roids,Items.sushi,roids,Items.chili,roids]
        },{
          "mc":"chest9",
          "type":CHEST,
          "data":[Items.nut,roids,Items.mushroom,roids,Items.cupcake,roids]
        }];
        initPainting(0,35);
        initPainting(1,36);
        initPainting(2,79);
        initPainting(3,78);
        initPainting(4,100);
        initPainting(5,104);
        doorLinks = [[41,8,4,1,"door"],[41,9,4,1,"door"]];
        initScene("finalRoom",0);
      }
      if(mapNo == 44) {
        setArea(THE_WASTELANDS);
        initPed(0,66,Items.stick,false);
        battleBGM = [BGM.SECONDARY_BATTLE,BGM.SECONDARY_BATTLE];
        battleIcons = [BitPoison,BoulderCoral];
        battleIconsAlt = [BitPoison,BoulderCoral];
        battles = [Battles.nomans2,Battles.nomans1];
        battlesAlt = [BattlesAlt.nomans2,BattlesAlt.nomans1];
        battleBG = [14,14];
        respawn = [undefined,true];
        weather = [Weather.ACID,Weather.ACID];
        altWeather = [Weather.OVERGROWTH,Weather.OVERGROWTH];
        if(!Flags.FORT_ENTERED.quantity) {
          initNPC(0,NPCs.hans);
          initNPC(1,NPCs.heinz);
          initNPC(2,NPCs.helmut);
        } else {
          maps.npc0.stop();
          maps.npc0.visible = false;
          maps.npc1.stop();
          maps.npc1.visible = false;
          maps.npc2.stop();
          maps.npc2.visible = false;
        }
        setDoors([Maps.switchData[10]],[0],true);
        maps.objectData = [{
          "mc":"chest1",
          "type":CHEST,
          "data":[Equips.pearlnecklace,1,Items.keycard,1,Items.seashell,5]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Items.coffee,5,Items.blueberries,5,Items.pineapple,3]
        },{
          "mc":"chest3",
          "type":CHEST,
          "data":[Items.bomb,5,Items.steel,2,Items.spring,2]
        }];
        doorLinks = [[20,17,9,1,"cave"],[20,18,9,1,"cave"],[59,6,9,1,"metal"]];
        initScene("wastelandIntro",0);
      }
      if(mapNo == 45) {
        setArea(THE_WASTELANDS);
        initPed(0,67,Items.stick,false);
        initNPC(0,NPCs.jorma);
        if(Flags.BRIDGE_BUILT.quantity) {
          maps.special0.nextFrame();
          maps.special1.nextFrame();
        } else {
          maps.addTile(1,4,2,false);
          maps.addTile(1,5,2,false);
          maps.addTile(1,6,2,false);
          maps.addTile(1,7,2,false);
        }
        battleBGM = [BGM.SECONDARY_BATTLE,BGM.SECONDARY_BATTLE,BGM.SECONDARY_BATTLE];
        battleIcons = [CreepGreen,CatSniper,CatBomber];
        battleIconsAlt = [CreepRed,BoulderDirt,HandSkeleton];
        battles = [Battles.nomans5,Battles.nomans4,Battles.nomans3];
        battlesAlt = [BattlesAlt.nomans5,BattlesAlt.nomans4,BattlesAlt.nomans3];
        battleBG = [14,14,14];
        respawn = [true,undefined,true];
        weather = [Weather.ACID,Weather.ACID,Weather.ACID];
        altWeather = [];
        maps.objectData = [{
          "mc":"chest1",
          "type":CHEST,
          "data":[Items.seashell,4,Items.silk,2,Items.silver,1]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Equips.riotshield,1,Items.plastic,2,Items.powder,2]
        },{
          "mc":"chest3",
          "type":CHEST,
          "data":[Items.milk,1,Items.espresso,1]
        },{
          "mc":"chest4",
          "type":CHEST,
          "data":[Items.steel,1]
        },{
          "mc":"chest5",
          "type":CHEST,
          "data":[Items.wood,6,Items.brick,12,Items.beef,1]
        }];
        initScenes([0,1],"wastelandDestruction",0);
      }
      if(mapNo == 46) {
        setArea(THE_WASTELANDS);
        initPed(0,68,Items.stick,false);
        battleBGM = [BGM.SECONDARY_BATTLE,BGM.SECONDARY_BATTLE,BGM.MECHANICAL_CONDAMNATION,BGM.MECHANICAL_CONDAMNATION];
        battleIcons = [CreepBlue,CreepRed,"",""];
        battleIconsAlt = [SquidPurple,CatSniper,"",""];
        battles = [Battles.nomans7,Battles.nomans6,Battles.lance1,Battles.lance1];
        battlesAlt = [BattlesAlt.nomans7,BattlesAlt.nomans6,Battles.lance1,Battles.lance1];
        battleBG = [14,14,15,15];
        battleFlags = [undefined,undefined,Flags.LANCE_BATTLE_1,Flags.LANCE_BATTLE_1];
        respawn = [undefined,true];
        weather = [undefined,Weather.ACID];
        altWeather = [Weather.GEYSERS,Weather.GEYSERS];
        maps.objectData = [{
          "mc":"sign0",
          "type":SIGN,
          "data":"sign3"
        },{
          "mc":"chest1",
          "type":CHEST,
          "data":[Equips.lightningbolt,1,Items.seashell,2,Items.water,1]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Items.water,3,Items.wood,4,Items.lollipop,1]
        },{
          "mc":"chest3",
          "type":CHEST,
          "data":[Items.powder,4,Items.bomb,2,Items.powder,1]
        }];
        initScenes([0],"bigCar",0);
        initScene("natalieGone",1,MapText.natalieGoneScenes,Flags.NATZ_KIDNAPPED,1);
      }
      if(mapNo == 47) {
        setArea(THE_WASTELANDS);
        Maps.warpData[3] = true;
        if(!Items.axe.quantity || !Options.customEnabled()) {
          maps.special6.visible = false;
          maps.addTile(0,4,10,false);
          maps.door0.stop();
        }
        battleBGM = [BGM.SECONDARY_BATTLE,BGM.SECONDARY_BATTLE];
        battleIcons = [CatBomber,FlybotRed];
        battleIconsAlt = [CatBomber,IdolMetal];
        battles = [Battles.walls1,Battles.walls2];
        battlesAlt = [BattlesAlt.walls1,BattlesAlt.walls2];
        battleBG = [15,15];
        respawn = [undefined];
        altWeather = [Weather.SANDSTORM,Weather.SANDSTORM];
        if(!Flags.TANK_DEFEATED.quantity) {
          weather = [Weather.AIRSTRIKES,Weather.AIRSTRIKES];
        }
        initNPC(0,NPCs.erika);
        maps.switchEvent = function():* {
          setSpikes([Maps.switchData[3]],[0,1,3,4]);
        };
        initSwitch(0,3);
        if(Game.party.length != 4) {
          map.special0.visible = false;
        } else {
          map.addTile(1,8,6,false);
          map.addTile(1,8,7,false);
          map.addTile(1,8,8,false);
          map.addTile(1,8,9,false);
          map.addTile(1,9,6,false);
          map.addTile(1,9,7,false);
          map.addTile(1,9,8,false);
          map.addTile(1,9,9,false);
        }
        maps.objectData = [{
          "mc":"chest1",
          "type":CHEST,
          "data":[Items.gear,1,Items.geode,3,Items.steel,1]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Items.plastic,1,Items.pipe,2,Items.tape,1]
        },{
          "mc":"chest3",
          "type":CHEST,
          "data":[Items.leather,2,Items.buckle,2,Items.wool,2]
        },{
          "mc":"chest4",
          "type":CHEST,
          "data":[Items.bomb,2]
        },{
          "mc":"chest5",
          "type":CHEST,
          "data":[Items.bomb,3]
        }];
        doorLinks = [[144,6,9,2,"glitch"]];
        initScene("fortressIntro",0);
      }
      if(mapNo == 48) {
        setArea(THE_WASTELANDS);
        if(!Items.axe.quantity || Options.customEnabled()) {
          maps.special0.visible = false;
          maps.addTile(2,12,11,false);
          maps.door0.stop();
        }
        initPed(0,69,Items.stick,false);
        battleBGM = [BGM.SECONDARY_BATTLE,BGM.SECONDARY_BATTLE,BGM.BLOSSOM,BGM.BLOSSOM];
        battleIcons = [CatSniper,FlybotBlue];
        battleIconsAlt = [FlybotYellow,BushDark];
        battles = [Battles.walls3,Battles.walls4,Battles.anna,Battles.anna];
        battlesAlt = [BattlesAlt.walls3,BattlesAlt.walls4,BattlesAlt.anna,BattlesAlt.anna];
        battleBG = [15,15,15,15];
        battleFlags = [undefined,undefined,Flags.ANNA_BATTLE,Flags.ANNA_BATTLE];
        altWeather = [Weather.FOG,Weather.FOG];
        respawn = [true];
        if(!Flags.TANK_DEFEATED.quantity) {
          weather = [Weather.AIRSTRIKES,Weather.AIRSTRIKES,Weather.AIRSTRIKES];
        }
        initNPC(0,NPCs.jonathan);
        initNPC(1,NPCs.jenny);
        initNPC(2,NPCs.maskerD);
        maps.objectData = [{
          "mc":"chest1",
          "type":CHEST,
          "data":[Items.egg,1,Items.steel,1,Items.powder,1]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Equips.camoskirt,1,Items.wool,3,Items.wood,1]
        }];
        doorLinks = [[144,6,9,2,"glitch"]];
        maps.foe2.visible = false;
        maps.foe3.visible = false;
        initScene("annaIntro",0);
        initScene("annaJoins",1,MapText.annaJoinsScenes,{"quantity":Game.party.length},3);
        initScenes([0,1],"annaIntro2",2);
      }
      if(mapNo == 49) {
        setArea(THE_WASTELANDS);
        setDoors([Maps.switchData[2]],[0],true);
        battleBGM = [BGM.SECONDARY_BATTLE,BGM.SECONDARY_BATTLE];
        battleIcons = [FlybotBlue,Defender2];
        battleIconsAlt = [FlybotRed,Defender3];
        battles = [Battles.walls9,Battles.walls10];
        battlesAlt = [BattlesAlt.walls9,BattlesAlt.walls10];
        battleBG = [15,15];
        respawn = [undefined];
        altWeather = [Weather.FOG,Weather.FOG];
        if(!Flags.TANK_DEFEATED.quantity) {
          weather = [Weather.AIRSTRIKES,Weather.AIRSTRIKES];
        }
        maps.switchEvent = function():* {
          setDoors([Maps.switchData[2]],[0]);
        };
        initSwitch(0,2);
        if(Items.axe.quantity) {
          maps.special0.gotoAndStop(2);
          maps.special1.skin = 3;
          if(!Flags.ROBO_DEFEATED.quantity && maps.player.X != 3) {
            maps.special1.play();
          }
        } else {
          maps.special0.gotoAndStop(1);
          maps.door1.stop();
          maps.door2.stop();
          maps.addTile(1,3,4,false);
          maps.addTile(1,3,5,false);
        }
        maps.objectData = [{
          "mc":"chest1",
          "type":CHEST,
          "data":[Items.chicken,1,Items.riceball,1,Items.coffee,3]
        }];
        doorLinks = [[57,9,10,1,"metal"],[323,4,9,1,"footsteps"],[323,4,9,1,"footsteps"]];
        initScene("whosNatalie",0);
        if(Boolean(Maps.sceneData[57]) && Boolean(Maps.sceneData[57][2])) {
          disableCutscene(1);
        }
        initScene("lanceJoins",1,MapText.lanceJoinsScenes,{"quantity":Game.party.length},5);
      }
      if(mapNo == 50) {
        setArea(THE_WASTELANDS);
        MX = 4;
        MY = 4;
        Main.unlockPremiumStuff();
        Global.mazeCount = 0;
        initNPC(0,NPCs.helmutC);
        initNPC(1,NPCs.hansC);
        initNPC(2,NPCs.heinzC);
        initNPC(3,NPCs.bounce);
        initNPC(4,NPCs.bounceB);
        maps.objectData = [{
          "mc":"sign0",
          "type":SIGN,
          "data":(Options.alwaysGiveEXP ? "signDungeonAlt2" : (Options.alwaysScaleFoes ? "signDungeonAlt" : "signDungeon"))
        },{
          "mc":"chest1",
          "type":CHEST,
          "data":[Cards.card34,1,Items.bomb,12,Items.bread,1]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Equips.baskethat,1,Items.shuriken,8,Items.potato,1]
        },{
          "mc":"chest3",
          "type":CHEST,
          "data":[Equips.nitrobomber,1,Items.pill,1,Items.mushroom,1]
        }];
        doorLinks = [[207,11,6,1,"ladder"]];
        initScene("butWhy",0,MapText.butWhyScenes);
        initScenes([0,1],"fascistsSurrender",1);
      }
      if(mapNo == 57) {
        setArea(IRON_FORTRESS);
        if(Maps.switchData[203]) {
          BGM.play(BGM.TPF_TRANS,false);
        }
        battleBGM = [BGM.POSH_BATTLE,BGM.POSH_BATTLE,BGM.POSH_BATTLE,BGM.MECHANICAL_CONDAMNATION,BGM.MECHANICAL_CONDAMNATION];
        battleIcons = [IdolMetal,FishJet,FlybotRed,"lance1",FlybotRed];
        battleIconsAlt = [IdolGem,FishGold,MirrorAngel,"lance1",FlybotRed];
        battles = [Battles.fort2,Battles.fort1,Battles.fort3,Battles.boss2,Battles.boss2];
        battlesAlt = [BattlesAlt.fort2,BattlesAlt.fort1,BattlesAlt.fort3,BattlesAlt.boss2,BattlesAlt.boss2];
        battleBG = [17,17,17,17,17];
        battleFlags = [undefined,undefined,undefined,Flags.LANCE_BATTLE_3,Flags.LANCE_BATTLE_3];
        respawn = [true];
        weather = [undefined,undefined,undefined,undefined,Weather.AIRSTRIKES];
        altWeather = [Weather.RADIATION,Weather.RADIATION,Weather.RADIATION,Weather.RADIATION,Weather.RADIATION];
        Flags.FORT_ENTERED.quantity = 1;
        initNPC(0,NPCs.rebel);
        initNPC(1,NPCs.xavi);
        if(Game.party.length != 4) {
          maps.foe3.stop();
          maps.foe4.stop();
          maps.foe3.visible = false;
          maps.foe4.visible = false;
        }
        if(Game.party.length == 5) {
          Medals.unlock(Medals.partySoftly);
        }
        maps.switchEvent = function():* {
          setSpikes([Maps.switchData[6]],[0,1,2]);
          setSpikes([Maps.switchData[5]],[3,4,5,6]);
        };
        maps.switchEvent();
        maps.objectData = [{
          "mc":"sign0",
          "type":SIGN2,
          "data":"book1"
        },{
          "mc":"sign1",
          "type":SIGN2,
          "data":"book2"
        },{
          "mc":"sign2",
          "type":SIGN2,
          "data":"paintingLance"
        },{
          "mc":"chest1",
          "type":CHEST,
          "data":[Items.milk,1,Items.orangejuice,1]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Items.pizza,1,Items.chicken,1]
        },{
          "mc":"chest3",
          "type":CHEST,
          "data":[Items.pretzel,2,Items.coffee,5,Items.energy,3]
        },{
          "mc":"chest4",
          "type":CHEST,
          "data":[Items.bread,1]
        }];
        initPainting(0,57);
        initPainting(1,59);
        Medals.unlock(Medals.overTheWall);
        doorLinks = [[49,14,9,2,"metal"]];
        initScene("fortressEnter",0);
        initScene("tankAmbush",1,null,{"quantity":Game.party.length},4);
        if(Maps.sceneData[49][1]) {
          disableCutscene(2);
        }
        initScene("lanceJoins",2,MapText.lanceJoinsScenes,{"quantity":Game.party.length},5);
      }
      if(mapNo == 58) {
        setArea(IRON_FORTRESS);
        BGM.play(BGM.FORTRESS_THEME);
        battleBGM = [BGM.POSH_BATTLE,BGM.POSH_BATTLE,BGM.POSH_BATTLE];
        battleIcons = [DogZap,SlimeMouse,FlybotYellow];
        battleIconsAlt = [DogFriend,SlimeLava,FlybotYellow];
        battles = [Battles.fort4,Battles.fort5,Battles.fort9];
        battlesAlt = [BattlesAlt.fort4,BattlesAlt.fort5,BattlesAlt.fort9];
        battleBG = [18,18,18];
        respawn = [true,true];
        altWeather = [Weather.RADIATION,Weather.THUNDERSTORM,Weather.THUNDERSTORM];
        initNPC(0,NPCs.abdul);
        setDoors([Maps.switchData[4]],[0],true);
        maps.switchEvent = function():* {
          setDoors([Maps.switchData[4]],[0]);
          setSpikes([Maps.switchData[5]],[0,1]);
        };
        initSwitch(0,4);
        initSwitch(1,5);
        maps.objectData = [{
          "mc":"chest2",
          "type":CHEST,
          "data":[Equips.zeuswrath,1,Items.cola,2,Items.pineapple,2]
        },{
          "mc":"chest3",
          "type":CHEST,
          "data":[Equips.crossbonepin,1,Items.spike,1]
        },{
          "mc":"chest4",
          "type":CHEST,
          "data":[Items.topazkey,1,Items.sushi,1]
        }];
        initScene("firstPrison",0);
      }
      if(mapNo == 54) {
        setArea(IRON_FORTRESS);
        battleBGM = [BGM.SECONDARY_BATTLE,BGM.SECONDARY_BATTLE,BGM.SECONDARY_BATTLE];
        battleIcons = [DogZap,SlimeMouse,FlybotYellow];
        battleIconsAlt = [SlimeBigLava,SlimeLava,FlybotRed];
        battles = [Battles.fort6,Battles.fort7,Battles.fort8];
        battlesAlt = [BattlesAlt.fort6,BattlesAlt.fort7,BattlesAlt.fort8];
        battleBG = [16,16,16];
        respawn = [];
        altWeather = [Weather.RADIATION,undefined];
        initNPC(0,NPCs.tim);
        maps.objectData = [{
          "mc":"chest1",
          "type":CHEST,
          "data":[Items.plastic,2,Items.floppy,2,Items.coffee,3]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Items.iron,8,Items.water,2,Items.ice,2]
        },{
          "mc":"chest3",
          "type":CHEST,
          "data":[Items.magma,1,Equips.solspear,1,Items.magma,1]
        }];
        initScenes([0],"boosters1",0);
        initScenes([1],"boosters2",1);
      }
      if(mapNo == 53) {
        setArea(IRON_FORTRESS);
        BGM.play(BGM.FORTRESS_THEME);
        battleBGM = [BGM.TERTIARY_BATTLE];
        if(Options.altFoes) {
          battleBGM = [BGM.HEROES_MARCH];
        }
        battleFlags = [Flags.MIMIC];
        battleIcons = ["mimic"];
        battles = [Battles.fort10];
        battlesAlt = [BattlesAlt.fort10];
        battleBG = [18];
        if(Options.altFoes) {
          battleBG = [Backgrounds.EBF3_JACK];
        }
        respawn = [];
        altWeather = [Weather.RADIATION];
        if(Options.altFoes) {
          weather[0] = null;
          altWeather[0] = null;
        }
        if(Maps.switchData[6]) {
          Players.getNatalieAgain();
        }
        initNPC(0,NPCs.hikari);
        initNPC(1,NPCs.bella);
        initNPC(2,NPCs.karen);
        maps.switchEvent = function():* {
          setSpikes([Maps.switchData[6]],[0,1,2,3,4,5,6,7]);
        };
        maps.switchEvent();
        hideChest(2);
        maps.success = function():* {
          dropChest(2);
        };
        maps.objectData = [{
          "mc":"shop0",
          "type":SHOP,
          "data":[FOOD_SHOP,Items.FOOD_SHOP]
        },{
          "mc":"chest1",
          "type":CHEST,
          "data":[Items.donut,1,Items.apple,3,Items.cupcake,1]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Items.nut,1,Items.blueberries,5,Items.butterflywing,2]
        },{
          "mc":"chest3",
          "type":CHEST,
          "data":[Items.gear,1,Items.hammer,1,Items.gear,1]
        },{
          "mc":"chest4",
          "type":CHEST,
          "data":[Items.cake,1,Items.poptart,1,Items.lollipop,1]
        }];
        initPainting(0,58);
        initPainting(1,56);
        initScene("natalieFound",0,MapText.natalieFoundScenes);
        initScene("natalieRescued",1,MapText.natalieRescuedScenes,{"quantity":Game.party.length},4);
      }
      if(mapNo == 52) {
        setArea(IRON_FORTRESS);
        BGM.play(BGM.FORTRESS_THEME);
        if(Flags.LANCE_DEFEATED.quantity) {
          Game.clearBossBattle(3);
        }
        battleBGM = [BGM.SECONDARY_BATTLE,BGM.SECONDARY_BATTLE,BGM.SECONDARY_BATTLE,BGM.MECHANICAL_CONDAMNATION];
        battleIcons = [FishJet,IdolMetal,Defender1,"lance1"];
        battleIconsAlt = [FishJet,BatThunder,Defender2,"lance1"];
        battles = [Battles.fort11,Battles.fort12,Battles.fort13,Battles.lance2];
        battlesAlt = [BattlesAlt.fort11,BattlesAlt.fort12,BattlesAlt.fort13,Battles.lance2];
        battleBG = [16,16,16,16];
        battleFlags = [undefined,undefined,undefined,Flags.LANCE_BATTLE_2];
        altWeather = [Weather.RADIATION,Weather.RADIATION,Weather.RADIATION];
        respawn = [true];
        if(Maps.puzzleData[52]) {
          maps.special0.gotoAndStop(2);
          maps.special1.gotoAndStop(2);
          maps.special2.gotoAndStop(2);
          maps.special3.visible = false;
        }
        hideChest(1);
        maps.success = function():* {
          maps.special0.gotoAndStop(2);
          maps.special1.gotoAndStop(2);
          maps.special2.gotoAndStop(2);
          maps.special3.visible = false;
          dropChest(1);
        };
        maps.objectData = [{
          "mc":"chest1",
          "type":CHEST,
          "data":[Equips.spacehelmet,1,Items.floppy,3,Items.glass,2]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Equips.spaceace,1,Items.floppy,2,Items.magma,1]
        },{
          "mc":"chest3",
          "type":CHEST,
          "data":[Items.pipe,4,Items.iron,8,Items.milk,1]
        }];
        initScene("lanceFound",0);
        initScene("lanceFlees",1,null,Flags.LANCE_DEFEATED,1);
        initScenes([0],"disco",2);
      }
      if(mapNo == 51) {
        setArea(IRON_FORTRESS);
        BGM.play(BGM.FORTRESS_THEME);
        initPed(0,74,Items.musicCD,false);
        battleBGM = [BGM.POSH_BATTLE,BGM.POSH_BATTLE];
        battleIcons = [FlybotRed,WormFuzzy];
        battleIconsAlt = [MirrorAngel,WormFuzzy];
        battles = [Battles.fort15,Battles.fort14];
        battlesAlt = [BattlesAlt.fort15,BattlesAlt.fort14];
        battleBG = [18,18];
        respawn = [];
        altWeather = [];
        setDoors([Maps.switchData[9]],[0],true);
        initNPC(0,NPCs.hansB);
        initNPC(1,NPCs.heinzB);
        initNPC(2,NPCs.helmutB);
        initNPC(3,NPCs.jerry);
        initNPC(4,NPCs.leo);
        maps.switchEvent = function():* {
          setDoors([Maps.switchData[9]],[0]);
        };
        initSwitch(0,9);
        Maps.switchData[10] = true;
        maps.objectData = [{
          "mc":"sign0",
          "type":SIGN2,
          "data":"report1"
        },{
          "mc":"chest1",
          "type":CHEST,
          "data":[Equips.surgicalmask,1,Items.virus,2,Items.coffee,3]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Items.brick,11,Items.plastic,3,Items.glass,3]
        },{
          "mc":"chest3",
          "type":CHEST,
          "data":[Items.mint,1,Items.herb,4,Items.garlic,3]
        },{
          "mc":"chest4",
          "type":CHEST,
          "data":[Items.keycard,1,Items.gamechild,1,Items.cpu,1]
        },{
          "mc":"chest6",
          "type":CHEST,
          "data":[Items.copperkey,1]
        },{
          "mc":"chest5",
          "type":CHEST,
          "data":[Items.turd,1]
        }];
        doorLinks = [[59,14,9,1,"metal"]];
        initScenes([0,1,2],"morePrisons",0);
        initScenes([3],"secretCrack",1);
      }
      if(mapNo == 55) {
        setArea(IRON_FORTRESS);
        if(Maps.switchData[203]) {
          BGM.play(BGM.TPF_TRANS,false);
        }
        initPed(0,73,Items.musicCD,false);
        battleBGM = [BGM.POSH_BATTLE,BGM.POSH_BATTLE,BGM.POSH_BATTLE];
        battleIcons = [MirrorHaunted,SlimeMouse,MirrorWise];
        battleIconsAlt = [DollLance,SlimeLava,WraithFire];
        battles = [Battles.storage1,Battles.storage3,Battles.storage2];
        battlesAlt = [BattlesAlt.storage1,BattlesAlt.storage3,BattlesAlt.storage2];
        battleBG = [18,18,18];
        respawn = [undefined,true];
        altWeather = [];
        hideChest(4);
        maps.push0.skin(18);
        maps.push1.skin(18);
        maps.success = function():* {
          dropChest(4);
        };
        maps.objectData = [{
          "mc":"chest1",
          "type":CHEST,
          "data":[Items.diamondkey,1,Items.gems,2,Items.amber,1]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Items.grapes,1,Items.pretzel,2,Items.cupcake,1]
        },{
          "mc":"chest3",
          "type":CHEST,
          "data":[Equips.neonlightbulb,1,Items.glass,4,Items.spring,2]
        },{
          "mc":"chest4",
          "type":CHEST,
          "data":[Equips.ironcross,1,Items.cpu,1]
        },{
          "mc":"chest5",
          "type":CHEST,
          "data":[Items.gear,1,Items.spring,2]
        },{
          "mc":"chest6",
          "type":CHEST,
          "data":[Items.cookie,1,Items.cola,4,Items.blueberries,3]
        }];
      }
      if(mapNo == 56) {
        setLadders = function(param1:Boolean):* {
          if(param1) {
            map.addTile(0,4,5,false);
            map.addTile(0,4,7,false);
            map.addTile(0,13,5,false);
            map.addTile(0,13,7,false);
          } else {
            map.addTile(20,4,5,false);
            map.addTile(20,4,7,false);
            map.addTile(16,13,5,false);
            map.addTile(16,13,7,false);
          }
        };
        setArea(IRON_FORTRESS);
        if(Maps.switchData[203]) {
          BGM.play(BGM.TPF_TRANS,false);
        }
        initPed(0,72,Items.musicCD,false);
        battleBGM = [BGM.POSH_BATTLE,BGM.POSH_BATTLE,BGM.POSH_BATTLE];
        battleIcons = [IdolMetal,Defender1,WormFuzzy];
        battleIconsAlt = [FlybotYellow,MammothWar,WormBook];
        battles = [Battles.lab2,Battles.lab3,Battles.lab1];
        battlesAlt = [BattlesAlt.lab2,BattlesAlt.lab3,BattlesAlt.lab1];
        battleBG = [17,17,17];
        respawn = [];
        weather = [Weather.RADIATION,Weather.RADIATION,Weather.RADIATION];
        altWeather = [Weather.ENERGY,Weather.ENERGY,Weather.ENERGY];
        if(Boolean(Maps.switchData[7]) && Boolean(Maps.switchData[8])) {
          maps.special0.gotoAndStop(8);
          setLadders(true);
        } else {
          setLadders(false);
        }
        initNPC(0,NPCs.asahi);
        initNPC(1,NPCs.yui);
        initNPC(2,NPCs.akira);
        maps.switchEvent = function():* {
          setSpikes([Maps.switchData[6]],[0,1,2]);
          if(Maps.switchData[7]) {
            maps.special1.gotoAndStop(2);
          } else {
            maps.special1.gotoAndStop(1);
          }
          if(Maps.switchData[8]) {
            maps.special2.gotoAndStop(2);
          } else {
            maps.special2.gotoAndStop(1);
          }
          if(Boolean(Maps.switchData[7]) && Boolean(Maps.switchData[8]) && maps.special0.currentFrame == 1) {
            maps.special0.play();
            setLadders(true);
          } else if((!Maps.switchData[7] || !Maps.switchData[8]) && maps.special0.currentFrame == 8) {
            maps.special0.play();
            setLadders(false);
          }
          if(Maps.switchData[203]) {
            BGM.play(BGM.TPF_TRANS,true,true);
            maps.special4.gotoAndPlay(1);
          } else {
            BGM.play(BGM.FORTRESS_THEME,false,true);
            maps.special4.gotoAndStop(1);
          }
        };
        initSwitch(0,6);
        initSwitch(1,7);
        initSwitch(2,8);
        initSwitch(3,203);
        maps.objectData = [{
          "mc":"sign0",
          "type":SIGN2,
          "data":"report2"
        },{
          "mc":"sign1",
          "type":SIGN2,
          "data":"report3"
        },{
          "mc":"sign2",
          "type":SIGN2,
          "data":"computer1"
        },{
          "mc":"chest1",
          "type":CHEST,
          "data":[Equips.gasmask,1,Items.virus,2]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Items.map2,1,Items.poptart,1,Items.yoghurt,1]
        },{
          "mc":"chest3",
          "type":CHEST,
          "data":[Items.rune,1]
        },{
          "mc":"chest4",
          "type":CHEST,
          "data":[Items.rune,1]
        },{
          "mc":"chest5",
          "type":CHEST,
          "data":[Items.rune,1]
        },{
          "mc":"chest6",
          "type":CHEST,
          "data":[Equips.darkbauble,1]
        }];
        initScene("labIntro",0);
      }
      if(mapNo == 59) {
        setArea(IRON_FORTRESS);
        Maps.minimapCoords = [4,3];
        maps.objectData = [{
          "mc":"chest1",
          "type":CHEST,
          "data":[Items.tape,1,Items.magneticboots,1,Items.tape,1]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Equips.juggernaught,1,Items.iron,4,Items.magma,2]
        }];
        doorLinks = [[44,16,6,1,"metal"],[51,2,6,1,"metal"]];
      }
      if(mapNo == 60) {
        setArea(RAINBOW_RIVER);
        initNPC(0,NPCs.weeb);
        Maps.warpData[8] = true;
        Flags.expStyle = Flags.SCALE_TO_LEVEL;
        battleBGM = [BGM.NYMPHIS_FAE,BGM.NYMPHIS_FAE,BGM.NYMPHIS_FAE,BGM.NYMPHIS_FAE,BGM.NYMPHIS_FAE];
        battleIcons = [WormCutie,IdolMetal,IdolMetal,IdolMetal,IdolMetal];
        battleIconsAlt = [GloopFab,IdolMetal,IdolMetal,IdolMetal,IdolMetal];
        battles = [Battles.pink1,Battles.robots1,Battles.robots2,Battles.robots3,Battles.robots4];
        battlesAlt = [BattlesAlt.pink1,BattlesAlt.robots1,BattlesAlt.robots2,BattlesAlt.robots3,BattlesAlt.robots4];
        battleFlags = [undefined,Flags.KILL_ROBOT_QUEST,Flags.KILL_ROBOT_QUEST,Flags.KILL_ROBOT_QUEST,Flags.KILL_ROBOT_QUEST];
        battleBG = [33,21,21,21,21];
        respawn = [];
        weather = [Weather.BLOSSOM];
        altWeather = [Weather.SACRED,Weather.AIRSTRIKES,Weather.AIRSTRIKES,Weather.AIRSTRIKES,Weather.AIRSTRIKES];
        if(Items.raft.quantity != 1) {
          maps.foe1.stop();
          maps.foe2.stop();
          maps.foe3.stop();
          maps.foe4.stop();
          maps.foe1.visible = false;
          maps.foe2.visible = false;
          maps.foe3.visible = false;
          maps.foe4.visible = false;
        }
        initKey(0,Items.coralkey);
        maps.objectData = [{
          "mc":"chest2",
          "type":CHEST,
          "data":[Equips.fairy,1,Items.silver,1,Items.silk,1]
        },{
          "mc":"chest1",
          "type":CHEST,
          "data":[Items.rune,1,Items.butterflywing,6]
        },{
          "mc":"chest0",
          "type":CHEST,
          "data":[Items.gold,1,Items.satin,2,Items.ruby,1]
        }];
        initScenes([0],"hiddenTreasure",0);
        initScenes([1,2,3,4],"needRaft",1);
      }
      if(mapNo == 61) {
        setArea(RAINBOW_RIVER);
        initNPC(0,NPCs.fizz);
        Flags.expStyle = Flags.SCALE_TO_LEVEL;
        battleBGM = [BGM.NYMPHIS_FAE,BGM.NYMPHIS_FAE,BGM.NYMPHIS_FAE];
        battleIcons = [SquidLime,BoulderObsidian,SlimeBunny];
        battleIconsAlt = [SquidPink,BoulderCoral,SlimeBunny];
        battles = [Battles.pink4,Battles.pink6,Battles.pink5];
        battlesAlt = [BattlesAlt.pink4,BattlesAlt.pink6,BattlesAlt.pink5];
        battleBG = [33,33,33];
        respawn = [];
        weather = [Weather.BLOSSOM,Weather.BLOSSOM,Weather.BLOSSOM];
        altWeather = [Weather.SACRED,Weather.SACRED,Weather.SACRED];
        initKey(0,Items.coralkey);
        initKey(1,Items.coralkey);
        initKey(2,Items.coralkey);
        maps.special0.skin = 10;
        if(!Flags.PUMPKUS_DEFEATED.quantity && Items.spikedboots.quantity && maps.player.Y != 6) {
          maps.special0.play();
        }
        maps.objectData = [{
          "mc":"chest0",
          "type":CHEST,
          "data":[Equips.cattail,1,Items.fur,10,Items.silk,5]
        },{
          "mc":"chest1",
          "type":CHEST,
          "data":[Cards.card33,1,Items.emerald,3,Items.topaz,3]
        },{
          "mc":"chest3",
          "type":CHEST,
          "data":[Items.diamond,1,Items.ruby,1]
        },{
          "mc":"chest4",
          "type":CHEST,
          "data":[Equips.magicalskirt,1,Items.satin,1,Items.topaz,1]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Items.butterflywing,12,Items.ruby,1]
        }];
        doorLinks = [[333,9,5,2,"glitch"]];
      }
      if(mapNo == 62) {
        setArea(GREENWOOD_VILLAGE);
        initNPC(0,NPCs.steve);
        if(Options.customEnabled()) {
          Medals.unlock(Medals.adventureRemix);
        }
        if(!Flags.BARN_OPEN.quantity) {
          maps.addTile(1,10,2,false);
          maps.addTile(1,10,3,false);
          maps.door0.stop();
          maps.door1.stop();
        }
        maps.objectData = [{
          "mc":"sign0",
          "type":SIGN,
          "data":"sign7"
        },{
          "mc":"chest1",
          "type":CHEST,
          "data":[Items.feather,3,Equips.cowhorns,1,Items.leather,2]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Items.potato,1,Items.turd,2]
        },{
          "mc":"chest3",
          "type":CHEST,
          "data":[Items.pill,1,Items.cola,3]
        }];
        doorLinks = [[172,8,9,1,"door"],[172,8,9,1,"door"]];
        initScene("nearGreenwood",0);
        initScenes([0],"farmTheft",1);
      }
      if(mapNo == 63) {
        setArea(GREENWOOD_VILLAGE);
        BGM.play(BGM.BREEZE_FROM_HOME);
        initNPC(0,NPCs.pablo);
        initNPC(1,NPCs.thiefB);
        initPed(0,12,Items.turnip,false);
        initPed(1,13,Items.pumpkin,false);
        maps.switchEvent = function():* {
        };
        if(Items.redjewel.quantity) {
          Medals.unlock(Medals.dimDepths);
        }
        maps.objectData = [{
          "mc":"chest1",
          "type":CHEST,
          "data":[Items.leather,3,Items.buckle,1,Items.silk,4]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Items.wood,3]
        }];
        doorLinks = [[175,9,8,1,"door"]];
        initScenes([0,1,2],"farmHouse",0);
        initScene("basement6",1,null,Items.redjewel,1);
      }
      if(mapNo == 64) {
        setArea(GREENWOOD_VILLAGE);
        initNPC(0,NPCs.hikariB);
        initNPC(1,NPCs.karenB);
        maps.objectData = [{
          "mc":"shop0",
          "type":SHOP,
          "data":[RARE_FOOD_SHOP,Items.RARE_FOOD_SHOP]
        },{
          "mc":"sign0",
          "type":SIGN,
          "data":"sign9"
        },{
          "mc":"chest1",
          "type":CHEST,
          "data":[Items.turnip,1,Items.chips,1]
        }];
        doorLinks = [[170,9,10,1,"door"],[170,10,10,1,"door"]];
        initScene("libraryIntro",0);
      }
      if(mapNo == 65) {
        setArea(GREENWOOD_VILLAGE);
        battleBGM = [];
        battleIcons = [BushGreen,BushGreen,BushGreen,BushGreen,BushGreen];
        battleIconsAlt = [BushRed,BushRed,BushRed,BushRed,BushRed];
        battles = [Battles.bushes1,Battles.bushes2,Battles.bushes3,Battles.bushes4,Battles.bushes5];
        battlesAlt = [BattlesAlt.bushes1,BattlesAlt.bushes2,BattlesAlt.bushes3,BattlesAlt.bushes4,BattlesAlt.bushes5];
        battleBG = [21,21,21,21,21];
        battleFlags = [Flags.KILL_BUSH_QUEST,Flags.KILL_BUSH_QUEST,Flags.KILL_BUSH_QUEST,Flags.KILL_BUSH_QUEST,Flags.KILL_BUSH_QUEST];
        respawn = [];
        weather = [Weather.LEAVES,Weather.LEAVES,Weather.LEAVES,Weather.LEAVES,Weather.LEAVES];
        altWeather = [Weather.WINDY,Weather.WINDY,Weather.WINDY,Weather.WINDY,Weather.WINDY];
        initNPC(0,NPCs.randy);
        initPed(0,11,Items.steel,false);
        maps.switchEvent = function():* {
          Flags.SMITH_ROBBED.quantity = 1;
        };
        if(!Flags.HOUSE_BUILT.quantity) {
          maps.addTile(1,15,3,false);
          maps.addTile(1,15,5,false);
          maps.addTile(1,15,6,false);
          maps.door1.stop();
          maps.door2.stop();
        }
        maps.objectData = [{
          "mc":"sign0",
          "type":SIGN,
          "data":"catStatue"
        },{
          "mc":"sign1",
          "type":SIGN,
          "data":"dontSteal"
        },{
          "mc":"chest1",
          "type":CHEST,
          "data":[Equips.hellfireshotgun,1,Items.brick,16,Items.steel,2]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Items.sushi,1,Items.apple,2,Items.beer,2]
        },{
          "mc":"chest3",
          "type":CHEST,
          "data":[Items.bacon,1,Items.pizza,1]
        }];
        doorLinks = [[169,12,8,1,"door"],[171,9,9,1,"door"],[171,9,9,1,"door"]];
        initScenes([0,1,2],"newHouses",0);
      }
      if(mapNo == 67) {
        setArea(GREENWOOD_VILLAGE);
        hideChest(2);
        maps.success = function():* {
          dropChest(2);
        };
        maps.push0.skin(3);
        maps.push1.skin(2);
        maps.push2.skin(4);
        maps.objectData = [{
          "mc":"chest0",
          "type":CHEST,
          "data":[Items.turd,3,Items.herb,2]
        },{
          "mc":"chest1",
          "type":CHEST,
          "data":[Equips.pentagram,1]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Equips.heavensgate,1]
        },{
          "mc":"chest3",
          "type":CHEST,
          "data":[Items.flower,1]
        }];
        maps.special0.skin = 2;
        if(!Flags.BOSH_DEFEATED.quantity && Items.raft.quantity && maps.player.X != 10) {
          maps.special0.play();
        }
        doorLinks = [[177,9,9,1,"door"],[332,4,6,1,"ladder"]];
        initScenes([0],"houseTheft",1);
        initScenes([1],"sentryStatues",0);
      }
      if(mapNo == 66) {
        setArea(GREENWOOD_VILLAGE);
        BGM.play(BGM.BREEZE_FROM_HOME,false);
        Maps.warpData[7] = true;
        initNPC(0,NPCs.pal);
        initNPC(1,NPCs.gal);
        maps.objectData = [{
          "mc":"sign0",
          "type":SIGN,
          "data":"sign4"
        },{
          "mc":"chest1",
          "type":CHEST,
          "data":[Items.leather,3,Items.steel,2]
        }];
        initScene("needAxe",0);
      }
      if(mapNo == 69) {
        setArea(GREENWOOD_VILLAGE);
        BGM.play(BGM.BREEZE_FROM_HOME,false);
        initNPC(0,NPCs.mioC);
        initNPC(2,NPCs.chikaC);
        initNPC(1,NPCs.misakiC);
        battleBGM = [BGM.NYMPHIS_FAE,BGM.NYMPHIS_FAE,BGM.NYMPHIS_FAE];
        if(Options.altFoes) {
          battleBGM = [BGM.NYMPHIS_FAE,BGM.NYMPHIS_FAE,BGM.JUMP_INTO_BATTLE];
        }
        battleFlags = [undefined,undefined,Flags.MIMIC];
        battleIcons = [CatNinja,DollMatt,"mimic"];
        battleIconsAlt = [CatNinja,DollMatt,"mimic"];
        battles = [Battles.bamboo1,Battles.bamboo2,Battles.bamboo3];
        battlesAlt = [BattlesAlt.bamboo1,BattlesAlt.bamboo2,BattlesAlt.bamboo3];
        battleBG = [24,24,24];
        if(Options.altFoes) {
          battleBG = [24,24,Backgrounds.EBF4_RAFFLESIA];
        }
        respawn = [];
        altWeather = [Weather.OVERGROWTH,Weather.OVERGROWTH,Weather.OVERGROWTH];
        if(Options.altFoes) {
          weather[2] = null;
          altWeather[2] = null;
        }
        maps.push8.skin(19);
        maps.push9.skin(12);
        maps.push10.skin(17);
        maps.push11.skin(16);
        maps.push12.skin(11);
        maps.push13.skin(15);
        maps.objectData = [{
          "mc":"chest1",
          "type":CHEST,
          "data":[Equips.silvercross,1,Items.silver,1]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Items.silk,2,Items.wool,20]
        },{
          "mc":"chest3",
          "type":CHEST,
          "data":[Items.beef,1,Items.magma,3,Items.amber,1]
        },{
          "mc":"chest4",
          "type":CHEST,
          "data":[Items.easteregg,1,Items.flower,2]
        }];
        initScene("ashwood",0);
      }
      if(mapNo == 71) {
        setArea(GREENWOOD_VILLAGE);
        BGM.play(BGM.BREEZE_FROM_HOME);
        initNPC(0,NPCs.izumi);
        if(Flags.SLIME_GET.quantity == 0) {
          maps.foe3.stop();
          maps.foe3.visible = false;
          maps.foe4.stop();
          maps.foe4.visible = false;
          maps.foe5.stop();
          maps.foe5.visible = false;
        }
        battleBGM = [BGM.NYMPHIS_FAE,BGM.NYMPHIS_FAE,BGM.NYMPHIS_FAE];
        battleIcons = [CatBomber,BearPanda,CatNinja,SlimeIcecream,SlimeBunny,SlimeMouse];
        battleIconsAlt = [CatBomber,BearPanda,CatNinja,SlimeIcecream,SlimeBunny,SlimeMouse];
        battles = [Battles.bamboo5,Battles.bamboo4,Battles.bamboo6,Battles.slime1,Battles.slime2,Battles.slime3];
        battlesAlt = [BattlesAlt.bamboo5,BattlesAlt.bamboo4,BattlesAlt.bamboo6,BattlesAlt.slime1,BattlesAlt.slime2,BattlesAlt.slime3];
        battleBG = [24,24,24,24,24,24];
        battleFlags = [undefined,undefined,undefined,Flags.INFINITE_HP,Flags.INFINITE_HP,Flags.INFINITE_HP];
        respawn = [undefined,undefined,undefined,true,true,true];
        altWeather = [Weather.BLOSSOM,Weather.BLOSSOM,Weather.BLOSSOM];
        hideChest(3);
        maps.special0.skin = 14;
        if(!Flags.TOTOM_DEFEATED.quantity && Items.leafyboots.quantity && maps.player.Y != 1) {
          maps.special0.play();
        }
        maps.switchEvent = function():* {
          if(Boolean(Maps.switchData[14]) && Boolean(Maps.switchData[15]) && Boolean(Maps.switchData[16]) && Boolean(Maps.switchData[17])) {
            dropChest(3);
          }
        };
        initPed(0,14,Items.fireorb,true);
        initPed(1,15,Items.earthorb,true);
        initPed(2,16,Items.waterorb,true);
        initPed(3,17,Items.windorb,true);
        maps.objectData = [{
          "mc":"chest1",
          "type":CHEST,
          "data":[Items.butterflywing,8,Items.fur,8,Items.gems,4]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Equips.celticcross,1,Items.geode,4]
        },{
          "mc":"chest3",
          "type":CHEST,
          "data":[Equips.triforce,1,Items.gold,2,Items.grail,1]
        },{
          "mc":"chest4",
          "type":CHEST,
          "data":[Items.emerald,1,Items.cactus,6]
        },{
          "mc":"chest5",
          "type":CHEST,
          "data":[Items.nut,1,Items.orangejuice,1]
        },{
          "mc":"chest6",
          "type":CHEST,
          "data":[Items.rune2,1]
        }];
        if(!Options.titties) {
          disableCutscene(0);
        }
        initScene("annaShrine",0);
        doorLinks = [[322,10,9,1,"ladder"]];
      }
      if(mapNo == 68) {
        setArea(GREENWOOD_VILLAGE);
        if(Maps.switchData[206]) {
          BGM.play(BGM.ESTAVIUS);
        } else {
          BGM.play(BGM.BREEZE_FROM_HOME);
        }
        initNPC(0,NPCs.sarah);
        initNPC(1,NPCs.lenk);
        battleBGM = [BGM.NYMPHIS_FAE];
        battleIcons = [IdolWood];
        battleIconsAlt = [GloopFab];
        battles = [Battles.greenwood1];
        battlesAlt = [BattlesAlt.greenwood1];
        battleBG = [21];
        respawn = [true];
        weather = [Weather.LEAVES];
        altWeather = [Weather.OVERGROWTH];
        maps.switchEvent = function():* {
        };
        hideChest(2);
        initPed(0,18,Items.flower,false);
        initSwitch(0,206);
        maps.switchEvent = function():* {
          if(Maps.switchData[206]) {
            BGM.play(BGM.ESTAVIUS,true,true);
            maps.special0.gotoAndPlay(1);
          } else {
            BGM.play(BGM.BREEZE_FROM_HOME,false,true);
            maps.special0.gotoAndStop(1);
          }
        };
        maps.success = function():* {
          dropChest(2);
        };
        maps.objectData = [{
          "mc":"chest1",
          "type":CHEST,
          "data":[Items.mint,1,Items.herb,2]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Items.water,3,Items.ice,2]
        },{
          "mc":"chest3",
          "type":CHEST,
          "data":[Items.cookie,1,Items.chili,1]
        },{
          "mc":"chest4",
          "type":CHEST,
          "data":[Equips.targetbadge,1]
        },{
          "mc":"chest5",
          "type":CHEST,
          "data":[Items.wood,3]
        }];
        doorLinks = [[173,8,10,1,"door"]];
        initScene("annasHouse",0);
        initScene("annasHouse2",1,null,Items.axe,1);
        initScenes([0],"annaTheft",2);
      }
      if(mapNo == 169) {
        setArea(GREENWOOD_VILLAGE,false);
        Maps.minimapCoords = [10,3];
        initNPC(0,NPCs.june);
        initNPC(1,NPCs.rock);
        initNPC(2,NPCs.shop4);
        initNPC(3,NPCs.grump);
        maps.objectData = [{
          "mc":"shop0",
          "type":SHOP,
          "data":[EQUIP_SHOP,Equips.EQUIP_SHOP_2]
        },{
          "mc":"sign0",
          "type":SIGN2,
          "data":"pokes1"
        },{
          "mc":"sign1",
          "type":SIGN2,
          "data":"pokes1"
        },{
          "mc":"sign2",
          "type":SIGN2,
          "data":"pokes2"
        },{
          "mc":"sign3",
          "type":SIGN2,
          "data":"pokes2"
        },{
          "mc":"chest0",
          "type":CHEST,
          "data":[Items.silk,1,Items.wool,7]
        },{
          "mc":"chest1",
          "type":CHEST,
          "data":[Items.coralkey,1,Items.seashell,3,Items.apple,2]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Items.panties,1,Items.silk,2]
        },{
          "mc":"chest3",
          "type":CHEST,
          "data":[Items.headband,1]
        }];
        doorLinks = [[65,9,5,2,"door"]];
        initScene("weaponShop2",0);
      }
      if(mapNo == 171) {
        setArea(GREENWOOD_VILLAGE,false);
        Maps.minimapCoords = [10,3];
        initPed(0,75,Items.musicCD,false);
        initNPC(0,NPCs.randyB);
        maps.objectData = [{
          "mc":"sign1",
          "type":SIGN2,
          "data":"painting"
        },{
          "mc":"sign0",
          "type":SIGN2,
          "data":"sink"
        },{
          "mc":"chest0",
          "type":CHEST,
          "data":[Items.beer,1,Items.bru,2,Items.milkbottle,1]
        },{
          "mc":"chest1",
          "type":CHEST,
          "data":[Items.silk,1,Items.panties,1]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Items.floppy,2,Items.herb,3]
        },{
          "mc":"chest3",
          "type":CHEST,
          "data":[Items.pizza,1]
        }];
        doorLinks = [[65,15,7,2,"door"]];
      }
      if(mapNo == 173) {
        setArea(GREENWOOD_VILLAGE,false);
        if(Maps.switchData[206]) {
          BGM.play(BGM.ESTAVIUS);
        }
        Maps.minimapCoords = [9,1];
        initKey(0,Items.copperkey);
        initKey(1,Items.copperkey);
        initKey(2,Items.copperkey);
        initKey(3,Items.copperkey);
        maps.objectData = [{
          "mc":"sign0",
          "type":SIGN2,
          "data":"annaPS"
        },{
          "mc":"chest0",
          "type":CHEST,
          "data":[Equips.leafclip,1,Items.grapes,1,Items.banana,1]
        },{
          "mc":"chest1",
          "type":CHEST,
          "data":[Items.panties,1]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Items.nut,1,Items.potato,1,Items.poptart,1]
        },{
          "mc":"chest3",
          "type":CHEST,
          "data":[Cards.card4,1,Items.bacon,1,Items.blueberries,1]
        },{
          "mc":"chest4",
          "type":CHEST,
          "data":[Equips.thedeceased,1,Items.spike,3]
        }];
        doorLinks = [[68,11,7,2,"door"],[174,8,4,1,"ladder"]];
      }
      if(mapNo == 174) {
        setArea(GREENWOOD_VILLAGE,false);
        if(Maps.switchData[206]) {
          BGM.play(BGM.ESTAVIUS);
        }
        Maps.minimapCoords = [9,0];
        initPed(0,106,Items.axe,false);
        initPed(1,110,Items.nut,false);
        initNPC(0,NPCs.mom);
        initNPC(1,NPCs.dad);
        if(Flags.TOWN_3_REACHED.quantity) {
          Medals.unlock(Medals.familyRoots);
        }
        maps.objectData = [{
          "mc":"sign0",
          "type":SIGN,
          "data":"annaBook"
        },{
          "mc":"sign1",
          "type":SIGN,
          "data":"annaBook"
        },{
          "mc":"chest0",
          "type":CHEST,
          "data":[Items.turd,2]
        },{
          "mc":"chest1",
          "type":CHEST,
          "data":[Items.wool,2,Items.pumpkin,1,Items.raspberries,2]
        }];
        doorLinks = [[70,11,8,1,"door"],[173,8,4,1,"ladder"]];
      }
      if(mapNo == 177) {
        setArea(GREENWOOD_VILLAGE,false);
        Maps.minimapCoords = [10,2];
        maps.push0.skin(9);
        initPed(0,112,Items.mint,false);
        initNPC(0,NPCs.ronja);
        initNPC(1,NPCs.shop3);
        maps.objectData = [{
          "mc":"shop0",
          "type":SHOP,
          "data":[ITEM_SHOP,Items.ITEM_SHOP_2]
        },{
          "mc":"shop1",
          "type":SHOP,
          "data":[FOOD_SHOP,Items.FOOD_SHOP]
        },{
          "mc":"chest0",
          "type":CHEST,
          "data":[Items.waterbottle,1,Items.sock1,1]
        },{
          "mc":"chest1",
          "type":CHEST,
          "data":[Items.root,3]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Items.cactus,2]
        }];
        doorLinks = [[67,5,9,2,"door"]];
        initScene("plantShop",0);
      }
      if(mapNo == 175) {
        setArea(GREENWOOD_VILLAGE,false);
        Maps.minimapCoords = [10,4];
        initNPC(0,NPCs.jamie);
        initNPC(1,NPCs.jamieB);
        initPed(0,77,Items.musicCD,false);
        initPed(1,111,Items.nut,false);
        maps.push0.skin(21);
        maps.objectData = [{
          "mc":"sign0",
          "type":SIGN2,
          "data":"NGC"
        },{
          "mc":"sign1",
          "type":SIGN2,
          "data":"cultBook"
        },{
          "mc":"chest0",
          "type":CHEST,
          "data":[Items.ice,2,Items.pipe,1]
        },{
          "mc":"chest1",
          "type":CHEST,
          "data":[Items.sock2,1,Items.wool,3]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Items.energy,2,Items.milkbottle,1]
        },{
          "mc":"chest3",
          "type":CHEST,
          "data":[Items.newspaper,1]
        },{
          "mc":"chest4",
          "type":CHEST,
          "data":[Items.beef,1]
        },{
          "mc":"chest5",
          "type":CHEST,
          "data":[Items.chocolate,1,Items.pretzel,1]
        }];
        doorLinks = [[63,15,4,2,"door"],[176,2,3,1,"ladder"]];
      }
      if(mapNo == 176) {
        setArea(GREENWOOD_VILLAGE,false);
        BGM.play(BGM.EVIL_AMBIENCE);
        Maps.minimapCoords = [-1,-1];
        Flags.expStyle = Flags.SCALE_TO_LEVEL;
        battleBGM = [];
        battleIcons = [WraithSteel,DogMage];
        battleIconsAlt = [WraithOrigami,BatBlood];
        battles = [Battles.basement3,Battles.basement4];
        battlesAlt = [BattlesAlt.basement3,BattlesAlt.basement4];
        battleBG = [56,56];
        respawn = [];
        weather = [Weather.EARTHQUAKE,Weather.EARTHQUAKE];
        altWeather = [Weather.GLITCH,Weather.GLITCH];
        initNPC(0,NPCs.cultist6);
        initNPC(1,NPCs.cultist5);
        maps.objectData = [{
          "mc":"chest0",
          "type":CHEST,
          "data":[Items.goldkey,1,Items.gold,1]
        },{
          "mc":"chest1",
          "type":CHEST,
          "data":[Items.ruby,1,Items.redjewel,1,Items.ruby,1]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Equips.darkstalker,1,Items.steel,8,Items.claw,6]
        }];
        doorLinks = [[175,11,4,1,"ladder"]];
        initScenes([0],"basement4",0);
        initScenes([1],"basement5",1);
      }
      if(mapNo == 172) {
        setArea(GREENWOOD_VILLAGE,false);
        Maps.minimapCoords = [9,4];
        maps.objectData = [{
          "mc":"chest0",
          "type":CHEST,
          "data":[Equips.cowcostume,1,Items.milkbottle,1,Items.milk,1]
        },{
          "mc":"chest1",
          "type":CHEST,
          "data":[Items.woodenkey,1,Items.wood,3]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Items.silver,1]
        }];
        doorLinks = [[62,10,4,2,"door"]];
      }
      if(mapNo == 170) {
        setArea(LIBRARY);
        Maps.minimapCoords = [9,3];
        initPed(0,76,Items.musicCD,false);
        initNPC(0,NPCs.jolly);
        initNPC(1,NPCs.girlC);
        initNPC(2,NPCs.girlB);
        initNPC(3,NPCs.girlA);
        maps.objectData = [{
          "mc":"sign6",
          "type":SIGN2,
          "data":"library0"
        },{
          "mc":"sign0",
          "type":SIGN,
          "data":"library1"
        },{
          "mc":"sign1",
          "type":SIGN,
          "data":"library2"
        },{
          "mc":"sign2",
          "type":SIGN,
          "data":"library3"
        },{
          "mc":"sign3",
          "type":SIGN,
          "data":"library4"
        },{
          "mc":"sign4",
          "type":SIGN,
          "data":"library5"
        },{
          "mc":"sign5",
          "type":SIGN,
          "data":"library6"
        },{
          "mc":"sign7",
          "type":SIGN,
          "data":"library7"
        },{
          "mc":"sign8",
          "type":SIGN,
          "data":"library8"
        },{
          "mc":"sign9",
          "type":SIGN,
          "data":"library9"
        },{
          "mc":"sign10",
          "type":SIGN,
          "data":"library10"
        },{
          "mc":"sign11",
          "type":SIGN,
          "data":"library11"
        },{
          "mc":"sign12",
          "type":SIGN,
          "data":"library12"
        },{
          "mc":"sign13",
          "type":SIGN,
          "data":"library13"
        },{
          "mc":"sign14",
          "type":SIGN,
          "data":"library14"
        },{
          "mc":"sign15",
          "type":SIGN,
          "data":"library15"
        },{
          "mc":"sign16",
          "type":SIGN,
          "data":"library16"
        },{
          "mc":"sign17",
          "type":SIGN,
          "data":"library17"
        },{
          "mc":"sign18",
          "type":SIGN,
          "data":"library18"
        },{
          "mc":"sign19",
          "type":SIGN,
          "data":"library19"
        },{
          "mc":"sign20",
          "type":SIGN,
          "data":"library20"
        },{
          "mc":"sign21",
          "type":SIGN,
          "data":"library21"
        },{
          "mc":"sign22",
          "type":SIGN,
          "data":"library22"
        },{
          "mc":"chest0",
          "type":CHEST,
          "data":[Items.coffee,2,Items.apple,2]
        }];
        doorLinks = [[64,5,8,2,"door"],[64,6,8,2,"door"],[338,9,10,1,"footsteps"],[338,10,10,1,"footsteps"]];
        initScene("libraryEnter",0);
      }
      if(mapNo == 337) {
        setArea(LIBRARY);
        Maps.minimapCoords = [9,3];
        if(!Flags.PAPER_DEFEATED.quantity) {
          Flags.PAPER_DEFEATED.quantity = 0;
        }
        Flags.expStyle = Flags.NO_EXP;
        Maps.foeJumps = ["","slime",""];
        battleBGM = [BGM.POSH_BATTLE,BGM.POSH_BATTLE,BGM.POSH_BATTLE];
        battleIcons = [MirrorWise,WormBook,WraithOrigami];
        battleIconsAlt = [MirrorHaunted,WormCutie,GloopFab];
        battles = [Battles.library4,Battles.library5,Battles.library6];
        battlesAlt = [BattlesAlt.library4,BattlesAlt.library5,BattlesAlt.library6];
        battleBG = [Backgrounds.LIBRARY,Backgrounds.LIBRARY,Backgrounds.LIBRARY];
        respawn = [false,true,true];
        weather = [];
        altWeather = [Weather.CURSED,Weather.CURSED,Weather.CURSED];
        initNPC(0,NPCs.brutus);
        maps.objectData = [{
          "mc":"sign0",
          "type":SIGN2,
          "data":"paperpile"
        },{
          "mc":"sign1",
          "type":SIGN2,
          "data":"paperpile"
        },{
          "mc":"chest0",
          "type":CHEST,
          "data":[Equips.bustersword,1,Items.coffee,2]
        },{
          "mc":"chest1",
          "type":CHEST,
          "data":[Items.buckle,3,Items.silk,1,Items.fur,2]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Items.milk,1,Items.garlic,4,Items.blueberries,2]
        },{
          "mc":"chest3",
          "type":CHEST,
          "data":[Cards.card48,1]
        },{
          "mc":"chest4",
          "type":CHEST,
          "data":[Items.emerald,1]
        }];
      }
      if(mapNo == 338) {
        setArea(LIBRARY);
        Maps.minimapCoords = [9,3];
        Flags.expStyle = Flags.NO_EXP;
        Maps.foeJumps = ["","","","slime"];
        battleBGM = [BGM.POSH_BATTLE,BGM.POSH_BATTLE,BGM.TERTIARY_BATTLE,BGM.POSH_BATTLE];
        battleIcons = [WraithOrigami,CatWizard,SketchGuncat,WormBook];
        battleIconsAlt = [MirrorWise,CatWizard,SketchGuncat,WormPutrid];
        battles = [Battles.library7,Battles.library8,Battles.paperboss,Battles.library3];
        battlesAlt = [BattlesAlt.library7,BattlesAlt.library8,BattlesAlt.paperboss,BattlesAlt.library3];
        battleBG = [Backgrounds.LIBRARY,Backgrounds.LIBRARY,Backgrounds.PAPER,Backgrounds.LIBRARY];
        respawn = [false,false,true,false];
        weather = [];
        battleFlags = [undefined,undefined,Flags.PAPER_BATTLE];
        altWeather = [Weather.SACRED,Weather.SACRED,undefined,Weather.SACRED];
        hideChest(2);
        maps.success = function():* {
          dropChest(2);
        };
        maps.push0.skin(32);
        initNPC(0,NPCs.barb);
        initNPC(1,NPCs.sage);
        initNPC(2,NPCs.sageB);
        maps.objectData = [{
          "mc":"sign0",
          "type":SIGN,
          "data":(Options.alwaysGiveEXP ? "signDungeonAlt2" : (Options.alwaysScaleFoes ? "signDungeonAlt" : "signDungeon"))
        },{
          "mc":"sign1",
          "type":SIGN2,
          "data":"paperpile"
        },{
          "mc":"sign2",
          "type":SIGN2,
          "data":"paperpile"
        },{
          "mc":"sign3",
          "type":SIGN2,
          "data":"paperpile"
        },{
          "mc":"chest0",
          "type":CHEST,
          "data":[Items.steel,2,Items.iron,3,Items.silver,1]
        },{
          "mc":"chest1",
          "type":CHEST,
          "data":[Equips.biteybadge,1,Items.fur,2]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Items.silk,1,Items.wool,6,Items.buckle,2]
        },{
          "mc":"chest3",
          "type":CHEST,
          "data":[Equips.paperfan,1,Items.egg,1,Items.coffee,1]
        },{
          "mc":"chest4",
          "type":CHEST,
          "data":[Equips.pixelglasses,1,Items.nut,1,Items.glass,3]
        },{
          "mc":"chest5",
          "type":CHEST,
          "data":[Items.mushroom,1]
        },{
          "mc":"chest6",
          "type":CHEST,
          "data":[Items.herb,3,Items.cloudberries,2]
        },{
          "mc":"sign13",
          "type":SIGN,
          "data":"library23"
        },{
          "mc":"sign14",
          "type":SIGN,
          "data":"library24"
        },{
          "mc":"sign15",
          "type":SIGN,
          "data":"library25"
        },{
          "mc":"sign16",
          "type":SIGN,
          "data":"library26"
        },{
          "mc":"sign17",
          "type":SIGN,
          "data":"library27"
        },{
          "mc":"sign18",
          "type":SIGN,
          "data":"library28"
        },{
          "mc":"sign19",
          "type":SIGN,
          "data":"library29"
        },{
          "mc":"sign20",
          "type":SIGN,
          "data":"library30"
        }];
        initScene("libraryDungeon1",0);
        initScenes([0],"libraryDungeon3",1);
        initScene("libraryDungeon4",2,null,Flags.PAPER_DEFEATED,1);
        doorLinks = [[170,9,2,2,"footsteps"],[170,10,2,2,"footsteps"]];
      }
      if(mapNo == 339) {
        setArea(LIBRARY);
        Maps.minimapCoords = [9,3];
        initScene("libraryDungeon2",0);
        Flags.expStyle = Flags.NO_EXP;
        Maps.foeJumps = ["","slime"];
        battleBGM = [BGM.POSH_BATTLE,BGM.POSH_BATTLE];
        battleIcons = [CatWizard,WormBook];
        battleIconsAlt = [CatWizard,WormPutrid];
        battles = [Battles.library1,Battles.library2];
        battlesAlt = [BattlesAlt.library1,BattlesAlt.library2];
        battleBG = [Backgrounds.LIBRARY,Backgrounds.LIBRARY];
        respawn = [true,false];
        weather = [];
        altWeather = [Weather.CURSED,Weather.CURSED];
        maps.push0.skin(34);
        maps.push1.skin(34);
        maps.push2.skin(32);
        maps.push3.skin(33);
        maps.push4.skin(32);
        maps.push5.skin(34);
        maps.push6.skin(33);
        maps.objectData = [{
          "mc":"sign0",
          "type":SIGN2,
          "data":"paperpile"
        },{
          "mc":"sign1",
          "type":SIGN2,
          "data":"paperpile"
        },{
          "mc":"chest0",
          "type":CHEST,
          "data":[Items.lollipop,1,Items.coffee,1,Items.blueberries,2]
        },{
          "mc":"chest1",
          "type":CHEST,
          "data":[Items.flower,1,Items.feather,4,Items.butterflywing,2]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Items.feather,1,Cards.card41,1,Items.feather,1]
        },{
          "mc":"chest3",
          "type":CHEST,
          "data":[Items.feather,2,Items.brick,1]
        },{
          "mc":"chest4",
          "type":CHEST,
          "data":[Items.floppy,1]
        }];
      }
      if(mapNo == 85) {
        setArea(MYSTIC_WOODS);
        initPed(0,80,Items.holybottle,false);
        initNPC(0,NPCs.rami);
        Maps.foeJumps = ["jump","",""];
        battleBGM = [BGM.NYMPHIS_FAE,BGM.NYMPHIS_FAE,BGM.NYMPHIS_FAE];
        battleIcons = [SlimeMud,BearBrown,BushGreen];
        battleIconsAlt = [BushGreen,BearBrown,ChomperSeaweed];
        battles = [Battles.swamp7,Battles.forest1,Battles.forest2];
        battlesAlt = [BattlesAlt.swamp7,BattlesAlt.forest1,BattlesAlt.forest2];
        battleBG = [23,23,23];
        respawn = [undefined,true];
        weather = [Weather.OVERGROWTH,Weather.OVERGROWTH,Weather.OVERGROWTH];
        altWeather = [Weather.LEAVES,Weather.LEAVES,Weather.LEAVES];
        maps.objectData = [{
          "mc":"chest1",
          "type":CHEST,
          "data":[Equips.coconutshooter,1,Items.wood,4]
        },{
          "mc":"chest3",
          "type":CHEST,
          "data":[Items.emerald,1,Items.mushroom,1,Items.virus,1]
        },{
          "mc":"chest4",
          "type":CHEST,
          "data":[Items.amber,3,Items.virus,3]
        },{
          "mc":"chest5",
          "type":CHEST,
          "data":[Items.powder,2,Items.steel,1]
        }];
      }
      if(mapNo == 84) {
        setArea(MYSTIC_WOODS);
        if(!Flags.NEST_DEFEATED.quantity || Options.customEnabled()) {
          maps.special0.visible = false;
          maps.addTile(0,7,5,false);
          maps.door0.stop();
        }
        initPed(0,85,Items.darkbottle,false);
        initNPC(1,NPCs.maskerC);
        initNPC(0,NPCs.tribe1);
        Medals.unlock(Medals.swamped);
        battleBGM = [BGM.TERTIARY_BATTLE,BGM.TERTIARY_BATTLE,BGM.TERTIARY_BATTLE];
        battleIcons = [DollNatalie,BushRed,SquidPurple];
        battleIconsAlt = [CreepThorny,BushDark,SquidPurple];
        battles = [Battles.swamp1,Battles.swamp2,Battles.swamp3];
        battlesAlt = [BattlesAlt.swamp1,BattlesAlt.swamp2,BattlesAlt.swamp3];
        battleBG = [27,27,27];
        respawn = [];
        weather = [Weather.ACID,Weather.ACID,Weather.ACID];
        altWeather = [Weather.AIRSTRIKES,Weather.AIRSTRIKES,Weather.AIRSTRIKES];
        maps.objectData = [{
          "mc":"chest1",
          "type":CHEST,
          "data":[Equips.summerkimono,1,Items.silk,2]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Items.pill,1,Items.plastic,4]
        },{
          "mc":"chest3",
          "type":CHEST,
          "data":[Items.bomb,2,Items.rune,1,Items.bomb,2]
        },{
          "mc":"chest4",
          "type":CHEST,
          "data":[Items.virus,1,Items.ice,1]
        }];
        doorLinks = [[145,14,7,2,"glitch"]];
        initScenes([0,1],"sewage",0);
      }
      if(mapNo == 83) {
        setArea(MYSTIC_WOODS);
        Maps.warpData[4] = true;
        if(!Flags.NEST_DEFEATED.quantity || !Options.customEnabled()) {
          maps.special0.visible = false;
          maps.addTile(0,8,3,false);
          maps.door0.stop();
        }
        initPed(0,86,Items.darkbottle,false);
        initNPC(0,NPCs.mioB);
        initNPC(1,NPCs.misakiB);
        initNPC(2,NPCs.chikaB);
        initNPC(3,NPCs.necron);
        battleBGM = [BGM.TERTIARY_BATTLE,BGM.TERTIARY_BATTLE,BGM.TERTIARY_BATTLE];
        battleIcons = [SlimeBigMud,DollNoLegs,MirrorHaunted];
        battleIconsAlt = [SlimeBigChocolate,DollLance,FallenBeheaded];
        battles = [Battles.swamp6,Battles.swamp5,Battles.swamp4];
        battlesAlt = [BattlesAlt.swamp6,BattlesAlt.swamp5,BattlesAlt.swamp4];
        battleBG = [27,27,27];
        respawn = [true,undefined,true];
        weather = [Weather.ENERGY,Weather.ENERGY,Weather.ENERGY];
        altWeather = [Weather.AIRSTRIKES,Weather.AIRSTRIKES,Weather.AIRSTRIKES];
        maps.objectData = [{
          "mc":"chest1",
          "type":CHEST,
          "data":[Items.silver,1,Items.glass,8]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Items.goldkey,1]
        },{
          "mc":"chest3",
          "type":CHEST,
          "data":[Items.magma,4,Items.amber,4]
        },{
          "mc":"chest4",
          "type":CHEST,
          "data":[Items.bomb,1,Items.gear,1]
        }];
        doorLinks = [[145,14,7,2,"glitch"]];
        initScene("forestMonolith",0);
      }
      if(mapNo == 82) {
        setArea(MYSTIC_WOODS);
        initNPC(0,NPCs.tribe4);
        initNPC(1,NPCs.tribe3);
        battleBGM = [BGM.TERTIARY_BATTLE,BGM.TERTIARY_BATTLE,BGM.TERTIARY_BATTLE,BGM.TERTIARY_BATTLE,BGM.TERTIARY_BATTLE];
        if(Options.altFoes) {
          battleBGM = [BGM.TERTIARY_BATTLE,BGM.TERTIARY_BATTLE,BGM.TERTIARY_BATTLE,BGM.TERTIARY_BATTLE,BGM.WINGS_2];
        }
        battleFlags = [undefined,undefined,undefined,undefined,Flags.MIMIC];
        battleIcons = [SquidPurple,MirrorWise,BearPanda,SlimeChocolate,"mimic"];
        battleIconsAlt = [SquidPurple,MirrorHaunted,BearBlack,BushDark,"mimic"];
        battles = [Battles.swamp8,Battles.swamp9,Battles.swamp11,Battles.swamp10,Battles.swamp12];
        battlesAlt = [BattlesAlt.swamp8,BattlesAlt.swamp9,BattlesAlt.swamp11,BattlesAlt.swamp10,BattlesAlt.swamp12];
        battleBG = [27,28,28,28,28];
        if(Options.altFoes) {
          battleBG = [27,28,28,28,Backgrounds.EBF1_SLIMES];
        }
        respawn = [true,undefined,true,true];
        weather = [Weather.ACID,Weather.ACID,undefined,undefined];
        altWeather = [Weather.FOG,Weather.FOG,undefined,undefined];
        if(Options.altFoes) {
          weather[4] = null;
          altWeather[4] = null;
        }
        maps.objectData = [{
          "mc":"chest1",
          "type":CHEST,
          "data":[Equips.angelwing,1,Items.feather,3]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Items.egg,1,Items.espresso,1]
        },{
          "mc":"chest3",
          "type":CHEST,
          "data":[Items.rune2,1,Items.magma,4,Items.leather,2]
        },{
          "mc":"chest4",
          "type":CHEST,
          "data":[Items.silk,2,Items.ice,3,Items.water,1]
        },{
          "mc":"chest5",
          "type":CHEST,
          "data":[Items.cloudberries,1]
        }];
        if(!Options.titties) {
          initScenes([0,1],"needLeafyBootsShort",0);
        } else {
          initScenes([0,1],"needLeafyBoots",0);
        }
      }
      if(mapNo == 80) {
        setArea(MYSTIC_WOODS);
        BGM.play(BGM.PATH_TO_YGGDRASIL);
        initPed(0,79,Items.holybottle,false);
        initNPC(0,NPCs.mio);
        initNPC(1,NPCs.misaki);
        initNPC(2,NPCs.chika);
        battleBGM = [BGM.NYMPHIS_FAE,BGM.NYMPHIS_FAE,BGM.NYMPHIS_FAE,BGM.NYMPHIS_FAE];
        battleIcons = [BushGreen,BearBrown,DollAnna,SlimeChocolate];
        battleIconsAlt = [BushGreen,BoulderDirt,BearBrown,SlimeMud];
        battles = [Battles.forest5,Battles.forest4,Battles.forest6,Battles.forest3];
        battlesAlt = [BattlesAlt.forest5,BattlesAlt.forest4,BattlesAlt.forest6,BattlesAlt.forest3];
        battleBG = [22,22,22,22];
        respawn = [undefined,true,undefined,true];
        weather = [Weather.OVERGROWTH,Weather.OVERGROWTH,undefined];
        altWeather = [Weather.LEAVES,Weather.LEAVES,undefined];
        hideChest(1);
        maps.success = function():* {
          dropChest(1);
        };
        maps.push0.skin(9);
        maps.objectData = [{
          "mc":"chest0",
          "type":CHEST,
          "data":[Items.herb,4,Items.geode,7]
        },{
          "mc":"chest1",
          "type":CHEST,
          "data":[Equips.angryfaic,1]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Items.flower,5,Items.flower,1,Items.flower,2]
        },{
          "mc":"chest3",
          "type":CHEST,
          "data":[Items.fur,8,Items.butterflywing,4,Items.claw,2]
        },{
          "mc":"chest4",
          "type":CHEST,
          "data":[Equips.ninjachopsticks,1,Items.shuriken,8]
        }];
        doorLinks = [[180,9,10,1,"door"]];
        initScene("bigTrees",0,MapText.bigTreesScenes);
      }
      if(mapNo == 79) {
        setArea(MYSTIC_WOODS);
        BGM.play(BGM.PATH_TO_YGGDRASIL);
        battleBGM = [BGM.TERTIARY_BATTLE,BGM.TERTIARY_BATTLE];
        battleIcons = [MirrorWise,SlimeBigChocolate];
        battleIconsAlt = [DogTanuki,SlimeBigMud];
        battles = [Battles.evil1,Battles.evil2];
        battlesAlt = [BattlesAlt.evil1,BattlesAlt.evil2];
        battleBG = [28,28];
        respawn = [undefined,true];
        weather = [Weather.CURSED,Weather.CURSED];
        altWeather = [Weather.WINDY,Weather.WINDY];
        hideChest(2);
        maps.success = function():* {
          dropChest(2);
        };
        maps.push0.skin(5);
        maps.push1.skin(6);
        maps.push2.skin(5);
        maps.switchEvent = function():* {
          setSpikes([Maps.switchData[24]],[0,9]);
          setSpikes([Maps.switchData[25]],[6]);
          setSpikes([Maps.switchData[27]],[8]);
          setSpikes([Maps.switchData[26]],[4]);
          setSpikes([xor(Maps.switchData[26],Maps.switchData[27])],[2]);
          setSpikes([xor(Maps.switchData[25],Maps.switchData[27])],[3]);
          setSpikes([xor(Maps.switchData[26],xor(Maps.switchData[24],Maps.switchData[25]))],[7]);
        };
        initSwitch(0,27);
        initSwitch(1,25);
        initSwitch(2,26);
        initSwitch(3,24);
        maps.objectData = [{
          "mc":"chest1",
          "type":CHEST,
          "data":[Items.silk,2,Items.donut,1]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Equips.bloodbank,1,Items.virus,1]
        },{
          "mc":"chest3",
          "type":CHEST,
          "data":[Items.topaz,1]
        }];
        doorLinks = [[182,8,10,1,"door"]];
        initScene("hauntedWoods2",0,null);
      }
      if(mapNo == 78) {
        setArea(MYSTIC_WOODS);
        initPed(0,84,Items.darkbottle,false);
        initNPC(0,NPCs.tribe2);
        battleBGM = [BGM.TERTIARY_BATTLE,BGM.TERTIARY_BATTLE,BGM.TERTIARY_BATTLE];
        battleIcons = [MirrorHaunted,SlimeBigChocolate,WraithLeaf];
        battleIconsAlt = [MirrorDemon,CreepRed,WraithFire];
        battles = [Battles.evil4,Battles.evil3,Battles.evil5];
        battlesAlt = [BattlesAlt.evil4,BattlesAlt.evil3,BattlesAlt.evil5];
        battleBG = [28,28,28];
        respawn = [true,undefined,true];
        weather = [Weather.CURSED,Weather.CURSED,Weather.CURSED];
        altWeather = [Weather.WINDY,Weather.WINDY,Weather.OVERGROWTH];
        maps.objectData = [{
          "mc":"chest1",
          "type":CHEST,
          "data":[Items.mushroom,1,Items.orangejuice,1]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Items.donut,1,Items.root,11,Items.claw,3]
        },{
          "mc":"chest3",
          "type":CHEST,
          "data":[Cards.card6,1,Items.virus,3]
        },{
          "mc":"chest4",
          "type":CHEST,
          "data":[Items.magma,3,Items.ice,3]
        }];
      }
      if(mapNo == 77) {
        setArea(MYSTIC_WOODS);
        BGM.play(BGM.PATH_TO_YGGDRASIL);
        initNPC(0,NPCs.goth);
        initPed(0,83,Items.darkbottle,false);
        battleBGM = [BGM.TERTIARY_BATTLE,BGM.TERTIARY_BATTLE,BGM.TERTIARY_BATTLE];
        battleIcons = [DollMatt,WraithMaster,WraithLeaf];
        battleIconsAlt = [DollMatt,CatWizard,WraithFire];
        battles = [Battles.evil7,Battles.evil8,Battles.evil6];
        battlesAlt = [BattlesAlt.evil7,BattlesAlt.evil8,BattlesAlt.evil6];
        battleBG = [28,28,28];
        respawn = [true];
        weather = [Weather.CURSED,Weather.CURSED,Weather.CURSED];
        altWeather = [Weather.FOG,Weather.FOG,Weather.FOG];
        hideChest(4);
        hideChest(5);
        maps.success = function():* {
          dropChest(4);
        };
        maps.special0.skin = 1;
        if(!Flags.GLOB_DEFEATED.quantity && Items.raft.quantity && maps.player.Y != 4) {
          maps.special0.play();
        }
        maps.switchEvent = function():* {
          setSpikes([Maps.switchData[19]],[0]);
          setSpikes([Maps.switchData[20]],[3,8]);
          setSpikes([Maps.switchData[23]],[10,11]);
          setSpikes([xor(Maps.switchData[19],Maps.switchData[21])],[1]);
          setSpikes([xor(Maps.switchData[21],Maps.switchData[22])],[5]);
          setSpikes([xor(Maps.switchData[20],Maps.switchData[22])],[6]);
          if(Maps.switchData[20] && Maps.switchData[22] && !Maps.switchData[19] && !Maps.switchData[21] && !Maps.switchData[23]) {
            dropChest(5);
            Medals.unlock(Medals.codeBreaker);
          }
        };
        initSwitch(0,19);
        initSwitch(1,20);
        initSwitch(2,21);
        initSwitch(3,22);
        initSwitch(4,23);
        maps.objectData = [{
          "mc":"chest1",
          "type":CHEST,
          "data":[Equips.chiefshorns,1,Items.claw,2]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Items.riceball,1,Items.coffee,3]
        },{
          "mc":"chest3",
          "type":CHEST,
          "data":[Items.satin,1,Items.rune,1]
        },{
          "mc":"chest4",
          "type":CHEST,
          "data":[Items.leather,4,Items.spike,1]
        },{
          "mc":"chest5",
          "type":CHEST,
          "data":[Equips.kaladanda,1,Items.spike,2]
        }];
        doorLinks = [[178,4,10,1,"door"],[329,7,6,1,"ladder"]];
      }
      if(mapNo == 70) {
        setArea(MYSTIC_WOODS);
        if(Maps.switchData[207]) {
          BGM.play(BGM.FAERIE_BREEZE);
        }
        initPed(0,82,Items.holybottle,false);
        Maps.foeJumps = ["slime","slime",""];
        if(Options.altFoes) {
          Maps.foeJumps = ["","slime","slime"];
        }
        battleBGM = [BGM.NYMPHIS_FAE,BGM.NYMPHIS_FAE,BGM.NYMPHIS_FAE];
        battleIcons = [WormPutrid,WormCutie,BearPanda];
        battleIconsAlt = [WraithLeaf,WormPutrid,MammothWooly];
        battles = [Battles.canopy5,Battles.canopy6,Battles.canopy7];
        battlesAlt = [BattlesAlt.canopy5,BattlesAlt.canopy6,BattlesAlt.canopy7];
        battleBG = [25,25,25];
        respawn = [];
        weather = [Weather.LEAVES,Weather.LEAVES,Weather.LEAVES];
        altWeather = [Weather.BLOSSOM,Weather.BLOSSOM,Weather.BLOSSOM];
        initSwitch(0,207);
        maps.switchEvent = function():* {
          if(Maps.switchData[207]) {
            BGM.play(BGM.FAERIE_BREEZE,true,true);
            maps.special0.gotoAndPlay(1);
          } else {
            BGM.play(BGM.PATH_TO_YGGDRASIL,false,true);
            maps.special0.gotoAndStop(1);
          }
        };
        maps.objectData = [{
          "mc":"chest0",
          "type":CHEST,
          "data":[Items.mushroom,1,Items.geode,14,Items.cactus,16]
        },{
          "mc":"chest1",
          "type":CHEST,
          "data":[Items.beer,4,Items.crisps,2]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Items.amber,3,Items.virus,3]
        },{
          "mc":"chest3",
          "type":CHEST,
          "data":[Items.herb,1,Items.leafyboots,1,Items.herb,1]
        },{
          "mc":"chest4",
          "type":CHEST,
          "data":[Items.diamondkey,1]
        },{
          "mc":"chest5",
          "type":CHEST,
          "data":[Items.beer,2]
        }];
        doorLinks = [[174,10,10,1,"door"]];
        if(Items.stepladder.quantity) {
          disableCutscene(0);
        }
        initScene("needStepladder",0);
        initScenes([0],"leafyBootsGet",1);
      }
      if(mapNo == 75) {
        setArea(MYSTIC_WOODS);
        if(Maps.switchData[207]) {
          BGM.play(BGM.FAERIE_BREEZE);
        } else {
          BGM.play(BGM.PATH_TO_YGGDRASIL);
        }
        initPed(0,81,Items.holybottle,false);
        Maps.foeJumps = ["slime","slime",""];
        battleBGM = [BGM.NYMPHIS_FAE,BGM.NYMPHIS_FAE,BGM.NYMPHIS_FAE,BGM.SECONDARY_BATTLE];
        if(Options.altFoes) {
          battleBGM = [BGM.NYMPHIS_FAE,BGM.NYMPHIS_FAE,BGM.NYMPHIS_FAE,BGM.WINGS_2];
        }
        battleFlags = [undefined,Flags.CHIBI_BATTLE,undefined,Flags.MIMIC];
        battleIcons = [BushMud,SlimeMud,IdolWood,"mimic"];
        battleIconsAlt = [SlimeWater,SlimeBunny,SlimeMud,"mimic"];
        battles = [Battles.canopy4,Battles.canopy2,Battles.canopy3,Battles.canopy1];
        battlesAlt = [BattlesAlt.canopy4,BattlesAlt.canopy2,BattlesAlt.canopy3,BattlesAlt.canopy1];
        battleBG = [25,25,25,25];
        if(Options.altFoes) {
          battleBG = [25,25,25,Backgrounds.EBF1_BEHOLDER];
        }
        respawn = [undefined,undefined,true];
        weather = [undefined,Weather.LEAVES,Weather.LEAVES];
        altWeather = [undefined,Weather.BLOSSOM,Weather.BLOSSOM,Weather.ENERGY];
        if(Options.altFoes) {
          weather[3] = null;
          altWeather[3] = null;
        }
        maps.push0.skin(9);
        maps.push1.skin(9);
        maps.push2.skin(9);
        maps.push3.skin(9);
        maps.push4.skin(9);
        maps.objectData = [{
          "mc":"chest0",
          "type":CHEST,
          "data":[Items.seashell,2,Items.opal,1,Items.seashell,2]
        },{
          "mc":"chest1",
          "type":CHEST,
          "data":[Items.lollipop,1,Items.orangejuice,1]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Items.gems,2,Items.emerald,1,Items.gems,2]
        },{
          "mc":"chest3",
          "type":CHEST,
          "data":[Items.cupcake,1,Items.coffee,2,Items.cloudberries,1]
        }];
        doorLinks = [[180,11,8,1,"ladder"]];
        initScene("highUp",0,null);
      }
      if(mapNo == 74) {
        setArea(MYSTIC_WOODS);
        BGM.play(BGM.PATH_TO_YGGDRASIL);
        Flags.HAUNTED_WOODS.quantity = 1;
        Maps.foeJumps = ["","fly","fly"];
        battleBGM = [BGM.TERTIARY_BATTLE,BGM.TERTIARY_BATTLE,BGM.TERTIARY_BATTLE];
        battleIcons = [MirrorHaunted,BatBone,BatBlood];
        battleIconsAlt = [CatSkeleton,BatBone,WraithLeaf];
        battles = [Battles.canopy9,Battles.canopy8,Battles.canopy10];
        battlesAlt = [BattlesAlt.canopy9,BattlesAlt.canopy8,BattlesAlt.canopy10];
        battleBG = [26,26,26];
        respawn = [true];
        altWeather = [Weather.THUNDERSTORM,Weather.THUNDERSTORM,Weather.THUNDERSTORM];
        maps.objectData = [{
          "mc":"chest0",
          "type":CHEST,
          "data":[Items.silver,1,Items.beef,1,Items.buckle,2]
        },{
          "mc":"chest1",
          "type":CHEST,
          "data":[Items.potato,1,Items.claw,4]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Items.cloudberries,1,Items.watermelon,2]
        },{
          "mc":"chest3",
          "type":CHEST,
          "data":[Items.satin,2,Items.silk,2]
        }];
        doorLinks = [[181,8,10,1,"door"],[74,12,10,3,"ladder"],[74,11,5,3,"ladder"]];
        initScene("hauntedWoods",0,null);
      }
      if(mapNo == 73) {
        setArea(MYSTIC_WOODS);
        initNPC(0,NPCs.jonathanB);
        initNPC(1,NPCs.jennyB);
        Maps.foeJumps = ["fly","fly",""];
        battleBGM = [BGM.TERTIARY_BATTLE,BGM.TERTIARY_BATTLE,BGM.TERTIARY_BATTLE];
        battleIcons = [BatBone,BatBlood,SlimeBunny];
        battleIconsAlt = [BatBone,FishSteam,BearBrown];
        battles = [Battles.canopy13,Battles.canopy15,Battles.canopy14];
        battlesAlt = [BattlesAlt.canopy13,BattlesAlt.canopy15,BattlesAlt.canopy14];
        battleBG = [26,26,26];
        respawn = [undefined,undefined,true];
        altWeather = [Weather.THUNDERSTORM,Weather.THUNDERSTORM];
        maps.objectData = [{
          "mc":"chest0",
          "type":CHEST,
          "data":[Items.keycard,1,Items.floppy,2]
        },{
          "mc":"chest1",
          "type":CHEST,
          "data":[Items.silver,1,Items.water,2]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Equips.dogsausage,1,Items.magma,2]
        },{
          "mc":"chest3",
          "type":CHEST,
          "data":[Items.powder,8,Items.spring,17,Items.floppy,4]
        },{
          "mc":"chest5",
          "type":CHEST,
          "data":[Items.magazine,1,Items.cola,1]
        },{
          "mc":"chest6",
          "type":CHEST,
          "data":[Items.coffee,2]
        }];
        doorLinks = [[73,15,2,3,"ladder"],[73,16,7,3,"ladder"]];
      }
      if(mapNo == 72) {
        setArea(MYSTIC_WOODS);
        BGM.play(BGM.PATH_TO_YGGDRASIL);
        Maps.foeJumps = ["slime","slime"];
        battleBGM = [BGM.TERTIARY_BATTLE,BGM.TERTIARY_BATTLE];
        battleIcons = [SlimeMud,SlimeBigMud];
        battleIconsAlt = [CreepThorny,MammothWooly];
        battles = [Battles.canopy11,Battles.canopy12];
        battlesAlt = [BattlesAlt.canopy11,BattlesAlt.canopy12];
        battleBG = [26,26];
        respawn = [];
        altWeather = [Weather.THUNDERSTORM,Weather.THUNDERSTORM];
        maps.objectData = [{
          "mc":"chest0",
          "type":CHEST,
          "data":[Items.brick,1,Items.stepladder,1,Items.brick,1]
        },{
          "mc":"chest1",
          "type":CHEST,
          "data":[Items.coffee,3,Items.garlic,2,Items.banana,9]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Items.spike,1,Items.sushi,1]
        },{
          "mc":"chest3",
          "type":CHEST,
          "data":[Items.pumpkin,1,Equips.humanskull,1,Items.pumpkin,1]
        }];
        doorLinks = [[179,4,10,1,"door"],[179,17,8,1,"door"]];
        initScene("crawling",0,MapText.crawlingScenes);
        initScenes([0],"stepladderGet",1);
      }
      if(mapNo == 81) {
        setArea(MYSTIC_WOODS);
        if(Flags.NEST_DEFEATED.quantity) {
          Game.clearBossBattle(0);
        }
        initNPC(0,NPCs.drifty);
        battleBGM = [BGM.BLADE_AND_SWITCH,BGM.NYMPHIS_FAE,BGM.NYMPHIS_FAE];
        battleIcons = [BossNestCat,CatWizard,CatWarrior];
        battles = [Battles.boss3,Battles.boss3B,Battles.boss3C];
        battlesAlt = [BattlesAlt.boss3,BattlesAlt.boss3B,BattlesAlt.boss3C];
        battleBG = [23,23,23];
        respawn = [undefined,undefined];
        weather = [Weather.LEAVES,Weather.LEAVES,Weather.LEAVES];
        altWeather = [Weather.GEYSERS,Weather.GEYSERS,Weather.GEYSERS];
        maps.objectData = [{
          "mc":"chest0",
          "type":CHEST,
          "data":[Equips.coldsteel,1,Items.water,3,Items.steel,4]
        },{
          "mc":"chest1",
          "type":CHEST,
          "data":[Items.cake,1,Items.yoghurt,1,Items.pill,1]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Items.seashell,1,Items.raft,1,Items.seashell,1]
        },{
          "mc":"chest3",
          "type":CHEST,
          "data":[Items.herb,2]
        }];
        initScene("boss3",0);
        initScene("boss3Beat",1,MapText.boss3BeatScenes,Flags.NEST_DEFEATED,1,2);
      }
      if(mapNo == 178) {
        setArea(MYSTIC_WOODS,false);
        BGM.play(BGM.TREE_AMBIENCE);
        Maps.minimapCoords = [5,1];
        battleBGM = [];
        battleIcons = [WraithMaster];
        battleIconsAlt = [WraithLeaf];
        battles = [Battles.tree1];
        battlesAlt = [BattlesAlt.tree1];
        battleBG = [29];
        respawn = [];
        maps.switchEvent = function():* {
          setSpikes([Maps.switchData[41]],[0,2,3]);
          setSpikes([!Maps.switchData[41]],[1]);
        };
        initSwitch(0,41);
        maps.objectData = [{
          "mc":"chest0",
          "type":CHEST,
          "data":[Equips.beholdingeye,1,Items.amber,6]
        },{
          "mc":"chest1",
          "type":CHEST,
          "data":[Items.pill,1,Items.energy,4]
        }];
        doorLinks = [[77,3,5,1,"door"],[179,3,2,1,"ladder"]];
        initScene("annaIsSorry",0);
      }
      if(mapNo == 179) {
        setArea(MYSTIC_WOODS,false);
        BGM.play(BGM.TREE_AMBIENCE);
        Maps.minimapCoords = [5,0];
        battleBGM = [];
        battleIcons = [CreepThorny];
        battles = [Battles.tree2];
        battlesAlt = [BattlesAlt.tree2];
        battleBG = [29];
        respawn = [];
        maps.objectData = [{
          "mc":"chest1",
          "type":CHEST,
          "data":[Items.kevlar,1,Items.turnip,1]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Items.ocarina,1,Items.seashell,9]
        },{
          "mc":"chest3",
          "type":CHEST,
          "data":[Items.woodenkey,1,Items.wood,8]
        }];
        doorLinks = [[72,3,4,1,"door"],[178,4,3,1,"ladder"],[72,14,4,1,"door"]];
      }
      if(mapNo == 180) {
        setArea(MYSTIC_WOODS,false);
        BGM.play(BGM.TREE_AMBIENCE);
        Maps.minimapCoords = [8,1];
        initNPC(0,NPCs.angela);
        maps.objectData = [{
          "mc":"chest1",
          "type":CHEST,
          "data":[Items.mushroom,1]
        }];
        doorLinks = [[80,10,7,2,"door"],[75,11,8,2,"ladder"]];
        initScene("mushrooms",0);
      }
      if(mapNo == 182) {
        setArea(MYSTIC_WOODS,false);
        BGM.play(BGM.TREE_AMBIENCE);
        Maps.minimapCoords = [7,1];
        initNPC(0,NPCs.spike);
        initKey(0,Items.woodenkey);
        initKey(1,Items.woodenkey);
        initKey(2,Items.woodenkey);
        initKey(3,Items.woodenkey);
        initKey(4,Items.woodenkey);
        maps.objectData = [{
          "mc":"chest0",
          "type":CHEST,
          "data":[Items.ruby,2,Items.magma,3,Items.beef,1]
        },{
          "mc":"chest1",
          "type":CHEST,
          "data":[Items.emerald,2,Items.virus,3,Items.grapes,1]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Items.topaz,2,Items.amber,3,Items.potato,1]
        },{
          "mc":"chest3",
          "type":CHEST,
          "data":[Items.sapphire,2,Items.water,3,Items.riceball,1]
        },{
          "mc":"chest4",
          "type":CHEST,
          "data":[Items.opal,1,Items.donut,1]
        },{
          "mc":"chest5",
          "type":CHEST,
          "data":[Items.pumpkin,4]
        },{
          "mc":"chest6",
          "type":CHEST,
          "data":[Items.cactus,1,Items.flower,1]
        }];
        doorLinks = [[79,4,8,1,"door"],[181,7,3,1,"ladder"]];
      }
      if(mapNo == 181) {
        setArea(MYSTIC_WOODS,false);
        BGM.play(BGM.TREE_AMBIENCE);
        Maps.minimapCoords = [7,0];
        initPed(0,113,Items.cake,false);
        initNPC(0,NPCs.bellaB);
        initNPC(1,NPCs.monika);
        maps.objectData = [{
          "mc":"shop0",
          "type":SHOP,
          "data":[ITEM_SHOP,Items.ITEM_SHOP_2]
        },{
          "mc":"chest0",
          "type":CHEST,
          "data":[Items.cookie,1]
        },{
          "mc":"chest1",
          "type":CHEST,
          "data":[Items.spike,1,Items.claw,2]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Items.water,3]
        },{
          "mc":"chest3",
          "type":CHEST,
          "data":[Items.panties,1]
        }];
        doorLinks = [[74,4,9,1,"door"],[182,7,3,1,"ladder"]];
      }
      if(mapNo == 90) {
        setArea(RAINBOW_RIVER);
        Maps.foeJumps = ["fly","",""];
        battleBGM = [BGM.NYMPHIS_FAE,BGM.NYMPHIS_FAE,BGM.NYMPHIS_FAE];
        battleIcons = [BatSnow,SquidPink,ChomperSeaweed];
        battleIconsAlt = [BitIce,SquidPurple,ChomperSeaweed];
        battles = [Battles.river1,Battles.river2,Battles.river3];
        battlesAlt = [BattlesAlt.river1,BattlesAlt.river2,BattlesAlt.river3];
        battleBG = [35,35,35];
        respawn = [true];
        weather = [Weather.HAIL,Weather.HAIL,Weather.HAIL];
        altWeather = [Weather.ACID,Weather.ACID,Weather.ACID];
        maps.switchEvent = function():* {
          if(!Maps.switchData[44] || Maps.chestData && Maps.chestData[7]) {
            maps.special0.visible = false;
            maps.addTile(1,6,10,false);
            maps.chest7.visible = false;
          } else {
            maps.special0.visible = true;
            maps.addTile(5,6,10,false);
            maps.chest7.visible = true;
            maps.chest7.gotoAndStop(1);
            maps.chest7.alpha = 0;
            maps.chest7.gotoAndStop(2);
          }
        };
        maps.switchEvent();
        initPed(0,44,Items.stonehead,true);
        maps.objectData = [{
          "mc":"chest0",
          "type":CHEST,
          "data":[Items.sushi,1,Items.ice,3,Items.water,2]
        },{
          "mc":"chest1",
          "type":CHEST,
          "data":[Items.fur,6,Items.buckle,2]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Items.coralkey,1,Items.seashell,11]
        },{
          "mc":"chest7",
          "type":CHEST,
          "data":[Items.gems,3,Items.topaz,2]
        }];
        initScene("swimming",0);
      }
      if(mapNo == 91) {
        setArea(RAINBOW_RIVER);
        initNPC(0,NPCs.infernus);
        battleBGM = [BGM.NYMPHIS_FAE,BGM.NYMPHIS_FAE,BGM.NYMPHIS_FAE];
        battleIcons = [CreepGreen,CreepHermit,ChomperSeaweed];
        battleIconsAlt = [CreepIcicle,FallenCrucified,BoulderMarble];
        battles = [Battles.river4,Battles.river5,Battles.river6];
        battlesAlt = [BattlesAlt.river4,BattlesAlt.river5,BattlesAlt.river6];
        battleBG = [35,35,35];
        respawn = [undefined,undefined,true];
        weather = [Weather.HAIL,Weather.HAIL,Weather.HAIL];
        altWeather = [Weather.ACID,Weather.ACID,Weather.ACID];
        hideChest(4);
        setDoors([Maps.switchData[50],Maps.switchData[51],Maps.switchData[52],Maps.switchData[53],Maps.switchData[54],Maps.switchData[55]],[0],true);
        maps.switchEvent = function():* {
          var _loc1_:Number = NaN;
          var _loc2_:int = 0;
          if(Maps.switchData[50] && Maps.switchData[52] && Maps.switchData[54] && !Maps.switchData[51] && !Maps.switchData[53] && !Maps.switchData[55]) {
            dropChest(4);
            Medals.unlock(Medals.codeBreaker);
          }
          if(!Maps.switchData[50] && !Maps.switchData[52] && !Maps.switchData[54] && Maps.switchData[51] && Boolean(Maps.switchData[53]) && Boolean(Maps.switchData[55])) {
            dropChest(4);
            Medals.unlock(Medals.codeBreaker);
          }
          setDoors([Maps.switchData[50],Maps.switchData[51],Maps.switchData[52],Maps.switchData[53],Maps.switchData[54],Maps.switchData[55]],[0]);
          if(Boolean(Maps.switchData[50]) && Boolean(Maps.switchData[51]) && Boolean(Maps.switchData[52]) && Boolean(Maps.switchData[53]) && Boolean(Maps.switchData[54]) && Boolean(Maps.switchData[55])) {
            Flags.TUNDRA_REACHED.quantity = 1;
          }
          _loc1_ = 0;
          _loc2_ = 50;
          while(_loc2_ <= 55) {
            if(Maps.switchData[_loc2_]) {
              _loc1_++;
            }
            _loc2_++;
          }
          maps.special0.alpha = _loc1_ / 15;
          maps.special1.alpha = _loc1_ / 15;
        };
        maps.switchEvent();
        initPed(0,50,Items.stonehead,true);
        initPed(1,51,Items.stonehead,true);
        initPed(2,52,Items.stonehead,true);
        initPed(3,53,Items.stonehead,true);
        initPed(4,54,Items.stonehead,true);
        initPed(5,55,Items.stonehead,true);
        maps.objectData = [{
          "mc":"chest0",
          "type":CHEST,
          "data":[Items.donut,1,Items.pretzel,2,Items.cupcake,3]
        },{
          "mc":"chest1",
          "type":CHEST,
          "data":[Items.coffee,3,Items.garlic,2,Items.banana,4]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Items.magma,5,Items.rune2,1]
        },{
          "mc":"chest3",
          "type":CHEST,
          "data":[Equips.captainscoat,1,Items.leather,8,Items.buckle,5]
        },{
          "mc":"chest4",
          "type":CHEST,
          "data":[Items.geode,1,Equips.thorshammer,1,Items.geode,1]
        },{
          "mc":"chest5",
          "type":CHEST,
          "data":[Items.snowball,1,Items.sapphire,2,Items.snowball,1]
        }];
        count = Items.stonehead.quantity;
        i = 50;
        while(i < 56) {
          if(Maps.switchData[i]) {
            count++;
          }
          i++;
        }
        if(count == 6) {
          initScene("lanceIsSorry",0,null);
        }
      }
      if(mapNo == 92) {
        setArea(RAINBOW_RIVER);
        initNPC(0,NPCs.kirsan);
        battleBGM = [BGM.NYMPHIS_FAE,BGM.NYMPHIS_FAE];
        battleIcons = [SquidPink,CreepHermit];
        battleIconsAlt = [SquidLime,DogFriend];
        battles = [Battles.river7,Battles.river8];
        battlesAlt = [BattlesAlt.river7,BattlesAlt.river8];
        battleBG = [34,34];
        respawn = [undefined,true];
        altWeather = [Weather.ACID,Weather.HAIL];
        maps.switchEvent = function():* {
          if(!Maps.switchData[45] || Maps.chestData && Maps.chestData[7]) {
            maps.special1.visible = false;
            maps.addTile(1,13,9,false);
            maps.chest7.visible = false;
          } else {
            maps.special1.visible = true;
            maps.addTile(5,13,9,false);
            maps.chest7.visible = true;
            maps.chest7.gotoAndStop(1);
            maps.chest7.alpha = 0;
            maps.chest7.gotoAndStop(2);
          }
        };
        maps.switchEvent();
        initPed(0,45,Items.stonehead,true);
        maps.objectData = [{
          "mc":"chest0",
          "type":CHEST,
          "data":[Items.lollipop,1,Items.cloudberries,2,Items.watermelon,3]
        },{
          "mc":"chest1",
          "type":CHEST,
          "data":[Items.turnip,1,Items.rune2,2,Items.gems,2]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Items.crisps,2,Items.chips,2]
        },{
          "mc":"chest3",
          "type":CHEST,
          "data":[Items.water,3,Items.glass,4]
        },{
          "mc":"chest7",
          "type":CHEST,
          "data":[Equips.turtleshell,1,Items.gems,4,Items.seashell,8]
        }];
        if(Items.raft.quantity) {
          Medals.unlock(Medals.riverRapids);
        }
        initScene("raftGet",0,MapText.raftGetScenes,Items.raft,1);
      }
      if(mapNo == 93) {
        setArea(RAINBOW_RIVER);
        battleBGM = [BGM.NYMPHIS_FAE,BGM.NYMPHIS_FAE,BGM.NYMPHIS_FAE];
        battleIcons = [SlimeWater,CreepGreen,BoulderCoral];
        battleIconsAlt = [SlimeSand,CreepThorny,BoulderSandstone];
        battles = [Battles.river9,Battles.river10,Battles.river11];
        battlesAlt = [BattlesAlt.river9,BattlesAlt.river10,BattlesAlt.river11];
        battleBG = [34,34,34];
        respawn = [];
        altWeather = [Weather.HAIL,Weather.HAIL,Weather.HAIL];
        hideChest(3);
        maps.success = function():* {
          dropChest(3);
        };
        maps.switchEvent = function():* {
          if(!Maps.switchData[46] || Maps.chestData && Maps.chestData[7]) {
            maps.special0.visible = false;
            maps.addTile(1,18,11,false);
            maps.chest7.visible = false;
          } else {
            maps.special0.visible = true;
            maps.addTile(5,18,11,false);
            maps.chest7.visible = true;
            maps.chest7.gotoAndStop(1);
            maps.chest7.alpha = 0;
            maps.chest7.gotoAndStop(2);
          }
        };
        maps.switchEvent();
        initPed(0,46,Items.stonehead,true);
        maps.objectData = [{
          "mc":"chest0",
          "type":CHEST,
          "data":[Items.chicken,1,Items.magma,4,Items.feather,6]
        },{
          "mc":"chest1",
          "type":CHEST,
          "data":[Items.mint,1,Items.lego,1,Items.plastic,5]
        },{
          "mc":"chest3",
          "type":CHEST,
          "data":[Items.brick,7,Items.brick,2,Items.brick,5]
        },{
          "mc":"chest7",
          "type":CHEST,
          "data":[Items.emerald,1,Items.sapphire,1,Items.ruby,1]
        }];
        initScene("redpine3",0,null,Flags.TOWN_3_REACHED,1);
      }
      if(mapNo == 94) {
        setArea(RAINBOW_RIVER);
        initNPC(0,NPCs.shaggy);
        initNPC(1,NPCs.hippy);
        battleBGM = [BGM.NYMPHIS_FAE,BGM.NYMPHIS_FAE,BGM.SECONDARY_BATTLE];
        battleIcons = [FallenDrowned,BushRed,SlimeBunny];
        battleIconsAlt = [FallenDrowned,CatBomber,SquidPurple];
        battles = [Battles.river12,Battles.river13,Battles.walls5];
        battlesAlt = [BattlesAlt.river12,BattlesAlt.river13,BattlesAlt.walls5];
        battleBG = [34,34,15];
        respawn = [true,undefined,true];
        weather = [Weather.SUNNY,Weather.SUNNY,Weather.SUNNY];
        altWeather = [Weather.HAIL,Weather.ACID,Weather.ACID];
        if(!Flags.TANK_DEFEATED.quantity) {
          weather[2] = Weather.AIRSTRIKES;
        }
        maps.objectData = [{
          "mc":"chest0",
          "type":CHEST,
          "data":[Items.pill,1,Items.silver,2,Items.satin,1]
        },{
          "mc":"chest1",
          "type":CHEST,
          "data":[Items.moonpearl,1,Items.ice,5,Items.blueberries,2]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Items.flute,1,Items.flower,7]
        },{
          "mc":"chest3",
          "type":CHEST,
          "data":[Equips.thundercore,1,Items.spring,11,Items.gear,8]
        },{
          "mc":"chest4",
          "type":CHEST,
          "data":[Items.beer,2,Items.herb,12]
        },{
          "mc":"chest5",
          "type":CHEST,
          "data":[Items.root,4,Items.flower,6,Items.rune2,1]
        }];
        initScene("waterMonolith",0,null,Items.raft,1);
      }
      if(mapNo == 95) {
        setArea(RAINBOW_RIVER);
        initPed(0,71,Items.stick,false);
        battleBGM = [BGM.SECONDARY_BATTLE,BGM.SECONDARY_BATTLE,BGM.SECONDARY_BATTLE];
        battleIcons = [BoulderCoral,CatBomber,BushDark];
        battleIconsAlt = [BoulderDirt,CatBomber,FallenBurned];
        battles = [Battles.walls6,Battles.walls7,Battles.rapture50];
        battlesAlt = [BattlesAlt.walls6,BattlesAlt.walls7,BattlesAlt.rapture50];
        battleBG = [15,15,34];
        respawn = [true,undefined];
        weather = [Weather.SUNNY,Weather.SUNNY,Weather.SUNNY];
        altWeather = [Weather.ACID,Weather.ACID,Weather.ACID];
        if(!Flags.TANK_DEFEATED.quantity) {
          weather[0] = Weather.AIRSTRIKES;
          weather[1] = Weather.AIRSTRIKES;
        }
        maps.push0.skin(29);
        hideChest(0);
        maps.success = function():* {
          dropChest(0);
        };
        maps.objectData = [{
          "mc":"chest0",
          "type":CHEST,
          "data":[Equips.aquamarine,1,Items.ice,1]
        },{
          "mc":"chest1",
          "type":CHEST,
          "data":[Items.scales,1,Items.ruby,2,Items.powder,11]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Items.water,1,Items.ice,1,Items.glass,2]
        },{
          "mc":"chest3",
          "type":CHEST,
          "data":[Items.nut,1,Items.banana,2,Items.crisps,1]
        },{
          "mc":"chest4",
          "type":CHEST,
          "data":[Items.bomb,4,Items.bru,1]
        },{
          "mc":"chest5",
          "type":CHEST,
          "data":[Items.wood,3,Items.herb,2,Items.brick,1]
        }];
      }
      if(mapNo == 96) {
        setArea(RAINBOW_RIVER);
        initNPC(0,NPCs.aniki);
        battleBGM = [BGM.SECONDARY_BATTLE,BGM.NYMPHIS_FAE,BGM.SECONDARY_BATTLE];
        battleIcons = [FlybotBlue,ChomperSeaweed,BatBone];
        battleIconsAlt = [FlybotBlue,ChomperLeafy,BatBone];
        battles = [Battles.walls8,Battles.river14,Battles.rapture51];
        battlesAlt = [BattlesAlt.walls8,BattlesAlt.river14,BattlesAlt.rapture51];
        battleBG = [15,34,34];
        respawn = [undefined,undefined];
        weather = [Weather.SUNNY,Weather.SUNNY,Weather.SUNNY];
        altWeather = [Weather.HAIL,Weather.HAIL,Weather.ACID];
        if(!Flags.TANK_DEFEATED.quantity) {
          weather[0] = Weather.AIRSTRIKES;
        }
        maps.switchEvent = function():* {
          if(!Maps.switchData[47] || Maps.chestData && Maps.chestData[7]) {
            maps.special0.visible = false;
            maps.addTile(1,18,11,false);
            maps.chest7.visible = false;
          } else {
            maps.special0.visible = true;
            maps.addTile(5,18,11,false);
            maps.chest7.visible = true;
            maps.chest7.gotoAndStop(1);
            maps.chest7.alpha = 0;
            maps.chest7.gotoAndStop(2);
          }
        };
        maps.switchEvent();
        hideChest(2);
        maps.success = function():* {
          dropChest(2);
        };
        initPed(0,47,Items.stonehead,true);
        initPed(1,70,Items.stick,false);
        maps.objectData = [{
          "mc":"chest0",
          "type":CHEST,
          "data":[Items.magma,2,Items.amber,1]
        },{
          "mc":"chest1",
          "type":CHEST,
          "data":[Items.riceball,1,Items.espresso,1]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Items.lego,1,Items.plastic,8,Items.spring,3]
        },{
          "mc":"chest3",
          "type":CHEST,
          "data":[Items.blueberries,3,Items.cola,2]
        },{
          "mc":"chest7",
          "type":CHEST,
          "data":[Items.starfragment,1,Items.gems,4]
        }];
        initScene("jaggedRocks",0,null,Items.raft,1);
      }
      if(mapNo == 97) {
        setArea(RAINBOW_RIVER);
        initNPC(0,NPCs.kai);
        battleBGM = [BGM.SECONDARY_BATTLE,BGM.NYMPHIS_FAE,BGM.SECONDARY_BATTLE];
        battleIcons = [FlybotBlue,FallenDrowned,DragonSea];
        battleIconsAlt = [FlybotYellow,FallenLost,DragonSky];
        battles = [Battles.rapture52,Battles.river15,Battles.rapture33];
        battlesAlt = [BattlesAlt.rapture52,BattlesAlt.river15,BattlesAlt.rapture33];
        battleBG = [34,34,34];
        respawn = [];
        weather = [Weather.SUNNY,Weather.SUNNY,Weather.SUNNY];
        altWeather = [Weather.ACID,Weather.ACID,Weather.ACID];
        maps.switchEvent = function():* {
          if(!Maps.switchData[48] || Maps.chestData && Maps.chestData[7]) {
            maps.special0.visible = false;
            maps.addTile(1,2,11,false);
            maps.chest7.visible = false;
          } else {
            maps.special0.visible = true;
            maps.addTile(5,2,11,false);
            maps.chest7.visible = true;
            maps.chest7.gotoAndStop(1);
            maps.chest7.alpha = 0;
            maps.chest7.gotoAndStop(2);
          }
        };
        maps.switchEvent();
        initPed(0,48,Items.stonehead,true);
        maps.objectData = [{
          "mc":"chest0",
          "type":CHEST,
          "data":[Items.woodenkey,1,Items.opal,1]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Items.sapphire,1,Items.water,4]
        },{
          "mc":"chest3",
          "type":CHEST,
          "data":[Items.bread,1,Items.bru,24,Items.cpu,1]
        },{
          "mc":"chest4",
          "type":CHEST,
          "data":[Items.feather,3,Items.seashell,2,Items.geode,4]
        },{
          "mc":"chest7",
          "type":CHEST,
          "data":[Items.diamondkey,1,Items.diamond,1]
        }];
        initScene("fishing",0,null,Items.raft,1);
      }
      if(mapNo == 98) {
        setArea(RAINBOW_RIVER);
        initNPC(0,NPCs.maya);
        Flags.expStyle = Flags.SCALE_TO_LEVEL;
        battleBGM = [BGM.SECONDARY_BATTLE,BGM.NYMPHIS_FAE,BGM.NYMPHIS_FAE];
        battleIcons = [WraithMaster,DragonSea,SlimeWater];
        battleIconsAlt = [DollNoLegs,DragonSea,SlimeChocolate];
        battles = [Battles.rapture32,Battles.pink3,Battles.pink2];
        battlesAlt = [BattlesAlt.rapture32,BattlesAlt.pink3,BattlesAlt.pink2];
        battleBG = [48,33,33];
        respawn = [];
        weather = [Weather.SUNNY,Weather.BLOSSOM,Weather.BLOSSOM];
        altWeather = [undefined,Weather.SACRED,Weather.SACRED];
        hideChest(1);
        maps.success = function():* {
          dropChest(1);
        };
        maps.objectData = [{
          "mc":"chest0",
          "type":CHEST,
          "data":[Items.lollipop,1,Items.moonpearl,1,Items.yoghurt,1]
        },{
          "mc":"chest1",
          "type":CHEST,
          "data":[Items.flower,7,Items.satin,2]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Items.blueberries,3,Items.watermelon,2,Items.crisps,1]
        },{
          "mc":"chest3",
          "type":CHEST,
          "data":[Items.bacon,1,Items.pretzel,2]
        },{
          "mc":"chest4",
          "type":CHEST,
          "data":[Items.spike,2,Items.turd,1]
        },{
          "mc":"chest5",
          "type":CHEST,
          "data":[Items.dragonfruit,1,Items.raspberries,3]
        }];
      }
      if(mapNo == 99) {
        setArea(RAINBOW_RIVER);
        initNPC(0,NPCs.finn);
        Flags.expStyle = Flags.SCALE_TO_LEVEL;
        battleBGM = [BGM.NYMPHIS_FAE,BGM.NYMPHIS_FAE];
        battleIcons = [CreepHermit,SquidPink];
        battleIconsAlt = [GloopFab,CreepHermit];
        battles = [Battles.pink7,Battles.pink8];
        battlesAlt = [BattlesAlt.pink7,BattlesAlt.pink8];
        battleBG = [33,33];
        respawn = [];
        weather = [Weather.BLOSSOM,Weather.BLOSSOM];
        altWeather = [Weather.SACRED,Weather.SACRED];
        initKey(0,Items.coralkey);
        initKey(1,Items.coralkey);
        maps.switchEvent = function():* {
          if(!Maps.switchData[49] || Maps.chestData && Maps.chestData[7]) {
            maps.special0.visible = false;
            maps.addTile(1,12,7,false);
            maps.chest7.visible = false;
          } else {
            maps.special0.visible = true;
            maps.addTile(5,12,7,false);
            maps.chest7.visible = true;
            maps.chest7.gotoAndStop(1);
            maps.chest7.alpha = 0;
            maps.chest7.gotoAndStop(2);
          }
        };
        maps.switchEvent();
        initPed(0,49,Items.stonehead,true);
        maps.objectData = [{
          "mc":"chest0",
          "type":CHEST,
          "data":[Items.cookie,1,Items.cupcake,2]
        },{
          "mc":"chest1",
          "type":CHEST,
          "data":[Items.turnip,1,Items.root,12]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Items.rune,1,Items.turd,2]
        },{
          "mc":"chest3",
          "type":CHEST,
          "data":[Items.titanium,1,Items.sapphire,5,Items.ice,5]
        },{
          "mc":"chest4",
          "type":CHEST,
          "data":[Items.rune2,2,Items.starfragment,1,Items.rune2,2]
        },{
          "mc":"chest7",
          "type":CHEST,
          "data":[Items.diamond,1,Items.keycard,1]
        }];
      }
      if(mapNo == 102) {
        setArea(FROZEN_VALLEY);
        initPed(0,133,Items.popcorn,false);
        battleBGM = [BGM.RETURN_OF_SNOW_QUEEN,BGM.RETURN_OF_SNOW_QUEEN,BGM.RETURN_OF_SNOW_QUEEN,BGM.RETURN_OF_SNOW_QUEEN];
        battleIcons = [BitWater,BoulderCoral,FlybotBlue,WormScaly];
        battleIconsAlt = [BitWater,BoulderDirt,FlybotBlue,CreepIcicle];
        battles = [Battles.tundra4,Battles.tundra2,Battles.tundra3,Battles.tundra1];
        battlesAlt = [BattlesAlt.tundra4,BattlesAlt.tundra2,BattlesAlt.tundra3,BattlesAlt.tundra1];
        battleBG = [38,38,38,38];
        respawn = [true,undefined,undefined];
        weather = [Weather.HAIL,Weather.HAIL,Weather.HAIL,Weather.HAIL,Weather.HAIL];
        altWeather = [Weather.GEYSERS,Weather.GEYSERS,Weather.GEYSERS,Weather.GEYSERS,Weather.GEYSERS];
        hideChest(3);
        maps.push0.skin(4);
        maps.success = function():* {
          dropChest(3);
        };
        maps.objectData = [{
          "mc":"sign0",
          "type":SIGN,
          "data":"sign6"
        },{
          "mc":"chest0",
          "type":CHEST,
          "data":[Equips.iceshards,1,Items.water,4]
        },{
          "mc":"chest1",
          "type":CHEST,
          "data":[Items.rune,1,Items.silver,2,Items.silver,1]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Items.milk,1,Items.cloudberries,3,Items.watermelon,2]
        },{
          "mc":"chest3",
          "type":CHEST,
          "data":[Items.feather,11,Items.egg,1,Items.feather,7]
        },{
          "mc":"chest4",
          "type":CHEST,
          "data":[Items.sapphire,1,Items.ice,4,Items.geode,2]
        }];
        initScene("ruins1",0,MapText.ruins1Scenes);
      }
      if(mapNo == 105) {
        setArea(FROZEN_VALLEY);
        BGM.play(BGM.SNOWDRIFT_ON_THE_CLOUDS);
        initNPC(0,NPCs.king);
        battleBGM = [BGM.RETURN_OF_SNOW_QUEEN,BGM.RETURN_OF_SNOW_QUEEN,BGM.RETURN_OF_SNOW_QUEEN,BGM.RETURN_OF_SNOW_QUEEN];
        battleIcons = [BitIce,CreepIcicle,BearBrown,WormScaly];
        battleIconsAlt = [BitWater,CreepGreen,DogFriend,BearBrown];
        battles = [Battles.tundra7,Battles.tundra5,Battles.tundra6,Battles.tundra8];
        battlesAlt = [BattlesAlt.tundra7,BattlesAlt.tundra5,BattlesAlt.tundra6,BattlesAlt.tundra8];
        battleBG = [38,38,38,38];
        respawn = [true,true,undefined,true];
        weather = [Weather.RAIN,Weather.RAIN,Weather.HAIL,Weather.HAIL,Weather.RAIN];
        altWeather = [Weather.SNOW,Weather.SNOW,Weather.GEYSERS,Weather.GEYSERS,Weather.SNOW];
        hideChest(3);
        maps.success = function():* {
          dropChest(3);
        };
        Medals.unlock(Medals.arcticExpedition);
        maps.objectData = [{
          "mc":"sign0",
          "type":SIGN2,
          "data":"mvalley"
        },{
          "mc":"chest0",
          "type":CHEST,
          "data":[Items.donut,1,Items.magma,3,Items.ruby,1]
        },{
          "mc":"chest1",
          "type":CHEST,
          "data":[Items.grapes,1,Items.virus,3,Items.emerald,1]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Equips.sharanga,1]
        },{
          "mc":"chest3",
          "type":CHEST,
          "data":[Items.espresso,1,Items.coffee,3]
        },{
          "mc":"chest4",
          "type":CHEST,
          "data":[Items.pizza,1,Items.cloudberries,2,Items.chips,2]
        },{
          "mc":"chest5",
          "type":CHEST,
          "data":[Items.herb,3,Items.potato,1,Items.turd,1]
        },{
          "mc":"chest6",
          "type":CHEST,
          "data":[Items.sapphire,1,Items.satin,1]
        },{
          "mc":"chest7",
          "type":CHEST,
          "data":[Items.cookie,1,Items.magazine,1]
        }];
        initScene("campsite",0);
      }
      if(mapNo == 104) {
        setArea(FROZEN_VALLEY);
        if(Maps.switchData[208]) {
          BGM.play(BGM.SNOW_SISTERS);
        }
        Maps.warpData[5] = true;
        initPed(0,134,Items.popcorn,false);
        initNPC(0,NPCs.santa);
        initNPC(1,NPCs.stephanie);
        battleBGM = [BGM.RETURN_OF_SNOW_QUEEN,BGM.RETURN_OF_SNOW_QUEEN];
        battleIcons = [SlimeBigIcecream,SlimeIcecream];
        battleIconsAlt = [SlimeBigIcecream,DogFriend];
        battles = [Battles.snow2,Battles.snow1];
        battlesAlt = [BattlesAlt.snow2,BattlesAlt.snow1];
        battleBG = [41,41];
        respawn = [true];
        weather = [Weather.SNOW,Weather.SNOW];
        altWeather = [Weather.UNDEAD,Weather.UNDEAD];
        hideChest(3);
        maps.success = function():* {
          dropChest(3);
        };
        initSwitch(0,208);
        maps.switchEvent = function():* {
          if(Maps.switchData[208]) {
            BGM.play(BGM.SNOW_SISTERS,true,true);
            maps.special0.gotoAndPlay(1);
          } else {
            BGM.play(BGM.SNOWDRIFT_ON_THE_CLOUDS,false,true);
            maps.special0.gotoAndStop(1);
          }
        };
        maps.objectData = [{
          "mc":"chest0",
          "type":CHEST,
          "data":[Items.steel,5,Equips.wreckingrod,1,Items.steel,5]
        },{
          "mc":"chest1",
          "type":CHEST,
          "data":[Items.gold,1,Items.kevlar,1,Items.cpu,1]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Items.silver,2,Items.snowball,3,Items.silk,3]
        },{
          "mc":"chest3",
          "type":CHEST,
          "data":[Equips.hornedhelmet,1,Items.fur,6]
        },{
          "mc":"chest4",
          "type":CHEST,
          "data":[Items.rune2,1]
        },{
          "mc":"chest5",
          "type":CHEST,
          "data":[Items.rune2,1]
        },{
          "mc":"chest6",
          "type":CHEST,
          "data":[Items.rune2,1]
        },{
          "mc":"chest7",
          "type":CHEST,
          "data":[Items.rune2,1]
        }];
        initScene("ruins2",0,MapText.ruins2Scenes);
      }
      if(mapNo == 101) {
        setArea(FROZEN_VALLEY);
        if(Maps.switchData[208]) {
          BGM.play(BGM.SNOW_SISTERS);
        }
        initPed(0,135,Items.popcorn,false);
        battleBGM = [BGM.RETURN_OF_SNOW_QUEEN,BGM.RETURN_OF_SNOW_QUEEN,BGM.RETURN_OF_SNOW_QUEEN,BGM.SECONDARY_BATTLE];
        if(Options.altFoes) {
          battleBGM = [BGM.RETURN_OF_SNOW_QUEEN,BGM.RETURN_OF_SNOW_QUEEN,BGM.RETURN_OF_SNOW_QUEEN,BGM.YOULL_NEVER_GUESS];
        }
        battleFlags = [undefined,undefined,undefined,Flags.MIMIC];
        battleIcons = [BearGrolar,WraithIce,DogFriend,"mimic"];
        battleIconsAlt = [MirrorAngel,WraithIce,BearGrolar,"mimic"];
        battles = [Battles.snow3,Battles.snow4,Battles.snow5,Battles.snow6];
        battlesAlt = [BattlesAlt.snow3,BattlesAlt.snow4,BattlesAlt.snow5,BattlesAlt.snow6];
        battleBG = [40,40,38,38];
        if(Options.altFoes) {
          battleBG = [40,40,38,Backgrounds.EBF1_SLIMES];
        }
        respawn = [undefined,true,true];
        weather = [Weather.SNOW,Weather.SNOW,Weather.HAIL,Weather.RAIN];
        altWeather = [Weather.UNDEAD,Weather.UNDEAD,Weather.GEYSERS,Weather.SNOW];
        if(Options.altFoes) {
          weather[3] = null;
          altWeather[3] = null;
        }
        maps.objectData = [{
          "mc":"sign0",
          "type":SIGN2,
          "data":"snowlegs"
        },{
          "mc":"chest0",
          "type":CHEST,
          "data":[Items.rune2,1,Equips.angelpin,1,Items.rune2,1]
        },{
          "mc":"chest1",
          "type":CHEST,
          "data":[Items.beef,1,Items.pizza,1]
        },{
          "mc":"chest3",
          "type":CHEST,
          "data":[Items.lego,1,Items.plastic,8,Items.glass,15]
        }];
        initScene("slippery",0);
      }
      if(mapNo == 89) {
        setArea(FROZEN_VALLEY);
        initNPC(0,NPCs.gina);
        initNPC(1,NPCs.tina);
        initPed(0,136,Items.popcorn,false);
        battleBGM = [BGM.RETURN_OF_SNOW_QUEEN,BGM.RETURN_OF_SNOW_QUEEN,BGM.RETURN_OF_SNOW_QUEEN];
        battleIcons = [DogWolf,CreepBlue,FallenDrowned];
        battleIconsAlt = [DogFriend,CreepBlue,FallenLost];
        battles = [Battles.snow11,Battles.snow10,Battles.snow12];
        battlesAlt = [BattlesAlt.snow11,BattlesAlt.snow10,BattlesAlt.snow12];
        battleBG = [39,35,39];
        respawn = [true,undefined];
        weather = [Weather.RAIN,Weather.RAIN,Weather.HAIL];
        altWeather = [Weather.GEYSERS,Weather.GEYSERS,Weather.GEYSERS];
        maps.objectData = [{
          "mc":"chest0",
          "type":CHEST,
          "data":[Items.sushi,1,Items.pizza,1]
        },{
          "mc":"chest1",
          "type":CHEST,
          "data":[Items.poptart,1,Items.coffee,3,Items.chips,1]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Items.magma,2,Equips.crimsondragon,1,Items.magma,2]
        },{
          "mc":"chest3",
          "type":CHEST,
          "data":[Items.goldkey,1,Items.coffee,2]
        },{
          "mc":"chest4",
          "type":CHEST,
          "data":[Items.snowball,2,Items.titanium,1,Items.snowball,3]
        }];
        initScene("children",0);
      }
      if(mapNo == 103) {
        setArea(FROZEN_VALLEY);
        BGM.play(BGM.SNOWDRIFT_ON_THE_CLOUDS);
        initPed(0,137,Items.popcorn,false);
        initNPC(0,NPCs.alva);
        initNPC(1,NPCs.gray);
        battleBGM = [BGM.RETURN_OF_SNOW_QUEEN,BGM.RETURN_OF_SNOW_QUEEN,BGM.RETURN_OF_SNOW_QUEEN,BGM.RETURN_OF_SNOW_QUEEN];
        battleIcons = [HandSkeleton,WraithIce,BearGrolar,BitHoly];
        battleIconsAlt = [HandZombie,WraithIce,MonolithViking,BitHoly];
        battles = [Battles.snow13,Battles.snow15,Battles.snow16,Battles.snow14];
        battlesAlt = [BattlesAlt.snow13,BattlesAlt.snow15,BattlesAlt.snow16,BattlesAlt.snow14];
        battleBG = [40,40,40,40];
        respawn = [true,true];
        weather = [Weather.UNDEAD,Weather.UNDEAD,Weather.UNDEAD,Weather.SNOW];
        altWeather = [Weather.THUNDERSTORM,Weather.SNOW,Weather.ELECTRIC,Weather.ELECTRIC];
        maps.objectData = [{
          "mc":"sign0",
          "type":SIGN2,
          "data":"djin1"
        },{
          "mc":"sign1",
          "type":SIGN2,
          "data":"djin1"
        },{
          "mc":"sign2",
          "type":SIGN2,
          "data":"djin2"
        },{
          "mc":"sign3",
          "type":SIGN2,
          "data":"djin2"
        },{
          "mc":"chest0",
          "type":CHEST,
          "data":[Cards.card27,1,Items.powder,6]
        },{
          "mc":"chest1",
          "type":CHEST,
          "data":[Items.steel,11,Items.snowball,2,Items.snowball,5]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Items.silver,2,Items.snowball,2,Items.lollipop,1]
        },{
          "mc":"chest3",
          "type":CHEST,
          "data":[Items.snowball,13,Items.moonpearl,1,Items.silk,3]
        },{
          "mc":"chest4",
          "type":CHEST,
          "data":[Items.dragonfruit,1,Items.scales,1,Items.dragonfruit,1]
        }];
        doorLinks = [[327,3,4,1,"ladder"],[327,9,10,1,"ladder"]];
      }
      if(mapNo == 106) {
        setArea(FROZEN_VALLEY);
        BGM.play(BGM.SNOWDRIFT_ON_THE_CLOUDS);
        initPed(0,138,Items.popcorn,false);
        if(!Flags.GOLEM_DEFEATED.quantity || !Options.customEnabled()) {
          maps.special0.visible = false;
          maps.addTile(0,12,3,false);
          maps.door0.stop();
        }
        initNPC(0,NPCs.anon);
        battleBGM = [BGM.RETURN_OF_SNOW_QUEEN,BGM.RETURN_OF_SNOW_QUEEN,BGM.RETURN_OF_SNOW_QUEEN,BGM.RETURN_OF_SNOW_QUEEN,BGM.SECONDARY_BATTLE];
        if(Options.altFoes) {
          battleBGM = [BGM.RETURN_OF_SNOW_QUEEN,BGM.RETURN_OF_SNOW_QUEEN,BGM.RETURN_OF_SNOW_QUEEN,BGM.RETURN_OF_SNOW_QUEEN,BGM.JUMP_INTO_BATTLE];
        }
        battleFlags = [undefined,undefined,undefined,undefined,Flags.MIMIC];
        battleIcons = [MammothWar,SlimeBigIcecream,MammothWooly,DogMage,"mimic"];
        battleIconsAlt = [MammothCamel,HydraIce,SlimeBigIcecream,DogMage,"mimic"];
        battles = [Battles.ruins4,Battles.ruins3,Battles.ruins2,Battles.ruins5,Battles.ruins1];
        battlesAlt = [BattlesAlt.ruins4,BattlesAlt.ruins3,BattlesAlt.ruins2,BattlesAlt.ruins5,BattlesAlt.ruins1];
        battleBG = [40,40,40,41,41];
        if(Options.altFoes) {
          battleBG = [40,40,40,41,Backgrounds.EBF4_PRAETORIAN];
        }
        respawn = [true,undefined,true,true];
        altWeather = [Weather.ELECTRIC,Weather.ELECTRIC,undefined,undefined,Weather.ENERGY];
        if(Options.altFoes) {
          weather[4] = null;
          altWeather[4] = null;
        }
        maps.objectData = [{
          "mc":"sign0",
          "type":SIGN2,
          "data":"ghost1"
        },{
          "mc":"sign1",
          "type":SIGN2,
          "data":"ghost2"
        },{
          "mc":"chest0",
          "type":CHEST,
          "data":[Items.yoghurt,1,Items.cloudberries,3,Items.dragonfruit,2]
        },{
          "mc":"chest1",
          "type":CHEST,
          "data":[Items.snowball,4,Items.snowball,2,Items.snowball,9]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Equips.elderswisdom,1,Items.feather,12]
        },{
          "mc":"chest3",
          "type":CHEST,
          "data":[Items.beef,1,Items.coffee,6,Items.banana,13]
        },{
          "mc":"chest4",
          "type":CHEST,
          "data":[Items.snowball,4,Items.gamechild,1,Items.snowball,3]
        }];
        doorLinks = [[143,9,10,2,"glitch"]];
      }
      if(mapNo == 100) {
        setArea(FROZEN_VALLEY);
        BGM.play(BGM.SNOWDRIFT_ON_THE_CLOUDS);
        initPed(0,139,Items.popcorn,false);
        initNPC(0,NPCs.ika);
        battleBGM = [BGM.RETURN_OF_SNOW_QUEEN,BGM.RETURN_OF_SNOW_QUEEN,BGM.RETURN_OF_SNOW_QUEEN,BGM.RETURN_OF_SNOW_QUEEN,BGM.RETURN_OF_SNOW_QUEEN,BGM.BLOSSOM];
        Maps.foeJumps = ["","","","fly",""];
        battleIcons = [DogWolf,MonolithViking,FallenLost,BatSnow,MammothWooly,BitHoly];
        battleIconsAlt = [DogMage,MonolithViking,FallenLost,DogWolf,Defender2,MammothWooly];
        battles = [Battles.snow9,Battles.snow8,Battles.snow7,Battles.snow9B,Battles.snow8B,Battles.snow8C];
        battlesAlt = [BattlesAlt.snow9,BattlesAlt.snow8,BattlesAlt.snow7,BattlesAlt.snow9B,BattlesAlt.snow8B,BattlesAlt.snow8C];
        battleBG = [40,40,40,40,40,40];
        respawn = [true,undefined,true];
        weather = [Weather.SNOW,Weather.SNOW,Weather.SNOW,Weather.SNOW,Weather.SNOW,Weather.SNOW];
        altWeather = [Weather.THUNDERSTORM,Weather.ELECTRIC,Weather.THUNDERSTORM,Weather.ELECTRIC,Weather.GEYSERS,Weather.GEYSERS];
        maps.objectData = [{
          "mc":"chest0",
          "type":CHEST,
          "data":[Items.snowball,17,Items.candycane,1,Items.snowball,3]
        },{
          "mc":"chest1",
          "type":CHEST,
          "data":[Items.pill,1,Items.lego,1]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Items.cake,1,Items.sapphire,1,Items.water,6]
        },{
          "mc":"chest3",
          "type":CHEST,
          "data":[Items.kevlar,1,Items.fur,21,Items.buckle,11]
        },{
          "mc":"chest4",
          "type":CHEST,
          "data":[Items.topaz,1]
        }];
      }
      if(mapNo == 107) {
        setArea(FROZEN_VALLEY);
        BGM.play(BGM.SNOWDRIFT_ON_THE_CLOUDS);
        if(!Flags.GOLEM_DEFEATED.quantity || Options.customEnabled()) {
          maps.special0.visible = false;
          maps.addTile(0,6,10,false);
          maps.door0.stop();
        }
        initPed(0,140,Items.popcorn,false);
        initNPC(0,NPCs.maskerA);
        initNPC(1,NPCs.maskerB);
        battleBGM = [BGM.RETURN_OF_SNOW_QUEEN,BGM.RETURN_OF_SNOW_QUEEN,BGM.RETURN_OF_SNOW_QUEEN,BGM.RETURN_OF_SNOW_QUEEN];
        battleIcons = [FallenLost,FlybotBlue,MonolithViking,Defender2];
        battleIconsAlt = [FallenLost,FlybotYellow,MonolithViking,Defender1];
        battles = [Battles.ruins6,Battles.ruins7,Battles.ruins8,Battles.ruins9];
        battlesAlt = [BattlesAlt.ruins6,BattlesAlt.ruins7,BattlesAlt.ruins8,BattlesAlt.ruins9];
        battleBG = [41,41,41,41];
        respawn = [true];
        weather = [Weather.LOW_GRAVITY,Weather.LOW_GRAVITY,Weather.LOW_GRAVITY];
        altWeather = [Weather.GLITCH,Weather.GLITCH,Weather.GLITCH,Weather.GLITCH];
        maps.objectData = [{
          "mc":"chest0",
          "type":CHEST,
          "data":[Items.ice,1,Items.spikedboots,1,Items.ice,1]
        },{
          "mc":"chest1",
          "type":CHEST,
          "data":[Items.iron,37,Items.steel,15,Items.pipe,13]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Items.mushroom,1,Items.cpu,2,Items.kevlar,1]
        },{
          "mc":"chest3",
          "type":CHEST,
          "data":[Items.bru,6,Items.beer,6,Items.cola,6]
        },{
          "mc":"chest4",
          "type":CHEST,
          "data":[Items.rune2,1]
        },{
          "mc":"chest5",
          "type":CHEST,
          "data":[Items.rune2,1]
        }];
        doorLinks = [[143,9,10,2,"glitch"]];
        initScene("ruins3",0);
      }
      if(mapNo == 108) {
        setArea(FROZEN_VALLEY);
        initPed(0,141,Items.popcorn,false);
        initNPC(0,NPCs.jekyl);
        if(Flags.GOLEM_DEFEATED.quantity) {
          Game.clearBossBattle(4);
        }
        battleBGM = [undefined,undefined,undefined,BGM.RETURN_OF_SNOW_QUEEN,BGM.BLADE_AND_SWITCH];
        battleIcons = [BitIce,BitPoison,BitHoly,BitWater,BossGolemWater];
        battleIconsAlt = [BitIce,BitPoison,BitHoly,BitWater,BossGolemWater];
        battles = [Battles.penguins1,Battles.penguins2,Battles.penguins3,Battles.penguins4,Battles.boss4];
        battlesAlt = [BattlesAlt.penguins1,BattlesAlt.penguins2,BattlesAlt.penguins3,BattlesAlt.penguins4,BattlesAlt.boss4];
        battleBG = [39,39,39,39,39];
        respawn = [true,undefined,true];
        weather = [Weather.GEYSERS,Weather.GEYSERS,Weather.GEYSERS,Weather.GEYSERS];
        altWeather = [Weather.THUNDERSTORM,Weather.THUNDERSTORM,Weather.THUNDERSTORM,Weather.THUNDERSTORM,Weather.THUNDERSTORM];
        maps.objectData = [{
          "mc":"chest1",
          "type":CHEST,
          "data":[Equips.explorersjacket,1,Items.silk,6,Items.satin,2]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Items.coralkey,1,Items.donut,1,Items.grapes,1]
        },{
          "mc":"chest3",
          "type":CHEST,
          "data":[Items.keycard,1,Items.topaz,1,Items.kevlar,1]
        },{
          "mc":"chest4",
          "type":CHEST,
          "data":[Equips.blueelephant,1,Items.gamechild,1,Items.fur,7]
        },{
          "mc":"chest5",
          "type":CHEST,
          "data":[Items.geode,1]
        },{
          "mc":"chest6",
          "type":CHEST,
          "data":[Items.geode,1]
        },{
          "mc":"chest7",
          "type":CHEST,
          "data":[Items.geode,1]
        },{
          "mc":"chest8",
          "type":CHEST,
          "data":[Items.geode,1]
        }];
        initScene("gettingWarmer",0);
        initScene("boss4Beat",1,MapText.boss4BeatScenes,Flags.GOLEM_DEFEATED,1,2);
      }
      if(mapNo == 115) {
        setArea(REDPINE_TOWN);
        Flags.TOWN_3_REACHED.quantity = 1;
        initPed(0,57,Items.waterorb,false);
        maps.objectData = [{
          "mc":"sign0",
          "type":SIGN,
          "data":"sign8"
        },{
          "mc":"chest0",
          "type":CHEST,
          "data":[Items.mushroom,1]
        }];
        initScene("nearRedpine",0);
      }
      if(mapNo == 114) {
        setArea(REDPINE_TOWN);
        battleBGM = [];
        battleIcons = [HandZombie,BearBrown];
        battleIconsAlt = [BossTankGiga,IdolMetal];
        battles = [Battles.redpine8,Battles.redpine9];
        battlesAlt = [BattlesAlt.redpine8,BattlesAlt.redpine9];
        battleBG = [42,42];
        respawn = [];
        altWeather = [Weather.ASH,Weather.ASH];
        initNPC(0,NPCs.maka);
        initPed(0,180,Items.flower,false);
        initPed(1,181,Items.flower,false);
        initPed(2,182,Items.flower,false);
        maps.objectData = [{
          "mc":"chest0",
          "type":CHEST,
          "data":[Items.gamechild,1,Items.gold,1]
        },{
          "mc":"chest1",
          "type":CHEST,
          "data":[Items.nut,1,Items.pineapple,8,Items.cupcake,2]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Items.wood,9,Items.root,2]
        },{
          "mc":"chest3",
          "type":CHEST,
          "data":[Items.steel,8,Items.spring,3,Items.gear,2]
        }];
        initScene("redpine5",0);
      }
      if(mapNo == 113) {
        setArea(REDPINE_TOWN);
        initNPC(0,NPCs.canela);
        Maps.warpData[6] = true;
        if(!Flags.RAPTURE_REACHED.quantity) {
          maps.foe2.stop();
          maps.foe3.stop();
          maps.foe4.stop();
          maps.foe2.visible = false;
          maps.foe3.visible = false;
          maps.foe4.visible = false;
        }
        battleBGM = [undefined,undefined,BGM.TERTIARY_BATTLE,BGM.TERTIARY_BATTLE,BGM.TERTIARY_BATTLE];
        battleIcons = [HandZombie,HandSkeleton,BoulderObsidian,BoulderObsidian,BoulderObsidian];
        battleIconsAlt = [HandMagma,HydraZombie,BoulderObsidian,BoulderObsidian,BoulderObsidian];
        battles = [Battles.redpine11,Battles.redpine12,Battles.boulders1,Battles.boulders2,Battles.boulders3];
        battlesAlt = [BattlesAlt.redpine11,BattlesAlt.redpine12,BattlesAlt.boulders1,BattlesAlt.boulders2,BattlesAlt.boulders3];
        battleFlags = [undefined,undefined,Flags.KILL_MONSTERS_QUEST,Flags.KILL_MONSTERS_QUEST,Flags.KILL_MONSTERS_QUEST];
        battleBG = [43,43,43,43,43];
        respawn = [undefined,true];
        weather = [Weather.UNDEAD,Weather.UNDEAD,Weather.UNDEAD,Weather.UNDEAD,Weather.UNDEAD];
        altWeather = [Weather.ASH,Weather.ASH,Weather.LAVAFLOW,Weather.LAVAFLOW,Weather.LAVAFLOW];
        maps.push0.skin(24);
        hideChest(1);
        maps.success = function():* {
          dropChest(1);
        };
        maps.objectData = [{
          "mc":"sign0",
          "type":SIGN,
          "data":"grave1"
        },{
          "mc":"sign1",
          "type":SIGN,
          "data":"grave2"
        },{
          "mc":"sign2",
          "type":SIGN,
          "data":"grave3"
        },{
          "mc":"sign3",
          "type":SIGN,
          "data":"grave4"
        },{
          "mc":"sign4",
          "type":SIGN,
          "data":"grave5"
        },{
          "mc":"sign5",
          "type":SIGN,
          "data":"grave6"
        },{
          "mc":"sign6",
          "type":SIGN,
          "data":"grave7"
        },{
          "mc":"sign7",
          "type":SIGN,
          "data":"grave8"
        },{
          "mc":"sign8",
          "type":SIGN,
          "data":"grave9"
        },{
          "mc":"sign9",
          "type":SIGN,
          "data":"grave10"
        },{
          "mc":"chest0",
          "type":CHEST,
          "data":[Items.silver,2,Items.silver,2,Items.silver,2]
        },{
          "mc":"chest1",
          "type":CHEST,
          "data":[Items.topazkey,1]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Items.rune,1,Items.satin,2,Items.ruby,1]
        },{
          "mc":"chest3",
          "type":CHEST,
          "data":[Items.mushroom,1]
        },{
          "mc":"chest4",
          "type":CHEST,
          "data":[Items.amber,2]
        }];
        initScenes([0,1,2,3,4,5],"graveyard1",0);
      }
      if(mapNo == 110) {
        setArea(REDPINE_TOWN);
        BGM.play(BGM.REDPINE_THEME,false);
        initNPC(0,NPCs.falcon);
        battleBGM = [];
        battleIcons = [DollLance,HandZombie];
        battleIconsAlt = [BatBone,HandZombie];
        battles = [Battles.redpine13,Battles.redpine14];
        battlesAlt = [BattlesAlt.redpine13,BattlesAlt.redpine14];
        battleBG = [43,43];
        respawn = [true];
        weather = [Weather.UNDEAD,Weather.UNDEAD];
        altWeather = [Weather.ASH,Weather.ASH];
        if(Flags.TOMB_OPEN.quantity) {
          maps.special0.gotoAndStop("open");
        } else {
          maps.door0.stop();
          maps.door1.stop();
          maps.door2.stop();
          maps.door3.stop();
          maps.addTile(1,12,5,false);
          maps.addTile(1,13,5,false);
          maps.addTile(1,12,6,false);
          maps.addTile(1,13,6,false);
          maps.success = function():* {
            maps.special0.play();
            maps.door0.play();
            maps.door1.play();
            maps.door2.play();
            maps.door3.play();
            Flags.TOMB_OPEN.quantity = 1;
          };
        }
        maps.push0.skin(24);
        if(Items.greenjewel.quantity) {
          Medals.unlock(Medals.dimDepths);
        }
        maps.objectData = [{
          "mc":"sign0",
          "type":SIGN,
          "data":"grave11"
        },{
          "mc":"sign1",
          "type":SIGN,
          "data":"grave12"
        },{
          "mc":"sign2",
          "type":SIGN,
          "data":"grave13"
        },{
          "mc":"sign3",
          "type":SIGN,
          "data":"grave14"
        },{
          "mc":"sign4",
          "type":SIGN,
          "data":"grave15"
        },{
          "mc":"sign5",
          "type":SIGN,
          "data":"grave20"
        },{
          "mc":"chest0",
          "type":CHEST,
          "data":[Items.silver,2,Items.silver,2,Items.silver,2]
        },{
          "mc":"chest1",
          "type":CHEST,
          "data":[Items.spike,3,Items.rune2,2,Items.amber,8]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Items.root,16]
        }];
        doorLinks = [[187,9,10,1,"stone"],[187,9,10,1,"stone"],[187,10,10,1,"stone"],[187,10,10,1,"stone"]];
        initScene("graveyard2",0);
        initScene("basement10",1,null,Items.greenjewel,1);
      }
      if(mapNo == 112) {
        setArea(REDPINE_TOWN);
        if(!Flags.GLITCH_1_REACHED.quantity || !Flags.GLITCH_2_REACHED.quantity || !Flags.GLITCH_3_REACHED.quantity || !Flags.GLITCH_4_REACHED.quantity) {
          maps.special0.visible = false;
          maps.addTile(0,17,2,false);
          maps.door1.stop();
        }
        if(Flags.GLITCH_DEFEATED.quantity) {
          Flags.GLITCHINESS.quantity = 0;
          Flags.GLITCHINESS_2.quantity = 0;
          Flags.GLITCHINESS_3.quantity = 0;
        }
        initNPC(0,NPCs.maskerF);
        battleBGM = [];
        battleIcons = [DollMatt];
        battles = [Battles.redpine1];
        battlesAlt = [BattlesAlt.redpine1];
        battleBG = [42];
        respawn = [];
        altWeather = [Weather.ASH];
        maps.objectData = [{
          "mc":"sign0",
          "type":SIGN2,
          "data":"taller"
        },{
          "mc":"sign1",
          "type":SIGN2,
          "data":"taller"
        },{
          "mc":"sign2",
          "type":SIGN,
          "data":"catStatue2"
        },{
          "mc":"chest0",
          "type":CHEST,
          "data":[Items.wood,4,Items.opal,1,Items.wood,2]
        },{
          "mc":"chest1",
          "type":CHEST,
          "data":[Items.diamond,1,Items.leather,3]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Items.turnip,1,Items.turd,1]
        },{
          "mc":"chest3",
          "type":CHEST,
          "data":[Items.pumpkin,61]
        },{
          "mc":"chest4",
          "type":CHEST,
          "data":[Items.satin,1,Items.silk,5,Items.wool,8]
        }];
        doorLinks = [[168,8,9,1,"door"],[147,9,7,1,"glitch"]];
        initScene("redpine1",0);
      }
      if(mapNo == 116) {
        setArea(REDPINE_TOWN);
        initNPC(0,NPCs.roku);
        initNPC(1,NPCs.albrecht);
        initNPC(2,NPCs.rokuB);
        battleBGM = [];
        battleIcons = [SlimeChocolate,SlimeBigChocolate];
        battleIconsAlt = [CatSkeleton,BearBlack];
        battles = [Battles.redpine4,Battles.redpine5];
        battlesAlt = [BattlesAlt.redpine4,BattlesAlt.redpine5];
        battleBG = [42,42];
        respawn = [true,true];
        altWeather = [Weather.WINDY,Weather.WINDY];
        if(Flags.HOUSE_BOMBED.quantity == 1) {
          maps.special0.nextFrame();
        } else if(Flags.HOUSE_BOMBED.quantity == 2) {
          maps.special0.gotoAndStop(3);
        } else {
          maps.special1.visible = false;
        }
        maps.objectData = [{
          "mc":"sign0",
          "type":SIGN,
          "data":"grave16"
        },{
          "mc":"chest0",
          "type":CHEST,
          "data":[Items.turd,3,Items.rune,1,Items.turd,2]
        },{
          "mc":"chest1",
          "type":CHEST,
          "data":[Items.keycard,1,Items.gold,1]
        },{
          "mc":"chest3",
          "type":CHEST,
          "data":[Items.sapphire,1,Items.wood,6]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Items.chili,1,Items.dragonfruit,2,Items.cloudberries,1]
        }];
        initScene("redpine2",0);
      }
      if(mapNo == 111) {
        setArea(REDPINE_TOWN);
        battleBGM = [];
        Maps.foeJumps = ["jump","jump"];
        battleIcons = [BushDark,BushDark];
        battleIconsAlt = [BushDark,BushDark];
        battles = [Battles.redpine6,Battles.redpine7];
        battlesAlt = [BattlesAlt.redpine6,BattlesAlt.redpine7];
        battleBG = [42,42];
        respawn = [];
        maps.success = function():* {
          dropChest(5);
        };
        hideChest(5);
        maps.objectData = [{
          "mc":"chest0",
          "type":CHEST,
          "data":[Items.sapphire,1,Items.topaz,1]
        },{
          "mc":"chest1",
          "type":CHEST,
          "data":[Items.woodenkey,1,Items.wood,13]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Items.mint,1,Items.herb,3]
        },{
          "mc":"chest3",
          "type":CHEST,
          "data":[Items.turd,2,Items.herb,3]
        },{
          "mc":"chest4",
          "type":CHEST,
          "data":[Items.chili,1]
        },{
          "mc":"chest5",
          "type":CHEST,
          "data":[Items.ruby,1,Items.emerald,1]
        },{
          "mc":"chest6",
          "type":CHEST,
          "data":[Items.bomb,3,Items.powder,7]
        }];
        doorLinks = [[183,9,10,1,"stone"],[186,6,9,1,"door"],[183,9,4,1,"stone"]];
        initScene("redpine4",0);
      }
      if(mapNo == 109) {
        setArea(REDPINE_TOWN);
        battleBGM = [];
        Maps.foeJumps = ["jump","jump"];
        battleIcons = [BushRed,BushRed];
        battleIconsAlt = [BushRed,SlimeLava];
        battles = [Battles.redpine2,Battles.redpine3];
        battlesAlt = [BattlesAlt.redpine2,BattlesAlt.redpine3];
        battleBG = [42,42];
        respawn = [];
        initPed(0,65,Items.donut,true);
        maps.objectData = [{
          "mc":"sign0",
          "type":SIGN2,
          "data":"well"
        },{
          "mc":"sign1",
          "type":SIGN2,
          "data":"well"
        },{
          "mc":"chest0",
          "type":CHEST,
          "data":[Items.pizza,1,Items.espresso,1]
        },{
          "mc":"chest1",
          "type":CHEST,
          "data":[Items.lollipop,1,Items.cupcake,2,Items.crisps,3]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Items.steel,7,Items.iron,5]
        }];
        doorLinks = [[184,9,10,1,"door"],[185,9,10,1,"door"]];
        initScene("redpineHistory",0);
      }
      if(mapNo == 117) {
        setArea(REDPINE_TOWN);
        BGM.play(BGM.REDPINE_THEME,false);
        Main.unlockPremiumStuff();
        initNPC(0,NPCs.sunny);
        initNPC(1,NPCs.sunnyB);
        battleBGM = [];
        battleIcons = [BoulderDirt,FlybotBlue];
        battleIconsAlt = [MirrorWise,ChomperSeaweed];
        battles = [Battles.redpine10,Battles.rapture45];
        battlesAlt = [BattlesAlt.redpine10,BattlesAlt.rapture45];
        battleBG = [42,47];
        respawn = [true];
        altWeather = [Weather.WINDY,Weather.WINDY];
        hideChest(0);
        maps.success = function():* {
          dropChest(0);
        };
        maps.special0.skin = 4;
        if(!Flags.SNEK_DEFEATED.quantity && Items.bighammer.quantity && maps.player.Y != 10) {
          maps.special0.play();
        }
        maps.objectData = [{
          "mc":"chest0",
          "type":CHEST,
          "data":[Items.kevlar,2]
        },{
          "mc":"chest1",
          "type":CHEST,
          "data":[Items.tape,9,Items.plutonium,1,Items.spring,13]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Items.spike,4,Items.claw,9,Items.ice,11]
        },{
          "mc":"chest3",
          "type":CHEST,
          "data":[Items.turd,5,Items.titanium,1,Items.turd,3]
        },{
          "mc":"chest4",
          "type":CHEST,
          "data":[Items.root,7,Items.wood,3,Items.herb,5]
        },{
          "mc":"chest5",
          "type":CHEST,
          "data":[Items.butterflywing,6,Items.plastic,7]
        }];
        doorLinks = [[216,8,10,1,"cave"],[216,9,10,1,"cave"],[321,10,7,1,"growl"]];
      }
      if(mapNo == 168) {
        setArea(REDPINE_TOWN,false);
        Maps.minimapCoords = [3,8];
        initNPC(0,NPCs.anton);
        initNPC(1,NPCs.rick);
        initKey(0,Items.topazkey);
        initKey(1,Items.topazkey);
        initPed(0,40,Items.grail,true);
        initPed(1,108,Items.spring,false);
        initPed(2,109,Items.pipe,false);
        maps.objectData = [{
          "mc":"sign1",
          "type":SIGN2,
          "data":"guns"
        },{
          "mc":"sign2",
          "type":SIGN2,
          "data":"guns"
        },{
          "mc":"shop0",
          "type":SHOP,
          "data":[EQUIP_SHOP,Equips.EQUIP_SHOP_3]
        },{
          "mc":"sign0",
          "type":SIGN2,
          "data":"ultima"
        },{
          "mc":"chest0",
          "type":CHEST,
          "data":[Items.brick,1]
        },{
          "mc":"chest1",
          "type":CHEST,
          "data":[Items.spring,1]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Equips.supersnipe,1,Items.pill,1,Items.espresso,1]
        },{
          "mc":"chest3",
          "type":CHEST,
          "data":[Items.headband,1,Items.silk,4,Items.yoghurt,1]
        }];
        doorLinks = [[112,5,6,2,"door"]];
        initScene("redpineGuns",0);
      }
      if(mapNo == 183) {
        setArea(REDPINE_TOWN,false);
        Maps.minimapCoords = [5,7];
        initPed(0,114,Items.potato,false);
        initNPC(0,NPCs.emo);
        initNPC(1,NPCs.ghost);
        initNPC(2,NPCs.vivy);
        maps.objectData = [{
          "mc":"sign0",
          "type":SIGN2,
          "data":"crapTV"
        },{
          "mc":"shop0",
          "type":SHOP,
          "data":[ITEM_SHOP,Items.ITEM_SHOP_3]
        },{
          "mc":"chest0",
          "type":CHEST,
          "data":[Items.cookie,1,Items.pretzel,1]
        },{
          "mc":"chest1",
          "type":CHEST,
          "data":[Items.floppy,6,Items.floppy,4,Items.floppy,11]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Items.beer,3,Items.bread,1]
        }];
        doorLinks = [[111,4,8,2,"stone"],[111,4,3,2,"stone"]];
        initScene("redpineShop",0);
      }
      if(mapNo == 185) {
        setArea(REDPINE_TOWN,false);
        Maps.minimapCoords = [3,7];
        initPed(0,116,Items.pill,false);
        initNPC(0,NPCs.hobo);
        initNPC(1,NPCs.shione);
        initNPC(2,NPCs.jessica);
        initNPC(3,NPCs.thiefC);
        initNPC(4,NPCs.helmutD);
        initNPC(5,NPCs.george);
        maps.push0.skin(26);
        maps.push1.skin(26);
        hideChest(0);
        maps.success = function():* {
          dropChest(0);
          maps.special0.play();
        };
        maps.objectData = [{
          "mc":"shop0",
          "type":SHOP,
          "data":[RARE_FOOD_SHOP,Items.RARE_FOOD_SHOP]
        },{
          "mc":"sign0",
          "type":SIGN2,
          "data":"illuminati"
        },{
          "mc":"sign1",
          "type":SIGN2,
          "data":"koolaid"
        },{
          "mc":"sign2",
          "type":SIGN2,
          "data":"N642"
        },{
          "mc":"sign3",
          "type":SIGN,
          "data":"book3"
        },{
          "mc":"sign4",
          "type":SIGN,
          "data":"book4"
        },{
          "mc":"sign5",
          "type":SIGN,
          "data":"book5"
        },{
          "mc":"chest0",
          "type":CHEST,
          "data":[Items.sushi,1,Items.pizza,1,Items.orangejuice,1]
        },{
          "mc":"chest1",
          "type":CHEST,
          "data":[Items.milk,1]
        }];
        doorLinks = [[109,12,6,2,"door"]];
        initScene("redpineCult1",0);
      }
      if(mapNo == 184) {
        setArea(REDPINE_TOWN,false);
        Maps.minimapCoords = [3,7];
        initNPC(0,NPCs.hikariC);
        initNPC(1,NPCs.nemi);
        initNPC(2,NPCs.barman);
        initNPC(3,NPCs.bubba);
        initPed(0,115,Items.egg,false);
        initKey(0,Items.topazkey);
        maps.objectData = [{
          "mc":"shop0",
          "type":SHOP,
          "data":[FOOD_SHOP,Items.FOOD_SHOP]
        },{
          "mc":"chest0",
          "type":CHEST,
          "data":[Items.cookie,1,Items.beer,6,Items.coffee,4]
        },{
          "mc":"chest1",
          "type":CHEST,
          "data":[Items.beer,14]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Items.ice,7,Items.pipe,3]
        },{
          "mc":"chest3",
          "type":CHEST,
          "data":[Items.beef,1,Items.bacon,1]
        }];
        doorLinks = [[109,3,9,2,"door"]];
        initScene("redpinePub",0);
      }
      if(mapNo == 186) {
        setArea(REDPINE_TOWN,false);
        Maps.minimapCoords = [5,7];
        initNPC(0,NPCs.smokey);
        initKey(0,Items.topazkey);
        if(Maps.puzzleData[186]) {
          maps.special0.gotoAndStop("end");
          maps.special1.gotoAndStop("end");
          maps.special2.gotoAndStop("end");
          maps.special3.gotoAndStop("end");
          maps.special4.gotoAndStop("end");
        }
        hideChest(0);
        maps.success = function():* {
          Medals.unlock(Medals.secretFarm);
          dropChest(0);
          maps.special0.play();
          maps.special1.play();
          maps.special2.play();
          maps.special3.play();
          maps.special4.play();
        };
        maps.objectData = [{
          "mc":"chest0",
          "type":CHEST,
          "data":[Equips.peacebadge,1,Items.herb,4,Items.herb,20]
        },{
          "mc":"chest1",
          "type":CHEST,
          "data":[Items.valentine,1,Items.dragonfruit,2,Items.silk,3]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Items.milkbottle,1,Items.riceball,1,Items.chicken,1]
        }];
        doorLinks = [[111,10,5,2,"door"]];
      }
      if(mapNo == 187) {
        setArea(REDPINE_TOWN,false);
        BGM.play(BGM.WALKING_BONES);
        Maps.minimapCoords = [4,7];
        Flags.expStyle = Flags.SCALE_TO_LEVEL;
        battleBGM = [BGM.TERTIARY_BATTLE,BGM.TERTIARY_BATTLE,BGM.TERTIARY_BATTLE];
        if(Options.altFoes) {
          battleBGM = [BGM.TERTIARY_BATTLE,BGM.TERTIARY_BATTLE,BGM.YOULL_NEVER_GUESS];
        }
        battleFlags = [undefined,undefined,Flags.MIMIC];
        battleIcons = [FallenDrowned,FallenDrowned,"mimic"];
        battles = [Battles.tomb1,Battles.tomb2,Battles.tomb3];
        battlesAlt = [BattlesAlt.tomb1,BattlesAlt.tomb2,BattlesAlt.tomb3];
        battleBG = [57,57,57];
        if(Options.altFoes) {
          battleBG = [57,57,Backgrounds.EBF1_BEHOLDER];
        }
        respawn = [];
        weather = [Weather.CURSED,Weather.CURSED,Weather.CURSED];
        altWeather = [Weather.GLITCH,Weather.GLITCH,Weather.GLITCH];
        if(Options.altFoes) {
          weather[2] = null;
          altWeather[2] = null;
        }
        maps.push0.skin(27);
        maps.push1.skin(27);
        maps.push2.skin(28);
        maps.push3.skin(28);
        maps.darkLevel = 2;
        maps.success = function():* {
          setSpikes([true],[0,1,2,3,4,5,6,7,8,9,10,11]);
          maps.special0.play();
        };
        setSpikes([Maps.puzzleData[187]],[0,1,2,3,4,5,6,7,8,9,10,11]);
        maps.objectData = [{
          "mc":"sign0",
          "type":SIGN2,
          "data":"cross"
        },{
          "mc":"sign1",
          "type":SIGN2,
          "data":"cross"
        },{
          "mc":"chest1",
          "type":CHEST,
          "data":[Items.waterbottle,1,Items.poptart,1]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Equips.alchemyset,1,Items.glass,12,Items.cake,1]
        },{
          "mc":"chest3",
          "type":CHEST,
          "data":[Items.darkmatter,1,Items.powder,6]
        }];
        doorLinks = [[110,12,8,2,"stone"],[110,13,8,2,"stone"],[188,2,3,1,"ladder"]];
        initScene("basement7",0);
        initScenes([0,1],"basement8",1);
      }
      if(mapNo == 188) {
        setArea(REDPINE_TOWN,false);
        BGM.play(BGM.EVIL_AMBIENCE);
        Maps.minimapCoords = [-1,-1];
        initNPC(0,NPCs.cultist7);
        initNPC(1,NPCs.cultist8);
        Flags.expStyle = Flags.SCALE_TO_LEVEL;
        battleBGM = [];
        battleIcons = [WraithLeaf,DragonSky];
        battleIconsAlt = [HandSkeleton,HydraZombie];
        battles = [Battles.basement5,Battles.basement6];
        battlesAlt = [BattlesAlt.basement5,BattlesAlt.basement6];
        battleBG = [58,58];
        respawn = [];
        weather = [Weather.WINDY,Weather.WINDY];
        altWeather = [Weather.FOG,Weather.FOG];
        maps.objectData = [{
          "mc":"chest0",
          "type":CHEST,
          "data":[Items.emerald,1,Items.greenjewel,1,Items.emerald,1]
        },{
          "mc":"chest1",
          "type":CHEST,
          "data":[Items.mythril,1,Items.silver,2,Items.silk,5]
        }];
        doorLinks = [[187,8,4,1,"ladder"]];
        initScenes([0],"basement9",0);
      }
      if(mapNo == 123) {
        setArea(THE_RAPTURE);
        Flags.RAPTURE_REACHED.quantity = 1;
        initNPC(0,NPCs.wakizashi);
        initNPC(1,NPCs.peppi);
        if(Flags.PALISADE_BUILT.quantity) {
          maps.addTile(1,1,2,false);
          maps.addTile(1,1,3,false);
          maps.addTile(1,1,4,false);
          maps.addTile(1,2,2,false);
          maps.addTile(1,2,3,false);
          maps.addTile(1,2,8,false);
          maps.addTile(1,2,9,false);
          maps.addTile(1,2,10,false);
          maps.addTile(1,3,8,false);
          maps.addTile(1,3,9,false);
        } else {
          maps.special0.visible = false;
          maps.special1.visible = false;
        }
        battleBGM = [BGM.SECONDARY_BATTLE,BGM.SECONDARY_BATTLE,BGM.SECONDARY_BATTLE,BGM.MECHANICAL_CONDAMNATION];
        battleIcons = [DogFriend,CatNinja,ChomperMutant,MonolithCosmic];
        battleIconsAlt = [DogTanuki,CatSkeleton,ChomperMagma,MonolithCosmic];
        battles = [Battles.rapture3,Battles.rapture2,Battles.rapture4,Battles.rapture1];
        battlesAlt = [BattlesAlt.rapture3,BattlesAlt.rapture2,BattlesAlt.rapture4,BattlesAlt.rapture1];
        battleBG = [42,47,47,47];
        respawn = [undefined,true];
        weather = [undefined,undefined,undefined,Weather.ENERGY];
        altWeather = [undefined,undefined,undefined,Weather.FALLINGSTARS];
        Medals.unlock(Medals.alienLandscape);
        maps.objectData = [{
          "mc":"chest0",
          "type":CHEST,
          "data":[Items.spike,6,Items.silver,2,Items.rune,1]
        },{
          "mc":"chest1",
          "type":CHEST,
          "data":[Items.cake,1,Items.dragonfruit,9]
        },{
          "mc":"chest3",
          "type":CHEST,
          "data":[Items.ruby,1]
        }];
        initScene("rapture1",0,MapText.rapture1Scenes);
      }
      if(mapNo == 124) {
        setArea(THE_RAPTURE);
        battleBGM = [BGM.SECONDARY_BATTLE,BGM.SECONDARY_BATTLE,BGM.SECONDARY_BATTLE];
        battleIcons = [BitFire,BoulderObsidian,FlybotRed];
        battleIconsAlt = [BitThunder,Defender3,FlybotRed];
        battles = [Battles.rapture6,Battles.rapture7,Battles.rapture5];
        battlesAlt = [BattlesAlt.rapture6,BattlesAlt.rapture7,BattlesAlt.rapture5];
        battleBG = [47,47,47];
        respawn = [undefined,undefined,true];
        weather = [Weather.LOW_GRAVITY,Weather.LOW_GRAVITY,Weather.LOW_GRAVITY];
        altWeather = [Weather.FALLINGSTARS,Weather.FALLINGSTARS,Weather.FALLINGSTARS];
        maps.objectData = [{
          "mc":"chest0",
          "type":CHEST,
          "data":[Equips.hyperdrill,1,Items.steel,20]
        },{
          "mc":"chest1",
          "type":CHEST,
          "data":[Items.halloweencandy,1,Items.cupcake,2]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Items.bread,1,Items.gamechild,1,Items.pizza,1]
        },{
          "mc":"chest3",
          "type":CHEST,
          "data":[Items.coffee,12,Items.espresso,1]
        },{
          "mc":"chest4",
          "type":CHEST,
          "data":[Items.titanium,1,Items.iron,12]
        },{
          "mc":"chest5",
          "type":CHEST,
          "data":[Items.rune,2]
        }];
        initScene("teamReflects2",0,null);
      }
      if(mapNo == 128) {
        battleBGM = [undefined,BGM.SECONDARY_BATTLE,BGM.MECHANICAL_CONDAMNATION,BGM.SECONDARY_BATTLE];
        battleIcons = [undefined,SquidPurple,MonolithViking,BoulderCoral];
        battleIconsAlt = [undefined,SquidPink,MonolithCosmic,GolemBone];
        battles = [undefined,Battles.rapture44,Battles.rapture42,Battles.rapture41];
        battlesAlt = [undefined,BattlesAlt.rapture44,BattlesAlt.rapture42,BattlesAlt.rapture41];
        battleBG = [undefined,51,51,51];
        respawn = [undefined,true];
        weather = [undefined,Weather.LOW_GRAVITY,Weather.LOW_GRAVITY,Weather.GEYSERS];
        altWeather = [undefined,Weather.FOG,Weather.FOG,Weather.FOG];
        initNPC(0,NPCs.lulu);
        setArea(THE_RAPTURE);
        initSwitch(0,99);
        hideChest(3);
        maps.switchEvent = function():* {
          if(Maps.switchData[99]) {
            dropChest(3);
          }
        };
        maps.objectData = [{
          "mc":"chest2",
          "type":CHEST,
          "data":[Items.bacon,1,Items.scales,1]
        },{
          "mc":"chest3",
          "type":CHEST,
          "data":[Items.goldkey,1,Items.opal,1]
        },{
          "mc":"chest4",
          "type":CHEST,
          "data":[Items.coralkey,1,Items.moonpearl,1]
        },{
          "mc":"chest5",
          "type":CHEST,
          "data":[Items.lego,1]
        },{
          "mc":"chest6",
          "type":CHEST,
          "data":[Items.lego,1]
        }];
      }
      if(mapNo == 129) {
        setArea(THE_RAPTURE);
        initNPC(0,NPCs.randalfB);
        initNPC(1,NPCs.tandalfB);
        battleBGM = [undefined,BGM.SECONDARY_BATTLE,BGM.SECONDARY_BATTLE,undefined,BGM.SECONDARY_BATTLE];
        battleIcons = [undefined,SquidPurple,CreepRed,undefined,SquidLime];
        battleIconsAlt = [undefined,SquidLime,CreepIcicle,undefined,SquidPink];
        battles = [undefined,Battles.rapture29,Battles.rapture30,undefined,Battles.rapture28];
        battlesAlt = [undefined,BattlesAlt.rapture29,BattlesAlt.rapture30,undefined,BattlesAlt.rapture28];
        battleBG = [undefined,51,51,undefined,51];
        respawn = [undefined,undefined,undefined,undefined,true];
        weather = [undefined,Weather.GEYSERS,Weather.GEYSERS,Weather.GEYSERS];
        altWeather = [undefined,Weather.ACID,Weather.ACID,Weather.ACID];
        maps.objectData = [{
          "mc":"chest0",
          "type":CHEST,
          "data":[Items.beer,24,Items.coffee,32,Items.cloudberries,15]
        },{
          "mc":"chest1",
          "type":CHEST,
          "data":[Items.donut,1,Items.butterflywing,12,Items.claw,4]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Items.plutonium,1,Items.floppy,7]
        },{
          "mc":"chest3",
          "type":CHEST,
          "data":[Items.grapes,1,Items.moonpearl,1,Items.water,3]
        },{
          "mc":"chest4",
          "type":CHEST,
          "data":[Items.keycard,1,Items.moonpearl,1,Items.satin,3]
        },{
          "mc":"chest5",
          "type":CHEST,
          "data":[Items.satin,2,Items.silk,4]
        },{
          "mc":"chest6",
          "type":CHEST,
          "data":[Items.seashell,35,Items.butterflywing,5]
        }];
      }
      if(mapNo == 130) {
        setArea(THE_RAPTURE);
        initNPC(0,NPCs.hawk);
        battleBGM = [BGM.SECONDARY_BATTLE,BGM.SECONDARY_BATTLE,BGM.NYMPHIS_FAE];
        battleFlags = [undefined,undefined,Flags.MIMIC];
        if(Options.altFoes) {
          battleBGM = [BGM.SECONDARY_BATTLE,BGM.SECONDARY_BATTLE,BGM.HEROES_MARCH];
        }
        battleIcons = [CreepBlue,SquidLime,"mimic"];
        battleIconsAlt = [CreepIcicle,SquidPurple,"mimic"];
        battles = [Battles.rapture14,Battles.rapture13,Battles.rapture15];
        battlesAlt = [BattlesAlt.rapture14,BattlesAlt.rapture13,BattlesAlt.rapture15];
        battleBG = [51,51,51];
        if(Options.altFoes) {
          battleBG = [51,51,Backgrounds.EBF2_GOLEM];
        }
        respawn = [true];
        weather = [Weather.AIRSTRIKES,Weather.AIRSTRIKES,Weather.AIRSTRIKES];
        altWeather = [Weather.ENERGY,Weather.ENERGY,Weather.ENERGY];
        if(Options.altFoes) {
          weather[2] = null;
          altWeather[2] = null;
        }
        initSwitch(0,100);
        initSwitch(1,101);
        initSwitch(2,102);
        initSwitch(3,103);
        initSwitch(4,104);
        maps.switchEvent = function():* {
          setSpikes([Maps.switchData[104]],[0,1]);
          setSpikes([Maps.switchData[100]],[8,9]);
          setSpikes([xor(Maps.switchData[102],Maps.switchData[101]) && Maps.switchData[103]],[2,3]);
          setSpikes([xor(Maps.switchData[102],Maps.switchData[101]) && (!Maps.switchData[104] || !Maps.switchData[101])],[16,17]);
          setSpikes([xor(Maps.switchData[103],Maps.switchData[101])],[12,13]);
          setSpikes([xor(Maps.switchData[101],Maps.switchData[102]) && !Maps.switchData[100]],[4,5]);
          setSpikes([Maps.switchData[101]],[14,15]);
          setSpikes([Maps.switchData[103] && !Maps.switchData[104]],[10,11]);
          setSpikes([Maps.switchData[103] && Maps.switchData[104]],[6,7]);
        };
        maps.objectData = [{
          "mc":"sign0",
          "type":SIGN2,
          "data":"spears"
        },{
          "mc":"chest0",
          "type":CHEST,
          "data":[Cards.card35,1,Items.ice,11,Items.water,8]
        },{
          "mc":"chest1",
          "type":CHEST,
          "data":[Items.banana,15,Items.garlic,20,Items.apple,10]
        },{
          "mc":"chest3",
          "type":CHEST,
          "data":[Items.poptart,1,Items.coffee,10,Items.cola,10]
        },{
          "mc":"chest4",
          "type":CHEST,
          "data":[Items.turnip,1,Items.sushi,1,Items.orangejuice,1]
        },{
          "mc":"chest5",
          "type":CHEST,
          "data":[Items.plastic,3,Items.virus,4]
        }];
      }
      if(mapNo == 118) {
        setArea(THE_RAPTURE);
        battleBGM = [BGM.SECONDARY_BATTLE,BGM.SECONDARY_BATTLE,undefined,BGM.SECONDARY_BATTLE];
        Maps.foeJumps = ["fly"];
        battleIcons = [BatBone,WraithSteel,undefined,DragonOmega];
        battleIconsAlt = [BoulderObsidian,Defender3,undefined,DragonOmega];
        battles = [Battles.rapture47,Battles.rapture46,undefined,Battles.rapture49];
        battlesAlt = [BattlesAlt.rapture47,BattlesAlt.rapture46,undefined,BattlesAlt.rapture49];
        battleBG = [47,47,undefined,47];
        respawn = [undefined,true];
        altWeather = [Weather.FALLINGSTARS,Weather.FALLINGSTARS,undefined,Weather.FALLINGSTARS];
        maps.push0.skin(1);
        maps.push1.skin(17);
        maps.push2.skin(16);
        maps.push3.skin(17);
        maps.push4.skin(13);
        maps.push5.skin(1);
        maps.push6.skin(11);
        maps.push7.skin(1);
        maps.push7.skin(1);
        maps.objectData = [{
          "mc":"chest0",
          "type":CHEST,
          "data":[Items.gamechild,1,Items.cpu,2,Items.plastic,6]
        },{
          "mc":"chest1",
          "type":CHEST,
          "data":[Items.butterflywing,13,Items.cpu,1,Items.bomb,12]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Items.lollipop,1,Items.egg,1,Items.milk,1]
        },{
          "mc":"chest3",
          "type":CHEST,
          "data":[Items.cupcake,1,Items.coffee,99,Items.cookie,1]
        },{
          "mc":"chest4",
          "type":CHEST,
          "data":[Items.spike,2,Items.bomb,3]
        },{
          "mc":"chest5",
          "type":CHEST,
          "data":[Items.powder,1,Items.bighammer,1,Items.powder,1]
        }];
        initScenes([0,1,2,3],"rapturePuzzle",0);
      }
      if(mapNo == 119) {
        setArea(THE_RAPTURE);
        battleBGM = [BGM.SECONDARY_BATTLE,BGM.SECONDARY_BATTLE];
        Maps.foeJumps = ["fly"];
        battleIcons = [BatBlood,FallenBeheaded];
        battleIconsAlt = [FlybotRed,FallenDrowned];
        battles = [Battles.rapture54,Battles.rapture55];
        battlesAlt = [BattlesAlt.rapture54,BattlesAlt.rapture55];
        battleBG = [52,52];
        respawn = [];
        weather = [Weather.HIGH_GRAVITY,Weather.HIGH_GRAVITY];
        altWeather = [Weather.FOG,Weather.FOG];
        initPed(0,58,Items.windorb,false);
        initSwitch(0,95);
        maps.switchEvent = function():* {
          setSpikes([Maps.switchData[95]],[0,1]);
          i = 0;
          while(i < 4) {
            if(Maps.switchData[58]) {
              maps["special" + i].gotoAndStop(1);
            } else {
              maps["special" + i].gotoAndStop(2);
            }
            ++i;
          }
          maps.addTile(0,6,6,false);
        };
        maps.objectData = [{
          "mc":"chest0",
          "type":CHEST,
          "data":[Items.riceball,1,Items.spike,4]
        },{
          "mc":"chest1",
          "type":CHEST,
          "data":[Items.kevlar,1,Items.potato,1,Items.topaz,1]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Equips.darkgown,1,Items.darkmatter,1]
        },{
          "mc":"chest3",
          "type":CHEST,
          "data":[Items.coffee,5,Items.bomb,20]
        },{
          "mc":"chest4",
          "type":CHEST,
          "data":[Items.chicken,1,Items.pizza,1]
        }];
        initScenes([0],"teleporters",0);
      }
      if(mapNo == 120) {
        setArea(THE_RAPTURE);
        BGM.play(BGM.RAPTURE_THEME);
        initNPC(0,NPCs.dampe);
        battleBGM = [BGM.SECONDARY_BATTLE,BGM.SECONDARY_BATTLE,BGM.SECONDARY_BATTLE,BGM.SECONDARY_BATTLE];
        battleIcons = [WraithMaster,DollMatt,HandZombie,DollNoLegs];
        battleIconsAlt = [MirrorHaunted,SlimeBigChocolate,HandZombie,WraithSteel];
        battles = [Battles.rapture20,Battles.rapture23,Battles.rapture21,Battles.rapture22];
        battlesAlt = [BattlesAlt.rapture20,BattlesAlt.rapture23,BattlesAlt.rapture21,BattlesAlt.rapture22];
        battleBG = [48,48,48,48];
        respawn = [true,undefined,true];
        weather = [undefined,undefined,Weather.UNDEAD,Weather.UNDEAD];
        altWeather = [undefined,undefined,Weather.WINDY,Weather.WINDY];
        setDoors([Maps.switchData[90]],[0],true);
        maps.darkLevel = 2;
        maps.success = function():* {
          setDoors([true],[0]);
          Maps.switchData[90] = true;
        };
        maps.objectData = [{
          "mc":"sign0",
          "type":SIGN,
          "data":"grave17"
        },{
          "mc":"sign1",
          "type":SIGN,
          "data":"grave18"
        },{
          "mc":"sign2",
          "type":SIGN,
          "data":"grave19"
        },{
          "mc":"chest0",
          "type":CHEST,
          "data":[Items.nut,1,Items.scales,1,Items.magma,2]
        },{
          "mc":"chest1",
          "type":CHEST,
          "data":[Items.keycard,1,Items.kevlar,1]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Items.yoghurt,1,Items.claw,11,Items.opal,1]
        },{
          "mc":"chest4",
          "type":CHEST,
          "data":[Items.claw,9,Items.spike,3]
        },{
          "mc":"chest5",
          "type":CHEST,
          "data":[Items.rune,1,Items.turd,2]
        }];
        doorLinks = [[189,11,10,1,"stone"]];
      }
      if(mapNo == 189) {
        battleBGM = [BGM.BLADE_AND_SWITCH,BGM.BLADE_AND_SWITCH];
        battleIcons = [HydraZombie,HydraZombie,HandSkeleton,ChomperMutant,BatBlood];
        battleIconsAlt = [HydraIce,HydraZombie,WormPutrid,BearGrolar,CreepIcicle];
        battles = [Battles.rapture59,Battles.rapture59,Battles.rapture56,Battles.rapture57,Battles.rapture58];
        battlesAlt = [BattlesAlt.rapture59,BattlesAlt.rapture59,BattlesAlt.rapture56,BattlesAlt.rapture57,BattlesAlt.rapture58];
        battleBG = [49,49,49,49,49];
        respawn = [];
        altWeather = [Weather.STALACTITES,Weather.STALACTITES,Weather.UNDEAD,Weather.UNDEAD,Weather.STALACTITES];
        setArea(THE_RAPTURE,false);
        initPed(0,60,Items.earthorb,false);
        initSwitch(0,98);
        hideChest(5);
        BGM.play(BGM.WALKING_BONES);
        Maps.minimapCoords = [8,7];
        maps.darkLevel = 1;
        maps.switchEvent = function():* {
          setSpikes([Maps.switchData[98]],[0,1]);
          if(!Maps.switchData[60]) {
            setSpikes([true],[2,3,4]);
          }
          if(!Maps.switchData[60] && maps.player.X < 5) {
            --maps.lightness;
            maps.darkness.alpha = 1;
            Maps.torchData[mapNo] = [];
            Maps.puzzleData[mapNo] = null;
            maps.torch0.gotoAndStop(2);
            setSpikes([false],[2,3,4]);
            maps.torch0.state = 0;
          }
        };
        maps.success = function():* {
          setSpikes([true],[2,3,4]);
          if(!Maps.switchData[60]) {
            dropChest(5);
          }
        };
        i = 0;
        while(i < 7) {
          if(Boolean(Maps.switchData[60]) && !Flags.MAW_DEFEATED.quantity) {
            maps["special" + i].stop();
            maps["special" + i].visible = false;
          } else {
            maps["special" + i].play();
            maps["special" + i].visible = true;
          }
          i++;
        }
        maps.objectData = [{
          "mc":"chest0",
          "type":CHEST,
          "data":[Items.mythril,1,Items.steel,11,Items.spike,3]
        },{
          "mc":"chest1",
          "type":CHEST,
          "data":[Items.beef,1,Items.spike,4,Items.leather,12]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Items.bacon,1,Items.pizza,1,Items.espresso,1]
        },{
          "mc":"chest3",
          "type":CHEST,
          "data":[Items.spike,4]
        },{
          "mc":"chest4",
          "type":CHEST,
          "data":[Items.ruby,1,Items.amber,2]
        },{
          "mc":"chest5",
          "type":CHEST,
          "data":[Items.topazkey,1]
        }];
        doorLinks = [[120,5,7,1,"stone"],[326,16,8,1,"ladder"]];
        initScene("bloodCave1",0,MapText.bloodCave1Scenes);
      }
      if(mapNo == 125) {
        setArea(THE_RAPTURE);
        BGM.play(BGM.RAPTURE_THEME);
        initNPC(0,NPCs.zephyr);
        initNPC(1,NPCs.wohehivC);
        initNPC(2,NPCs.samB);
        initNPC(3,NPCs.shioneB);
        initNPC(4,NPCs.rebelB);
        initNPC(5,NPCs.mollyB);
        initNPC(6,NPCs.mungusC);
        initNPC(7,NPCs.anikiB);
        Maps.warpData[9] = true;
        battleBGM = [BGM.SECONDARY_BATTLE,BGM.SECONDARY_BATTLE,BGM.MECHANICAL_CONDAMNATION];
        battleIcons = [BushDark,MirrorHaunted,MonolithCosmic];
        battleIconsAlt = [MammothWar,MirrorDemon,MonolithCosmic];
        battles = [Battles.rapture9,Battles.rapture10,Battles.rapture11];
        battlesAlt = [BattlesAlt.rapture9,BattlesAlt.rapture10,BattlesAlt.rapture11];
        battleBG = [47,47,47];
        respawn = [true,true,true];
        weather = [Weather.LOW_GRAVITY,Weather.LOW_GRAVITY,Weather.LOW_GRAVITY];
        altWeather = [Weather.FALLINGSTARS,Weather.FALLINGSTARS,Weather.FALLINGSTARS];
        b = false;
        maps.switchEvent = function():* {
          if(!b) {
            setDoors([Maps.switchData[91],Maps.switchData[92],Maps.switchData[93],Maps.switchData[94]],[0]);
          }
          try {
            i = 0;
            while(i < 4) {
              if(Maps.switchData[91 + i]) {
                maps["special" + i * 2].gotoAndPlay(1);
                maps["special" + (i * 2 + 1)].gotoAndPlay(1);
              } else {
                maps["special" + i * 2].gotoAndStop(30);
                maps["special" + (i * 2 + 1)].gotoAndStop(30);
              }
              ++i;
            }
          }
          catch(e:Error) {
          }
        };
        initPed(0,91,Items.windorb,true);
        initPed(1,92,Items.earthorb,true);
        initPed(2,93,Items.fireorb,true);
        initPed(3,94,Items.waterorb,true);
        b = true;
        maps.switchEvent();
        b = false;
        maps.objectData = [{
          "mc":"chest0",
          "type":CHEST,
          "data":[Items.satin,4,Items.cake,1,Items.silk,15]
        },{
          "mc":"chest1",
          "type":CHEST,
          "data":[Items.rune,3,Items.pill,1]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Items.sushi,1,Items.scales,1,Items.dragonfruit,4]
        },{
          "mc":"chest3",
          "type":CHEST,
          "data":[Items.mint,1,Items.diamond,1]
        },{
          "mc":"chest4",
          "type":CHEST,
          "data":[Items.ruby,1,Items.sapphire,1]
        },{
          "mc":"chest5",
          "type":CHEST,
          "data":[Items.powder,7]
        }];
        doorLinks = [[140,10,6,1,"none"]];
        count = 0;
        i = 57;
        while(i <= 60) {
          if(!Maps.switchData[i]) {
            count++;
          }
          i++;
        }
        if(count == 2) {
          initScene("rapture3",1);
        }
        if(count == 3) {
          initScene("rapture4",2);
        }
        if(count == 4) {
          initScene("rapture5",3);
        }
        initScene("rapture2",0,MapText.rapture2Scenes);
      }
      if(mapNo == 126) {
        setArea(LAVA_LAKE);
        if(Maps.switchData[209]) {
          BGM.play(BGM.BINARY_EMISIONS);
        }
        if(Flags.CAMP_BUILT.quantity) {
          maps.addTile(1,14,3,false);
          maps.addTile(1,15,3,false);
          maps.addTile(1,16,3,false);
          maps.addTile(1,17,4,false);
          maps.addTile(1,13,7,false);
          maps.addTile(1,14,7,false);
          maps.addTile(1,15,8,false);
          maps.addTile(1,16,8,false);
        } else {
          maps.special0.visible = false;
          maps.addTile(0,16,4,false);
          maps.chest7.visible = false;
          maps.special1.visible = false;
          maps.addTile(0,14,8,false);
          maps.chest8.visible = false;
        }
        battleBGM = [BGM.SECONDARY_BATTLE,BGM.SECONDARY_BATTLE,BGM.SECONDARY_BATTLE,BGM.NYMPHIS_FAE];
        if(Options.altFoes) {
          battleBGM = [BGM.SECONDARY_BATTLE,BGM.SECONDARY_BATTLE,BGM.SECONDARY_BATTLE,BGM.HEROES_MARCH];
        }
        battleFlags = [undefined,undefined,undefined,Flags.MIMIC];
        battleIcons = [BitFire,ChomperMagma,SlimeLava,"mimic"];
        battleIconsAlt = [BitFire,ChomperMagma,SlimeLava,"mimic"];
        battles = [Battles.rapture16,Battles.rapture18,Battles.rapture17,Battles.rapture19];
        battlesAlt = [BattlesAlt.rapture16,BattlesAlt.rapture18,BattlesAlt.rapture17,BattlesAlt.rapture19];
        battleBG = [50,50,50,50];
        if(Options.altFoes) {
          battleBG = [50,50,50,Backgrounds.EBF2_SANDWORM];
        }
        respawn = [true,undefined,true];
        weather = [Weather.EARTHQUAKE,Weather.EARTHQUAKE,Weather.LAVAFLOW,Weather.LAVAFLOW];
        altWeather = [Weather.SANDSTORM,Weather.SANDSTORM,Weather.SANDSTORM,Weather.ENERGY];
        if(Options.altFoes) {
          weather[3] = null;
          altWeather[3] = null;
        }
        initPed(0,146,Items.lavabottle,false);
        initNPC(0,NPCs.sam);
        initNPC(1,NPCs.sparky);
        initNPC(2,NPCs.sparkyB);
        hideChest(1);
        maps.success = function():* {
          dropChest(1);
        };
        initSwitch(0,209);
        maps.switchEvent = function():* {
          if(Maps.switchData[209]) {
            BGM.play(BGM.BINARY_EMISIONS,true,true);
            maps.special2.gotoAndPlay(1);
          } else {
            BGM.play(BGM.RAPTURE_THEME,false,true);
            maps.special2.gotoAndStop(1);
          }
        };
        maps.objectData = [{
          "mc":"sign0",
          "type":SIGN2,
          "data":"spears"
        },{
          "mc":"chest0",
          "type":CHEST,
          "data":[Items.gold,2,Items.silver,4]
        },{
          "mc":"chest1",
          "type":CHEST,
          "data":[Items.keycard,1]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Items.espresso,1,Items.orangejuice,1]
        },{
          "mc":"chest3",
          "type":CHEST,
          "data":[Items.magma,8,Items.scales,1,Items.riceball,1]
        },{
          "mc":"chest4",
          "type":CHEST,
          "data":[Items.mushroom,1,Items.potato,1]
        },{
          "mc":"chest5",
          "type":CHEST,
          "data":[Items.magma,8,Items.powder,2]
        },{
          "mc":"chest6",
          "type":CHEST,
          "data":[Items.mushroom,1,Items.turd,4]
        },{
          "mc":"chest7",
          "type":CHEST,
          "data":[Items.darkmatter,1,Items.gold,1,Items.topaz,1]
        },{
          "mc":"chest8",
          "type":CHEST,
          "data":[Items.mythril,1,Items.silver,2,Items.rune,1]
        }];
        initScene("teamReflects",0);
      }
      if(mapNo == 127) {
        setArea(LAVA_LAKE);
        if(Maps.switchData[209]) {
          BGM.play(BGM.BINARY_EMISIONS);
        }
        initNPC(0,NPCs.kira);
        initNPC(1,NPCs.teru);
        battleBGM = [BGM.SECONDARY_BATTLE,BGM.SECONDARY_BATTLE,BGM.SECONDARY_BATTLE,BGM.SECONDARY_BATTLE];
        battleIcons = [BoulderObsidian,SlimeLava,SlimeBigLava,HandMagma];
        battleIconsAlt = [BoulderDirt,SlimeBigLava,DollLance,WraithMaster];
        battles = [Battles.rapture61,Battles.rapture62,Battles.rapture60,Battles.rapture63];
        battlesAlt = [BattlesAlt.rapture61,BattlesAlt.rapture62,BattlesAlt.rapture60,BattlesAlt.rapture63];
        battleBG = [13,13,13,50];
        respawn = [undefined,undefined,undefined,true];
        weather = [Weather.ERUPTION,Weather.ERUPTION,Weather.ERUPTION,Weather.LAVAFLOW];
        altWeather = [Weather.ELECTRIC,Weather.ELECTRIC,Weather.ELECTRIC,Weather.ELECTRIC];
        initPed(0,147,Items.lavabottle,false);
        hideChest(0);
        maps.success = function():* {
          dropChest(0);
        };
        maps.objectData = [{
          "mc":"chest0",
          "type":CHEST,
          "data":[Items.bomb,22]
        },{
          "mc":"chest1",
          "type":CHEST,
          "data":[Items.magma,13,Items.powder,17,Items.magma,2]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Items.magma,8,Items.scales,1,Items.cloudberries,3]
        },{
          "mc":"chest3",
          "type":CHEST,
          "data":[Items.milk,1,Items.coffee,7]
        },{
          "mc":"chest4",
          "type":CHEST,
          "data":[Items.plutonium,1,Items.spring,4]
        },{
          "mc":"chest5",
          "type":CHEST,
          "data":[Equips.balancebadge,1,Items.rune,1,Items.rune2,2]
        }];
        initScene("lavaLake",0);
      }
      if(mapNo == 131) {
        setArea(LAVA_LAKE);
        BGM.play(BGM.RAPTURE_THEME);
        battleBGM = [BGM.SECONDARY_BATTLE,BGM.SECONDARY_BATTLE,BGM.SECONDARY_BATTLE];
        battleIcons = [HandMagma,MirrorDemon,FallenBurned];
        battleIconsAlt = [HandMagma,MirrorAngel,FishGold];
        battles = [Battles.rapture34,Battles.rapture35,Battles.rapture36];
        battlesAlt = [BattlesAlt.rapture34,BattlesAlt.rapture35,BattlesAlt.rapture36];
        battleBG = [50,13,13];
        respawn = [];
        weather = [Weather.LAVAFLOW,Weather.ERUPTION,Weather.ERUPTION];
        altWeather = [Weather.SANDSTORM,Weather.SANDSTORM,Weather.SANDSTORM];
        initPed(0,148,Items.lavabottle,false);
        hideChest(0);
        maps.success = function():* {
          dropChest(0);
        };
        maps.objectData = [{
          "mc":"chest0",
          "type":CHEST,
          "data":[Items.magma,3,Equips.firebadge,1,Items.magma,3]
        },{
          "mc":"chest1",
          "type":CHEST,
          "data":[Items.bread,1,Items.egg,1,Items.coffee,2]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Items.gold,1,Items.silver,2,Items.gold,1]
        },{
          "mc":"chest3",
          "type":CHEST,
          "data":[Items.gold,1,Items.silver,2,Items.gold,1]
        },{
          "mc":"chest4",
          "type":CHEST,
          "data":[Items.magma,16,Items.iron,18]
        }];
      }
      if(mapNo == 132) {
        setArea(LAVA_LAKE);
        BGM.play(BGM.RAPTURE_THEME);
        battleBGM = [BGM.BLADE_AND_SWITCH,undefined,BGM.SECONDARY_BATTLE,BGM.SECONDARY_BATTLE];
        battleIcons = [HydraMagma,undefined,FallenBurned,FallenBeheaded];
        battleIconsAlt = [HydraMagma,undefined,MirrorAngel,FallenCrucified];
        battles = [Battles.rapture37,undefined,Battles.rapture39,Battles.rapture39];
        battlesAlt = [BattlesAlt.rapture37,undefined,BattlesAlt.rapture39,BattlesAlt.rapture39];
        battleBG = [13,undefined,13,13];
        respawn = [undefined,undefined,true,true];
        weather = [Weather.ASH,undefined,Weather.ASH,Weather.ASH];
        altWeather = [Weather.ELECTRIC,Weather.ELECTRIC,Weather.SANDSTORM,Weather.SANDSTORM];
        initPed(0,149,Items.lavabottle,false);
        initSwitch(0,96);
        initSwitch(1,97);
        maps.switchEvent = function():* {
          setSpikes([!Maps.switchData[96]],[1]);
          setSpikes([!Maps.switchData[97]],[4]);
          setSpikes([Maps.switchData[96]],[3]);
          setSpikes([Maps.switchData[97]],[2]);
          setSpikes([Maps.switchData[96] && Maps.switchData[97]],[0,5,6]);
        };
        maps.objectData = [{
          "mc":"chest1",
          "type":CHEST,
          "data":[Items.poptart,1,Items.pizza,1,Items.chili,1]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Items.iron,3,Items.diamond,1,Items.iron,3]
        },{
          "mc":"chest3",
          "type":CHEST,
          "data":[Items.magma,2,Items.starfragment,1,Items.magma,2]
        },{
          "mc":"chest4",
          "type":CHEST,
          "data":[Items.donut,1,Items.yoghurt,1,Items.espresso,1]
        },{
          "mc":"chest5",
          "type":CHEST,
          "data":[Items.rune,1]
        },{
          "mc":"chest6",
          "type":CHEST,
          "data":[Items.rune,1]
        }];
      }
      if(mapNo == 122) {
        setArea(LAVA_LAKE);
        BGM.play(BGM.RAPTURE_THEME);
        battleBGM = [BGM.BLADE_AND_SWITCH,BGM.SECONDARY_BATTLE,BGM.SECONDARY_BATTLE];
        battleIcons = [HydraMagma,FallenBeheaded,ChomperMagma];
        battleIconsAlt = [HydraMagma,FlybotRed,Defender3];
        battleFlags = [Flags.BLAZE_HYDRA];
        battles = [Battles.rapture66,Battles.rapture65,Battles.rapture64];
        battlesAlt = [BattlesAlt.rapture66,BattlesAlt.rapture65,BattlesAlt.rapture64];
        battleBG = [50,50,50];
        respawn = [true,true];
        weather = [Weather.ERUPTION,Weather.EARTHQUAKE,Weather.LAVAFLOW];
        altWeather = [Weather.SANDSTORM,Weather.ELECTRIC,Weather.SANDSTORM];
        initPed(0,59,Items.fireorb,false);
        initPed(1,145,Items.lavabottle,false);
        maps.push0.skin(25);
        maps.push1.skin(25);
        maps.switchEvent = function():* {
          i = 0;
          while(i < 4) {
            if(Maps.switchData[59]) {
              maps["special" + i].gotoAndStop(1);
            } else {
              maps["special" + i].gotoAndStop(2);
            }
            ++i;
          }
        };
        setDoors([Flags.SUPER_BOSSES_DEFEATED.quantity],[0],true);
        hideChest(1);
        maps.darkLevel = 2;
        maps.success = function():* {
          dropChest(1);
        };
        initNPC(0,NPCs.templerC);
        maps.objectData = [{
          "mc":"chest0",
          "type":CHEST,
          "data":[Items.cake,1,Items.lollipop,1,Items.chips,1]
        },{
          "mc":"chest1",
          "type":CHEST,
          "data":[Items.turnip,1,Items.mint,1]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Items.egg,1,Items.burger,2,Items.pizza,1]
        },{
          "mc":"chest3",
          "type":CHEST,
          "data":[Items.topazkey,1,Items.diamond,1]
        },{
          "mc":"chest4",
          "type":CHEST,
          "data":[Items.powder,3,Items.thermalboots,1,Items.powder,3]
        },{
          "mc":"chest5",
          "type":CHEST,
          "data":[Items.amber,6,Items.spike,2]
        },{
          "mc":"chest6",
          "type":CHEST,
          "data":[Items.magma,4,Items.powder,2]
        }];
        maps.switchEvent();
        doorLinks = [[197,9,10,1,"stone"]];
        initScene("darkTemple",0);
      }
      if(mapNo == 121) {
        setArea(LAVA_LAKE);
        BGM.play(BGM.RAPTURE_THEME);
        battleBGM = [BGM.SECONDARY_BATTLE,BGM.SECONDARY_BATTLE,BGM.SECONDARY_BATTLE,BGM.SECONDARY_BATTLE];
        battleIcons = [HandZombie,DogTanuki,MammothWar,HandSkeleton];
        battleIconsAlt = [HandZombie,CatSkeleton,MammothCamel,HydraZombie];
        battles = [Battles.rapture24,Battles.rapture27,Battles.rapture25,Battles.rapture26];
        battlesAlt = [BattlesAlt.rapture24,BattlesAlt.rapture27,BattlesAlt.rapture25,BattlesAlt.rapture26];
        battleBG = [48,50,48,50];
        respawn = [undefined,true,undefined,true];
        weather = [Weather.ERUPTION,Weather.ERUPTION,Weather.ERUPTION,Weather.ERUPTION];
        altWeather = [Weather.SANDSTORM,Weather.SANDSTORM,Weather.ELECTRIC,Weather.ELECTRIC];
        hideChest(0);
        maps.darkLevel = 4;
        maps.success = function():* {
          dropChest(0);
        };
        maps.objectData = [{
          "mc":"chest0",
          "type":CHEST,
          "data":[Items.chicken,1,Items.coffee,3]
        },{
          "mc":"chest1",
          "type":CHEST,
          "data":[Items.beef,1,Items.chips,3,Items.burger,1]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Items.nut,1,Items.rune,2]
        },{
          "mc":"chest3",
          "type":CHEST,
          "data":[Items.silver,2,Items.moonpearl,2]
        },{
          "mc":"chest4",
          "type":CHEST,
          "data":[Items.titanium,1,Items.gems,6]
        },{
          "mc":"chest5",
          "type":CHEST,
          "data":[Items.silver,1,Items.candle,1,Items.silver,1]
        },{
          "mc":"chest6",
          "type":CHEST,
          "data":[Items.spike,4,Items.claw,3,Items.turd,16]
        },{
          "mc":"chest7",
          "type":CHEST,
          "data":[Items.chicken,1,Items.turd,2]
        }];
      }
      if(mapNo == 140) {
        setArea(WORMHOLE);
        Flags.EVIL_REACHED.quantity = 1;
        Maps.minimapCoords = [-1,-1];
        battleBGM = [BGM.MECHANICAL_CONDAMNATION,BGM.SECONDARY_BATTLE,BGM.BLOSSOM];
        battleIcons = [MonolithCosmic,ChomperMutant,MammothWar];
        battleIconsAlt = [MonolithCosmic,ChomperMutant,DragonOmega];
        battles = [Battles.space1,Battles.space2,Battles.space3];
        battlesAlt = [BattlesAlt.space1,BattlesAlt.space2,BattlesAlt.space3];
        battleBG = [52,52,52];
        respawn = [true];
        weather = [Weather.FALLINGSTARS,Weather.FALLINGSTARS,Weather.HIGH_GRAVITY];
        altWeather = [Weather.CURSED,Weather.CURSED,Weather.CURSED];
        setDoors([true],[0]);
        maps.objectData = [{
          "mc":"chest0",
          "type":CHEST,
          "data":[Items.powder,4,Items.plutonium,1,Items.powder,2]
        },{
          "mc":"chest1",
          "type":CHEST,
          "data":[Items.powder,3,Items.powder,1,Items.titanium,1]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Items.mythril,1,Items.powder,2,Items.powder,6]
        },{
          "mc":"chest3",
          "type":CHEST,
          "data":[Items.rune,1]
        },{
          "mc":"chest4",
          "type":CHEST,
          "data":[Items.rune,1]
        },{
          "mc":"chest5",
          "type":CHEST,
          "data":[Items.rune,1]
        },{
          "mc":"chest6",
          "type":CHEST,
          "data":[Items.rune,1]
        },{
          "mc":"chest7",
          "type":CHEST,
          "data":[Items.diamond,1,Items.powder,1]
        }];
        Flags.GLITCHINESS.quantity = 2;
        doorLinks = [[125,10,5,1,"none"]];
        initScene("space0",0,MapText.space0Scenes);
        initScenes([0,1,2,3,4,5],"space1",1);
      }
      if(mapNo == 141) {
        setArea(WORMHOLE);
        Maps.minimapCoords = [-1,-1];
        battleBGM = [undefined,BGM.MECHANICAL_CONDAMNATION,BGM.MECHANICAL_CONDAMNATION,BGM.BLADE_AND_SWITCH,BGM.BLADE_AND_SWITCH,BGM.BLADE_AND_SWITCH];
        battleIcons = [undefined,MonolithCosmic,FallenBeheaded,HydraZombie,HydraZombie,HydraZombie];
        battleIconsAlt = [undefined,MonolithCosmic,FallenBeheaded,HydraZombie,HydraZombie,HydraZombie];
        battleFlags = [undefined,undefined,undefined,Flags.ZOMBIE_HYDRA,Flags.ZOMBIE_HYDRA,Flags.ZOMBIE_HYDRA];
        battles = [undefined,Battles.space4,Battles.space5,Battles.space6,Battles.space6,Battles.space6];
        battlesAlt = [undefined,BattlesAlt.space4,BattlesAlt.space5,BattlesAlt.space6,BattlesAlt.space6,BattlesAlt.space6];
        battleBG = [undefined,52,52,52,52,52];
        respawn = [undefined,true];
        weather = [undefined,Weather.ENERGY,Weather.FALLINGSTARS,Weather.FALLINGSTARS,Weather.FALLINGSTARS,Weather.FALLINGSTARS];
        altWeather = [undefined,Weather.CURSED,Weather.CURSED,Weather.RADIATION,Weather.RADIATION,Weather.RADIATION];
        maps.objectData = [{
          "mc":"chest0",
          "type":CHEST,
          "data":[Items.satin,2,Items.titanium,1,Items.satin,2]
        },{
          "mc":"chest1",
          "type":CHEST,
          "data":[Items.coffee,30,Items.chips,10]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Items.lego,1,Items.gamechild,1,Items.lego,1]
        },{
          "mc":"chest3",
          "type":CHEST,
          "data":[Items.scales,1,Items.grail,1,Items.scales,1]
        },{
          "mc":"chest4",
          "type":CHEST,
          "data":[Items.darkmatter,1]
        }];
        initScene("space2",0,null);
        initScenes([0,1],"space3",1);
        initScenes([2,3],"space4",2);
      }
      if(mapNo == 142) {
        setArea(WORMHOLE);
        BGM.play(BGM.SPACE_AMBIENCE);
        Maps.minimapCoords = [-1,-1];
        battleBGM = [BGM.FINAL_BATTLE];
        battleIcons = ["final"];
        battles = [Battles.finalboss];
        if(Foes.isCaught2("BossDevourer")) {
          battles = [Battles.finalboss3];
        } else if(Foes.isCaught2("BossGigalith")) {
          battles = [Battles.finalboss2];
        }
        battleBG = [53];
        battleFlags = [Flags.FINAL_BOSS];
        respawn = [];
        altWeather = [Weather.ENERGY];
        maps.objectData = [];
        initScene("space6",0,null);
      }
      if(mapNo == 143) {
        setArea(GLITCH_ZONE);
        Maps.minimapCoords = [-1,-1];
        Flags.GLITCH_1_REACHED.quantity = 1;
        Flags.expStyle = Flags.SCALE_TO_LEVEL;
        battleBGM = [BGM.NO_X1B,BGM.NO_X1B,BGM.NO_X1B];
        battleIcons = [DragonEarth,BushRed,CatWizard];
        battleIconsAlt = [DragonEarth,BearBrown,MirrorWise];
        battles = [Battles.pines3,Battles.pines2,Battles.pines1];
        battlesAlt = [BattlesAlt.pines3,BattlesAlt.pines2,BattlesAlt.pines1];
        battleBG = [60,60,60];
        respawn = [];
        weather = [undefined,Weather.GLITCH,Weather.GLITCH];
        altWeather = [Weather.FOG,Weather.GLITCH,Weather.OVERGROWTH];
        maps.objectData = [{
          "mc":"chest0",
          "type":CHEST,
          "data":[Items.spike,1,Equips.godlybook,1,Items.leather,7]
        },{
          "mc":"chest1",
          "type":CHEST,
          "data":[Items.goldkey,1,Items.potato,1]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Items.opal,1,Items.turnip,1,Items.wood,3]
        },{
          "mc":"chest3",
          "type":CHEST,
          "data":[Items.spring,12,Items.gear,8,Items.pipe,16]
        },{
          "mc":"chest4",
          "type":CHEST,
          "data":[Items.starfragment,1,Items.gems,7]
        }];
        Medals.unlock(Medals.glitch);
        Flags.GLITCHINESS_2.quantity = 2;
        doorLinks = [[116,17,10,2,"ladder"]];
        glitchScene();
      }
      if(mapNo == 144) {
        setArea(GLITCH_ZONE);
        Maps.minimapCoords = [-1,-1];
        Flags.GLITCH_2_REACHED.quantity = 1;
        Flags.expStyle = Flags.SCALE_TO_LEVEL;
        battleBGM = [BGM.NO_X1B,BGM.NO_X1B,BGM.NO_X1B];
        battleIcons = [CatSniper,IdolMetal,FishGold];
        battles = [Battles.bridge3,Battles.bridge1,Battles.bridge2];
        battlesAlt = [BattlesAlt.bridge3,BattlesAlt.bridge1,BattlesAlt.bridge2];
        battleBG = [62,62,62];
        respawn = [];
        weather = [undefined,undefined,Weather.GLITCH];
        altWeather = [Weather.RADIATION,Weather.BLOSSOM,Weather.AIRSTRIKES];
        maps.objectData = [{
          "mc":"chest0",
          "type":CHEST,
          "data":[Equips.heavyclaw,1,Items.iron,2]
        },{
          "mc":"chest1",
          "type":CHEST,
          "data":[Items.bomb,6,Items.sushi,1]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Items.steel,12,Items.bread,1]
        },{
          "mc":"chest3",
          "type":CHEST,
          "data":[Items.brick,13,Items.turd,3,Items.emerald,1]
        },{
          "mc":"chest4",
          "type":CHEST,
          "data":[Items.bomb,5,Items.powder,3,Items.spike,3]
        }];
        Medals.unlock(Medals.glitch);
        Flags.GLITCHINESS.quantity = 2;
        doorLinks = [[66,6,8,2,"ladder"]];
        glitchScene();
      }
      if(mapNo == 145) {
        setArea(GLITCH_ZONE);
        Maps.minimapCoords = [-1,-1];
        Flags.GLITCH_3_REACHED.quantity = 1;
        Flags.expStyle = Flags.SCALE_TO_LEVEL;
        battleBGM = [BGM.NO_X1B,BGM.NO_X1B,BGM.NO_X1B];
        battleIcons = [BushMud,SlimeMud,SlimeBigMud];
        battleIconsAlt = [SlimeBigMud,SlimeMud,BushMud];
        battles = [Battles.shrine2,Battles.shrine1,Battles.shrine3];
        battlesAlt = [BattlesAlt.shrine2,BattlesAlt.shrine1,BattlesAlt.shrine3];
        battleBG = [61,61,61];
        respawn = [];
        weather = [Weather.BLOSSOM,Weather.BLOSSOM,Weather.BLOSSOM];
        altWeather = [Weather.FOG,Weather.GLITCH,Weather.BLOSSOM];
        maps.objectData = [{
          "mc":"chest0",
          "type":CHEST,
          "data":[Equips.masamune,1,Items.silk,2]
        },{
          "mc":"chest1",
          "type":CHEST,
          "data":[Items.beef,1,Items.leather,8]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Items.grapes,1,Items.poptart,1]
        },{
          "mc":"chest3",
          "type":CHEST,
          "data":[Items.herb,11,Items.flower,3,Items.root,6]
        },{
          "mc":"chest4",
          "type":CHEST,
          "data":[Items.sapphire,1,Items.emerald,1,Items.herb,4]
        }];
        Medals.unlock(Medals.glitch);
        Flags.GLITCHINESS_2.quantity = 2;
        doorLinks = [[71,12,9,2,"ladder"]];
        glitchScene();
      }
      if(mapNo == 146) {
        setArea(GLITCH_ZONE);
        Maps.minimapCoords = [-1,-1];
        Flags.GLITCH_4_REACHED.quantity = 1;
        Flags.expStyle = Flags.SCALE_TO_LEVEL;
        battleBGM = [BGM.NO_X1B,BGM.NO_X1B,BGM.NO_X1B];
        battleIcons = [BatBone,BoulderCoral,MonolithViking];
        battleIconsAlt = [SquidPink,BoulderCoral,BatBone];
        battles = [Battles.island2,Battles.island3,Battles.island1];
        battlesAlt = [BattlesAlt.island2,BattlesAlt.island3,BattlesAlt.island1];
        battleBG = [63,63,63];
        respawn = [];
        weather = [Weather.GLITCH,undefined,Weather.GLITCH];
        altWeather = [Weather.GEYSERS,Weather.STALACTITES,Weather.WINDY];
        maps.objectData = [{
          "mc":"chest0",
          "type":CHEST,
          "data":[Items.coralkey,1,Items.seashell,8]
        },{
          "mc":"chest1",
          "type":CHEST,
          "data":[Equips.pixelpopper,1,Items.floppy,8]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Items.bacon,1,Items.donut,1,Items.riceball,1]
        },{
          "mc":"chest3",
          "type":CHEST,
          "data":[Items.gamechild,1,Items.cpu,1,Items.plastic,4]
        },{
          "mc":"chest4",
          "type":CHEST,
          "data":[Items.gamechild,1,Items.glass,4,Items.plastic,2]
        }];
        Medals.unlock(Medals.glitch);
        Flags.GLITCHINESS_2.quantity = 1;
        doorLinks = [[28,15,8,2,"ladder"]];
        glitchScene();
      }
      if(mapNo == 147) {
        Flags.EVIL_REACHED.quantity = 1;
        setArea(GLITCH_ZONE_2);
        initNPC(0,NPCs.redA);
        initNPC(1,NPCs.redB);
        initNPC(2,NPCs.redC);
        Maps.minimapCoords = [-1,-1];
        setDoors([true],[0]);
        maps.objectData = [];
        doorLinks = [[112,16,3,1,"none"]];
        Flags.GLITCHINESS.quantity = 6;
        Flags.GLITCHINESS_2.quantity = 5;
        Flags.GLITCHINESS_3.quantity = 2;
        initScenes([0,1,2,3,4,5,6,7,8,9,10,11],"glitch1",0);
      }
      if(mapNo == 148) {
        setArea(GLITCH_ZONE_2);
        Maps.minimapCoords = [-1,-1];
        battleBGM = [];
        battleIcons = ["grave"];
        battles = [Battles.glitch];
        battlesAlt = [BattlesAlt.glitch];
        battleBG = [64];
        respawn = [true];
        weather = [Weather.GLITCH_2];
        altWeather = [Weather.BLOSSOM];
        maps.objectData = [{
          "mc":"chest0",
          "type":CHEST,
          "data":[Items.dragonfruit,1,Equips.knife,1,Items.dragonfruit,1]
        },{
          "mc":"chest1",
          "type":CHEST,
          "data":[Items.floppy,4,Items.gamechild,2,Items.floppy,4]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Items.spike,1,Equips.clubofwithering,1,Items.spike,1]
        },{
          "mc":"chest3",
          "type":CHEST,
          "data":[Items.darkmatter,1,Items.ruby,1,Cards.card9,1]
        },{
          "mc":"chest4",
          "type":CHEST,
          "data":[Items.rune,3,Items.powder,26]
        }];
        initScene("glitch2",0);
        initScenes([0,1,2],"glitch3",1);
        initScene("glitch4",2,MapText.glitch4Scenes,Flags.GLITCH_DEFEATED,1);
      }
      if(mapNo == 197) {
        setArea(TEMPLE_OF_TRIALS);
        BGM.play(BGM.WALKING_BONES);
        Maps.minimapCoords = [10,7];
        Flags.expStyle = Flags.NO_EXP;
        battleBGM = [BGM.UNDER_MY_SKIN,BGM.UNDER_MY_SKIN,BGM.UNDER_MY_SKIN,BGM.UNDER_MY_SKIN];
        battleIcons = ["matt","natz","lance","anna"];
        battleFlags = [Flags.EVIL_MATT,Flags.EVIL_NATALIE,Flags.EVIL_LANCE,Flags.EVIL_ANNA];
        battles = [Battles.evilmatt,Battles.evilnatz,Battles.evillance,Battles.evilanna];
        battlesAlt = [BattlesAlt.evilmatt,BattlesAlt.evilnatz,BattlesAlt.evillance,BattlesAlt.evilanna];
        battleBG = [65,65,65,65];
        respawn = [];
        altWeather = [Weather.EARTHQUAKE,Weather.SANDSTORM,Weather.ACID,Weather.CURSED];
        if(Flags.EVIL_NOLEGS_DEFEATED.quantity) {
          respawn = [true,true,true,true];
          Maps.foeData[197] = [];
        }
        maps.npc0.stop();
        maps.npc0.visible = false;
        hideChest(0);
        hideChest(1);
        hideChest(2);
        hideChest(3);
        if(Flags.EVIL_NOLEGS_DEFEATED.quantity) {
          Medals.unlock(Medals.realDeal);
        }
        if(Flags.EVIL_NOLEGS_DEFEATED.quantity) {
          if(Flags.EVIL_NOLEGS_DEFEATED.quantity == 2) {
            maps.special0.gotoAndStop(150);
          } else {
            maps.special0.gotoAndPlay(2);
          }
        } else {
          maps.addTile(1,8,0,false);
          maps.addTile(1,9,0,false);
          maps.addTile(1,10,0,false);
          maps.addTile(1,8,1,false);
          maps.addTile(1,9,1,false);
          maps.addTile(1,10,1,false);
          maps.addTile(1,8,2,false);
          maps.addTile(1,9,2,false);
          maps.addTile(1,10,2,false);
          maps.addTile(1,8,3,false);
          maps.addTile(1,9,3,false);
          maps.addTile(1,10,3,false);
        }
        if(Boolean(Flags.EVIL_MATT_DEFEATED.quantity) && Boolean(Flags.EVIL_NATZ_DEFEATED.quantity) && Boolean(Flags.EVIL_ANNA_DEFEATED.quantity) && Boolean(Flags.EVIL_LANCE_DEFEATED.quantity)) {
          setDoors([true],[0]);
        }
        maps.objectData = [{
          "mc":"chest0",
          "type":CHEST,
          "data":[Equips.swordmedal,1,Items.chicken,1,Items.egg,1]
        },{
          "mc":"chest1",
          "type":CHEST,
          "data":[Equips.goldstar,1,Items.cake,1,Items.lollipop,1]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Equips.shieldmedal,1,Items.pill,1,Items.mushroom,1]
        },{
          "mc":"chest3",
          "type":CHEST,
          "data":[Equips.platinumstar,1,Items.mint,1,Items.nut,1]
        }];
        if(Flags.EVIL_MATT_DEFEATED.quantity) {
          dropChest(0);
        }
        if(Flags.EVIL_NATZ_DEFEATED.quantity) {
          dropChest(1);
        }
        if(Flags.EVIL_LANCE_DEFEATED.quantity) {
          dropChest(2);
        }
        if(Flags.EVIL_ANNA_DEFEATED.quantity) {
          dropChest(3);
        }
        doorLinks = [[199,9,7,1,"none"],[122,14,4,1,"stone"]];
        initScene("akron",0);
        initScene("mattDefeated",1,null,Flags.EVIL_MATT_DEFEATED,1);
        initScene("natalieDefeated",2,null,Flags.EVIL_NATZ_DEFEATED,1);
        initScene("lanceDefeated1",3,null,Flags.EVIL_LANCE_DEFEATED,1);
        initScene("lanceDefeated2",4,null,Flags.EVIL_LANCE_DEFEATED,2);
        initScene("annaDefeated",5,null,Flags.EVIL_ANNA_DEFEATED,1);
      }
      if(mapNo == 198) {
        setArea(TEMPLE_OF_TRIALS);
        Maps.minimapCoords = [10,7];
        Flags.expStyle = Flags.NO_EXP;
        battleBGM = [BGM.PETALS_OF_BLADE,BGM.PETALS_OF_BLADE,BGM.PETALS_OF_BLADE,BGM.PETALS_OF_BLADE,BGM.PETALS_OF_BLADE];
        battleIcons = ["rush","rush","rush","rush","final"];
        battles = [Battles.foerush,Battles.minibossrush,Battles.bossrush,Battles.superbossrush,Battles.endlessMarathon];
        battlesAlt = [BattlesAlt.foerush,BattlesAlt.minibossrush,BattlesAlt.bossrush,BattlesAlt.superbossrush,Battles.endlessMarathon];
        battleBG = [65,65,65,65,65];
        respawn = [true,true,true,true,true];
        battleFlags = [Flags.FOE_RUSH,Flags.MINIBOSS_RUSH,Flags.BOSS_RUSH,Flags.SUPER_BOSS_RUSH,Flags.ENDLESS_BATTLE];
        initNPC(0,NPCs.templerB);
        hideChest(0);
        hideChest(1);
        hideChest(2);
        hideChest(3);
        hideChest(4);
        maps.darkLevel = 4;
        maps.success = function():* {
          dropChest(4);
        };
        maps.objectData = [{
          "mc":"chest0",
          "type":CHEST,
          "data":[Items.lollipop,1,Items.mint,1,Items.nut,1]
        },{
          "mc":"chest1",
          "type":CHEST,
          "data":[Items.chicken,1,Items.pill,1,Items.milk,1]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Items.mushroom,1,Items.cake,1,Items.nut,1]
        },{
          "mc":"chest3",
          "type":CHEST,
          "data":[Items.egg,1,Items.yoghurt,1,Items.milk,1]
        },{
          "mc":"chest4",
          "type":CHEST,
          "data":[Items.egg,1,Items.mushroom,1,Items.lollipop,1]
        }];
        if(Flags.BOSS_RUSH_1.quantity) {
          dropChest(0);
        }
        if(Flags.BOSS_RUSH_2.quantity) {
          dropChest(1);
        }
        if(Flags.BOSS_RUSH_3.quantity) {
          dropChest(2);
        }
        if(Flags.BOSS_RUSH_4.quantity) {
          dropChest(3);
        }
        initScene("bossRush",0);
      }
      if(mapNo == 199) {
        setArea(TEMPLE_OF_TRIALS);
        BGM.play(BGM.SPACE_AMBIENCE);
        Maps.minimapCoords = [-1,-1];
        Flags.expStyle = Flags.NO_EXP;
        battleBGM = [BGM.BREEZE_VOCALS];
        battleFlags = [Flags.EVIL_NOLEGS];
        battleIcons = ["nolegs"];
        battles = [Battles.evilnolegs];
        battlesAlt = [BattlesAlt.evilnolegs];
        battleBG = [66];
        respawn = [true];
        altWeather = [Weather.FALLINGSTARS];
        hideChest(0);
        hideChest(1);
        if(Flags.EVIL_NOLEGS_DEFEATED.quantity) {
          dropChest(0);
          dropChest(1);
        }
        setDoors([true],[0]);
        maps.objectData = [{
          "mc":"chest0",
          "type":CHEST,
          "data":[Cards.card31,1,Items.milk,1,Items.espresso,1]
        },{
          "mc":"chest1",
          "type":CHEST,
          "data":[Equips.starhammer,1,Items.yoghurt,1,Cards.card36,1]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Items.grail,1,Items.rune2,1]
        },{
          "mc":"chest3",
          "type":CHEST,
          "data":[Items.grail,1,Items.rune2,1]
        },{
          "mc":"chest4",
          "type":CHEST,
          "data":[Items.starfragment,1,Items.rune2,1]
        },{
          "mc":"chest5",
          "type":CHEST,
          "data":[Items.starfragment,1,Items.rune2,1]
        }];
        doorLinks = [[197,9,6,1,"none"]];
        initScene("evilNolegs1",0);
        initScene("evilNolegs2",1,null,Flags.EVIL_NOLEGS_DEFEATED,1);
      }
      if(mapNo == 201) {
        setArea(FREEZEFLAME_DUNGEON);
        battleBGM = [BGM.RETURN_OF_SNOW_QUEEN,BGM.RETURN_OF_SNOW_QUEEN,BGM.TERTIARY_BATTLE,BGM.TERTIARY_BATTLE];
        battleIcons = [BitIce,CreepIcicle,BoulderObsidian,BitFire];
        battleIconsAlt = [BitIce,BearGrolar,BearBlack,BitThunder];
        Flags.expStyle = Flags.NO_EXP;
        battles = [Battles.freezeflame1,Battles.freezeflame2,Battles.freezeflame3,Battles.freezeflame4];
        battlesAlt = [BattlesAlt.freezeflame1,BattlesAlt.freezeflame2,BattlesAlt.freezeflame3,BattlesAlt.freezeflame4];
        battleBG = [11,11,12,12];
        respawn = [true,undefined,undefined,true];
        weather = [Weather.STALACTITES,Weather.STALACTITES,Weather.LAVAFLOW,Weather.LAVAFLOW];
        altWeather = [Weather.SACRED,Weather.SACRED,Weather.CURSED,Weather.CURSED];
        maps.objectData = [{
          "mc":"sign0",
          "type":SIGN,
          "data":(Options.alwaysGiveEXP ? "signDungeonAlt2" : (Options.alwaysScaleFoes ? "signDungeonAlt" : "signDungeon"))
        },{
          "mc":"chest0",
          "type":CHEST,
          "data":[Equips.slimebunny,1,Items.cupcake,3,Items.coffee,2]
        },{
          "mc":"chest1",
          "type":CHEST,
          "data":[Items.cake,1,Items.pretzel,2,Items.sapphire,1]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Equips.schooluniform,1,Items.wool,8,Items.silk,2]
        },{
          "mc":"chest3",
          "type":CHEST,
          "data":[Items.bacon,1,Items.riceball,1,Items.magma,2]
        },{
          "mc":"chest4",
          "type":CHEST,
          "data":[Items.magma,1]
        },{
          "mc":"chest5",
          "type":CHEST,
          "data":[Items.water,1]
        }];
        doorLinks = [[20,3,4,1,"cave"]];
        initScene("freezeflame1",0);
      }
      if(mapNo == 204) {
        setArea(FREEZEFLAME_DUNGEON);
        initNPC(0,NPCs.fanni);
        setDoors([Maps.switchData[183]],[0],true);
        setDoors([Maps.switchData[184]],[1],true);
        maps.switchEvent = function():* {
          setDoors([Maps.switchData[183]],[0]);
          setDoors([Maps.switchData[184]],[1]);
        };
        initSwitch(0,183);
        initSwitch(1,184);
        maps.objectData = [{
          "mc":"chest0",
          "type":CHEST,
          "data":[Items.water,2]
        },{
          "mc":"chest1",
          "type":CHEST,
          "data":[Items.magma,2]
        }];
      }
      if(mapNo == 200) {
        setArea(FREEZEFLAME_DUNGEON);
        initNPC(0,NPCs.frosty);
        maps.success = function():* {
          setSpikes([true],[0,1,2,3]);
          Maps.playSound("spikes");
          Maps.playSound("ice2");
        };
        if(Boolean(Maps.blockData[MapData.mapNo]) && Boolean(Maps.blockData[MapData.mapNo].length)) {
          maps.success();
        }
        maps.objectData = [{
          "mc":"chest0",
          "type":CHEST,
          "data":[Items.gems,2,Items.rune2,1,Items.ice,2]
        },{
          "mc":"chest1",
          "type":CHEST,
          "data":[Items.beef,1,Items.poptart,1,Items.cola,3]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Equips.gigavolt,1,Items.topaz,1,Items.gems,1]
        },{
          "mc":"chest3",
          "type":CHEST,
          "data":[Items.water,1]
        }];
        initScene("freezeflame2",0);
      }
      if(mapNo == 203) {
        setArea(FREEZEFLAME_DUNGEON);
        battleBGM = [BGM.RETURN_OF_SNOW_QUEEN,BGM.RETURN_OF_SNOW_QUEEN];
        battleIcons = [FallenLost,MonolithViking];
        battleIconsAlt = [DogWolf,CreepIcicle];
        Flags.expStyle = Flags.NO_EXP;
        battles = [Battles.freezeflame6,Battles.freezeflame7];
        battlesAlt = [BattlesAlt.freezeflame6,BattlesAlt.freezeflame7];
        battleBG = [11,11];
        respawn = [];
        weather = [Weather.STALACTITES,Weather.STALACTITES];
        altWeather = [Weather.SACRED,Weather.SACRED];
        maps.objectData = [{
          "mc":"chest0",
          "type":CHEST,
          "data":[Items.lollipop,1,Items.ice,4,Items.water,2]
        },{
          "mc":"chest1",
          "type":CHEST,
          "data":[Equips.bookofspells,1,Items.ice,2,Items.water,1]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Items.snowball,6,Items.ice,1]
        }];
        initScene("freezeflame4",0);
      }
      if(mapNo == 202) {
        setArea(FREEZEFLAME_DUNGEON);
        initNPC(0,NPCs.garven);
        battleIcons = ["mimic"];
        battleFlags = [Flags.MIMIC];
        battleBGM = [BGM.TERTIARY_BATTLE];
        if(Options.altFoes) {
          battleBGM = [BGM.WINGS_2];
        }
        Flags.expStyle = Flags.NO_EXP;
        battles = [Battles.freezeflame5];
        battlesAlt = [BattlesAlt.freezeflame5];
        battleBG = [12];
        if(Options.altFoes) {
          battleBG = [Backgrounds.EBF3_PROTECTOR];
        }
        respawn = [];
        weather = [Weather.LAVAFLOW];
        altWeather = [Weather.CURSED];
        if(Options.altFoes) {
          weather[0] = null;
          altWeather[0] = null;
        }
        maps.push0.skin(22);
        maps.push1.skin(22);
        maps.push2.skin(23);
        maps.push3.skin(23);
        maps.objectData = [{
          "mc":"chest0",
          "type":CHEST,
          "data":[Items.iron,8,Items.magma,2,Items.gold,1]
        },{
          "mc":"chest1",
          "type":CHEST,
          "data":[Items.chicken,1,Items.sushi,1,Items.pretzel,1]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Equips.flametitan,1,Items.pipe,2,Items.gear,2]
        },{
          "mc":"chest3",
          "type":CHEST,
          "data":[Items.magma,1]
        }];
        initScene("freezeflame3",0);
      }
      if(mapNo == 205) {
        setArea(FREEZEFLAME_DUNGEON);
        initNPC(0,NPCs.larry);
        battleBGM = [BGM.TERTIARY_BATTLE,BGM.TERTIARY_BATTLE];
        battleIcons = [SlimeBigLava,SlimeLava];
        battleIconsAlt = [SlimeBigLava,IdolMetal];
        Flags.expStyle = Flags.NO_EXP;
        battles = [Battles.freezeflame8,Battles.freezeflame9];
        battlesAlt = [BattlesAlt.freezeflame8,BattlesAlt.freezeflame9];
        battleBG = [13,13];
        respawn = [];
        weather = [Weather.LAVAFLOW,Weather.LAVAFLOW];
        altWeather = [Weather.ERUPTION,Weather.ERUPTION];
        maps.objectData = [{
          "mc":"chest0",
          "type":CHEST,
          "data":[Items.magma,3,Items.ruby,1,Items.powder,2]
        },{
          "mc":"chest1",
          "type":CHEST,
          "data":[Equips.devilsfork,1,Items.magma,1,Items.iron,2]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Items.powder,2,Items.iron,3]
        }];
      }
      if(mapNo == 206) {
        setArea(FREEZEFLAME_DUNGEON);
        if(Flags.SUPER_CYCLOPS_DEFEATED.quantity) {
          Game.clearBossBattle(0);
          Game.clearBossBattle(1);
        }
        battleBGM = [BGM.BLADE_AND_SWITCH,BGM.BLADE_AND_SWITCH];
        battleIcons = [BossCyclopsGlacial,BossCyclopsInfernal];
        Flags.expStyle = Flags.NO_EXP;
        battles = [Battles.superboss1,Battles.superboss1];
        battlesAlt = [BattlesAlt.superboss1,BattlesAlt.superboss1B];
        battleBG = [11,12];
        battleFlags = [Flags.SISTERS_BATTLE,Flags.SISTERS_BATTLE];
        respawn = [];
        weather = [Weather.STALACTITES,Weather.LAVAFLOW];
        altWeather = [Weather.SACRED,Weather.CURSED];
        Medals.checkDungeons();
        maps.objectData = [{
          "mc":"chest0",
          "type":CHEST,
          "data":[Cards.card39,1,Items.satin,1,Items.wool,3]
        },{
          "mc":"chest1",
          "type":CHEST,
          "data":[Equips.scottishkilt,1,Items.silk,1,Items.rune2,1]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Items.egg,1,Items.donut,1,Items.espresso,1]
        },{
          "mc":"chest3",
          "type":CHEST,
          "data":[Equips.irontusk,1,Items.iron,2,Items.bomb,2]
        },{
          "mc":"chest4",
          "type":CHEST,
          "data":[Cards.card21,1,Items.wool,3,Items.emerald,1]
        },{
          "mc":"chest5",
          "type":CHEST,
          "data":[Items.yoghurt,1,Items.topaz,1,Items.milk,1]
        },{
          "mc":"chest6",
          "type":CHEST,
          "data":[Items.magma,1]
        },{
          "mc":"chest7",
          "type":CHEST,
          "data":[Items.water,1,Items.snowball,3]
        }];
        initScene("freezeflame5",0);
        initScene("freezeflame6",1,null,Flags.SUPER_CYCLOPS_DEFEATED,1,2);
      }
      if(mapNo == 209) {
        setArea(MINESHAFT_MAZE);
        BGM.play(BGM.BLADE_AND_SWITCH);
        initNPC(0,NPCs.nasim);
        MX = 3;
        MY = 8;
        battleBGM = [BGM.SECONDARY_BATTLE,BGM.BLADE_AND_SWITCH,BGM.BLADE_AND_SWITCH,BGM.BLADE_AND_SWITCH,BGM.BLADE_AND_SWITCH];
        if(Options.altFoes) {
          battleBGM = [BGM.SECONDARY_BATTLE,BGM.BLADE_AND_SWITCH,BGM.BLADE_AND_SWITCH,BGM.BLADE_AND_SWITCH,BGM.BLADE_AND_SWITCH,BGM.WINGS_2];
        }
        battleIcons = [Defender1,BossTankGiga,BossTankGiga,BossTankGiga,BossTankGiga,"mimic"];
        battleIconsAlt = [GolemBone,BossTankGiga,BossTankGiga,BossTankGiga,BossTankGiga,"mimic"];
        Flags.expStyle = Flags.NO_EXP;
        battleFlags = [undefined,Flags.GIGA_TANK_BATTLE,Flags.GIGA_TANK_BATTLE,Flags.GIGA_TANK_BATTLE,Flags.GIGA_TANK_BATTLE,Flags.MIMIC];
        battles = [Battles.maze7,Battles.superboss2,Battles.superboss2,Battles.superboss2,Battles.superboss2,Battles.maze6];
        battlesAlt = [BattlesAlt.maze7,BattlesAlt.superboss2,BattlesAlt.superboss2,BattlesAlt.superboss2,BattlesAlt.superboss2,BattlesAlt.maze6];
        battleBG = [20,20,20,20,20,20];
        if(Options.altFoes) {
          battleBG = [20,20,20,20,20,Backgrounds.EBF3_JACK];
        }
        respawn = [];
        weather = [Weather.EARTHQUAKE,Weather.EARTHQUAKE,Weather.STALACTITES,Weather.STALACTITES,Weather.EARTHQUAKE];
        altWeather = [Weather.STALACTITES,Weather.LAVAFLOW,Weather.LOW_GRAVITY,Weather.RADIATION,Weather.ENERGY];
        if(Options.altFoes) {
          weather[5] = null;
          altWeather[5] = null;
        }
        Medals.checkDungeons();
        maps.objectData = [{
          "mc":"chest0",
          "type":CHEST,
          "data":[Items.egg,1,Items.poptart,1,Items.milk,1]
        },{
          "mc":"chest1",
          "type":CHEST,
          "data":[Cards.card46,1,Items.topaz,1]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Items.bread,2,Items.potato,2]
        },{
          "mc":"chest3",
          "type":CHEST,
          "data":[Equips.greengoliath,1,Items.steel,3]
        },{
          "mc":"chest4",
          "type":CHEST,
          "data":[Equips.flamesuit,1]
        },{
          "mc":"chest5",
          "type":CHEST,
          "data":[Items.mushroom,2,Items.pill,2]
        }];
        doorLinks = [[207,10,5,1,"ladder"]];
        initScene("maze8",0);
        initScene("maze9",1,null,Flags.SUPER_TANK_DEFEATED,1,2);
      }
      if(mapNo == 208) {
        setArea(MINESHAFT_MAZE);
        BGM.play(BGM.MACHINE_AMBIENCE);
        initNPC(0,NPCs.gust);
        MX = 6;
        MY = 2;
        hideChest(0);
        hideChest(1);
        maps.success = function():* {
          dropChest(0);
          dropChest(1);
          maps.special2.gotoAndStop(2);
        };
        maps.objectData = [{
          "mc":"chest0",
          "type":CHEST,
          "data":[Equips.robotears,1,Equips.mechaarmor,1]
        },{
          "mc":"chest1",
          "type":CHEST,
          "data":[Items.turnip,1,Items.grapes,1,Items.mint,1]
        }];
        doorLinks = [[207,8,5,1,"ladder"]];
        initScene("maze6",0);
      }
      if(mapNo == 210) {
        setArea(MINESHAFT_MAZE);
        BGM.play(BGM.MACHINE_AMBIENCE);
        initNPC(0,NPCs.krogan);
        MX = 8;
        MY = 6;
        hideChest(0);
        hideChest(1);
        maps.success = function():* {
          dropChest(0);
          dropChest(1);
          maps.special0.visible = true;
        };
        maps.objectData = [{
          "mc":"chest0",
          "type":CHEST,
          "data":[Equips.gungnir,1,Items.titanium,1]
        },{
          "mc":"chest1",
          "type":CHEST,
          "data":[Equips.fusionblade,1,Items.bomb,1]
        }];
        doorLinks = [[207,11,5,1,"ladder"]];
        initScene("maze7",0);
      }
      if(mapNo == 207) {
        setArea(MINESHAFT_MAZE);
        BGM.play(BGM.FORTRESS_THEME);
        if(MY == -1 && MX == -1) {
          MX = 4;
          MY = 4;
          maps.player.X = 9;
          maps.player.Y = 6;
        }
        battleBGM = [BGM.SECONDARY_BATTLE,BGM.SECONDARY_BATTLE,BGM.SECONDARY_BATTLE,BGM.SECONDARY_BATTLE,BGM.SECONDARY_BATTLE,BGM.SECONDARY_BATTLE];
        battleIcons = [HandZombie,BoulderDirt,FallenBeheaded,BatBone,ChomperSeaweed,FishSteam];
        battleIconsAlt = [HydraZombie,BoulderMarble,WraithMaster,BatSnow,BatBlood,FishJet];
        Flags.expStyle = Flags.NO_EXP;
        battles = [Battles.maze1,Battles.maze2,Battles.maze3,Battles.maze4,Battles.maze5,Battles.maze5B];
        battlesAlt = [BattlesAlt.maze1,BattlesAlt.maze2,BattlesAlt.maze3,BattlesAlt.maze4,BattlesAlt.maze5,BattlesAlt.maze5B];
        battleBG = [19,19,19,19,19,19];
        respawn = [undefined,undefined,true,true,true,true];
        weather = [Weather.EARTHQUAKE,Weather.EARTHQUAKE,Weather.EARTHQUAKE,Weather.EARTHQUAKE,Weather.EARTHQUAKE,Weather.EARTHQUAKE];
        altWeather = [Weather.FOG,Weather.FOG,Weather.FOG,Weather.FOG,Weather.FOG,Weather.FOG];
        maps.foe0.stop();
        maps.foe0.visible = false;
        maps.foe1.stop();
        maps.foe1.visible = false;
        maps.foe2.stop();
        maps.foe2.visible = false;
        maps.foe3.stop();
        maps.foe3.visible = false;
        maps.foe4.stop();
        maps.foe4.visible = false;
        maps.foe5.stop();
        maps.foe5.visible = false;
        maps.door0.stop();
        maps.door1.stop();
        maps.door2.stop();
        maps.door3.stop();
        maps.objectData = [];
        i = 0;
        while(i < 7) {
          maps["chest" + i].visible = false;
          maps["chest" + i].stop();
          i++;
        }
        if(MY == 0) {
          if(MX == 1) {
            setPaths(2,0,1,0);
            setDecor(1,1,2,2,1);
            maps.special15.gotoAndStop("shovelRight");
          }
          if(MX == 2) {
            setPaths(1,0,3,2);
            setDecor(2,1,4,3,2);
            maps.special15.gotoAndStop("buckler");
          }
          if(MX == 3) {
            setPaths(1,0,1,1);
            setDecor(1,1,2,4,1);
            maps.special15.gotoAndStop("coffins");
            maps.foe2.play();
            maps.foe2.visible = true;
          }
          if(MX == 4) {
            setPaths(2,0,1,1);
            setDecor(1,1,1,5,4);
          }
          if(MX == 5) {
            setPaths(0,0,1,1);
            setDecor(1,1,2,2,3);
            maps.special16.gotoAndStop("ash2");
          }
          if(MX == 6) {
            setPaths(2,0,1,0);
            setDecor(1,3,2,3,1);
            maps.special15.gotoAndStop("bottle");
          }
          if(MX == 7) {
            setPaths(1,1,0,2);
            setDecor(1,1,2,1,2);
            maps.special15.gotoAndStop("bigWoodLeft");
          }
        }
        if(MY == 1) {
          if(MX == 1) {
            setPaths(0,0,1,3);
            setDecor(1,1,2,3,2);
            maps.special16.gotoAndStop("fly2");
          }
          if(MX == 2) {
            setPaths(0,0,0,0);
            setDecor(2,1,4,5,4);
            maps.special15.gotoAndStop("woodRight");
          }
          if(MX == 3) {
            setPaths(0,0,0,0);
            setDecor(1,3,2,3,2);
            maps.special15.gotoAndStop("bigWoodLeft2");
          }
          if(MX == 4) {
            setPaths(0,0,0,0);
            setDecor(2,2,4,4,1);
            maps.special16.gotoAndStop("light");
          }
          if(MX == 5) {
            setPaths(0,0,0,0);
            setDecor(1,1,1,1,2);
            maps.special16.gotoAndStop("ash");
          }
          if(MX == 6) {
            setPaths(0,2,0,0);
            setDecor(3,1,5,2,3);
            maps.special15.gotoAndStop("spikes");
          }
          if(MX == 7) {
            setPaths(1,0,0,1);
            setDecor(1,1,2,3,4);
            maps.special15.gotoAndStop("chain");
            maps.special16.gotoAndStop("fly");
            enableChest(1);
          }
        }
        if(MY == 2) {
          if(MX == 0) {
            setPaths(2,0,0,0);
            setDecor(3,1,2,3,1);
            maps.special15.gotoAndStop("bucketShovel");
          }
          if(MX == 1) {
            setPaths(0,0,0,0);
            setDecor(1,2,5,5,3);
            maps.special15.gotoAndStop("box");
          }
          if(MX == 2) {
            setPaths(0,0,0,0);
            setDecor(1,1,1,5,4);
            maps.special15.gotoAndStop("spike");
            maps.foe3.play();
            maps.foe3.visible = true;
          }
          if(MX == 3) {
            setPaths(0,0,0,2);
            setDecor(1,3,2,4,1);
            maps.special15.gotoAndStop("barrels");
          }
          if(MX == 4) {
            setPaths(0,0,2,0);
            setDecor(3,1,1,2,2);
            maps.special15.gotoAndStop("woodRight");
          }
          if(MX == 5) {
            setPaths(0,0,0,0);
            setDecor(1,1,2,3,1);
            maps.special15.gotoAndStop("bigWoodRight");
          }
          if(MX == 6) {
            setPaths(1,0,3,1);
            setDecor(1,1,1,1,3);
            maps.special16.gotoAndStop("ash");
            maps.special15.gotoAndStop("ladderLeft");
            maps.door2.play();
            maps.foe0.play();
            maps.foe0.visible = true;
          }
          if(MX == 7) {
            setPaths(0,0,1,0);
            setDecor(1,1,4,5,2);
          }
          if(MX == 8) {
            setPaths(1,1,0,0);
            setDecor(1,1,2,2,1);
            maps.special15.gotoAndStop("buckler");
          }
        }
        if(MY == 3) {
          if(MX == 0) {
            setPaths(0,1,1,1);
            setDecor(1,1,1,2,2);
            enableChest(5);
          }
          if(MX == 1) {
            setPaths(0,0,1,0);
            setDecor(1,1,2,3,7);
            maps.special15.gotoAndStop("barrelRight");
          }
          if(MX == 2) {
            setPaths(0,0,0,1);
            setDecor(1,1,1,2,2);
            maps.special15.gotoAndStop("boxes");
          }
          if(MX == 3) {
            setPaths(0,0,1,3);
            setDecor(1,1,2,3,4);
            enableChest(4);
          }
          if(MX == 4) {
            setPaths(0,0,0,1);
            setDecor(1,1,3,1,1);
            maps.special15.gotoAndStop("woodLeft");
          }
          if(MX == 5) {
            setPaths(0,0,1,0);
            setDecor(1,1,2,5,4);
            maps.special16.gotoAndStop("ash");
          }
          if(MX == 6) {
            setPaths(0,0,0,0);
            setDecor(1,3,1,2,9);
            maps.special16.gotoAndStop("ash2");
            maps.foe5.play();
            maps.foe5.visible = true;
          }
          if(MX == 7) {
            setPaths(0,0,0,1);
            setDecor(1,1,4,3,3);
            maps.special16.gotoAndStop("ash");
          }
          if(MX == 8) {
            setPaths(1,0,1,1);
            setDecor(1,1,5,4,2);
            enableChest(0);
          }
        }
        if(MY == 4) {
          if(MX == 0) {
            setPaths(1,1,1,0);
            setDecor(1,1,3,3,1);
            maps.special15.gotoAndStop("shovelRight");
            enableChest(2);
          }
          if(MX == 1) {
            setPaths(0,0,0,3);
            setDecor(1,3,2,3,6);
          }
          if(MX == 2) {
            setPaths(0,1,0,0);
            setDecor(2,1,2,2,3);
            maps.special16.gotoAndStop("ash");
          }
          if(MX == 3) {
            setPaths(0,2,0,0);
            setDecor(1,1,2,1,5);
            maps.special15.gotoAndStop("barrelRight");
          }
          if(MX == 4) {
            setPaths(0,0,0,0);
            setDecor(1,1,1,5,3);
            maps.special15.gotoAndStop("exit");
            maps.door0.play();
          }
          if(MX == 5) {
            setPaths(0,1,0,2);
            setDecor(1,3,3,4,2);
            maps.special15.gotoAndStop("bucket");
          }
          if(MX == 6) {
            setPaths(0,1,2,0);
            setDecor(2,1,5,2,4);
            maps.special16.gotoAndStop("ash");
          }
          if(MX == 7) {
            setPaths(0,0,0,0);
            setDecor(1,2,2,3,1);
            maps.special15.gotoAndStop("barrels");
          }
          if(MX == 8) {
            setPaths(0,2,0,1);
            setDecor(1,1,2,2,3);
          }
        }
        if(MY == 5) {
          if(MX == 1) {
            setPaths(0,2,1,0);
            setDecor(1,1,2,2,2);
            maps.special15.gotoAndStop("woodRight");
          }
          if(MX == 2) {
            setPaths(1,0,0,0);
            setDecor(1,3,1,2,1);
            maps.special15.gotoAndStop("bigWoodLeft");
          }
          if(MX == 3) {
            setPaths(2,0,0,2);
            setDecor(3,1,3,4,4);
          }
          if(MX == 4) {
            setPaths(0,0,2,0);
            setDecor(1,1,2,3,2);
          }
          if(MX == 5) {
            setPaths(1,0,0,0);
            setDecor(1,1,4,1,1);
            maps.special16.gotoAndStop("fly2");
          }
          if(MX == 6) {
            setPaths(1,0,0,0);
            setDecor(1,2,2,3,11);
          }
          if(MX == 7) {
            setPaths(0,0,0,1);
            setDecor(1,1,1,5,4);
            maps.special15.gotoAndStop("spike");
          }
        }
        if(MY == 6) {
          if(MX == 1) {
            setPaths(2,0,2,3);
            setDecor(2,1,2,4,1);
            maps.special15.gotoAndStop("bucketShovel");
          }
          if(MX == 2) {
            setPaths(0,0,0,1);
            setDecor(3,1,1,5,6);
            maps.special16.gotoAndStop("fly");
          }
          if(MX == 3) {
            setPaths(0,2,1,2);
            setDecor(1,1,2,4,1);
            enableChest(3);
          }
          if(MX == 4) {
            setPaths(0,1,2,0);
            setDecor(1,1,2,1,2);
            maps.special16.gotoAndStop("fly");
          }
          if(MX == 5) {
            setPaths(0,0,0,1);
            setDecor(1,1,1,2,4);
            maps.special15.gotoAndStop("shovelRight");
          }
          if(MX == 6) {
            setPaths(0,0,1,0);
            setDecor(1,1,5,1,2);
          }
          if(MX == 7) {
            setPaths(0,0,0,0);
            setDecor(1,3,2,3,10);
            maps.special15.gotoAndStop("bigWoodRight");
          }
          if(MX == 8) {
            setPaths(1,1,0,1);
            setDecor(1,1,4,4,3);
            maps.special17.gotoAndStop("monolithRight");
            maps.special15.gotoAndStop("ladderRight");
            maps.door1.play();
            maps.foe1.play();
            maps.foe1.visible = true;
          }
        }
        if(MY == 7) {
          if(MX == 1) {
            setPaths(0,2,1,0);
            setDecor(1,1,4,5,2);
          }
          if(MX == 2) {
            setPaths(0,0,0,0);
            setDecor(3,3,2,4,1);
            maps.special16.gotoAndStop("light");
            maps.foe4.play();
            maps.foe4.visible = true;
          }
          if(MX == 3) {
            setPaths(2,0,0,2);
            setDecor(3,1,2,2,3);
            maps.special15.gotoAndStop("barrelLeft");
          }
          if(MX == 4) {
            setPaths(1,1,1,0);
            setDecor(1,1,2,1,2);
            maps.special17.gotoAndStop("monolithLeft");
            enableChest(6);
          }
          if(MX == 5) {
            setPaths(0,0,0,0);
            setDecor(1,1,2,3,4);
            maps.special15.gotoAndStop("box");
          }
          if(MX == 6) {
            setPaths(0,2,0,0);
            setDecor(1,3,3,5,2);
            maps.special15.gotoAndStop("bucket");
          }
          if(MX == 7) {
            setPaths(0,1,0,1);
            setDecor(1,1,2,2,1);
            maps.special15.gotoAndStop("barrelLeft");
          }
        }
        if(MY == 8) {
          if(MX == 2) {
            setPaths(0,2,1,1);
            setDecor(1,1,2,4,2);
          }
          if(MX == 3) {
            setPaths(0,1,1,1);
            setDecor(1,1,2,5,8);
            maps.door3.play();
          }
          if(MX == 5) {
            setPaths(0,0,1,1);
            setDecor(1,1,3,4,3);
            maps.special16.gotoAndStop("ash");
          }
        }
        c = 0;
        for each(b in Maps.chestData[MapData.mapNo]) {
          if(b) {
            c++;
          }
        }
        if(c == 7) {
          Medals.unlock(Medals.tunnelVision);
        }
        maps.objectData = [{
          "mc":"chest0",
          "type":CHEST,
          "data":[Equips.shootingstar,1,Items.turd,2,Items.gems,3]
        },{
          "mc":"chest1",
          "type":CHEST,
          "data":[Items.turd,2,Items.mint,1]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Items.turd,1,Items.nut,1,Items.steel,2]
        },{
          "mc":"chest3",
          "type":CHEST,
          "data":[Items.turd,2,Equips.earthswhisper,1,Items.root,2]
        },{
          "mc":"chest4",
          "type":CHEST,
          "data":[Items.turnip,1,Items.nut,1,Items.turd,2]
        },{
          "mc":"chest5",
          "type":CHEST,
          "data":[Items.grapes,1,Items.turd,3,Items.turd,1]
        },{
          "mc":"chest6",
          "type":CHEST,
          "data":[Items.yoghurt,1,Items.turd,2,Items.riceball,1]
        }];
        doorLinks = [[50,4,6,4,"ladder"],[210,18,4,1,"ladder"],[208,10,6,1,"ladder"],[209,11,3,1,"ladder"]];
        ++Global.mazeCount;
        if(Global.mazeCount == 5) {
          initScene("maze1",0);
        }
        if(Global.mazeCount == 12) {
          initScene("maze2",1);
        }
        if(Global.mazeCount == 25) {
          initScene("maze3",2);
        }
        if(Global.mazeCount == 40) {
          initScene("maze4",3);
        }
        if(Global.mazeCount == 55) {
          initScene("maze5",4);
        }
      }
      if(mapNo == 191) {
        setArea(DEATHLY_HOLLOWS);
        initNPC(0,NPCs.goner);
        battleBGM = [BGM.TERTIARY_BATTLE,BGM.TERTIARY_BATTLE,BGM.TERTIARY_BATTLE];
        battleIcons = [BitPoison,DollAnna,HandZombie];
        battleIconsAlt = [BoulderDirt,HandZombie,SlimeBigMud];
        Flags.expStyle = Flags.NO_EXP;
        battles = [Battles.hollows1,Battles.hollows2,Battles.hollows3];
        battlesAlt = [BattlesAlt.hollows1,BattlesAlt.hollows2,BattlesAlt.hollows3];
        battleBG = [30,30,30];
        respawn = [undefined,undefined,true];
        altWeather = [Weather.STALACTITES,Weather.STALACTITES,Weather.STALACTITES];
        maps.push0.skin(5);
        hideChest(1);
        maps.success = function():* {
          dropChest(1);
        };
        maps.objectData = [{
          "mc":"sign0",
          "type":SIGN,
          "data":(Options.alwaysGiveEXP ? "signDungeonAlt2" : (Options.alwaysScaleFoes ? "signDungeonAlt" : "signDungeon"))
        },{
          "mc":"chest0",
          "type":CHEST,
          "data":[Equips.thestinger,1,Items.virus,3,Items.root,2]
        },{
          "mc":"chest1",
          "type":CHEST,
          "data":[Items.emerald,1,Items.turd,2]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Items.bacon,1,Items.beef,1,Items.pretzel,1]
        },{
          "mc":"chest3",
          "type":CHEST,
          "data":[Items.turd,4]
        }];
        doorLinks = [[36,15,2,4,"ladder"],[193,9,3,1,"ladder"]];
        initScenes([0],"hollows2",0);
      }
      if(mapNo == 193) {
        setArea(DEATHLY_HOLLOWS);
        battleBGM = [BGM.TERTIARY_BATTLE,BGM.TERTIARY_BATTLE,BGM.TERTIARY_BATTLE,BGM.TERTIARY_BATTLE];
        Maps.foeJumps = ["fly",undefined,undefined,"fly"];
        battleIcons = [BatBone,DollLance,BoulderDirt,BatBlood];
        battleIconsAlt = [BatBone,BitPoison,BoulderDirt,MirrorHaunted];
        Flags.expStyle = Flags.NO_EXP;
        battles = [Battles.hollows4,Battles.hollows5,Battles.hollows6,Battles.hollows7];
        battlesAlt = [BattlesAlt.hollows4,BattlesAlt.hollows5,BattlesAlt.hollows6,BattlesAlt.hollows7];
        battleBG = [31,30,30,30];
        respawn = [];
        weather = [Weather.WINDY,undefined,undefined,Weather.WINDY];
        altWeather = [Weather.FOG,Weather.STALACTITES,Weather.STALACTITES,Weather.FOG];
        initPed(0,151,Items.poop,true);
        initPed(1,152,Items.poop,true);
        initPed(2,153,Items.poop,true);
        initPed(3,154,Items.poop,true);
        maps.switchEvent = function():* {
          setDoors([Maps.switchData[151],Maps.switchData[152],Maps.switchData[153],Maps.switchData[154]],[0],false);
        };
        setDoors([Maps.switchData[151],Maps.switchData[152],Maps.switchData[153],Maps.switchData[154]],[0],true);
        maps.objectData = [{
          "mc":"chest0",
          "type":CHEST,
          "data":[Items.raspberries,12,Items.root,2]
        },{
          "mc":"chest1",
          "type":CHEST,
          "data":[Items.amber,1]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Items.mushroom,1]
        },{
          "mc":"chest3",
          "type":CHEST,
          "data":[Items.opal,1,Items.virus,4]
        }];
        doorLinks = [[191,4,8,1,"ladder"],[190,15,4,1,"ladder"]];
        initScene("hollows1",0);
      }
      if(mapNo == 190) {
        setArea(DEATHLY_HOLLOWS);
        if(Flags.SUPER_NEST_DEFEATED.quantity) {
          Game.clearBossBattle(0);
        }
        battleBGM = [BGM.BLADE_AND_SWITCH,BGM.TERTIARY_BATTLE];
        battleIcons = [BossNestNinja,CatNinja];
        battleIconsAlt = [BossNestNinja,CatNinja];
        Flags.expStyle = Flags.NO_EXP;
        battles = [Battles.superboss3,Battles.hollows12];
        battlesAlt = [BattlesAlt.superboss3,BattlesAlt.hollows12];
        battleBG = [32,32];
        respawn = [];
        altWeather = [Weather.GEYSERS,Weather.GEYSERS];
        Medals.checkDungeons();
        maps.objectData = [{
          "mc":"chest0",
          "type":CHEST,
          "data":[Items.nut,1,Items.beer,8]
        },{
          "mc":"chest1",
          "type":CHEST,
          "data":[Equips.soulcrusher,1,Items.steel,12,Items.titanium,1]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Equips.deathmask,1,Items.wood,8,Items.spike,3]
        },{
          "mc":"chest3",
          "type":CHEST,
          "data":[Equips.shellarmor,1,Items.turnip,1,Items.opal,1]
        },{
          "mc":"chest4",
          "type":CHEST,
          "data":[Items.lollipop,1,Items.poptart,1,Items.energy,3]
        },{
          "mc":"chest5",
          "type":CHEST,
          "data":[Cards.card14,1,Items.wool,6,Items.silk,2]
        },{
          "mc":"chest6",
          "type":CHEST,
          "data":[Items.blueberries,4]
        },{
          "mc":"chest7",
          "type":CHEST,
          "data":[Items.sapphire,1,Items.blueberries,1]
        }];
        doorLinks = [[193,11,7,1,"ladder"]];
        initScene("hollows5",2);
        initScenes([0,1],"hollows7",1);
        initScene("hollows8",3,null,Flags.SUPER_NEST_DEFEATED,1,2);
      }
      if(mapNo == 194) {
        setArea(DEATHLY_HOLLOWS);
        initSwitch(0,160);
        initSwitch(1,161);
        initSwitch(2,162);
        initSwitch(3,163);
        initSwitch(4,164);
        initSwitch(5,165);
        initSwitch(6,166);
        initSwitch(7,167);
        initSwitch(8,168);
        battleBGM = [BGM.TERTIARY_BATTLE,BGM.TERTIARY_BATTLE];
        Maps.foeJumps = ["slime"];
        battleIcons = [WormPutrid,ChomperSeaweed];
        battleIconsAlt = [WormPutrid,ChomperSeaweed];
        Flags.expStyle = Flags.NO_EXP;
        battles = [Battles.hollows8,Battles.hollows9];
        battlesAlt = [BattlesAlt.hollows8,BattlesAlt.hollows9];
        battleBG = [30,30];
        respawn = [];
        altWeather = [Weather.STALACTITES,Weather.STALACTITES];
        initNPC(0,NPCs.ripper);
        initPed(0,156,Items.poop,false);
        hideChest(5);
        maps.switchEvent = function(param1:Boolean = false):* {
          var _loc2_:int = 0;
          _loc2_ = 0;
          while(_loc2_ <= 7) {
            if(Maps.switchData[160 + _loc2_]) {
              maps["special" + _loc2_].gotoAndStop(2);
            } else {
              maps["special" + _loc2_].gotoAndStop(1);
            }
            _loc2_++;
          }
          if(!Maps.switchData[160] && !Maps.switchData[161] && !Maps.switchData[162] && Maps.switchData[163] && Maps.switchData[164] && !Maps.switchData[165] && !Maps.switchData[166] && Boolean(Maps.switchData[167]) && !Maps.switchData[168]) {
            setDoors([true],[0],param1);
          }
          if(Maps.switchData[160] && Maps.switchData[161] && Maps.switchData[162] && !Maps.switchData[163] && Maps.switchData[164] && Maps.switchData[165] && Maps.switchData[166] && !Maps.switchData[167] && Boolean(Maps.switchData[168])) {
            setDoors([true],[1],param1);
          }
          if(Maps.switchData[160] && !Maps.switchData[161] && Maps.switchData[162] && Maps.switchData[163] && !Maps.switchData[164] && !Maps.switchData[165] && Maps.switchData[166] && !Maps.switchData[167] && Boolean(Maps.switchData[168])) {
            dropChest(5);
            Medals.unlock(Medals.codeBreaker);
          }
        };
        maps.switchEvent(true);
        maps.objectData = [{
          "mc":"chest0",
          "type":CHEST,
          "data":[Equips.kingsguard,1,Items.gold,1,Items.silver,2]
        },{
          "mc":"chest1",
          "type":CHEST,
          "data":[Equips.elvenshield,1,Items.steel,3,Items.wood,2]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Items.gold,1,Items.satin,2,Items.silver,3]
        },{
          "mc":"chest3",
          "type":CHEST,
          "data":[Items.spike,2,Items.chicken,1]
        },{
          "mc":"chest4",
          "type":CHEST,
          "data":[Items.amber,1]
        },{
          "mc":"chest5",
          "type":CHEST,
          "data":[Items.gold,4,Items.diamond,1,Items.grail,1]
        }];
        initScenes([0],"hollows4",0);
      }
      if(mapNo == 192) {
        setArea(DEATHLY_HOLLOWS);
        battleBGM = [BGM.TERTIARY_BATTLE];
        battleIcons = [WraithMaster];
        battleIconsAlt = [HandZombie];
        Flags.expStyle = Flags.NO_EXP;
        battles = [Battles.hollows10];
        battlesAlt = [BattlesAlt.hollows10];
        battleBG = [31];
        respawn = [];
        altWeather = [Weather.STALACTITES];
        initPed(0,155,Items.poop,false);
        maps.push0.skin(16);
        maps.push1.skin(11);
        maps.push2.skin(11);
        maps.push3.skin(17);
        maps.push4.skin(16);
        maps.push5.skin(18);
        hideChest(1);
        maps.success = function():* {
          dropChest(1);
        };
        maps.objectData = [{
          "mc":"chest0",
          "type":CHEST,
          "data":[Items.bacon,1,Items.raspberries,4]
        },{
          "mc":"chest1",
          "type":CHEST,
          "data":[Equips.goldenaxe,1,Items.iron,8,Items.gold,1]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Items.amber,1,Items.root,1]
        }];
        doorLinks = [[193,1,5,3,"door"]];
        if(!Options.titties) {
          disableCutscene(0);
        }
        initScene("hollows6",0);
      }
      if(mapNo == 196) {
        setArea(DEATHLY_HOLLOWS);
        initPed(0,157,Items.poop,false);
        i = 0;
        while(i < 8) {
          maps["special" + i].gotoAndStop(3);
          i++;
        }
        initNPC(0,NPCs.vegan);
        maps.push0.skin(12);
        maps.push1.skin(14);
        maps.push2.skin(14);
        maps.push3.skin(16);
        maps.push4.skin(17);
        maps.push5.skin(12);
        maps.push6.skin(8);
        maps.push7.skin(13);
        maps.success = function():* {
          setSpikes([true],[0,1,2,3,4,5,6,7]);
          i = 0;
          while(i < 8) {
            maps["special" + i].gotoAndPlay(3);
            ++i;
          }
        };
        if(Maps.puzzleData[MapData.mapNo]) {
          maps.success();
        }
        maps.objectData = [{
          "mc":"chest0",
          "type":CHEST,
          "data":[Items.sushi,1,Items.coffee,8,Items.burger,1]
        },{
          "mc":"chest1",
          "type":CHEST,
          "data":[Equips.dragonfeather,1,Items.feather,9,Items.steel,6]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Items.amber,1,Items.root,1]
        }];
        doorLinks = [[193,1,5,3,"door"]];
        initScene("hollows3",0);
      }
      if(mapNo == 195) {
        setArea(DEATHLY_HOLLOWS);
        battleBGM = [BGM.TERTIARY_BATTLE];
        battleIcons = [WraithSteel];
        battleIconsAlt = [WraithLeaf];
        Flags.expStyle = Flags.NO_EXP;
        battles = [Battles.hollows11];
        battlesAlt = [BattlesAlt.hollows11];
        battleBG = [31];
        respawn = [];
        altWeather = [Weather.STALACTITES];
        initPed(0,158,Items.poop,false);
        initSwitch(0,169);
        initSwitch(1,170);
        initNPC(0,NPCs.cutter);
        maps.switchEvent = function():* {
          setSpikes([!Maps.switchData[169]],[0]);
          setSpikes([Maps.switchData[169]],[1]);
          setSpikes([!Maps.switchData[170]],[2]);
          setSpikes([Maps.switchData[170]],[3]);
        };
        i = 0;
        while(i < 8) {
          maps["special" + i].gotoAndStop(3);
          i++;
        }
        hideChest(2);
        maps.success = function():* {
          dropChest(2);
          i = 0;
          while(i < 8) {
            maps["special" + i].gotoAndPlay(3);
            ++i;
          }
        };
        maps.objectData = [{
          "mc":"chest0",
          "type":CHEST,
          "data":[Items.donut,1,Items.cake,1,Items.cupcake,1]
        },{
          "mc":"chest1",
          "type":CHEST,
          "data":[Items.espresso,2,Items.orangejuice,2,Items.burger,2]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Equips.puppyhat,1,Items.fur,8,Items.silk,3]
        },{
          "mc":"chest3",
          "type":CHEST,
          "data":[Items.scales,1,Items.satin,2]
        },{
          "mc":"chest4",
          "type":CHEST,
          "data":[Items.amber,1,Items.turd,2]
        }];
      }
      if(mapNo == 212) {
        setArea(CRYSTAL_CAVERNS);
        BGM.play(BGM.EVIL_AMBIENCE,false);
        if(Flags.SUPER_GOLEM_DEFEATED.quantity) {
          Game.clearBossBattle(1);
        }
        battleBGM = [BGM.SECONDARY_BATTLE,BGM.BLADE_AND_SWITCH];
        battleFlags = [undefined,Flags.FIRE_GOLEM_BATTLE];
        battleIcons = [BoulderObsidian,BossGolemFire];
        Flags.expStyle = Flags.NO_EXP;
        battles = [Battles.caverns4,Battles.superboss4];
        battlesAlt = [BattlesAlt.caverns4,BattlesAlt.superboss4];
        battleBG = [45,45];
        respawn = [undefined];
        weather = [Weather.ASH,Weather.ASH];
        altWeather = [Weather.FOG,Weather.FOG];
        Medals.checkDungeons();
        hideChest(2);
        maps.darkLevel = 2;
        maps.success = function():* {
          dropChest(2);
        };
        setDoors([true],[0]);
        maps.objectData = [{
          "mc":"chest0",
          "type":CHEST,
          "data":[Items.plutonium,1,Items.spring,12,Items.cpu,2]
        },{
          "mc":"chest1",
          "type":CHEST,
          "data":[Items.magma,12,Items.powder,19,Items.bomb,31]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Items.ruby,2,Items.scales,2,Items.rune,2]
        },{
          "mc":"chest3",
          "type":CHEST,
          "data":[Equips.dragonwings,1,Items.scales,1,Items.ruby,1]
        },{
          "mc":"chest4",
          "type":CHEST,
          "data":[Equips.spartanhelmet,1,Equips.spartancuirass,1,Items.scales,1]
        },{
          "mc":"chest5",
          "type":CHEST,
          "data":[Equips.heartstopper,1,Items.starfragment,1,Items.magma,8]
        },{
          "mc":"chest6",
          "type":CHEST,
          "data":[Items.mint,1,Items.pill,1,Items.lollipop,1]
        },{
          "mc":"chest7",
          "type":CHEST,
          "data":[Items.ruby,1,Items.magma,6,Items.powder,3]
        },{
          "mc":"chest8",
          "type":CHEST,
          "data":[Items.darkmatter,1,Items.magma,8,Items.gems,2]
        }];
        doorLinks = [[216,9,8,1,"none"],[213,3,5,1,"ladder"],[213,7,7,1,"ladder"]];
        initScene("caverns6",0);
        initScene("caverns7",1,null,Flags.SUPER_GOLEM_DEFEATED,1,2);
      }
      if(mapNo == 213) {
        setArea(CRYSTAL_CAVERNS);
        BGM.play(BGM.ANIMA,false);
        battleBGM = [BGM.SECONDARY_BATTLE,BGM.SECONDARY_BATTLE,BGM.SECONDARY_BATTLE];
        Maps.foeJumps = ["fly",undefined];
        battleIcons = [MonolithAncient,MammothCamel,DragonEarth];
        battleIconsAlt = [MonolithAncient,MirrorAngel,HydraZombie];
        Flags.expStyle = Flags.NO_EXP;
        battles = [Battles.caverns1,Battles.caverns2,Battles.caverns3];
        battlesAlt = [BattlesAlt.caverns1,BattlesAlt.caverns2,BattlesAlt.caverns3];
        battleBG = [44,44,44];
        respawn = [];
        altWeather = [Weather.ELECTRIC,Weather.ELECTRIC,Weather.ELECTRIC];
        maps.objectData = [{
          "mc":"chest0",
          "type":CHEST,
          "data":[Items.egg,1,Items.pizza,1]
        },{
          "mc":"chest1",
          "type":CHEST,
          "data":[Items.potato,1,Items.titanium,1,Items.steel,6]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Items.emerald,1,Items.root,1]
        }];
        doorLinks = [[212,4,6,1,"ladder"],[212,9,10,1,"ladder"]];
        initScene("caverns4",0);
      }
      if(mapNo == 214) {
        setArea(CRYSTAL_CAVERNS);
        initNPC(0,NPCs.roastie);
        maps.push4.skin(17);
        maps.push5.skin(17);
        maps.push6.skin(16);
        maps.push7.skin(16);
        maps.push8.skin(17);
        maps.success = function():* {
          setSpikes([true],[0,1]);
          Maps.playSound("spikes");
        };
        if(Boolean(Maps.blockData[MapData.mapNo]) && Boolean(Maps.blockData[MapData.mapNo].length)) {
          maps.success();
        }
        maps.objectData = [{
          "mc":"chest0",
          "type":CHEST,
          "data":[Cards.card16,1,Items.gold,1,Items.turd,2]
        },{
          "mc":"chest1",
          "type":CHEST,
          "data":[Equips.emeraldsmasher,1,Items.pipe,16,Items.emerald,1]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Items.grapes,1,Items.turd,4,Items.opal,1]
        },{
          "mc":"chest3",
          "type":CHEST,
          "data":[Items.sapphire,2,Items.turd,2]
        }];
        initScene("caverns3",0);
        initScenes([0],"caverns5",1);
      }
      if(mapNo == 215) {
        setArea(CRYSTAL_CAVERNS);
        initNPC(0,NPCs.digger);
        initNPC(1,NPCs.blondie);
        maps.success = function():* {
          setSpikes([true],[0,1]);
          Maps.playSound("spikes");
        };
        if(Boolean(Maps.blockData[MapData.mapNo]) && Boolean(Maps.blockData[MapData.mapNo].length)) {
          maps.success();
        }
        maps.objectData = [{
          "mc":"chest0",
          "type":CHEST,
          "data":[Items.chicken,1,Items.pretzel,1]
        },{
          "mc":"chest1",
          "type":CHEST,
          "data":[Items.donut,1,Items.espresso,1,Items.topaz,1]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Equips.oakstaff,1,Items.wood,14,Items.emerald,1]
        },{
          "mc":"chest3",
          "type":CHEST,
          "data":[Items.emerald,1,Items.root,3]
        },{
          "mc":"chest4",
          "type":CHEST,
          "data":[Items.gems,3,Items.turd,2]
        }];
        initScene("caverns2",0);
      }
      if(mapNo == 216) {
        setArea(CRYSTAL_CAVERNS);
        setDoors([Maps.switchData[150]],[0],true);
        maps.switchEvent = function():* {
          setDoors([Maps.switchData[150]],[0]);
        };
        initPed(0,150,Items.spikedboots,true);
        maps.push0.skin(30);
        maps.objectData = [{
          "mc":"sign0",
          "type":SIGN,
          "data":(Options.alwaysGiveEXP ? "signDungeonAlt2" : (Options.alwaysScaleFoes ? "signDungeonAlt" : "signDungeon"))
        },{
          "mc":"chest0",
          "type":CHEST,
          "data":[Items.gold,2,Items.silver,4,Items.amber,2]
        },{
          "mc":"chest1",
          "type":CHEST,
          "data":[Equips.bunnyears,1,Items.silk,6,Items.satin,3]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Items.butterflywing,20,Items.silver,4,Items.gems,2]
        },{
          "mc":"chest3",
          "type":CHEST,
          "data":[Items.emerald,1,Items.root,3]
        },{
          "mc":"chest4",
          "type":CHEST,
          "data":[Items.emerald,1,Items.turd,2]
        }];
        doorLinks = [[117,4,5,2,"cave"],[117,4,5,2,"cave"]];
        initScenes([0,1,2],"caverns1",0);
      }
      if(mapNo == 217) {
        setArea(CRYSTAL_CAVERNS);
        if(!Flags.ICE_HYDRA_DEFEATED.quantity) {
          maps.special0.visible = false;
          maps.special1.visible = false;
          maps.special2.visible = false;
          maps.special3.visible = false;
          maps.special4.visible = false;
        }
        maps.push0.skin(14);
        maps.push1.skin(12);
        maps.push2.skin(12);
        maps.push3.skin(12);
        maps.push4.skin(11);
        maps.push5.skin(13);
        maps.objectData = [{
          "mc":"chest0",
          "type":CHEST,
          "data":[Items.sapphire,1,Items.water,6,Items.ice,4]
        },{
          "mc":"chest1",
          "type":CHEST,
          "data":[Items.cake,1,Items.orangejuice,1,Items.pizza,2]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Equips.accelerator,1,Items.pipe,16,Items.gear,12]
        },{
          "mc":"chest3",
          "type":CHEST,
          "data":[Items.snowball,6,Items.snowball,3,Items.snowball,11]
        },{
          "mc":"chest4",
          "type":CHEST,
          "data":[Items.water,2,Items.snowball,1]
        }];
        initScene("temple1",0);
      }
      if(mapNo == 218) {
        setArea(CRYSTAL_CAVERNS);
        initNPC(0,NPCs.pandora);
        initNPC(1,NPCs.marina);
        if(!Flags.ICE_HYDRA_DEFEATED.quantity) {
          maps.special0.visible = false;
        }
        maps.push0.skin(11);
        maps.push1.skin(4);
        maps.push2.skin(2);
        maps.push3.skin(3);
        maps.push4.skin(11);
        maps.push5.skin(12);
        maps.objectData = [{
          "mc":"chest0",
          "type":CHEST,
          "data":[Items.snowball,3,Items.rune2,6,Items.snowball,2]
        },{
          "mc":"chest1",
          "type":CHEST,
          "data":[Equips.emeraldcyclone,1,Items.emerald,3,Items.sapphire,2]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Items.milk,1,Items.coffee,12,Items.burger,1]
        },{
          "mc":"chest4",
          "type":CHEST,
          "data":[Items.rune2,1,Items.snowball,3]
        }];
        initScene("temple2",0);
      }
      if(mapNo == 219) {
        setArea(CRYSTAL_CAVERNS);
        if(!Flags.ICE_HYDRA_DEFEATED.quantity) {
          maps.special0.visible = false;
          maps.special1.visible = false;
          maps.special2.visible = false;
          maps.special3.visible = false;
          maps.special4.visible = false;
          maps.special5.visible = false;
          maps.special6.visible = false;
        }
        battleBGM = [BGM.BLADE_AND_SWITCH,BGM.BLADE_AND_SWITCH,BGM.BLADE_AND_SWITCH,BGM.RETURN_OF_SNOW_QUEEN,BGM.RETURN_OF_SNOW_QUEEN];
        Maps.foeJumps = [undefined,undefined,undefined,"fly","fly"];
        battleFlags = [Flags.ICE_HYDRA,Flags.ICE_HYDRA,Flags.ICE_HYDRA];
        battleIcons = [HydraIce,HydraIce,HydraIce,BitWater,MonolithViking];
        battleIconsAlt = [HydraIce,HydraZombie,HydraIce,BitHoly,MonolithViking];
        Flags.expStyle = Flags.NO_EXP;
        battles = [Battles.superboss5,Battles.superboss5,Battles.superboss5,Battles.caverns5,Battles.caverns6];
        battlesAlt = [BattlesAlt.superboss5,BattlesAlt.superboss5,BattlesAlt.superboss5,BattlesAlt.caverns5,BattlesAlt.caverns6];
        battleBG = [46,46,46,46,46];
        respawn = [];
        weather = [undefined,Weather.SACRED,undefined,Weather.SACRED,Weather.SACRED];
        altWeather = [Weather.RAIN,Weather.WINDY,Weather.HAIL,Weather.WINDY,Weather.WINDY];
        Medals.checkDungeons();
        maps.objectData = [{
          "mc":"sign0",
          "type":SIGN2,
          "data":"crystal"
        },{
          "mc":"chest0",
          "type":CHEST,
          "data":[Cards.card12,1,Items.darkmatter,1,Items.rune,1]
        },{
          "mc":"chest1",
          "type":CHEST,
          "data":[Equips.turtlegi,1,Items.satin,4,Items.silk,8]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Items.sapphire,2,Items.moonpearl,2,Items.topaz,2]
        },{
          "mc":"chest3",
          "type":CHEST,
          "data":[Items.sushi,1,Items.riceball,1,Items.chili,1]
        },{
          "mc":"chest4",
          "type":CHEST,
          "data":[Equips.samidress,1,Items.fur,20,Items.bread,1]
        },{
          "mc":"chest5",
          "type":CHEST,
          "data":[Items.emerald,2,Items.opal,2,Items.ruby,2]
        }];
        initScene("temple3",0);
        initScene("temple4",1,null,Flags.ICE_HYDRA_DEFEATED,1,2);
      }
      if(mapNo == 300) {
        setArea(THE_SEA);
        initScene("sea1",0);
        maps.objectData = [{
          "mc":"sign0",
          "type":SIGN,
          "data":"seaSign1"
        },{
          "mc":"chest0",
          "type":CHEST,
          "data":[Items.herb,3,Items.turd,1,Items.wood,2]
        },{
          "mc":"chest1",
          "type":CHEST,
          "data":[Items.turd,2,Items.moonpearl,1,Items.turd,1]
        }];
      }
      if(mapNo == 302) {
        setArea(THE_SEA);
      }
      if(mapNo == 304) {
        setArea(THE_SEA);
      }
      if(mapNo == 306) {
        setArea(THE_SEA);
      }
      if(mapNo == 303) {
        setArea(THE_SEA);
        initScene("sea2",0);
      }
      if(mapNo == 305) {
        setArea(THE_SEA);
      }
      if(mapNo == 301) {
        setArea(THE_SEA);
        hideChest(0);
        maps.objectData = [{
          "mc":"sign0",
          "type":SIGN,
          "data":"seaSign2"
        },{
          "mc":"chest0",
          "type":CHEST,
          "data":[Items.seashell,1,Cards.card24,1,Items.seashell,1]
        }];
        initScenes([0,1],"sea6",0);
      }
      if(mapNo == 307) {
        setArea(THE_SEA);
        initScene("sea3",0);
      }
      if(mapNo == 308) {
        setArea(THE_SEA);
      }
      if(mapNo == 309) {
        setArea(THE_SEA);
        BGM.play(BGM.ANIMA);
        initScene("sea4",0);
        maps.objectData = [{
          "mc":"chest0",
          "type":CHEST,
          "data":[Items.root,2,Items.herb,5,Items.cloudberries,1]
        },{
          "mc":"chest1",
          "type":CHEST,
          "data":[Items.cloudberries,2,Items.herb,3]
        }];
        doorLinks = [[320,15,5,1,"ladder"]];
      }
      if(mapNo == 310) {
        setArea(THE_SEA);
        initScene("sea5",0);
        Maps.warpData[11] = true;
        Flags.expStyle = Flags.NO_EXP;
        battleBGM = [BGM.PETALS_OF_BLADE];
        battleIcons = [SquidPink];
        battles = [Battles.sea2];
        battlesAlt = [BattlesAlt.sea2];
        battleBG = [Backgrounds.NEW_ISLANDS];
        respawn = [false];
        weather = [Weather.GEYSERS];
        altWeather = [Weather.WINDY];
        initNPC(0,NPCs.hal);
        initNPC(1,NPCs.val);
        Medals.unlock(Medals.unchartedIslands);
        maps.objectData = [{
          "mc":"shop0",
          "type":SHOP,
          "data":[FOOD_SHOP,Items.FOOD_SHOP]
        },{
          "mc":"shop1",
          "type":SHOP,
          "data":[ITEM_SHOP,Items.ITEM_SHOP_3]
        },{
          "mc":"sign0",
          "type":SIGN,
          "data":"seaSign3"
        },{
          "mc":"chest0",
          "type":CHEST,
          "data":[Items.dragonfruit,3,Items.burger,1,Items.cloudberries,2]
        },{
          "mc":"chest1",
          "type":CHEST,
          "data":[Items.energy,6,Items.cola,6,Items.bru,6]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Items.ice,2]
        },{
          "mc":"chest3",
          "type":CHEST,
          "data":[Items.wood,2,Items.cloudberries,1]
        },{
          "mc":"chest4",
          "type":CHEST,
          "data":[Items.herb,4,Items.cloudberries,2,Items.root,1]
        }];
      }
      if(mapNo == 311) {
        setArea(THE_SEA);
        maps.objectData = [{
          "mc":"sign0",
          "type":SIGN,
          "data":(Options.alwaysGiveEXP ? "signDungeonAlt2" : (Options.alwaysScaleFoes ? "signDungeonAlt" : "signDungeon"))
        },{
          "mc":"chest0",
          "type":CHEST,
          "data":[Items.ruby,2,Items.silk,3,Items.satin,1]
        },{
          "mc":"chest1",
          "type":CHEST,
          "data":[Items.beer,6,Items.garlic,11,Items.orangejuice,1]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Items.wood,3,Items.steel,2]
        },{
          "mc":"chest3",
          "type":CHEST,
          "data":[Items.turd,2]
        },{
          "mc":"chest4",
          "type":CHEST,
          "data":[Items.titanium,1,Items.iron,2]
        }];
        doorLinks = [[313,8,10,1,"footsteps"],[313,9,10,1,"footsteps"],[313,11,10,1,"footsteps"]];
      }
      if(mapNo == 312) {
        setArea(THE_SEA);
        initScene("bunker1",0);
        Flags.expStyle = Flags.NO_EXP;
        battleBGM = [BGM.PETALS_OF_BLADE,BGM.PETALS_OF_BLADE];
        battleIcons = [ChomperLeafy,MonolithViking];
        battles = [Battles.sea3,Battles.sea1];
        battlesAlt = [BattlesAlt.sea3,BattlesAlt.sea1];
        battleBG = [Backgrounds.NEW_ISLANDS,Backgrounds.NEW_ISLANDS];
        respawn = [false,true];
        weather = [Weather.GEYSERS,Weather.GEYSERS];
        altWeather = [Weather.WINDY,Weather.WINDY];
        hideChest(0);
        hideChest(1);
        initSwitch(0,1300);
        initSwitch(1,1301);
        initSwitch(2,1302);
        maps.switchEvent = function():* {
          if(Maps.switchData[1300]) {
            setDoors([Maps.switchData[1300]],[0]);
          }
          if(Maps.switchData[1301]) {
            dropChest(0);
          }
          if(Maps.switchData[1302]) {
            dropChest(1);
          }
        };
        maps.objectData = [{
          "mc":"sign0",
          "type":SIGN,
          "data":(Options.alwaysGiveEXP ? "signDungeonAlt2" : (Options.alwaysScaleFoes ? "signDungeonAlt" : "signDungeon"))
        },{
          "mc":"chest0",
          "type":CHEST,
          "data":[Items.brick,12,Items.turd,1,Items.brick,3]
        },{
          "mc":"chest1",
          "type":CHEST,
          "data":[Items.gamechild,1,Items.spring,3,Items.plastic,6]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Items.buckle,6,Items.grail,1,Items.silk,2]
        },{
          "mc":"chest3",
          "type":CHEST,
          "data":[Items.root,2,Items.cloudberries,1,Items.herb,2]
        },{
          "mc":"chest4",
          "type":CHEST,
          "data":[Items.herb,3,Items.cloudberries,1]
        }];
        doorLinks = [[315,10,10,1,"metal"],[315,17,3,1,"ladder"]];
      }
      if(mapNo == 315) {
        setArea(DATA_BUNKER);
        maps.push0.skin(31);
        maps.push1.skin(31);
        initNPC(0,NPCs.felix);
        map.respawnFoesInSpecialAreas();
        maps.objectData = [{
          "mc":"sign0",
          "type":SIGN2,
          "data":"note2"
        },{
          "mc":"sign1",
          "type":SIGN2,
          "data":"note3"
        },{
          "mc":"sign2",
          "type":SIGN,
          "data":"note1"
        },{
          "mc":"sign3",
          "type":SIGN2,
          "data":"note4"
        },{
          "mc":"sign4",
          "type":SIGN2,
          "data":"note4"
        },{
          "mc":"chest0",
          "type":CHEST,
          "data":[Items.beer,6,Items.energy,6,Items.cola,6]
        },{
          "mc":"chest1",
          "type":CHEST,
          "data":[Items.pill,1,Items.tape,4]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Items.cpu,1,Items.kevlar,1]
        },{
          "mc":"chest3",
          "type":CHEST,
          "data":[Items.magma,3,Items.powder,2]
        },{
          "mc":"chest4",
          "type":CHEST,
          "data":[Items.root,2,Items.turd,1]
        },{
          "mc":"chest5",
          "type":CHEST,
          "data":[Items.map,1]
        },{
          "mc":"chest6",
          "type":CHEST,
          "data":[Items.virus,1]
        }];
        initScene("bunker2",0);
        doorLinks = [[312,10,7,2,"metal"],[316,10,5,1,"ladder"],[312,16,1,2,"ladder"]];
      }
      if(mapNo == 316) {
        setArea(DATA_BUNKER);
        Flags.expStyle = Flags.NO_EXP;
        battleFlags = [null,Flags.EBF1A,Flags.EBF1B,Flags.EBF2A,Flags.EBF2B,Flags.EBF3A,Flags.EBF3B,Flags.EBF4A,Flags.EBF4B];
        battleBGM = [null,BGM.THE_TREK,BGM.WINGS_2,BGM.THE_TREK,BGM.HEROES_MARCH,BGM.WINGS_2,BGM.YOULL_NEVER_GUESS,BGM.INTO_COMBAT,BGM.TPF_TRANS];
        battleIcons = [null,"empty","empty","empty","empty","empty","empty","empty","empty"];
        battles = [null,Battles.ebf1a,Battles.ebf1b,Battles.ebf2a,Battles.ebf2b,Battles.ebf3a,Battles.ebf3b,Battles.ebf4a,Battles.ebf4b];
        battlesAlt = [null,BattlesAlt.ebf1a,BattlesAlt.ebf1b,BattlesAlt.ebf2a,BattlesAlt.ebf2b,BattlesAlt.ebf3a,BattlesAlt.ebf3b,BattlesAlt.ebf4a,BattlesAlt.ebf4b];
        battleBG = [null,Backgrounds.EBF1_SLIMES,Backgrounds.EBF1_BEHOLDER,Backgrounds.EBF2_GOLEM,Backgrounds.EBF2_SANDWORM,Backgrounds.EBF3_JACK,Backgrounds.EBF3_PROTECTOR,Backgrounds.EBF4_RAFFLESIA,Backgrounds.EBF4_PRAETORIAN];
        respawn = [null,true,true,true,true,true,true,true,true];
        weather = [];
        altWeather = [null,Weather.GLITCH,Weather.FOG,Weather.SNOW,Weather.SANDSTORM,Weather.SUNNY,Weather.RADIATION,Weather.OVERGROWTH,Weather.ENERGY];
        if(Boolean(Maps.foeData[mapNo]) && Maps.foeData[mapNo][1] == 3) {
          maps.addTile(1,3,4,false);
          maps.foe1.stop();
          maps.special1.visible = false;
        }
        if(Maps.foeData[mapNo] && Maps.foeData[mapNo][2] == 3 || !Flags.EBF1A_DONE.quantity) {
          maps.addTile(1,5,4,false);
          maps.foe2.stop();
          maps.special2.visible = false;
        }
        if(Maps.foeData[mapNo] && Maps.foeData[mapNo][3] == 3 || !Flags.EBF1B_DONE.quantity) {
          maps.addTile(1,2,7,false);
          maps.foe3.stop();
          maps.special3.visible = false;
        }
        if(Maps.foeData[mapNo] && Maps.foeData[mapNo][4] == 3 || !Flags.EBF2A_DONE.quantity) {
          maps.addTile(1,6,7,false);
          maps.foe4.stop();
          maps.special4.visible = false;
        }
        if(Boolean(Maps.foeData[mapNo]) && Maps.foeData[mapNo][5] == 3) {
          maps.addTile(1,14,4,false);
          maps.foe5.stop();
          maps.special5.visible = false;
        }
        if(Maps.foeData[mapNo] && Maps.foeData[mapNo][6] == 3 || !Flags.EBF3A_DONE.quantity) {
          maps.addTile(1,18,4,false);
          maps.foe6.stop();
          maps.special6.visible = false;
        }
        if(Maps.foeData[mapNo] && Maps.foeData[mapNo][7] == 3 || !Flags.EBF3B_DONE.quantity) {
          maps.addTile(1,14,7,false);
          maps.foe7.stop();
          maps.special7.visible = false;
        }
        if(Maps.foeData[mapNo] && Maps.foeData[mapNo][8] == 3 || !Flags.EBF4A_DONE.quantity) {
          maps.addTile(1,17,7,false);
          maps.foe8.stop();
          maps.special8.visible = false;
        }
        if(Boolean(Flags.EBF1A_DONE.quantity) && Boolean(Flags.EBF1B_DONE.quantity) && Boolean(Flags.EBF2A_DONE.quantity) && Boolean(Flags.EBF2B_DONE.quantity) && Boolean(Flags.EBF3A_DONE.quantity) && Boolean(Flags.EBF3B_DONE.quantity) && Boolean(Flags.EBF4A_DONE.quantity) && Boolean(Flags.EBF4B_DONE.quantity)) {
          Medals.unlock(Medals.historyLessons);
        }
        hideChest(1);
        hideChest(2);
        hideChest(3);
        hideChest(4);
        hideChest(5);
        hideChest(6);
        hideChest(7);
        hideChest(8);
        if(Boolean(Maps.foeData[mapNo]) && Maps.foeData[mapNo][1] == 3) {
          dropChest(1);
        }
        if(Boolean(Maps.foeData[mapNo]) && Maps.foeData[mapNo][2] == 3) {
          dropChest(2);
        }
        if(Boolean(Maps.foeData[mapNo]) && Maps.foeData[mapNo][3] == 3) {
          dropChest(3);
        }
        if(Boolean(Maps.foeData[mapNo]) && Maps.foeData[mapNo][4] == 3) {
          dropChest(4);
        }
        if(Boolean(Maps.foeData[mapNo]) && Maps.foeData[mapNo][5] == 3) {
          dropChest(5);
        }
        if(Boolean(Maps.foeData[mapNo]) && Maps.foeData[mapNo][6] == 3) {
          dropChest(6);
        }
        if(Boolean(Maps.foeData[mapNo]) && Maps.foeData[mapNo][7] == 3) {
          dropChest(7);
        }
        if(Boolean(Maps.foeData[mapNo]) && Maps.foeData[mapNo][8] == 3) {
          dropChest(8);
        }
        initNPC(0,NPCs.linus);
        initNPC(1,NPCs.dexter);
        initNPC(2,NPCs.dinesh);
        initNPC(3,NPCs.gilfoyle);
        maps.push0.skin(31);
        maps.push1.skin(31);
        maps.push3.skin(31);
        maps.objectData = [{
          "mc":"sign0",
          "type":SIGN2,
          "data":"note5"
        },{
          "mc":"sign1",
          "type":SIGN2,
          "data":"note5"
        },{
          "mc":"chest0",
          "type":CHEST,
          "data":[Items.donut,1]
        },{
          "mc":"chest1",
          "type":CHEST,
          "data":[Cards.card22,1,Items.poptart,1,Equips.companioncube,1]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Equips.scottishcap,1,Cards.card10,1,Items.riceball,1]
        },{
          "mc":"chest3",
          "type":CHEST,
          "data":[Cards.card15,1,Items.bread,1,Equips.catears,1]
        },{
          "mc":"chest4",
          "type":CHEST,
          "data":[Equips.dogtags,1,Cards.card45,1,Items.grapes,1]
        },{
          "mc":"chest5",
          "type":CHEST,
          "data":[Cards.card28,1,Items.beef,1,Equips.nanomachines,1]
        },{
          "mc":"chest6",
          "type":CHEST,
          "data":[Equips.meowmeowbadge,1,Cards.card37,1,Items.turnip,1]
        },{
          "mc":"chest7",
          "type":CHEST,
          "data":[Cards.card8,1,Items.bacon,1,Equips.chopper,1]
        },{
          "mc":"chest8",
          "type":CHEST,
          "data":[Equips.chainsawgun,1,Cards.card29,1,Items.potato,1]
        },{
          "mc":"chest9",
          "type":CHEST,
          "data":[Items.wool,11,Items.gear,4]
        }];
        initScene("bunker3",0);
        initScenes([0,1,2,3,4],"bunker4",1);
        initScenes([5,6,7,8,9],"bunker5",2);
        initScene("bunker7",3,null,Flags.EBF1A_DONE);
        initScene("bunker8",4,null,Flags.EBF1B_DONE);
        initScene("bunker9",5,null,Flags.EBF2A_DONE);
        initScene("bunker10",6,null,Flags.EBF2B_DONE);
        initScene("bunker11",7,null,Flags.EBF3A_DONE);
        initScene("bunker12",8,null,Flags.EBF3B_DONE);
        initScene("bunker13",9,null,Flags.EBF4A_DONE);
        initScene("bunker14",10,null,Flags.EBF4B_DONE);
        doorLinks = [[315,10,5,1,"ladder"],[317,9,9,1,"ladder"]];
      }
      if(mapNo == 317) {
        setArea(DATA_BUNKER);
        Flags.expStyle = Flags.NO_EXP;
        battleFlags = [null,Flags.TWO_PLAYER_RUSH,Flags.THREE_PLAYER_RUSH];
        battleBGM = [null,BGM.YOULL_NEVER_GUESS,BGM.JUMP_INTO_BATTLE];
        battleIcons = [null,"empty","empty"];
        battles = [null,Battles.classicRushA,Battles.classicRushB];
        battlesAlt = [null,BattlesAlt.classicRushA,BattlesAlt.classicRushB];
        battleBG = [null,Backgrounds.EBF1_SLIMES,Backgrounds.EBF3_JACK];
        respawn = [null,true,true];
        weather = [];
        altWeather = [null,Weather.GLITCH,Weather.RADIATION];
        if(Maps.foeData[mapNo] && Maps.foeData[mapNo][1] == 3 || !Flags.EBF2B_DONE.quantity) {
          maps.addTile(1,5,3,false);
          maps.foe1.stop();
          maps.special1.visible = false;
        }
        if(Maps.foeData[mapNo] && Maps.foeData[mapNo][2] == 3 || !Flags.EBF4B_DONE.quantity) {
          maps.addTile(1,13,3,false);
          maps.foe2.stop();
          maps.special2.visible = false;
        }
        hideChest(2);
        hideChest(3);
        if(Boolean(Maps.foeData[mapNo]) && Maps.foeData[mapNo][1] == 3) {
          dropChest(2);
        }
        if(Boolean(Maps.foeData[mapNo]) && Maps.foeData[mapNo][2] == 3) {
          dropChest(3);
        }
        maps.push0.skin(31);
        maps.push1.skin(31);
        maps.push2.skin(31);
        initNPC(0,NPCs.alan);
        initNPC(1,NPCs.ada);
        initNPC(2,NPCs.elliot);
        maps.objectData = [{
          "mc":"chest0",
          "type":CHEST,
          "data":[Items.plutonium,1,Items.pipe,3,Items.spring,2]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Items.gamechild,1,Equips.viridian,1,Items.gamechild,1]
        },{
          "mc":"chest3",
          "type":CHEST,
          "data":[Items.lego,1,Equips.tetromino,1,Items.lego,1]
        },{
          "mc":"chest5",
          "type":CHEST,
          "data":[Items.pumpkin,3,Items.herb,1]
        },{
          "mc":"chest6",
          "type":CHEST,
          "data":[Items.herb,2,Items.garlic,3]
        },{
          "mc":"chest7",
          "type":CHEST,
          "data":[Items.tomato,1,Items.turd,1]
        },{
          "mc":"chest8",
          "type":CHEST,
          "data":[Items.garlic,2,Items.turd,1]
        }];
        initScene("bunker6",0);
        initPainting(0,69);
        initPainting(1,70);
        initPainting(2,64);
        initPainting(3,65);
        initPainting(4,67);
        initPainting(5,66);
        initPainting(6,68);
        if(Boolean(Flags.EBF1A_DONE.quantity) && Boolean(Flags.EBF1B_DONE.quantity) && Boolean(Flags.EBF2A_DONE.quantity) && Boolean(Flags.EBF2B_DONE.quantity) && Boolean(Flags.EBF3A_DONE.quantity) && Boolean(Flags.EBF3B_DONE.quantity) && Boolean(Flags.EBF4A_DONE.quantity) && Boolean(Flags.EBF4B_DONE.quantity)) {
        }
        doorLinks = [[316,10,7,1,"ladder"]];
      }
      if(mapNo == 313) {
        setArea(BATTLE_ARENA);
        battleIcons = [BearBlack,MammothWar,BushDark,CatSkeleton,HandSkeleton,BushDark,CatSkeleton];
        respawn = [];
        hideChest(0);
        hideChest(1);
        if(Boolean(Flags.P1_ARENA_DONE.quantity) && Boolean(Flags.P2_ARENA_DONE.quantity) && Boolean(Flags.P3_ARENA_DONE.quantity) && Boolean(Flags.P4_ARENA_DONE.quantity) && Boolean(Flags.P5_ARENA_DONE.quantity)) {
          Medals.unlock(Medals.gladiators);
          Flags.ALL_ARENA_DONE.quantity = 1;
          dropChest(0);
          dropChest(1);
        }
        if(!Flags.P1_ARENA_DONE.quantity) {
          Flags.P1_ARENA_DONE.quantity = 0;
        }
        map.respawnFoesInSpecialAreas();
        initNPC(0,NPCs.reno);
        initNPC(1,NPCs.renoB);
        initNPC(2,NPCs.fartus);
        initNPC(3,NPCs.nimrodB);
        initNPC(4,NPCs.sabrinaB);
        initNPC(5,NPCs.shartusB);
        initNPC(6,NPCs.franB);
        initNPC(7,NPCs.phyrnna);
        Flags.P1_ARENA_EPIC.quantity = 0;
        Flags.P2_ARENA_EPIC.quantity = 0;
        Flags.P3_ARENA_EPIC.quantity = 0;
        Flags.P4_ARENA_EPIC.quantity = 0;
        Flags.P5_ARENA_EPIC.quantity = 0;
        if(Flags.P1_ARENA_DONE.quantity) {
          maps.special1.visible = true;
        }
        if(Flags.P2_ARENA_DONE.quantity) {
          maps.special2.visible = true;
        }
        if(Flags.P3_ARENA_DONE.quantity) {
          maps.special3.visible = true;
        }
        if(Flags.P4_ARENA_DONE.quantity) {
          maps.special4.visible = true;
        }
        if(Flags.P5_ARENA_DONE.quantity) {
          maps.special5.visible = true;
        }
        maps.objectData = [{
          "mc":"sign0",
          "type":SIGN2,
          "data":"spears"
        },{
          "mc":"sign1",
          "type":SIGN2,
          "data":"spears"
        },{
          "mc":"sign2",
          "type":SIGN2,
          "data":"spears"
        },{
          "mc":"chest0",
          "type":CHEST,
          "data":[Items.virus,4,Equips.juicybeast,1,Items.fur,7]
        },{
          "mc":"chest1",
          "type":CHEST,
          "data":[Items.magma,9,Equips.onering,1,Items.gold,2]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Items.bomb,7,Items.powder,4,Items.spring,1]
        }];
        doorLinks = [[311,11,8,2,"footsteps"],[314,4,10,1,"none"],[314,7,10,1,"none"],[314,10,10,1,"none"],[314,13,10,1,"none"],[314,16,10,1,"none"]];
        if(Game.party.length == 1) {
          (maps.parent as MapMenu).clearMenus();
          if(Game.party[0] == Players.player1) {
            Game.party = [Players.player1,Players.player2,Players.player5,Players.player3,Players.player4];
          } else if(Game.party[0] == Players.player2) {
            Game.party = [Players.player2,Players.player1,Players.player5,Players.player3,Players.player4];
          } else if(Game.party[0] == Players.player3) {
            Game.party = [Players.player3,Players.player1,Players.player2,Players.player5,Players.player4];
          } else if(Game.party[0] == Players.player4) {
            Game.party = [Players.player4,Players.player1,Players.player2,Players.player3,Players.player5];
          } else if(Game.party[0] == Players.player5) {
            Game.party = [Players.player5,Players.player1,Players.player2,Players.player3,Players.player4];
          }
          maps.player.player = (Game.party[0] as Player).playerNo;
          maps.player.skin();
          (map.parent as MapMenu).updatePlayerBars();
        }
        initScene("enterArena",0);
        initScene("p1arena5",1,null,Flags.P1_ARENA_DONE);
        initScene("p2arena5",2,null,Flags.P2_ARENA_DONE);
        initScene("p3arena5",3,null,Flags.P3_ARENA_DONE);
        initScene("p4arena5",4,null,Flags.P4_ARENA_DONE);
        initScene("p5arena5",5,null,Flags.P5_ARENA_DONE);
      }
      if(mapNo == 314) {
        setArea(BATTLE_ARENA);
        maps.objectData = [{
          "mc":"chest0",
          "type":CHEST,
          "data":[Cards.card5,1,Items.bacon,1,Items.beef,1]
        },{
          "mc":"chest1",
          "type":CHEST,
          "data":[Cards.card11,1,Items.poptart,1,Items.donut,1]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Cards.card20,1,Items.bread,1,Items.potato,1]
        },{
          "mc":"chest3",
          "type":CHEST,
          "data":[Cards.card42,1,Items.turnip,1,Items.grapes,1]
        },{
          "mc":"chest4",
          "type":CHEST,
          "data":[Cards.card44,1,Items.sushi,1,Items.riceball,1]
        }];
        hideChest(0);
        hideChest(1);
        hideChest(2);
        hideChest(3);
        hideChest(4);
        initNPC(0,NPCs.sabrina);
        initNPC(1,NPCs.nimrod);
        initNPC(2,NPCs.shartus);
        initNPC(3,NPCs.fran);
        if(Game.party.length == 5) {
          (maps.parent as MapMenu).clearMenus();
          if(map.player.X < 6) {
            Game.party = [Players.player1];
          } else if(map.player.X < 9) {
            Game.party = [Players.player2];
          } else if(map.player.X < 12) {
            Game.party = [Players.player3];
          } else if(map.player.X < 15) {
            Game.party = [Players.player4];
          } else {
            Game.party = [Players.player5];
          }
          maps.player.player = (Game.party[0] as Player).playerNo;
          maps.player.skin();
          if(Options.idleBackgrounds) {
            maps.special8.gotoAndPlay(2);
          }
          (map.parent as MapMenu).updatePlayerBars();
        }
        if(Game.party[0] != Players.player1) {
          maps.addTile(1,4,11,false);
          map.door1.stop();
        } else {
          map.special0.gotoAndStop(2);
        }
        if(Game.party[0] != Players.player2) {
          maps.addTile(1,7,11,false);
          map.door2.stop();
        } else {
          map.special1.gotoAndStop(2);
        }
        if(Game.party[0] != Players.player3) {
          maps.addTile(1,10,11,false);
          map.door3.stop();
        } else {
          map.special2.gotoAndStop(2);
        }
        if(Game.party[0] != Players.player4) {
          maps.addTile(1,13,11,false);
          map.door4.stop();
        } else {
          map.special3.gotoAndStop(2);
        }
        if(Game.party[0] != Players.player5) {
          maps.addTile(1,16,11,false);
          map.door5.stop();
        } else {
          map.special4.gotoAndStop(2);
        }
        Flags.expStyle = Flags.NO_EXP;
        respawn = [true,true,true,true,true,true,true,true,true,true];
        battleBG = [Backgrounds.BATTLE_ARENA];
        battleFlags = [Flags.ARENA_BATTLE,Flags.ARENA_BATTLE,Flags.ARENA_BATTLE,Flags.ARENA_BATTLE,Flags.ARENA_BATTLE,Flags.ARENA_BATTLE,Flags.ARENA_BATTLE,Flags.ARENA_BATTLE,Flags.ARENA_BATTLE,Flags.ARENA_BATTLE];
        weather = [];
        if((Game.party[0] as Player).playerNo == 1) {
          initScene("p1arena1",0);
          if(Maps.instance.countFoesDefeated(mapNo) == 1) {
            initScene("p1arena1B",1);
          }
          if(Maps.instance.countFoesDefeated(mapNo) == 3) {
            initScene("p1arena2",2);
          }
          if(Maps.instance.countFoesDefeated(mapNo) == 6) {
            initScene("p1arena3",3);
          }
          if(Maps.instance.countFoesDefeated(mapNo) == 9) {
            initScene("p1arena3B",4);
          }
          if(Maps.instance.countFoesDefeated(mapNo) == 10) {
            initScene("p1arena4",5);
          }
          battleBGM = [BGM.TERTIARY_BATTLE,BGM.TERTIARY_BATTLE,BGM.TERTIARY_BATTLE,BGM.TERTIARY_BATTLE,BGM.TERTIARY_BATTLE,BGM.TERTIARY_BATTLE,BGM.TERTIARY_BATTLE,BGM.TERTIARY_BATTLE,BGM.TERTIARY_BATTLE,BGM.TERTIARY_BATTLE];
          battleIcons = [DragonEarth,BoulderDirt,CreepGreen,HandZombie,SquidPink,SlimeBigMud,BearGrolar,FallenDrowned,WraithMaster,GolemBone];
          battleIconsAlt = [DragonSea,WormBook,HydraZombie,CatSkeleton,SquidLime,SlimeBigSand,BearBlack,FallenBurned,WraithSteel,WormScaly];
          battles = [Battles.p1battle1,Battles.p1battle2,Battles.p1battle3,Battles.p1battle4,Battles.p1battle5,Battles.p1battle6,Battles.p1battle7,Battles.p1battle8,Battles.p1battle9,Battles.p1boss];
          battlesAlt = [BattlesAlt.p1battle1,BattlesAlt.p1battle2,BattlesAlt.p1battle3,BattlesAlt.p1battle4,BattlesAlt.p1battle5,BattlesAlt.p1battle6,BattlesAlt.p1battle7,BattlesAlt.p1battle8,BattlesAlt.p1battle9,BattlesAlt.p1boss];
          altWeather = [Weather.SANDSTORM,Weather.SANDSTORM,Weather.SANDSTORM,Weather.SANDSTORM,Weather.SANDSTORM,Weather.SANDSTORM,Weather.SANDSTORM,Weather.SANDSTORM,Weather.SANDSTORM,Weather.SANDSTORM];
          maps.foe0.x -= 50;
          maps.foe3.x += 50;
          maps.foe4.x -= 100;
          maps.foe7.x -= 50;
          maps.foe8.x += 50;
          if(Maps.instance.allFoesDefeated(314,10)) {
            Flags.P1_ARENA_DONE.quantity = true;
            dropChest(0);
          }
          if(Flags.P1_ARENA_EPIC.quantity == 10) {
            Medals.unlock(Medals.soloSwordsman);
          }
        }
        if((Game.party[0] as Player).playerNo == 2) {
          initScene("p2arena1",4);
          if(Maps.instance.countFoesDefeated(mapNo) == 1) {
            initScene("p2arena1B",6);
          }
          if(Maps.instance.countFoesDefeated(mapNo) == 3) {
            initScene("p2arena2",7);
          }
          if(Maps.instance.countFoesDefeated(mapNo) == 6) {
            initScene("p2arena3",8);
          }
          if(Maps.instance.countFoesDefeated(mapNo) == 9) {
            initScene("p2arena3B",9);
          }
          if(Maps.instance.countFoesDefeated(mapNo) == 10) {
            initScene("p2arena4",10);
          }
          battleBGM = [BGM.POSH_BATTLE,BGM.POSH_BATTLE,BGM.POSH_BATTLE,BGM.POSH_BATTLE,BGM.POSH_BATTLE,BGM.POSH_BATTLE,BGM.POSH_BATTLE,BGM.POSH_BATTLE,BGM.POSH_BATTLE,BGM.POSH_BATTLE];
          battleIcons = [FallenBeheaded,BitThunder,IdolGem,WraithLeaf,CatWizard,WormPutrid,MirrorHaunted,SlimeBigIcecream,DogWolf,GloopFab];
          battleIconsAlt = [FallenCrucified,BitWater,IdolWood,WraithFire,CatWizard,WormBook,FlybotRed,SlimeBigChocolate,DogTanuki,"natz"];
          battles = [Battles.p2battle1,Battles.p2battle2,Battles.p2battle3,Battles.p2battle4,Battles.p2battle5,Battles.p2battle6,Battles.p2battle7,Battles.p2battle8,Battles.p2battle9,Battles.p2boss];
          battlesAlt = [BattlesAlt.p2battle1,BattlesAlt.p2battle2,BattlesAlt.p2battle3,BattlesAlt.p2battle4,BattlesAlt.p2battle5,BattlesAlt.p2battle6,BattlesAlt.p2battle7,BattlesAlt.p2battle8,BattlesAlt.p2battle9,BattlesAlt.p2boss];
          altWeather = [Weather.ELECTRIC,Weather.ELECTRIC,Weather.ELECTRIC,Weather.ELECTRIC,Weather.ELECTRIC,Weather.ELECTRIC,Weather.ELECTRIC,Weather.ELECTRIC,Weather.ELECTRIC,Weather.ELECTRIC];
          maps.foe1.x += 100;
          maps.foe2.x -= 50;
          maps.foe9.x += 50;
          maps.foe0.x -= 50;
          maps.foe5.x += 50;
          maps.foe8.x += 50;
          maps.foe6.x -= 100;
          if(Maps.instance.allFoesDefeated(314,10)) {
            Flags.P2_ARENA_DONE.quantity = true;
            dropChest(1);
          }
          if(Flags.P2_ARENA_EPIC.quantity == 10) {
            Medals.unlock(Medals.wizardBattle);
          }
        }
        if((Game.party[0] as Player).playerNo == 3) {
          initScene("p3arena1",8);
          if(Maps.instance.countFoesDefeated(mapNo) == 1) {
            initScene("p3arena1B",11);
          }
          if(Maps.instance.countFoesDefeated(mapNo) == 3) {
            initScene("p3arena2",12);
          }
          if(Maps.instance.countFoesDefeated(mapNo) == 6) {
            initScene("p3arena3",13);
          }
          if(Maps.instance.countFoesDefeated(mapNo) == 9) {
            initScene("p3arena3B",14);
          }
          if(Maps.instance.countFoesDefeated(mapNo) == 10) {
            initScene("p3arena4",15);
          }
          battleBGM = [BGM.SECONDARY_BATTLE,BGM.SECONDARY_BATTLE,BGM.SECONDARY_BATTLE,BGM.SECONDARY_BATTLE,BGM.SECONDARY_BATTLE,BGM.SECONDARY_BATTLE,BGM.SECONDARY_BATTLE,BGM.SECONDARY_BATTLE,BGM.SECONDARY_BATTLE,BGM.SECONDARY_BATTLE];
          battleIcons = [FlybotRed,DogFriend,ChomperLeafy,HydraMagma,CatSniper,BossTankGiga,WormFuzzy,SlimeBunny,FishGold,Defender3];
          battleIconsAlt = [MirrorHaunted,SlimeBigIcecream,ChomperMutant,HydraIce,CreepRed,DragonOmega,BoulderDirt,DogFriend,DollLance,Defender1];
          battles = [Battles.p3battle1,Battles.p3battle2,Battles.p3battle3,Battles.p3battle4,Battles.p3battle5,Battles.p3battle6,Battles.p3battle7,Battles.p3battle8,Battles.p3battle9,Battles.p3boss];
          battlesAlt = [BattlesAlt.p3battle1,BattlesAlt.p3battle2,BattlesAlt.p3battle3,BattlesAlt.p3battle4,BattlesAlt.p3battle5,BattlesAlt.p3battle6,BattlesAlt.p3battle7,BattlesAlt.p3battle8,BattlesAlt.p3battle9,BattlesAlt.p3boss];
          altWeather = [Weather.AIRSTRIKES,Weather.AIRSTRIKES,Weather.AIRSTRIKES,Weather.AIRSTRIKES,Weather.AIRSTRIKES,Weather.AIRSTRIKES,Weather.AIRSTRIKES,Weather.AIRSTRIKES,Weather.AIRSTRIKES,Weather.AIRSTRIKES];
          maps.foe9.x -= 50;
          maps.foe2.x -= 50;
          maps.foe0.x += 250;
          maps.foe5.x += 50;
          if(Maps.instance.allFoesDefeated(314,10)) {
            Flags.P3_ARENA_DONE.quantity = true;
            dropChest(2);
          }
          if(Flags.P3_ARENA_EPIC.quantity == 10) {
            Medals.unlock(Medals.shootingRange);
          }
        }
        if((Game.party[0] as Player).playerNo == 4) {
          initScene("p4arena1",12);
          if(Maps.instance.countFoesDefeated(mapNo) == 1) {
            initScene("p4arena1B",16);
          }
          if(Maps.instance.countFoesDefeated(mapNo) == 3) {
            initScene("p4arena2",17);
          }
          if(Maps.instance.countFoesDefeated(mapNo) == 6) {
            initScene("p4arena3",18);
          }
          if(Maps.instance.countFoesDefeated(mapNo) == 9) {
            initScene("p4arena3B",19);
          }
          if(Maps.instance.countFoesDefeated(mapNo) == 10) {
            initScene("p4arena4",20);
          }
          battleBGM = [BGM.BLOSSOM,BGM.BLOSSOM,BGM.BLOSSOM,BGM.BLOSSOM,BGM.BLOSSOM,BGM.BLOSSOM,BGM.BLOSSOM,BGM.BLOSSOM,BGM.BLOSSOM,BGM.BLOSSOM];
          battleIcons = [SlimeBigSand,WraithOrigami,BoulderCoral,DragonSea,MonolithViking,FallenBeheaded,MirrorDemon,MonolithAncient,DollAnna,BearBlack];
          battleIconsAlt = [DogWolf,MammothWooly,CreepGreen,BossTankGiga,WormBook,MirrorAngel,CatSkeleton,MonolithCosmic,ChomperLeafy,BearGrolar];
          battles = [Battles.p4battle1,Battles.p4battle2,Battles.p4battle3,Battles.p4battle4,Battles.p4battle5,Battles.p4battle6,Battles.p4battle7,Battles.p4battle8,Battles.p4battle9,Battles.p4boss];
          battlesAlt = [BattlesAlt.p4battle1,BattlesAlt.p4battle2,BattlesAlt.p4battle3,BattlesAlt.p4battle4,BattlesAlt.p4battle5,BattlesAlt.p4battle6,BattlesAlt.p4battle7,BattlesAlt.p4battle8,BattlesAlt.p4battle9,BattlesAlt.p4boss];
          altWeather = [Weather.LEAVES,Weather.LEAVES,Weather.LEAVES,Weather.LEAVES,Weather.LEAVES,Weather.LEAVES,Weather.LEAVES,Weather.LEAVES,Weather.LEAVES,Weather.LEAVES];
          maps.foe8.x += 50;
          maps.foe7.x -= 100;
          maps.foe0.x -= 50;
          maps.foe3.x += 50;
          maps.foe2.x -= 50;
          if(Maps.instance.allFoesDefeated(314,10)) {
            Flags.P4_ARENA_DONE.quantity = true;
            dropChest(3);
          }
          if(Flags.P4_ARENA_EPIC.quantity == 10) {
            Medals.unlock(Medals.bowMaster);
          }
        }
        if((Game.party[0] as Player).playerNo == 5) {
          initScene("p5arena1",16);
          if(Maps.instance.countFoesDefeated(mapNo) == 1) {
            initScene("p5arena1B",21);
          }
          if(Maps.instance.countFoesDefeated(mapNo) == 3) {
            initScene("p5arena2",22);
          }
          if(Maps.instance.countFoesDefeated(mapNo) == 6) {
            initScene("p5arena3",23);
          }
          if(Maps.instance.countFoesDefeated(mapNo) == 9) {
            initScene("p5arena3B",24);
          }
          if(Maps.instance.countFoesDefeated(mapNo) == 10) {
            initScene("p5arena4",25);
          }
          battleBGM = [BGM.NYMPHIS_FAE,BGM.NYMPHIS_FAE,BGM.NYMPHIS_FAE,BGM.NYMPHIS_FAE,BGM.NYMPHIS_FAE,BGM.NYMPHIS_FAE,BGM.NYMPHIS_FAE,BGM.NYMPHIS_FAE,BGM.NYMPHIS_FAE,BGM.NYMPHIS_FAE];
          battleIcons = [CatWizard,BatThunder,SlimeBigLava,DollNoLegs,FallenCrucified,WormBook,IdolMetal,BoulderDirt,MirrorWise,CatSkeleton];
          battleIconsAlt = [WormCutie,BatBone,SlimeBigMud,FishJet,FallenDrowned,Defender3,IdolMetal,BoulderObsidian,MirrorHaunted,"natz"];
          battles = [Battles.p5battle1,Battles.p5battle2,Battles.p5battle3,Battles.p5battle4,Battles.p5battle5,Battles.p5battle6,Battles.p5battle7,Battles.p5battle8,Battles.p5battle9,Battles.p5boss];
          battlesAlt = [BattlesAlt.p5battle1,BattlesAlt.p5battle2,BattlesAlt.p5battle3,BattlesAlt.p5battle4,BattlesAlt.p5battle5,BattlesAlt.p5battle6,BattlesAlt.p5battle7,BattlesAlt.p5battle8,BattlesAlt.p5battle9,BattlesAlt.p5boss];
          altWeather = [Weather.LOW_GRAVITY,Weather.LOW_GRAVITY,Weather.LOW_GRAVITY,Weather.LOW_GRAVITY,Weather.LOW_GRAVITY,Weather.LOW_GRAVITY,Weather.LOW_GRAVITY,Weather.LOW_GRAVITY,Weather.LOW_GRAVITY,Weather.LOW_GRAVITY];
          maps.foe9.x += 50;
          maps.foe1.x += 100;
          maps.foe2.x -= 50;
          maps.foe4.x -= 50;
          maps.foe6.x += 100;
          if(Maps.instance.allFoesDefeated(314,10)) {
            Flags.P5_ARENA_DONE.quantity = true;
            dropChest(4);
          }
          if(Flags.P5_ARENA_EPIC.quantity == 10) {
            Medals.unlock(Medals.catAttack);
          }
        }
        doorLinks = [[],[313,4,3,1,"footsteps"],[313,7,3,1,"footsteps"],[313,10,3,1,"footsteps"],[313,13,3,1,"footsteps"],[313,16,3,1,"footsteps"]];
      }
      if(mapNo == 320) {
        setArea(THE_SEA);
        BGM.play(BGM.CAVE_AMBIENCE);
        Text.resetArcadeText();
        Medals.unlock(Medals.outOfBounds);
        initScene("mermaid1",0);
        initScene("mermaid2",1,null,Flags.MERMAID_DEFEATED);
        Flags.expStyle = Flags.SCALE_TO_LEVEL;
        battleFlags = [Flags.MERMAID];
        battleBGM = [BGM.ARCADE];
        battleIcons = [ArcadeMermaid];
        battles = [Battles.mermaid];
        battlesAlt = [BattlesAlt.mermaid];
        battleBG = [Backgrounds.MERMAID];
        respawn = [true];
        weather = [];
        altWeather = [Weather.RAIN];
        hideChest(0);
        if(Flags.MERMAID_DEFEATED.quantity) {
          dropChest(0);
        }
        if(Boolean(Maps.foeData[mapNo]) && Maps.foeData[mapNo][0] == 3) {
          maps.addTile(1,4,5,false);
          maps.foe0.stop();
        }
        maps.objectData = [{
          "mc":"chest0",
          "type":CHEST,
          "data":[Equips.deepblue,1,Cards.card32,1,Items.sushi,1]
        },{
          "mc":"chest1",
          "type":CHEST,
          "data":[Items.seashell,1,Equips.narutomaki,1,Items.seashell,1]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Items.seashell,4,Items.butterflywing,2,Items.seashell,1]
        }];
        doorLinks = [[309,10,3,4,"ladder"]];
      }
      if(mapNo == 321) {
        setArea(REDPINE_TOWN);
        Maps.minimapCoords = [-1,-1];
        BGM.play(BGM.EVIL_AMBIENCE);
        initScene("snek1",0);
        initScene("snek2",1,null,Flags.SNEK_DEFEATED);
        Text.resetArcadeText();
        Medals.unlock(Medals.outOfBounds);
        Flags.expStyle = Flags.SCALE_TO_LEVEL;
        battleFlags = [Flags.SNEK];
        battleBGM = [BGM.ARCADE];
        battleIcons = [ArcadeSnek];
        battles = [Battles.snek];
        battlesAlt = [BattlesAlt.snek];
        battleBG = [Backgrounds.SNEK];
        respawn = [true];
        weather = [];
        altWeather = [Weather.FOG];
        setDoors([true],[0]);
        hideChest(0);
        hideChest(1);
        if(Flags.SNEK_DEFEATED.quantity) {
          dropChest(0);
          dropChest(1);
        }
        if(Boolean(Maps.foeData[mapNo]) && Maps.foeData[mapNo][0] == 3) {
          maps.addTile(1,9,3,false);
          maps.foe0.stop();
        }
        maps.objectData = [{
          "mc":"chest0",
          "type":CHEST,
          "data":[Cards.card26,1,Items.opal,1,Items.pizza,1]
        },{
          "mc":"chest1",
          "type":CHEST,
          "data":[Items.scales,1,Cards.card38,1,Items.rune,1]
        }];
        doorLinks = [[117,14,10,2,"none"]];
      }
      if(mapNo == 322) {
        setArea(GREENWOOD_VILLAGE);
        Maps.minimapCoords = [10,0];
        BGM.play(BGM.CAVE_AMBIENCE);
        initScene("totom1",0);
        initScene("totom2",1,null,Flags.TOTOM_DEFEATED);
        Text.resetArcadeText();
        Medals.unlock(Medals.outOfBounds);
        Flags.expStyle = Flags.SCALE_TO_LEVEL;
        battleFlags = [Flags.TOTOM];
        battleBGM = [BGM.ARCADE];
        battleIcons = [ArcadeTotom];
        battles = [Battles.totom];
        battlesAlt = [BattlesAlt.totom];
        battleBG = [Backgrounds.TOTOM];
        respawn = [true];
        weather = [];
        altWeather = [Weather.BLOSSOM];
        hideChest(0);
        if(Flags.TOTOM_DEFEATED.quantity) {
          dropChest(0);
        }
        if(Boolean(Maps.foeData[mapNo]) && Maps.foeData[mapNo][0] == 3) {
          maps.addTile(1,10,3,false);
          maps.foe0.stop();
        }
        maps.objectData = [{
          "mc":"chest0",
          "type":CHEST,
          "data":[Equips.petrock,1,Cards.card17,1,Items.sushi,1]
        },{
          "mc":"chest1",
          "type":CHEST,
          "data":[Items.silk,1,Equips.rubberduck,1,Items.silk,1]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Items.silver,1,Items.steel,3,Items.iron,4]
        },{
          "mc":"chest3",
          "type":CHEST,
          "data":[Items.coffee,2]
        }];
        doorLinks = [[71,5,1,4,"ladder"]];
      }
      if(mapNo == 323) {
        setArea(IRON_FORTRESS);
        Maps.minimapCoords = [7,5];
        initScene("robo1",0);
        initScene("robo2",1,null,Flags.ROBO_DEFEATED);
        initNPC(0,NPCs.kiev);
        initNPC(1,NPCs.son);
        Medals.unlock(Medals.outOfBounds);
        Text.resetArcadeText();
        Flags.expStyle = Flags.SCALE_TO_LEVEL;
        battleFlags = [Flags.ROBO];
        battleBGM = [BGM.ARCADE,BGM.SECONDARY_BATTLE];
        battleIcons = [ArcadeRobo,CreepHermit];
        battles = [Battles.robo,Battles.robofiller];
        battlesAlt = [BattlesAlt.robo,BattlesAlt.robofiller];
        battleBG = [Backgrounds.ROBO,Backgrounds.FORTRESS_PRISONS];
        respawn = [true,false];
        weather = [undefined];
        altWeather = [Weather.RADIATION,Weather.ENERGY];
        initSwitch(0,1303);
        maps.switchEvent = function():* {
          setSpikes([Maps.switchData[1303]],[0,2,4,5]);
          setSpikes([!Maps.switchData[1303]],[1,3]);
        };
        maps.success = function():* {
          dropChest(1);
        };
        hideChest(0);
        hideChest(1);
        if(Flags.ROBO_DEFEATED.quantity) {
          dropChest(0);
        }
        if(Boolean(Maps.foeData[mapNo]) && Maps.foeData[mapNo][0] == 3) {
          maps.addTile(1,5,2,false);
          maps.foe0.stop();
        }
        maps.objectData = [{
          "mc":"chest0",
          "type":CHEST,
          "data":[Cards.card47,1,Items.cpu,1,Equips.ninjagear,1]
        },{
          "mc":"chest1",
          "type":CHEST,
          "data":[Items.spring,2,Cards.card19,1,Items.sock1,1]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Items.brick,1,Items.steel,1]
        },{
          "mc":"chest3",
          "type":CHEST,
          "data":[Items.brick,3,Items.pipe,1,Items.brick,2]
        }];
        doorLinks = [[49,3,6,2,"footsteps"]];
      }
      if(mapNo == 324) {
        setArea(WILD_TROPICS);
        Maps.minimapCoords = [2,3];
        BGM.play(BGM.CAVE_AMBIENCE);
        initScene("phoenix1",0);
        initScene("phoenix2",1,null,Flags.PHOENIX_DEFEATED);
        Medals.unlock(Medals.outOfBounds);
        Text.resetArcadeText();
        Flags.expStyle = Flags.SCALE_TO_LEVEL;
        battleFlags = [Flags.PHOENIX];
        battleBGM = [BGM.ARCADE,BGM.TERTIARY_BATTLE];
        battleIcons = [ArcadePhoenix,BitThunder];
        battleIconsAlt = [ArcadePhoenix,GolemBone];
        battles = [Battles.phoenix,Battles.phoenixfiller];
        battlesAlt = [BattlesAlt.phoenix,BattlesAlt.phoenixfiller];
        battleBG = [Backgrounds.PHOENIX,Backgrounds.DESERT_CAVE];
        respawn = [true,false];
        weather = [];
        altWeather = [Weather.SANDSTORM,Weather.STALACTITES];
        hideChest(0);
        if(Flags.PHOENIX_DEFEATED.quantity) {
          dropChest(0);
        }
        if(Boolean(Maps.foeData[mapNo]) && Maps.foeData[mapNo][0] == 3) {
          maps.addTile(1,6,3,false);
          maps.foe0.stop();
        }
        maps.objectData = [{
          "mc":"chest0",
          "type":CHEST,
          "data":[Cards.card23,1,Items.chicken,1,Equips.regalturtle,1]
        },{
          "mc":"chest1",
          "type":CHEST,
          "data":[Items.ruby,1,Items.amber,3,Items.gems,4]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Items.glass,2,Items.geode,1]
        }];
        doorLinks = [[166,4,5,1,"cave"]];
      }
      if(mapNo == 326) {
        setArea(THE_RAPTURE);
        Maps.minimapCoords = [8,7];
        BGM.play(BGM.WALKING_BONES);
        Flags.expStyle = Flags.SCALE_TO_LEVEL;
        battleFlags = [Flags.MAW];
        battleBGM = [BGM.NO_X1B];
        battleIcons = [ArcadeMaw,ChomperMutant];
        battleIconsAlt = [ArcadeMaw,BatSnow];
        battles = [Battles.maw,Battles.mawfiller];
        battlesAlt = [BattlesAlt.maw,BattlesAlt.mawfiller];
        battleBG = [Backgrounds.MAW,Backgrounds.RAPTURE_CAVE];
        respawn = [true,false];
        weather = [undefined,Weather.CURSED];
        altWeather = [Weather.WINDY,Weather.FOG];
        Medals.unlock(Medals.outOfBounds);
        Text.resetArcadeText();
        hideChest(0);
        hideChest(2);
        if(Flags.MAW_DEFEATED.quantity) {
          dropChest(0);
          dropChest(2);
        }
        if(Boolean(Maps.foeData[mapNo]) && Maps.foeData[mapNo][0] == 3) {
          maps.addTile(1,2,5,false);
          maps.foe0.stop();
        }
        maps.objectData = [{
          "mc":"chest0",
          "type":CHEST,
          "data":[Cards.card43,1,Equips.fatfly,1,Items.spike,4]
        },{
          "mc":"chest1",
          "type":CHEST,
          "data":[Items.rune,2,Items.claw,6]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Equips.tooth,1,Items.darkmatter,1,Items.ruby,1]
        },{
          "mc":"chest3",
          "type":CHEST,
          "data":[Items.spike,1,Items.virus,1]
        },{
          "mc":"chest4",
          "type":CHEST,
          "data":[Items.claw,2,Items.turd,1]
        }];
        initScene("maw1",0);
        initScenes([0,1],"maw2",1);
        initScene("maw3",2,null,Flags.MAW_DEFEATED);
        maps.darkLevel = 2;
        maps.success = function():* {
        };
        doorLinks = [[189,3,7,1,"ladder"]];
      }
      if(mapNo == 327) {
        setArea(FROZEN_VALLEY);
        Maps.minimapCoords = [0,8];
        BGM.play(BGM.CAVE_AMBIENCE);
        initScene("guoye1",0);
        Flags.expStyle = Flags.SCALE_TO_LEVEL;
        battleBGM = [BGM.RETURN_OF_SNOW_QUEEN];
        if(Options.altFoes) {
          battleBGM = [BGM.MECHANICAL_CONDAMNATION];
        }
        battleIcons = [MonolithViking];
        battles = [Battles.guoyefiller];
        battlesAlt = [BattlesAlt.guoyefiller];
        battleBG = [Backgrounds.ICE_CAVE];
        respawn = [false];
        weather = [Weather.SACRED];
        altWeather = [Weather.STALACTITES];
        setDoors([true],[0]);
        maps.objectData = [{
          "mc":"chest0",
          "type":CHEST,
          "data":[Cards.card40,1,Items.snowball,4]
        },{
          "mc":"chest1",
          "type":CHEST,
          "data":[Items.snowball,6,Items.sapphire,1,Items.gems,2]
        }];
        doorLinks = [[328,12,7,1,"none"],[103,4,3,4,"ladder"],[103,3,3,4,"ladder"],[328,12,7,1,"none"]];
      }
      if(mapNo == 328) {
        setArea(UNKNOWN_LOCATION);
        Maps.minimapCoords = [-1,-1];
        BGM.play(BGM.HOUSE_THEME,false);
        initScene("guoye2",0);
        initScene("guoye3",1,null,Flags.GUEYE_DEFEATED);
        Medals.unlock(Medals.outOfBounds);
        Text.resetArcadeText();
        Flags.expStyle = Flags.SCALE_TO_LEVEL;
        battleFlags = [Flags.GUOYE];
        battleBGM = [BGM.ARCADE];
        battleIcons = [ArcadeGuoye];
        battles = [Battles.guoye];
        battlesAlt = [BattlesAlt.guoye];
        battleBG = [Backgrounds.GUOYE];
        respawn = [true];
        weather = [];
        altWeather = [Weather.FOG];
        setDoors([true],[0]);
        hideChest(0);
        hideChest(1);
        if(Flags.GUEYE_DEFEATED.quantity) {
          dropChest(0);
          dropChest(1);
        }
        if(Boolean(Maps.foeData[mapNo]) && Maps.foeData[mapNo][0] == 3) {
          maps.addTile(1,11,3,false);
          maps.foe0.stop();
        }
        maps.objectData = [{
          "mc":"chest0",
          "type":CHEST,
          "data":[Items.starfragment,1,Equips.amethystearings,1,Items.darkmatter,1]
        },{
          "mc":"chest1",
          "type":CHEST,
          "data":[Items.yoghurt,1,Items.espresso,1,Items.coffee,7]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Items.herb,2,Items.root,1,Items.turd,2]
        }];
        doorLinks = [[327,15,9,1,"none"]];
      }
      if(mapNo == 329) {
        setArea(MYSTIC_WOODS);
        Maps.minimapCoords = [5,1];
        BGM.play(BGM.TREE_AMBIENCE);
        maps.objectData = [{
          "mc":"chest0",
          "type":CHEST,
          "data":[Items.flower,1,Items.root,2]
        }];
        doorLinks = [[77,18,4,3,"ladder"],[330,11,5,1,"ladder"]];
      }
      if(mapNo == 330) {
        setArea(MYSTIC_WOODS);
        Maps.minimapCoords = [5,1];
        BGM.play(BGM.TREE_AMBIENCE);
        initScene("glob1",0);
        initScene("glob2",1,null,Flags.GLOB_DEFEATED);
        Medals.unlock(Medals.outOfBounds);
        Text.resetArcadeText();
        Flags.expStyle = Flags.SCALE_TO_LEVEL;
        battleFlags = [Flags.GLOB];
        battleBGM = [BGM.ARCADE];
        battleIcons = [ArcadeGlob];
        battles = [Battles.glob];
        battlesAlt = [BattlesAlt.glob];
        battleBG = [Backgrounds.GLOB];
        respawn = [true];
        weather = [];
        altWeather = [Weather.ACID];
        hideChest(0);
        if(Flags.GLOB_DEFEATED.quantity) {
          dropChest(0);
        }
        if(Boolean(Maps.foeData[mapNo]) && Maps.foeData[mapNo][0] == 3) {
          maps.addTile(1,9,4,false);
          maps.foe0.stop();
        }
        maps.objectData = [{
          "mc":"chest0",
          "type":CHEST,
          "data":[Equips.devilssunrise,1,Cards.card7,1,Items.opal,1]
        },{
          "mc":"chest1",
          "type":CHEST,
          "data":[Items.wood,3,Items.flower,1]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Items.root,2,Items.topaz,1]
        },{
          "mc":"chest3",
          "type":CHEST,
          "data":[Items.turd,1,Items.herb,1,Items.root,1]
        },{
          "mc":"chest4",
          "type":CHEST,
          "data":[Items.herb,2,Items.root,1]
        }];
        doorLinks = [[329,12,6,1,"ladder"]];
      }
      if(mapNo == 331) {
        setArea(HOPE_HARBOR);
        Maps.minimapCoords = [2,2];
        initScene("chair1",0);
        initScene("chair2",1,null,Flags.CHAIR_DEFEATED);
        Medals.unlock(Medals.outOfBounds);
        Text.resetArcadeText();
        Flags.expStyle = Flags.SCALE_TO_LEVEL;
        battleFlags = [Flags.CHAIR];
        battleBGM = [BGM.ARCADE];
        battleIcons = [ArcadeChair];
        battles = [Battles.chair];
        battlesAlt = [BattlesAlt.chair];
        battleBG = [Backgrounds.CHAIR];
        respawn = [true];
        weather = [];
        altWeather = [Weather.EARTHQUAKE];
        maps.push0.skin(18);
        maps.push1.skin(18);
        hideChest(0);
        if(Flags.CHAIR_DEFEATED.quantity) {
          dropChest(0);
        }
        if(Boolean(Maps.foeData[mapNo]) && Maps.foeData[mapNo][0] == 3) {
          maps.addTile(1,13,5,false);
          maps.foe0.stop();
        }
        maps.objectData = [{
          "mc":"sign0",
          "type":SIGN2,
          "data":"note6"
        },{
          "mc":"chest0",
          "type":CHEST,
          "data":[Cards.card49,1,Equips.babypenguin,1,Items.cola,7]
        },{
          "mc":"chest1",
          "type":CHEST,
          "data":[Items.coffee,2,Items.bru,4,Items.sock2,1]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Items.beer,5]
        },{
          "mc":"chest3",
          "type":CHEST,
          "data":[Items.coffee,1,Items.energy,3]
        }];
        doorLinks = [[35,3,4,4,"ladder"]];
      }
      if(mapNo == 332) {
        setArea(GREENWOOD_VILLAGE);
        Maps.minimapCoords = [10,2];
        initScene("bosh1",0);
        initScene("bosh2",1,null,Flags.BOSH_DEFEATED);
        Medals.unlock(Medals.outOfBounds);
        Text.resetArcadeText();
        Flags.expStyle = Flags.SCALE_TO_LEVEL;
        battleFlags = [Flags.BOSH];
        battleBGM = [BGM.ARCADE];
        battleIcons = [ArcadeBosh];
        battles = [Battles.bosh];
        battlesAlt = [BattlesAlt.bosh];
        battleBG = [Backgrounds.BOSH];
        respawn = [true];
        weather = [];
        altWeather = [Weather.LEAVES];
        hideChest(0);
        hideChest(1);
        if(Flags.BOSH_DEFEATED.quantity) {
          dropChest(0);
          dropChest(1);
        }
        if(Boolean(Maps.foeData[mapNo]) && Maps.foeData[mapNo][0] == 3) {
          maps.addTile(1,9,5,false);
          maps.foe0.stop();
        }
        maps.objectData = [{
          "mc":"chest0",
          "type":CHEST,
          "data":[Equips.dinoegg,1,Items.feather,11,Items.flower,4]
        },{
          "mc":"chest1",
          "type":CHEST,
          "data":[Cards.card2,1,Items.butterflywing,3,Items.silk,1]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Items.herb,1,Items.cloudberries,2,Items.herb,2]
        },{
          "mc":"chest3",
          "type":CHEST,
          "data":[Items.turd,2,Items.garlic,11,Items.herb,2]
        }];
        doorLinks = [[67,10,4,4,"ladder"]];
      }
      if(mapNo == 333) {
        setArea(RAINBOW_RIVER);
        Maps.minimapCoords = [-1,-1];
        Medals.unlock(Medals.outOfBounds);
        Text.resetArcadeText();
        initScene("pumpkus1",0);
        initScene("pumpkus2",1,null,Flags.PUMPKUS_DEFEATED);
        Flags.expStyle = Flags.SCALE_TO_LEVEL;
        battleFlags = [Flags.PUMPKUS];
        battleBGM = [BGM.ARCADE];
        battleIcons = [ArcadePumpkus];
        battles = [Battles.pumpkus];
        battlesAlt = [BattlesAlt.pumpkus];
        battleBG = [Backgrounds.PUMPKUS];
        respawn = [true];
        weather = [];
        altWeather = [Weather.LAVAFLOW];
        setDoors([true],[0]);
        hideChest(0);
        hideChest(1);
        if(Flags.PUMPKUS_DEFEATED.quantity) {
          dropChest(0);
          dropChest(1);
        }
        if(Boolean(Maps.foeData[mapNo]) && Maps.foeData[mapNo][0] == 3) {
          maps.addTile(1,11,3,false);
          maps.foe0.stop();
        }
        maps.objectData = [{
          "mc":"chest0",
          "type":CHEST,
          "data":[Items.pumpkin,2,Cards.card3,1,Items.pumpkin,4]
        },{
          "mc":"chest1",
          "type":CHEST,
          "data":[Equips.headband,1,Items.pumpkin,5,Items.watermelon,3]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Items.pumpkin,6,Items.watermelon,2,Items.pineapple,4]
        },{
          "mc":"chest3",
          "type":CHEST,
          "data":[Items.pumpkin,2,Items.cloudberries,3,Items.pumpkin,1]
        }];
        doorLinks = [[61,17,6,2,"ladder"]];
      }
      if(mapNo == 335) {
        setArea(GRAND_GALLERY);
        Maps.minimapCoords = [0,0];
        Text.resetArcadeText();
        initScene("treagure1",0,null,Flags.TRAEGURE_DEFEATED);
        Flags.expStyle = Flags.SCALE_TO_LEVEL;
        battleFlags = [Flags.TREAGURE];
        battleBGM = [BGM.ARCADE];
        battleIcons = [ArcadeTreagure];
        battles = [Battles.treagure];
        battlesAlt = [BattlesAlt.treagure];
        battleBG = [Backgrounds.TREAGURE];
        respawn = [true];
        weather = [];
        altWeather = [Weather.SACRED];
        initNPC(0,NPCs.meg);
        initNPC(1,NPCs.robyn,Game.party.length > 4);
        hideChest(0);
        hideChest(1);
        if(Flags.TRAEGURE_DEFEATED.quantity) {
          dropChest(0);
          dropChest(1);
        }
        if(Boolean(Maps.foeData[mapNo]) && Maps.foeData[mapNo][0] == 3) {
          maps.addTile(1,16,2,false);
          maps.foe0.stop();
        }
        maps.objectData = [{
          "mc":"chest0",
          "type":CHEST,
          "data":[Cards.card18,1,Items.cake,1,Items.espresso,1]
        },{
          "mc":"chest1",
          "type":CHEST,
          "data":[Equips.maidoutfit,1,Items.satin,2,Items.silk,4]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Items.energy,1]
        }];
        doorLinks = [[40,10,4,1,"door"]];
        initPainting(0,97);
        initPainting(1,75);
        initPainting(2,72);
        initPainting(3,77);
        initPainting(4,76);
        initPainting(5,73);
        initPainting(6,74);
        initPainting(7,71);
        initPainting(9,113);
      }
      if(mapNo == 336) {
        setArea(GRAND_GALLERY);
        Maps.minimapCoords = [2,0];
        Flags.expStyle = Flags.NO_EXP;
        battleBGM = [BGM.POSH_BATTLE];
        battleIcons = [WormBook];
        battles = [Battles.galleryorigami];
        battlesAlt = [BattlesAlt.galleryorigami];
        battleBG = [Backgrounds.GALLERY];
        respawn = [true];
        weather = [Weather.LEAVES];
        altWeather = [Weather.BLOSSOM];
        initNPC(0,NPCs.kat);
        maps.objectData = [{
          "mc":"chest0",
          "type":CHEST,
          "data":[Items.cactus,3,Cards.card13,1,Items.cactus,3]
        },{
          "mc":"chest1",
          "type":CHEST,
          "data":[Items.chili,1,Items.grail,1,Items.orangejuice,1]
        },{
          "mc":"chest2",
          "type":CHEST,
          "data":[Items.cloudberries,1,Items.root,1]
        },{
          "mc":"chest3",
          "type":CHEST,
          "data":[Items.herb,3,Items.cloudberries,1,Items.flower,2]
        }];
        doorLinks = [[42,17,4,1,"door"]];
        initPainting(0,80);
        initPainting(1,85);
        initPainting(2,84);
        initPainting(3,82);
        initPainting(4,87);
        initPainting(5,86);
        initPainting(6,94);
        initPainting(7,83);
        if(Options.titties) {
          initPainting(8,81);
          initPainting(9,109);
        } else {
          maps.special0.visible = false;
          maps.special1.stop();
          maps.painting8.stop();
          maps.addTile(1,15,7,false);
          maps.addTile(1,15,8,false);
          maps.special2.stop();
          maps.painting9.stop();
          maps.addTile(1,16,7,false);
          maps.addTile(1,16,8,false);
        }
      }
    }
  }
}

