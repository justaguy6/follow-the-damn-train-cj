	--DUMB EZ SETUP
local HudPieces = {'healthBarBG','healthBar','scoreTxt','iconP1','iconP2','timeBar','timeBarBG','timeTxt','Health'}
--local termPos == -560
--local termPosFin == -
--nvm :[





--balls
function onCreate()
	if songName == 'termination' then
		--TERMINATION INTRO
		makeLuaSprite('terminationIntro', 'introCard/termination', -900, 80)
		scaleObject('terminationIntro', 0.65, 0.65)
		setObjectCamera('terminationIntro', 'other');
		setScrollFactor('terminationIntro', 0, 0)
	else
		if songName == 'really-voidless-engine' then
			--VOID INTRO
			makeLuaSprite('VoidIntro', 'introCard/really-voidless-engine', 0, 700)
			scaleObject('VoidIntro', 0.65, 0.65)
			setObjectCamera('VoidIntro', 'other');
			setScrollFactor('VoidIntro', 0, 0)
		else
			if songName == 'ghost-train' then
				--GHOSTTRAIN INTRO
				makeLuaSprite('ghostIntro', 'introCard/ghost-train', -900, 700)
				scaleObject('ghostIntro', 0.65, 0.65)
				setObjectCamera('ghostIntro', 'other');
				setScrollFactor('ghostIntro', 0, 0)
			else
				if songName == 'lost-whistle' then
					--LOST WHISTLE INTRO
					makeLuaSprite('whistleIntro', 'introCard/lost-whistle', -900, 80)
					scaleObject('whistleIntro', 0.65, 0.65)
					setObjectCamera('whistleIntro', 'other');
					setScrollFactor('whistleIntro', 0, 0)
				else
					if songName == 'cycles' then
						--CYCLES INTRO
						makeLuaSprite('cyclesIntro', 'introCard/cycles', -900, 80)
						scaleObject('cyclesIntro', 0.7, 0.7)
						setObjectCamera('cyclessIntro', 'other');
						setScrollFactor('cyclesIntro', 0, 0)
					else
						if songName == 'asboi' then
							--ASBOI INTRO
							makeLuaSprite('asboiIntro', 'introCard/asboi', -900, 80)
							scaleObject('asboiIntro', 0.65, 0.65)
							setObjectCamera('asboiIntro', 'other');
							setScrollFactor('asboiIntro', 0, 0)
						else
							if songName == 'Situation' then
								--SITUATION INTRO
								makeLuaSprite('situationIntro', 'introCard/situation', -900, 100)
								scaleObject('situationIntro', 0.65, 0.65)
								setObjectCamera('situationIntro', 'other');
								setScrollFactor('situationIntro', 0, 0)
							else
								if songName == 'Fallout' then
									--FALLOUT INTRO
									makeLuaSprite('falloutIntro', 'introCard/fallout', -900, 80)
									scaleObject('falloutIntro', 0.65, 0.65)
									setObjectCamera('falloutIntro', 'other');
									setScrollFactor('falloutIntro', 0, 0)
								else
									if songName == 'Splendid Somberness' then
										--SPLENDID SOMBERNESS INTRO
										makeLuaSprite('sombernessIntro', 'introCard/splended-somberness', -900, 80)
										scaleObject('sombernessIntro', 0.65, 0.65)
										setObjectCamera('sombernessIntro', 'other');
										setScrollFactor('sombernessIntro', 0, 0)
										debugPrint('')
									else
										if songName == 'originality' then
											--ORIGINALITY INTRO
											makeLuaSprite('originalityIntro', 'introCard/originality', -900, 80)
											scaleObject('originalityIntro', 0.7, 0.7)
											setObjectCamera('originalityIntro', 'other');
											setScrollFactor('originalityIntro', 0, 0)
										else
											if songName == 'really-useful' then
												--REALLY USEFUL INTRO
												makeLuaSprite('reallyusefulIntro', 'introCard/really-useful', -900, 80)
												scaleObject('reallyusefulIntro', 0.65, 0.65)
												setObjectCamera('reallyusefulIntro', 'other');
												setScrollFactor('reallyusefulIntro', 0, 0)
											else
												if songName == 'number-one' then
													--NUMBER ONE INTRO
													makeLuaSprite('numberoneIntro', 'introCard/number-one', 0, 800)
													scaleObject('numberoneIntro', 0.65, 0.65)
													setObjectCamera('numberoneIntro', 'other');
													setScrollFactor('numberoneIntro', 0, 0)
												else
													if songName == 'cutters-torch' then
														--CUTTERS TORCH INTRO
														makeLuaSprite('cutterstorchIntro', 'introCard/cutters-torch', -900, 80)
														scaleObject('cutterstorchIntro', 0.65, 0.65)
														setObjectCamera('cutterstorchIntro', 'other');
														setScrollFactor('cutterstorchIntro', 0, 0)
													else
														if songName == 'X' then
															--X INTRO
															makeLuaSprite('XIntro', 'introCard/x', -900, 180)
															scaleObject('XIntro', 0.65, 0.65)
															setObjectCamera('XIntro', 'other');
															setScrollFactor('XIntro', 0, 0)
														end
													end
												end
											end
										end
									end
								end
							end
						end
					end
				end
			end
		end
	end
end

function onStepHit()
	if songName == 'termination' then
		--TERMINATION TWEEN IN/OUT
		if curStep == 64 then
			addLuaSprite('terminationIntro', true)
			doTweenX('terminationTweenIn', 'terminationIntro', 0, 1.4, 'cubeOut')
		end
		if curStep == 80 then
			doTweenY('terminationTweenOut', 'terminationIntro', -800, 1.6, 'expoIn')
		end
	end
	if songName == 'really-voidless-engine' then
		--VOIDLESS TWEEN IN/OUT
		if curStep == 64 then
			addLuaSprite('VoidIntro', true)
			doTweenY('VoidTweenIn', 'VoidIntro', 100, 1.4, 'cubeOut')
		end
		if curStep == 96 then
			doTweenX('VoidTweenOut', 'VoidIntro', -800, 1.6, 'expoIn')
		end
	end
	if songName == 'ghost-train' then
		--GHOSTTRAIN TWEEN IN/OUT
		if curStep == 24 then
			addLuaSprite('ghostIntro', true)
			doTweenY('ghostTweenIn', 'ghostIntro', 200, 2.0, 'cubeOut')
			doTweenX('ghostTweenIn2', 'ghostIntro', 0, 1.4, 'cubeOut')
		end
		if curStep == 56 then
			doTweenX('ghostTweenOut', 'ghostIntro', -700, 1.6, 'expoIn')
		end
	end
	if songName == 'lost-whistle' then
		--LOST WHISTLE TWEEN IN/OUT
		if curStep == 80 then
			addLuaSprite('whistleIntro', true)
			doTweenX('whistleTweenIn', 'whistleIntro', 0, 1.4, 'cubeOut')
		end
		if curStep == 112 then
			doTweenX('whistleTweenOut', 'whistleIntro', -900, 1.6, 'expoIn')
		end
	end
	if songName == 'cycles' then
		--CYCLES TWEEN IN/OUT
		if curStep == 64 then
			addLuaSprite('cyclesIntro', true)
			doTweenX('cyclesTweenIn', 'cyclesIntro', -250, 2.4, 'cubeOut')
		end
		if curStep == 112 then
			doTweenX('cyclesTweenOut', 'cyclesIntro', -1200, 1.6, 'expoIn')
		end
	end
	if songName == 'asboi' then
		--ASBOI TWEEN IN/OUT
		if curStep == 32 then
			addLuaSprite('asboiIntro', true)
			doTweenX('asboiTweenIn', 'asboiIntro', 0, 2.4, 'cubeOut')
		end
		if curStep == 64 then
			doTweenX('asboiTweenOut', 'asboiIntro', -800, 1.6, 'expoIn')
		end
	end
	if songName == 'Situation' then
		--SITUATION TWEEN IN/OUT
		if curStep == 1 then
			addLuaSprite('situationIntro', true)
			doTweenX('situationTweenIn', 'situationIntro', 0, 2.4, 'cubeOut')
		end
		if curStep == 36 then
			doTweenX('situationTweenOut', 'situationIntro', -800, 1.6, 'expoIn')
		end
	end
	if songName == 'Fallout' then
		--FALLOUT TWEEN IN/OUT
		if curStep == 128 then
			addLuaSprite('falloutIntro', true)
			doTweenX('falloutTweenIn', 'falloutIntro', 0, 2.4, 'cubeOut')
		end
		if curStep == 192 then
			doTweenX('falloutTweenOut', 'falloutIntro', -800, 1.9, 'expoIn')
		end
	end
	if songName == 'Splendid Somberness' then
		--SPLENDID SOMBERNESS TWEEN IN/OUT
		if curStep == 32 then
			addLuaSprite('sombernessIntro', true)
			doTweenX('sombernessTweenIn', 'sombernessIntro', 0, 2.4, 'cubeOut')
		end
		if curStep == 60 then
			doTweenX('sombernessTweenOut', 'sombernessIntro', -800, 1.9, 'expoIn')
		end
	end
	if songName == 'originality' then
		--ORIGINALITY TWEEN IN/OUT
		if curStep == 1 then
			addLuaSprite('originalityIntro', true)
			doTweenX('originalityTweenIn', 'originalityIntro', 40, 2.4, 'cubeOut')
		end
		if curStep == 60 then
			doTweenX('originalityTweenOut', 'originalityIntro', -800, 1.9, 'expoIn')
		end
	end
	if songName == 'really-useful' then
		--REALLY USEFUL TWEEN IN/OUT
		if curStep == 128 then
			addLuaSprite('reallyusefulIntro', true)
			doTweenX('reallyusefulTweenIn', 'reallyusefulIntro', 0, 3.4, 'cubeOut')
		end
		if curStep == 176 then
			doTweenY('reallyusefulTweenOut', 'reallyusefulIntro', -800, 1.9, 'expoIn')
		end
	end
	if songName == 'number-one' then
		--NUMBER ONE TWEEN IN/OUT
		if curStep == 384 then
			addLuaSprite('numberoneIntro', true)
			doTweenY('numberoneTweenIn', 'numberoneIntro', 80, 2.4, 'cubeOut')
		end
		if curStep == 448 then
			doTweenX('numberoneTweenOut', 'numberoneIntro', -800, 3.4, 'expoIn')
		end
	end
	if songName == 'cutters-torch' then
		--CUTTERS TORCH TWEEN IN/OUT
		if curStep == 64 then
			addLuaSprite('cutterstorchIntro', true)
			doTweenX('cutterstorchTweenIn', 'cutterstorchIntro', 0, 2.5, 'cubeOut')
		end
		if curStep == 111 then
			doTweenY('cutterstorchTweenOut', 'cutterstorchIntro', -800, 3.5, 'expoIn')
		end
	end
	if songName == 'X' then
		--X TWEEN IN/OUT
		if curStep == 1 then
			addLuaSprite('XIntro', true)
			doTweenX('XTweenIn', 'XIntro', 0, 2.5, 'cubeOut')
		end
		if curStep == 50 then
			doTweenX('XTweenOut', 'XIntro', -800, 3.5, 'expoIn')
		end
	end
end

function onTweenCompleted(tag)
	--REMOVE SIGNAL
	if tag == 'terminationTweenOut' then
		removeLuaSprite('terminationIntro', true)
	end
	if tag == 'boilerTweenOut' then
		removeLuaSprite('BoilerTestIntro', true)
	end
	if tag == 'voidTweenOut' then
		removeLuaSprite('VoidIntro', true)
	end
	if tag == 'ghostTweenOut' then
		removeLuaSprite('ghostIntro', true)
	end
	if tag == 'whistleTweenOut' then
		removeLuaSprite('whistleIntro', true)
	end
	if tag == 'cyclesTweenOut' then
		removeLuaSprite('cyclesIntro', true)
	end
	if tag == 'asboiTweenOut' then
		removeLuaSprite('asboiIntro', true)
	end
	if tag == 'situationTweenOut' then
		removeLuaSprite('situationIntro', true)
	end
	if tag == 'falloutTweenOut' then
		removeLuaSprite('falloutIntro', true)
	end
	if tag == 'sombernessTweenOut' then
		removeLuaSprite('sombernessIntro', true)
	end
	if tag == 'voidlessTweenOut' then
		removeLuaSprite('voidlessIntro', true)
	end
	if tag == 'originalityTweenOut' then
		removeLuaSprite('originalityIntro', true)
	end
	if tag == 'reallyusefulTweenOut' then
		removeLuaSprite('reallyusefulIntro', true)
	end
	if tag == 'numberoneTweenOut' then
		removeLuaSprite('numberoneIntro', true)
	end
	if tag == 'cutterstorchTweenOut' then
		removeLuaSprite('cutterstorchIntro', true)
	end
	if tag == 'XTweenOut' then
		removeLuaSprite('XIntro', true)
	end
end
















--SHAKEY ICON STUFF (unused)
--CREDIT: https://gamebanana.com/questions/32055
--local shake = 1;
--local maxshake = 2
--local transitionspeed = 0.05

--function onUpdatePost()

	--setProperty('iconP2.offset.x', math.random(-shake,shake))
	--setProperty('iconP2.offset.y', math.random(-shake,shake))
--end

--function onUpdate()
--
--	if getProperty('health') > 1.7 then
--		if shake < maxshake then
--			shake = shake + transitionspeed
--		end
--	end
--	if getProperty('health') < 1.7 then
--		if shake > 0 then
--			shake = shake - transitionspeed
--		end
--	end
--	if shake < 0 then
--		shake = 0    -- had to do it because fsr it gives -3.19189119579733e-16 if goes under 0
--	end
--end