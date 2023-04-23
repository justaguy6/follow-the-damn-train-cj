function onCreate()
    --variables
	Dodged = false;
    canDodge = false;
    DodgeTime = 0;

	makeAnimatedLuaSprite("Z!","Attack/Z",500,200)
		addAnimationByPrefix("Z!", "Wait", "Z Wait", 24, false)
		addAnimationByPrefix("Z!", "Warning", "Z Warning", 6, false)
		addAnimationByPrefix("Z!", "Pressed", "Z Pressed", 12, false)
		setObjectCamera('Z!', 'other')
		scaleObject('Z!',0.3, 0.3)
		addLuaSprite("Z!", true)
end

function onEvent(name,value1,value2)

	if name == 'Attack' then
		
		DodgeTime = (value1);

		canDodge = true;
		runTimer('Died', DodgeTime);

		objectPlayAnimation("Z!", "Warning", true)
	end

end

function onUpdate()
	if canDodge == true and keyJustPressed('space') then
	objectPlayAnimation("Z!", "Pressed", true)
	Dodged = true;
	
	setProperty('boyfriend.specialAnim', true);
	canDodge = false
	
	end
 end

 function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'Died' and Dodged == false then
	setProperty('health', 0);
	
	elseif tag == 'Died' and Dodged == true then
	Dodged = false
	setProperty('dad.specialAnim', true);
	setProperty('boyfriend.specialAnim', true);
	characterPlayAnim('dad', 'attack', true);
	characterPlayAnim('boyfriend', 'dodge', true);
	
	end
 end