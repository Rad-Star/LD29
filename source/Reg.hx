package;

import flixel.group.FlxTypedGroup.FlxTypedGroup;
import flixel.util.FlxSave;
import ennemies.BaseEnnemy;
import flixel.tile.FlxTilemap;

/**
 * Handy, pre-built Registry class that can be used to store 
 * references to objects and other things for quick-access. Feel
 * free to simply ignore it or change it in any way you like.
 */
class Reg
{
	static public var levelTree:LevelTree;
	
	/**
	 * Generic levels Array that can be used for cross-state stuff.
	 * Example usage: Storing the levels of a platformer.
	 */
	static public var levels:Array<Dynamic> = [];
	/**
	 * Generic level variable that can be used for cross-state stuff.
	 * Example usage: Storing the current level number.
	 */
	static public var level:Int = 0;
	/**
	 * Generic scores Array that can be used for cross-state stuff.
	 * Example usage: Storing the scores for level.
	 */
	static public var scores:Array<Dynamic> = [];
	/**
	 * Generic score variable that can be used for cross-state stuff.
	 * Example usage: Storing the current score.
	 */
	static public var score:Int = 0;
	/**
	 * Generic bucket for storing different <code>FlxSaves</code>.
	 * Especially useful for setting up multiple save slots.
	 */
	static public var saves:Array<FlxSave> = [];
	
	/** Map to load **/
	static public var currentMap : String = "templateDoors";
	
	/** Spawn position **/
	static public var exitDirection : String = "right";
	
	/** Spawn velocity so that we keep it when entering a new room**/
	static public var vitX : Float = 0;
	static public var vitY : Float = 0;
	
	/** door offset **/
	static public var spawnOffsetX : Int = 0;
	static public var spawnOffsetY : Int = 0;
	
	/** Gravity **/
	static public var GRAVITY:Int = 980;
	
	/** Ennemy group **/
	static public var ennemyGroup:FlxTypedGroup<BaseEnnemy> = new FlxTypedGroup<BaseEnnemy>();
	
	/** Map used for pathfinding **/
	static public var currentTileMap:FlxTilemap;
}