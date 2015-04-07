/*
*   Method: scr_SwapItem(mouseItem, item)
*   Description: Swap item between argument1 and argument0
*   Return: 
*/
var temp_type = argument1.type;
var temp_text = argument1.text;
var temp_slot = argument1.slot;
var temp_padding = argument1.padding;
var temp_maxLength = argument1.maxLength;
var temp_font = argument1.font;
var temp_boxWidth = argument1.boxWidth;
var temp_boxHeight = argument1.boxHeight;

argument1.type = argument0.type;
argument1.text = argument0.text;
argument1.slot = argument0.slot;
argument1.padding = argument0.padding;
argument1.maxLength = argument0.maxLength;
argument1.font = argument0.font;
argument1.boxWidth = argument0.boxWidth;
argument1.boxHeight = argument0.boxHeight;

argument0.type = temp_type;
argument0.text = temp_text;
argument0.slot = temp_slot;
argument0.padding = temp_padding;
argument0.maxLength = temp_maxLength;
argument0.font = temp_font;
argument0.boxWidth = temp_boxWidth;
argument0.boxHeight = temp_boxHeight;