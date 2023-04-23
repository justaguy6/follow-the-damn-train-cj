-- Event by JoltGanda
function onEvent(name, value1, value2) 
	if name == 'poison drain' then
		runTimer('drain', 0.035, 0);
	end
	if name == 'poison drain' and value1 == 'false' then
		cancelTimer('drain');
	end
end

function onTimerCompleted(tag, loops, loopsLeft)
	setProperty('health', getProperty('health')-0.01);
end