pageextension 65013 InspectionReceiptExtB2B extends "Inspection Receipt B2B"
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