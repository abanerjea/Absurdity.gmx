/*
*   Draw text
*   scr_DrawText(text, x, y)
*/

padding = 2;
maxLength = view_wview[0];
text = argument0;
spd = argument1;
font = fnt_ComicSans;
    
text_length = string_length(text);
font_size = font_get_size(font);
    
draw_set_font(font);
    
text_width = string_width_ext(text, font_size+(font_size/2), maxLength);
text_height = string_height_ext(text, font_size+(font_size/2), maxLength);
    
boxWidth = text_width + padding * 2;
boxHeight = text_height + padding * 2;