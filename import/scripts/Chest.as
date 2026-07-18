package
{
   import flash.accessibility.*;
   import flash.display.*;
   import flash.errors.*;
   import flash.events.*;
   import flash.filters.*;
   import flash.geom.*;
   import flash.globalization.*;
   import flash.media.*;
   import flash.net.*;
   import flash.net.drm.*;
   import flash.system.*;
   import flash.text.*;
   import flash.text.ime.*;
   import flash.ui.*;
   import flash.utils.*;
   import archipelago.*;
   
   [Embed(source="/_assets/assets.swf", symbol="symbol18672")]
   public dynamic class Chest extends MovieClip
   {
      public var spellcenter:MovieClip;
      
      public var X:int;
      
      public var Y:int;
      
      public var secret:Boolean;
      
      public var state:int;
      
      public function Chest()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2,2,this.frame3,3,this.frame4,4,this.frame5,29,this.frame30,30,this.frame31,33,this.frame34,56,this.frame57);
      }
      
      internal function frame1() : *
      {
         this.secret = false;
         if(Debug.mappingMode2)
         {
            visible = false;
            stop();
         }
      }
      
      internal function frame2() : *
      {
         stop();
         try
         {
            if(!Maps.chestData[MapData.mapNo])
            {
               Maps.chestData[MapData.mapNo] = [];
            }
            if(!this.visible)
            {
               if(Maps.chestData[MapData.mapNo][name.substring(5)] != 2)
               {
                  Maps.playTreasureSound(name.substring(5));
               }
            }
            else if(Maps.chestData[MapData.mapNo][name.substring(5)] == 2)
            {
               gotoAndStop("opened");
               this.state = 1;
            }
            else if(this.state == -1 && !Maps.chestData[MapData.mapNo][name.substring(5)] == 1)
            {
               gotoAndStop("fall");
               this.X = 100;
               this.Y = 100;
               Maps.instance.addTile(0,x,y - 15);
               Maps.playTreasureSound(name.substring(5));
            }
            else
            {
               this.state = 0;
               this.X = x / 50;
               this.Y = y / 40;
               Maps.instance.addTile(5,x,y - 15);
               Maps.playTreasureSound(name.substring(5));
            }
            if(this.alpha == 0 && this.state == 0)
            {
               this.secret = true;
               alpha = 1;
               gotoAndStop(3);
            }
         }
         catch(e:Error)
         {
         }
      }
      
      internal function frame3() : *
      {
      }
      
      internal function frame4() : *
      {
         if(this.secret)
         {
            ++SaveData.secretsFound;
            alpha = 0;
            if(SaveData.secretsFound >= Medals.likeABird.value)
            {
               Medals.unlock(Medals.likeABird);
            }
            if(SaveData.secretsFound >= Medals.eagleEye.value)
            {
               Medals.unlock(Medals.eagleEye);
            }
            if(SaveData.secretsFound >= Medals.sixthSense.value)
            {
               Medals.unlock(Medals.sixthSense);
            }
            Maps.playSound("secret");
            gotoAndPlay(6);
         }
         else
         {
            ++SaveData.chestsOpened;
            if(SaveData.chestsOpened >= Medals.treasureHunter.value)
            {
               Medals.unlock(Medals.treasureHunter);
            }
            if(SaveData.chestsOpened >= Medals.chestGrabber.value)
            {
               Medals.unlock(Medals.chestGrabber);
            }
            if(SaveData.chestsOpened >= Medals.professionalBurglar.value)
            {
               Medals.unlock(Medals.professionalBurglar);
            }
            gotoAndPlay(5);
         }
      }
      
      internal function frame5() : *
      {
         gotoAndPlay(7);
      }
      
      internal function frame30() : *
      {
         try
         {
            Maps.instance.addTile(1,x,y - 15);
         }
         catch(e:Error)
         {
         }
         Maps.chestData[MapData.mapNo][name.substring(5)] = 2;
         Maps.instance.highlight();
         MapData.retroactiveCards(name.substring(5));

         // AP Add chests to claimed checks
         APItemHelpers.addCollectedAPItem(name);
      }
      
      internal function frame31() : *
      {
         stop();
      }
      
      internal function frame34() : *
      {
         ++Maps.instance.busy;
      }
      
      internal function frame57() : *
      {
         this.state = 0;
         gotoAndStop("normal");
         --parent.busy;
         Maps.chestData[MapData.mapNo][name.substring(5)] = 1;
      }
   }
}

