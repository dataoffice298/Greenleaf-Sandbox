report 65002 "Blending Report"
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultLayout = RDLC;
    RDLCLayout = './Blendingreport.rdl';
    Caption = 'Blending Report_50003';


    dataset
    {
        dataitem("Prod. Order Line"; "Prod. Order Line")
        {
            RequestFilterFields = "Prod. Order No.";
            column(Prod__Order_No_; "Prod. Order No.")
            {

            }
            column(Comments; ProdOrderGRec.Comment)
            { }
            column(CreationDate; ProdOrderGRec."Creation Date")
            {

            }

            column(BlendingCap; BlendingCap)
            {

            }
            column(ProductionCap; ProductionCap)
            { }
            column(DateIssCap; DateIssCap)
            { }
            column(SampleCap; SampleCap)
            { }
            column(OutPutCap; OutPutCap)
            { }
            column(ItemCap; ItemCap)
            { }
            column(LotCap; LotCap)
            { }

            column(Lot1Cap; Lot1Cap)
            {

            }
            column(QtyCap; QtyCap)
            {

            }
            column(QuantityCap; QuantityCap)
            {

            }
            column(MfgCap; MfgCap)
            {

            }
            column(ExpCap; ExpCap)
            {

            }
            column(RemarCap; RemarCap)
            {

            }
            column(InupCap; InupCap)
            {

            }
            column(PerCap; PerCap)
            { }
            column(AcutQuCap; AcutQuCap)
            {

            }
            column(BelindingReCap; BelindingReCap)
            {

            }
            column(TotalCap; TotalCap)
            {

            }
            column(PreparedCap; PreparedCap)
            {

            }
            column(ApprovedCap; ApprovedCap)
            {

            }
            column(FilterIntegrityCap; FilterIntegrityCap)
            {

            }
            column(DoneCap; DoneCap)
            {

            }
            column(VerCap; VerCap)
            {

            }
            column(Text000; Text000)
            {

            }
            column(FilterCap; FilterCap)
            {

            }
            column(Item1Cap; Item1Cap)
            {

            }
            column(Starting_Date; "Starting Date")
            {

            }
            column(Ending_Date; "Ending Date")
            {

            }

            dataitem("Item Ledger Entry"; "Item Ledger Entry")
            {
                DataItemLinkReference = "Prod. Order Line";
                DataItemLink = "Document No." = FIELD("Prod. Order No.");
                column(Lot_No_; "Lot No.")
                {

                }
                column(Document_No_; "Document No.")
                {

                }
                column(Item_No_; "Item No.")
                { }

                column(Item_Name; Item.Description)
                {

                }
                column(Entry_Type; "Entry Type")
                {

                }
                column(Quantity; Quantity)
                {

                }
                column(TotalQuanityConsumption; TotalQuantityConsumption)
                {

                }
                column(TotalQuanityOutput; TotalQuantityOutput)
                {

                }
                column(Percentage1; Percentage1)
                { }
                trigger OnAfterGetRecord()
                begin
                    if Item.Get("Item No.") then;

                    clear(TotalQuantityConsumption);
                    clear(TotalQuantityOutput);
                    ILE.Reset();
                    ILE.SetRange("Document No.", "Prod. Order Line"."Prod. Order No.");
                    ILE.SetRange("Order Type", ILE."Order Type"::Production);
                    IF ILE.FindSet() then
                        repeat
                            IF (ILE."Entry Type" = ILE."Entry Type"::Consumption) then begin
                                TotalQuantityConsumption := TotalQuantityConsumption + ILE.Quantity;
                                Percentage1 := (ILE.Quantity / TotalQuantityConsumption) * 100
                            end;

                            if (ILE."Entry Type" = ILE."Entry Type"::Output) then
                                TotalQuantityOutput := TotalQuantityOutput + ILE.Quantity;
                        until ILE.Next() = 0;
                end;






            }
            trigger OnAfterGetRecord()
            begin
                if ProdOrderGRec.get(Status, "Prod. Order No.") then;
            end;



        }
    }

    requestpage
    {
        actions
        {
            area(processing)
            {
                action(ActionName)
                {
                    ApplicationArea = All;

                }
            }
        }
    }



    var
        BelindingReCap: Label 'BLENDING REPORT';
        ProductionCap: Label 'PRODUCTION ORDER NO.';
        DateIssCap: Label 'DATE OF ISSUE';
        SampleCap: Label 'SAMPLE NO.';
        OutPutCap: Label 'OUTPUT';
        ItemCap: Label 'Itemname';
        LotCap: Label 'Lot No';
        QtyCap: Label 'QTY';
        MfgCap: Label 'Mfg Date';
        ExpCap: Label 'Expiry Date';
        RemarCap: Label 'Remarks';
        InupCap: Label 'INPUT';
        Lot1Cap: Label 'Lot No.';
        QuantityCap: Label 'Quantity';
        PerCap: Label 'Percentage';
        AcutQuCap: Label 'Actual Quantity';
        BlendingCap: Label 'Blending Loss';
        TotalCap: Label 'Total Input Quantity';
        PreparedCap: Label 'Prepared By';
        ApprovedCap: Label 'Approved By';
        Text000: Label 'TO BE FILLED BY FGS/STORES/PRODUCTION PERSONNEL';
        FilterCap: Label 'Filter Integrity - Before Filtration';
        FilterIntegrityCap: Label 'Filter Integrity - After Filtration';
        DoneCap: Label 'Done By';
        VerCap: Label 'Verified By';
        Item1Cap: Label 'Itemname';
        Item: Record Item;
        ILE: Record "Item Ledger Entry";
        TotalQuantityConsumption: Decimal;
        TotalQuantityOutput: Decimal;
        Percentage1: Decimal;
        ProdOrderGRec: Record "Production Order";

























}