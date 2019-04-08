-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

display.setDefault( "background", 100/255, 100/255, 200/255 )

local calculateButton = display.newImageRect( "./assets/calculate.png", 200, 60 )
calculateButton.x = display.contentCenterX
calculateButton.y = 210
calculateButton.id = " calculateButton "

local school = display.newImageRect( "./assets/school.png", 140, 140 )
school.x = 80
school.y = 40
school.id = " school "

local work = display.newImageRect( "./assets/work.png", 220, 140 )
work.x = 240
work.y = 50
work.id = " work "

local title1 = display.newText( "Type your age here: ", 160, 290, native.systemFont, 25 )
title1:setFillColor( 255/255, 29/255, 96/255 )

local title2 = display.newText( "Type the day here: ", 160, 410, native.systemFont, 25 )
title2:setFillColor( 255/255, 29/255, 96/255 )

--textfields
local myAgeTextfield = native.newTextField( display.contentCenterX, display.contentCenterY + 110, 300, 60 )
myAgeTextfield.id = " myAgeTextField"

local theDayTextfield = native.newTextField( display.contentCenterX, display.contentCenterY + 230, 300, 60 )
theDayTextfield.id = "the day TextField"

local screenText = display.newText( "Calendar", 160, 145, native.systemFont, 23 )
screenText:setFillColor( 240/255, 150/255, 0/255 )

local function calculateButtonTouch ( event )
	myAge = tonumber( myAgeTextfield.text )
	theDay = ( theDayTextfield.text )

	if (myAge > 0) and ( theDay == "saturday" or theDay == "sunday" ) then
		screenText.text = "Time to relax for the weekend!"
		print( "WEEKEND!!" )
	elseif ( myAge >= 18 ) and ( theDay ~= "saturday" or theDay ~= "sunday") then
		screenText.text = "Time for work!"
		print("WORK!!")
	elseif ( myAge < 18 ) and ( theDay ~= "saturday" or theDay ~= "sunday") then
		screenText.text = "Time for school!"
		print("SCHOOL!!")
	else
		screenText.text = "Idk what ur gonna do"
		print("LAZZYY?!")
	end
end

calculateButton :addEventListener( "touch", calculateButtonTouch )