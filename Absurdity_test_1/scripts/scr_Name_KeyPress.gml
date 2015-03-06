if inputAmount <= inputMax  {
    if (keyboard_lastkey >= 65 && keyboard_lastkey <= 90) or (keyboard_key >= 97 && keyboard_key <= 122)
    {
        newName = newName + keyboard_lastchar;
        inputAmount += 1;
    }
}
if keyboard_key == vk_backspace
{
    last_ltr = string_length(newName);
    newName = string_delete(newName, last_ltr, 1)
    if inputAmount >= 1
    {
        inputAmount -= 1;
    }
}
if keyboard_key == vk_enter
{
    curName = newName;
    newName = "";
    inputAmount = 0;
}

