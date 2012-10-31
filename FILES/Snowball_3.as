package {
	
	import flash.display.Sprite;
	import flash.text.TextField;
	import flash.text.TextFormat;
	
	public class Snowball_3 extends Sprite {
	
		public function Snowball_3() {
			
			var mydb:Array = new Array();
				mydb[0] = "computers";
				mydb[1] = "writing";
				mydb[2] = "Rhet";
				mydb[3] = "Oulipo";
				mydb[4] = "constraint";
				mydb[5] = "software";
				mydb[6] = "studies";
				
			var counter:int = 0;
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
							t.height = 19;
							t.embedFonts = true;

							t.text = mydb[counter];
			
							t.x = (270 - odo) + ((t.width / 2) * c);
							t.y = 1 + ((t.height / 3) * r) + 5;
							t.rotation = odo + 10;
			
							addChild(t);
							odo++;
							
						if(counter == mydb.length - 1) {
							counter = 0;
							}
						else {
							counter++;
						}
				 	}
				}
		}
	}
}