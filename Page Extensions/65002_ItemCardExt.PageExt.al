pageextension 65002 ItemCardExtB2B extends "Item Card"
{
    layout
    {
        addlast("Quality B2B")
        {
            field("Dispatch Qc"; Rec."Dispatch Qc GLF")
            {
                ApplicationArea = All;
                Caption = 'Sales Dispatch Qc';
            }
            field("Sales Spec ID B2B"; Rec."Sales Spec ID B2B")
            {
                ApplicationArea = all;
            }
        }
        modify("Spec ID B2B")
        {
            Caption = 'Purchase Spec ID';
        }
        modify("QC Enabled B2B")
        {
            Caption = 'Purchase QC Enabled';
        }
        modify("WIP Spec ID B2B")
        {
            Caption = 'FG WIP Spec ID';
        }
        modify("WIP QC Enabled B2B")
        {
            Caption = 'FG WIP QC Enabled';
        }
    }

    actions
    {
        // Add changes to page actions here
    }
}