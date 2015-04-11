/*
*   Method: 
*   Description: Address Mouse Click
*   Return:
*/
if (mouse_check_button_released(mb_left))
{
    //Check if the mouse click is in Evidence Inventory
    for (i = 0; i < global.numberOfEvidence; i += 1)
    {
        var temp_x = global.EvidenceInventory[i].x;
        var temp_y = global.EvidenceInventory[i].y;
        var temp_boxWidth = global.EvidenceInventory[i].boxWidth;
        var temp_boxHeight = global.EvidenceInventory[i].boxHeight;
        // if click in Evidence Inventory
        if (mouse_x >= temp_x && mouse_x <= temp_x + temp_boxWidth)
        && (mouse_y >= temp_y && mouse_y <= temp_y + temp_boxHeight)
        {
            // if mouse item does not belong to this slot, put it back then pick up this item
            if (global.mouseItem.type != 0) && (global.mouseItem.slot != i)
            {
                scr_SwapItem(global.mouseItem, global.EvidenceInventory[global.mouseItem.slot]);
                scr_SwapItem(global.mouseItem, global.EvidenceInventory[i]);
            }
            // else (item slot is i) swap
            else 
            {
                scr_SwapItem(global.mouseItem, global.EvidenceInventory[i]);
            }
            return(1);
        }
    }
    
    //Check if the mouse click is in Proof Slot
    for (i = 0; i < global.numberOfEvidence; i += 1)
    {
        var temp_x = global.EvidenceSlot[i].x;
        var temp_y = global.EvidenceSlot[i].y;
        var temp_boxWidth = global.EvidenceSlot[i].item.boxWidth;
        var temp_boxHeight = global.EvidenceSlot[i].item.boxHeight;
        
        // if click in Proof Slot
        if (mouse_x >= temp_x && mouse_x <= temp_x + temp_boxWidth)
        && (mouse_y >= temp_y && mouse_y <= temp_y + temp_boxHeight)
        {
            // if mouse item isn't empty && mouse item and item in slot doesn't match, show message.
            if (global.mouseItem.type != 0) && (global.mouseItem.type != global.EvidenceSlot[i].acceptType)
            {
                show_message("This isn't the slot for this evidence!");
            }
            // else, swap;
            else {
                scr_SwapItem_ext(global.mouseItem, global.EvidenceSlot[i].item);
            }
            
            //Check answer
            /*
            if (scr_CheckAnswer())
            {
                show_message("Congratulations, you did it!");
            }
            */
            return(1);
        }
    }
    
    //means click outside Evidence Inventory and Proof Slot
    if (global.mouseItem.type != 0)
    {
        scr_SwapItem(global.mouseItem, global.EvidenceInventory[global.mouseItem.slot]);
        return(1);
    }
    return (0);
}
