function onCreatePost()
	makeLuaText('lyrics', (value1), 1250, 0, 480)
	setTextAlignment('lyrics', 'Center')
	addLuaText('lyrics')
        setTextFont('lyrics', 'vcr.ttf')
	setTextSize('lyrics', 40)
end
function onEvent(name, value1, value2)
	if name == 'lyrics' then
		setTextString('lyrics', (value1));
		if value2 == '' then
		    --do nothing
		else
		setTextColor('lyrics', (value2))
		end
	end
end
