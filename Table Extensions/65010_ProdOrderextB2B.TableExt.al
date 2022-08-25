tableextension 65010 ProdOrderExtB2B extends "Production Order"
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