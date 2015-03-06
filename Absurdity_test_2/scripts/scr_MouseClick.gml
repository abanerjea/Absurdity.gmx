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
        // if click in Evidence Inventory
        if (abs(mouse_x - temp_x) < 16) && (abs(mouse_y - temp_y) < 16)
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
        
        // if click in Proof Slot
        if (abs(mouse_x - temp_x) < 16) && (abs(mouse_y - temp_y) < 16)
        {
            // if mouse item isn't empty && mouse item and item in slot doesn't match, show message.
            if (global.mouseItem.type != 0) && (global.mouseItem.type != global.EvidenceSlot[i].acceptType)
            {
                show_message("This isn't the slot for this evidence!");
            }
            // else, swap;
            else {
                scr_SwapItem(global.mouseItem, global.EvidenceSlot[i].item);
            }
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
