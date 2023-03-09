class BossHealthBars : EventHandler {
   Array<actor> bosses;
      
   override void WorldThingSpawned(WorldEvent e) {
      if (e.Thing.bBOSS) {
         bosses.Push(e.thing);
      }
   }
   
   override void WorldThingDied(WorldEvent e) {
      if (e.Thing.bBOSS && bosses.Find(e.thing) != bosses.Size()) {
         bosses.Delete(bosses.Find(e.thing));
      }
   }
   
   override void WorldThingDestroyed(WorldEvent e) {
      if (e.Thing.bBOSS && bosses.Find(e.thing) != bosses.Size()) {
         bosses.Delete(bosses.Find(e.thing));
      }
   }
   
   override void RenderOverlay(RenderEvent e) {
      TextureID barTex = TexMan.CheckForTexture("BOSSBAR", TexMan.Type_Any);
      
      Vector2 hudScale = StatusBar.GetHUDScale();
      Vector2 barSize = (304, 8) * hudscale.x; // Size of the filled part of the bar
      Vector2 barOff = (8, 8) * hudscale.x; // Bar offset from the top-left of the graphic
      Vector2 barPos = (screen.GetWidth() / 3, 160); // Where the first bar should be drawn
      int barSpace = 32; // Spacing between bars = 10
      
      int barCount = 0;
      for (int i = 0; i < bosses.Size(); i++) {
         if (!bosses[i].target || !bosses[i].target.player) {
            continue;
         }
         
         int vertOffset = barCount * barSpace;
         int vw = screen.GetWidth() / hudScale.x;
         int vh = screen.GetHeight() / hudScale.x;
         Screen.DrawTexture(barTex, true, barPos.x / hudscale.x, barPos.y / hudscale.x + vertOffset, DTA_KeepRatio, true, DTA_VirtualWidth, vw, DTA_VirtualHeight, vh);
         
         double healthRatio = bosses[i].health / Double(bosses[i].SpawnHealth());
         healthRatio = clamp(healthRatio, 0, 1);
         
         int right = barPos.x + barOff.x + barSize.x;
         int left = right - barSize.x * (1 - healthRatio);
         int top = barPos.y + barOff.y + vertOffset * hudscale.x;
         int bottom = top + barSize.y;
         Screen.Clear(left, top, right, bottom, "#000000");
         
         barcount++;
      }
   }
}