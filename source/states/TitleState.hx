package states;

class TitleState extends FlxState
{
    override function create() {
        var gameTitle:FlxText = new FlxText(0, 150, 200, "Test", 35);
        gameTitle.screenCenter(X);
        add(gameTitle);

        var playButton:flixel.ui.FlxButton = new flixel.ui.FlxButton(0, gameTitle.y + 200, "Play", function() FlxG.switchState(new states.PlayState()));
        playButton.screenCenter(X);
        add(playButton);

        super.create();
    }
}
