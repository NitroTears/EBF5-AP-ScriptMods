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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol10262")]
   public dynamic class RootSpike extends SpellMC
   {
      public function RootSpike()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2,4,this.frame5,45,this.frame46);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,1);
      }
      
      internal function frame2() : *
      {
         Battle.shake("small");
      }
      
      internal function frame5() : *
      {
         Skills.rootspike();
      }
      
      internal function frame46() : *
      {
         k();
      }
   }
}

