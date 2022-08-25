tableextension 65007 SalesHeaderExtB2B extends "Sales Header"
{
    fields
    {
        field(65000; "Sample ID"; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'Sample ID';
        }
    }
}