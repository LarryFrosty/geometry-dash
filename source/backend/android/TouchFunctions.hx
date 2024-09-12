package backend.android;

import flixel.FlxBasic;
import flixel.input.touch.FlxTouch;

/**
 * ...
 * @author: Karim Akra
 */
class TouchFunctions
{
	public static var pressed(get, never):Bool;
	public static var justPressed(get, never):Bool;
	public static var justReleased(get, never):Bool;
	public static var touch(get, never):FlxTouch;

	public static function overlaps(object:FlxBasic):Bool
	{
		for (touch in FlxG.touches.list)
			return touch.overlaps(object);
		return false;
	}

	@:noCompletion
	private static function get_pressed():Bool
	{
		for (touch in FlxG.touches.list)
			return touch.pressed;
		return false;
	}

	@:noCompletion
	private static function get_justPressed():Bool
	{
		for (touch in FlxG.touches.list)
			return touch.justPressed;
		return false;
	}

	@:noCompletion
	private static function get_justReleased():Bool
	{
		for (touch in FlxG.touches.list)
			return touch.justReleased;
		return false;
	}

	@:noCompletion
	private static function get_touch():FlxTouch
	{
		for (touch in FlxG.touches.list)
			return touch;
		return FlxG.touches.list[0];
	}
}
