package archipelago
{
   public interface IMainLoopHandler
   {
      function onMainLoop():void;

      // Game runs at 30 FPS so 30 = every second, 60 = every 2 seconds, etc.
      function getLoopInterval():int;
   }
}