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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol8938")]
   public dynamic class FlameBurst extends SpellMC
   {
      public function FlameBurst()
      {
         super();
         addFrameScript(0,this.frame1,6,this.frame7,10,this.frame11,36,this.frame37);
      }
      
      internal function frame1() : *
      {
         init(Target.ALL_ENEMY,3);
      }
      
      internal function frame7() : *
      {
         Skills.flameburst();
      }
      
      internal function frame11() : *
      {
         Text.speech(Text.lanceSkills[29]);
         Text.speech(Text.lanceSkills[32]);
      }
      
      internal function frame37() : *
      {
         k();
      }
   }
}

