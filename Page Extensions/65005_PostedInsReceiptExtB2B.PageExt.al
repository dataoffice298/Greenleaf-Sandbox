pageextension 65005 PostedInsReceipExtB2B extends "Posted Inspection Receipt B2B"
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


    actions
    {
        addafter("&Print")
        {
            action(PrintCOA)
            {
                Caption = 'Print COA';
                Image = Print;
                Promoted = true;
                ApplicationArea = All;

                trigger OnAction()
                var
                    InsRcptHdr: Record "Inspection Receipt Header B2B";
                begin
                    InsRcptHdr.Reset();
                    InsRcptHdr.SetRange("No.", Rec."No.");
                    Report.RunModal(Report::COA, true, false, InsRcptHdr);
                end;
            }
        }
    }

}