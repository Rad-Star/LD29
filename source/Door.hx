package ;
import flixel.FlxSprite;
import flixel.tweens.misc.NumTween;
import haxe.xml.Fast;
import player.Hero;

/**
 * ...
 * @author TBaudon
 */
class Door extends FlxSprite
{
	public static var verbose:Bool;
	public var direction : String;

	public function new(data:Fast, x : Int, y:Int) 
	{
		super(x, y);
		
		var elem = data.node.properties.elements;
		var node = elem.next();
		direction = node.att.value;
		
		switch(direction) {
			case 'up' :
				makeGraphic(64 * 4, 64, 0xffffff00);
				this.y -= 60;
			case 'right' :
				makeGraphic(64, 64 * 4, 0xffffff00);
				this.x += 60;
			case 'down' :
				makeGraphic(64 * 4, 64, 0xffffff00);
				this.y += 60;
			case 'left' :
				makeGraphic(64, 64 * 4, 0xffffff00);
				this.x -= 60;
		}
	}
	
	public function enter(hero : Hero)
	{
		if(verbose) trace(this.direction);
		Reg.levelTree.currentLevel = Reg.levelTree.createLevel(
		Reg.levelTree.currentLevel
		.definition
		.getNeighborAt(this.direction)
		);
		Reg.exitDirection = this.direction;
	}
	
}