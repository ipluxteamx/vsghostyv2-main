package;
import flixel.*;
import flixel.util.FlxColor;
import flixel.util.FlxTimer;

class LolState extends FlxState
{
	public function new(goodEnding:Bool = true) 
	{
			super();
	}

	override public function create():Void
	{
        super.create();
		var end:FlxSprite = new FlxSprite(0, 0).loadGraphic(Paths.image('nocheat', 'shared'));
		FlxG.sound.playMusic(Paths.music("freakyDevTeam"),1,false);
		var testshader:Shaders.GlitchEffect = new Shaders.GlitchEffect();
		testshader.waveAmplitude = 0.1;
		testshader.waveFrequency = 5;
		testshader.waveSpeed = 2;
		end.shader = testshader.shader;
		add(end);
		FlxG.camera.fade(FlxColor.BLACK, 0.8, true);

		new FlxTimer().start(24, endIt);
	}

	override public function update(elapsed:Float):Void 
	{
		super.update(elapsed);	
	}
		
	public function endIt(e:FlxTimer=null){
		trace("east eg");
		FlxG.switchState(new PlayState());
	}
}
