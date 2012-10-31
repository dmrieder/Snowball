package {
	
	import flash.display.Sprite;
	import flash.text.TextField;
	import flash.text.TextFormat;

	public class Snowball_2 extends Sprite {
	
		public function Snowball_2() {
			
			var odo:int = 1;
			var mag:int = 20;
			var lf:Calibri = new Calibri();
			var tf:TextFormat = new TextFormat();
				tf.font = lf.fontName;
				tf.align = "center";
				tf.size = 10;
				tf.color = 0x000000;
			
			for(var r:uint = 0; r <= mag; r++) {
				 for(var c:uint = 0; c < r; c++) {
					var t:TextField = new TextField();
						t.defaultTextFormat = tf;
						t.width = t.height = 19;
						t.embedFonts = true;
						t.text = odo.toString();
			
					t.x = (1 + odo) + ((t.width + 5) * c);
					t.y = (1 - odo) + ((t.height + 5) * r);
					t.rotation = r * c * Math.random();
			
					addChild(t);
					odo++;
				 }
			}
		}
	}
}