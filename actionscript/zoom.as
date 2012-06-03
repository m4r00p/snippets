view.addListener(TransformGestureEvent.GESTURE_ZOOM, onZoom);
 
private function onZoom(e:TransformGestureEvent):void {
  var bounds1:Rectangle = view.content.getBounds(view.stage);
 
  // scale the view
  view.scaleX *= e.scaleX;
  view.scaleY *= e.scaleY;
 
  var bounds2:Rectangle = view.content.getBounds(view.stage);
  var dx:Number = bounds2.x - bounds1.x;
  var dy:Number = bounds2.y - bounds1.y;
  var dw:Number = bounds2.width - bounds1.width;
  var dh:Number = bounds2.height - bounds1.height;
 
  // move the view to keep it centered while zooming
  view.x -= dx + dw/2;
  view.y -= dy + dh/2;
}
