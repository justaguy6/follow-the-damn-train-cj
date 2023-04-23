function onCreatePost()
	makeLuaSprite('Health', 'bar')
	setObjectCamera('Health', 'hud')
	addLuaSprite('Health', true)
	setObjectOrder('Health', getObjectOrder('healthBar') + 1)
	scaleObject('Health',0.492,0.59)
	setProperty('healthBar.visible', true)
end

function onUpdatePost(elapsed)
	setProperty('Health.x', getProperty('healthBar.x') - 45)
	setProperty('Health.y', getProperty('healthBar.y') - 91)
end