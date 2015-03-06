/*
*   Method: scr_SwapItem(mouseItem, item)
*   Description: Swap item between argument0 and argument1
*   Return: 
*/
var temp_type = argument0.type;
var temp_text = argument0.text;
var temp_slot = argument0.slot;

argument0.type = argument1.type;
argument0.text = argument1.text;
argument0.slot = argument1.slot;

argument1.type = temp_type;
argument1.text = temp_text;
argument1.slot = temp_slot;
