if (file_exists("Save.sav"))
{
    file_delete("Save.sav");
}

ini_open("Save.sav");
ini_write_real("global","showEvidenceInventory",global.showEvidenceInventory);
ini_write_real("global","showProofSlots",global.showProofSlots);
ini_write_real("global","numberOfEvidence", global.numberOfEvidence);
ini_write_real("global","numberOfEvidenceSlot", global.numberOfEvidenceSlot);
ini_write_real("global","boxWidth",global.boxWidth);
ini_write_real("global","boxHeight",global.boxHeight);

//Save Evidence Inventory
for (i = 0; i < global.numberOfEvidence; i++)
{
    var label = "evidence" + string(i);
    ini_write_real(label,"type",global.EvidenceInventory[i].type);
    ini_write_string(label,"text",global.EvidenceInventory[i].text);
    ini_write_real(label,"slot",global.EvidenceInventory[i].slot);
    ini_write_real(label,"x",global.EvidenceInventory[i].x);
    ini_write_real(label,"y",global.EvidenceInventory[i].y);
}

//Save Evidence Slot
for (i = 0; i < global.numberOfEvidenceSlot; i++)
{
    var label = "evidence_slot" + string(i); 
    ini_write_real(label,"type",global.EvidenceSlot[i].item.type);
    ini_write_string(label,"text",global.EvidenceSlot[i].item.text);
    ini_write_real(label,"slot",global.EvidenceSlot[i].item.slot);
    ini_write_real(label,"acceptType",global.EvidenceSlot[i].acceptType);
    ini_write_real(label,"correctAnswer",global.EvidenceSlot[i].correctAnswer);
    ini_write_real(label,"x",global.EvidenceSlot[i].x);
    ini_write_real(label,"y",global.EvidenceSlot[i].y);
}

//var room_number = rm_FirstInterface;
//ini_write_real("global","room_name",room_number);
ini_close();