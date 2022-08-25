tableextension 65009 SalesLineInvExtB2B extends "Sales Invoice Line"
{
    fields
    {
        //B2BPAVON01AUG22>>
        field(65000; Select; Boolean)
        {
            DataClassification = CustomerContent;
            Caption = 'Select';
        }
        //B2BPAVON01AUG22<<
    }
}