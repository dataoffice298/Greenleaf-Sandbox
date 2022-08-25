pageextension 65015 PostedIDSExtB2B extends "Posted Ins Data Sheet B2B"
{
    layout
    {
        addlast(General)
        {
            field("Sample ID"; Rec."Sample ID")
            {
                ApplicationArea = All;
                Editable = false;
            }
        }
    }
}