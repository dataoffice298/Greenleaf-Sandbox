pageextension 65004 PurchaseOrderExtB2B extends "Purchase Order"
{
    layout
    {
        addafter(Status)
        {
            field("Sample ID"; Rec."Sample ID GLF")
            {
                ApplicationArea = All;
                Editable = false;
            }

        }
    }
}