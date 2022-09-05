tableextension 65008 PurchaseHeaderExtB2B extends "Purchase Header"
{
    fields
    {
        field(65000; "Sample ID GLF"; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'Sample ID';
        }
    }

}