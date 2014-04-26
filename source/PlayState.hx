package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import player.Hero;

/**
 * A FlxState which can be used for the actual gameplay.
 */
class PlayState extends FlxState
{
	
	var levelTree : LevelTree;
	var hero:Hero;
	var map:FlxSprite;
	
	/**
	 * Function that is called up when to state is created to set it up. 
	 */
	override public function create():Void
	{
		super.create();
		
		/*
		level = new Level("assets/data/levels/map.tmx");
		add(level.backgroundTiles);
		add(level.foregroundTiles);
		*/
		levelTree = new LevelTree(10);
		add(levelTree);
		
		this.hero = new Hero(50, 50);
		add(this.hero);
		
		FlxG.camera.follow(this.hero.hitbox);
	}
	
	/**
	 * Function that is called when this state is destroyed - you might want to 
	 * consider setting all objects this state uses to null to help garbage collection.
	 */
	override public function destroy():Void
	{
		super.destroy();
	}

	/**
	 * Function that is called once every frame.
	 */
	override public function update():Void
	{
		super.update();
		
		this.levelTree.currentLevel.collideWithLevel(this.hero.hitbox);
	}	
}