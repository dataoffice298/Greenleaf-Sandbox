tableextension 65006 QCSetupExtB2B extends "Quality Control Setup B2B"
{
    fields
    {
        field(65000; "Vendor Sample No."; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'Vendor Sample No.';
            TableRelation = "No. Series";
        }
    }

}