pageextension 65003 QCSetupPageExtB2B extends "Quality Control Setup B2B"
{
    layout
    {
        addlast(Numbering)
        {
            field("Vendor Sample No."; Rec."Vendor Sample No.")
            {
                ApplicationArea = All;
            }
        }
    }

}