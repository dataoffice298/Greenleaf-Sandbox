tableextension 65001 ItemExtB2B extends Item
{
    fields
    {
        field(65000; "Dispatch Qc"; Boolean)
        {
            Caption = 'Dispatch Qc';
            DataClassification = CustomerContent;
        }
        field(65001; "Sales Spec ID B2B"; Code[20])
        {
            Caption = 'Sales Spec ID';
            DataClassification = CustomerContent;
            TableRelation = "Specification Header B2B";
        }
    }
}