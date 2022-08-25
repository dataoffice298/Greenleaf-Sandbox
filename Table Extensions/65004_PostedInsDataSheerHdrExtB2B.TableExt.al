tableextension 65004 PostedInsDataSheetHdrExtB2B extends "Posted Ins DatasheetHeader B2B"
{
    fields
    {
        field(65000; "Sales. Line No"; Integer)
        {
            Caption = 'Sales. Line No';
            DataClassification = CustomerContent;
        }
        field(65001; "Sample ID"; Code[20])
        {
            Caption = 'Sample ID';
            DataClassification = CustomerContent;
        }
    }

}