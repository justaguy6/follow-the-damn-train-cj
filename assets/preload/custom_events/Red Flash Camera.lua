function onCreate()
	   makeLuaSprite('whoosh', '', 0, 0);
        makeGraphic('whoosh',1280,720,'ff0000')
	setObjectCamera('whoosh', 'other');
	setObjectCamera('whoosh', 'other');
	setScrollFactor('whoosh', 0, 0)
	scaleObject('whoosh', 2, 2);
	addLuaSprite('whoosh',true)
	setProperty('whoosh.alpha', 0)
end

function onEvent(name, value1, value2)
    if name == "Red Flash Camera" then
		setProperty('whoosh.alpha', value1)
		doTweenAlpha('whoosh', 'whoosh', 0, value2, 'linear')
	end
end