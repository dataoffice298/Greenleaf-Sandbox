pageextension 65012 SalesInvoice extends "Sales Invoice"
{
    layout
    {
        // Add changes to page layout here
    }

    actions
    {
        // Add changes to page actions here
        addlast(processing)
        {
            action(SampaleDispatch)
            {
                Caption = 'Sample Dispatch Letter';
                Image = Report;
                //Promoted = true;
                ApplicationArea = All;
                trigger OnAction()
                var
                    SalesHeadLRec: Record "Sales Header";

                begin
                    SalesHeadLRec.Reset();
                    SalesHeadLRec.SetRange("Document Type", Rec."Document Type");
                    SalesHeadLRec.SetRange("No.", REC."No.");
                    if SalesHeadLRec.FindFirst() then
                        Report.RunModal(Report::"Sample Dispatch Letter", true, false, SalesHeadLRec);


                end;
            }

        }
    }
}