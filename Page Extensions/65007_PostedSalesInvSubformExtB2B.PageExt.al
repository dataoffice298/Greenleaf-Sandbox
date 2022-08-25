pageextension 65007 PostedSaleInvSubformExtB2B extends "Posted Sales Invoice Subform"
{
    layout
    {
        addafter("No.")
        {
            //B2BPAVON01AUG22>>
            field(Select; Rec.Select)
            {
                ApplicationArea = All;
            }
            //B2BPAVON01AUG22<<
        }
    }

    actions
    {
        // Add changes to page actions here
    }
}