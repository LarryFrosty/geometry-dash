package states;

class PlayState extends FlxState {
    override function create() {
        var hi = new FlxText(0, 0, 100, 'Hi', 70);
        hi.screenCenter();
        add(hi);
    }
}