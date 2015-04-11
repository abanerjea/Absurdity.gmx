for(j = 0; j < global.numberOfEvidenceSlot; j += 1)
{
    if (global.EvidenceSlot[j].item.type != 0)
    {
        if (global.EvidenceSlot[j].item.slot != global.EvidenceSlot[j].correctAnswer)
        {
            return(false);
        }
    }
    else
    {
        return(false);
    }
}
return(true);