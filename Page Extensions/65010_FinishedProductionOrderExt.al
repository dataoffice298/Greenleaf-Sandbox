pageextension 65010 FinishedproductionOrder extends "Finished Production Order"
{
    layout
    {
        // Add changes to page layout here
    }

    actions
    {
        // Add changes to page actions here
        addafter("O&rder")
        {
            action(BlendingReport)
            {
                Caption = 'Blending Report';
                Image = Report;
                Promoted = true;
                ApplicationArea = All;

                trigger OnAction()
                var
                    RelProdOrderLRec: Record "Prod. Order Line";

                begin
                    RelProdOrderLRec.Reset();
                    RelProdOrderLRec.SetRange("Prod. Order No.", Rec."No.");
                    if RelProdOrderLRec.FindFirst() then
                        Report.RunModal(Report::"Blending Report", true, false, RelProdOrderLRec);


                end;
            }

        }


    }
}