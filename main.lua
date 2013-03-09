local widget = require "widget"
local _W = display.contentWidth

local txt = display.newText("", 0, 400, nil, 28)
txt.x = _W/2

local list = widget.newTableView{
	top = 20, height = 366,
	maskFile = "mask.png"
}
	
-- Handles row presses/swipes
local function rowListener( event )
	if( event.phase == "press" )then
		txt.text = "It's press !"
	elseif( event.phase == "release" )then
		txt.text = "It's Release !"	
	elseif( event.phase == "tap" )then
		txt.text = "It's Tap !"
	elseif( event.phase == "swipeLeft" )then
		txt.text = "It's Swiped Left !"
	elseif( event.phase == "swipeRight" )then
		txt.text = "It's Swiped Right !"
	end
end

for i = 1, 100 do
	local rowHeight
	local listener = rowListener
	list:insertRow{
		height = rowHeight,
		rowColor = rowColor,
		isCategory = isCategory,
		onRender = onRowRender,
		listener = listener	}	
end