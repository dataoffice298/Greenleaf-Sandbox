codeunit 65001 MyCodeunit
{
    //Sales QC Events Start>>

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Inspection Jnl. Post Line B2B", 'OnBeforeInsertQualityLedgerEntry', '', false, false)]
    procedure OnBeforeInsertQualityLedgerEntry(var QualityLedgerEntry: Record "Quality Ledger Entry B2B"; InspectReceipt: Record "Inspection Receipt Header B2B")
    begin
        QualityLedgerEntry."Sales Line No GLF" := InspectReceipt."Sales. Line No GLF";
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Post-Inspection Data Sheet B2B", 'OnBeforeInsertInspectionReportHeader', '', false, false)]
    procedure OnBeforeInsertInspectionReportHeader(var InspectReportHeader: Record "Inspection Receipt Header B2B"; InspectHeader: Record "Posted Ins DatasheetHeader B2B")
    begin
        InspectReportHeader."Sales. Line No GLF" := InspectHeader."Sales. Line No GLF";
        if InspectHeader."Document Type" = InspectHeader."Document Type"::"Sales Order" then
            InspectReportHeader."Document Type" := InspectReportHeader."Document Type"::"Sales Order";
        if InspectHeader."Document Type" = InspectHeader."Document Type"::"Sample QC" then
            InspectReportHeader."Document Type" := InspectReportHeader."Document Type"::"Sample QC";
        InspectReportHeader."Sample ID GLF" := InspectHeader."Sample ID GLF";
    end;

    [EventSubscriber(ObjectType::Codeunit, 80, 'OnAfterSalesShptLineInsert', '', false, false)]
    local procedure QualityCheckInspect(var SalesShipmentLine: Record "Sales Shipment Line"; SalesLine: Record "Sales Line"; ItemShptLedEntryNo: Integer; WhseShip: Boolean; WhseReceive: Boolean; CommitIsSuppressed: Boolean; SalesInvoiceHeader: Record "Sales Invoice Header"; var TempWhseShptHeader: Record "Warehouse Shipment Header" temporary; var TempWhseRcptHeader: Record "Warehouse Receipt Header" temporary)
    begin
        if SalesLine."Dispatch Qc GLF" then begin
            SalesLine.CalcFields("Quantity Accepted GLF");
            if SalesLine."Quantity Accepted GLF" < ABS(SalesLine."Qty. to Ship") + SalesLine."Quantity Shipped" then
                Error(Text33000250Err, SalesLine."Document No.", SalesLine."Line No.");
        end;
    end;


    [EventSubscriber(ObjectType::Codeunit, 22, 'OnAfterItemApplnEntryInsert', '', false, false)]
    local procedure OnAfterItemApplnEntryInsert(var ItemApplicationEntry: Record "Item Application Entry"; GlobalItemLedgerEntry: Record "Item Ledger Entry"; OldItemLedgerEntry: Record "Item Ledger Entry")
    var
        QILE: Record "Quality Item Ledger Entry B2B";
        QErr: Label 'Quality item ledger entry exists for the applied entry No. %1';
    begin
        //if QILE.get(OldItemLedgerEntry."Entry No.") THEN 
        if QILE.get(OldItemLedgerEntry."Entry No.") AND (OldItemLedgerEntry."Document No." <> QILE."Document No.") then //PKON22J15
            Error(QErr, OldItemLedgerEntry."Entry No.");
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Inspection Jnl. Check Line B2B", 'OnBeforeApplyInsDataSheetFilters', '', false, false)]
    procedure OnBeforeApplyInsDataSheetFilters(InspectReceipt: Record "Inspection Receipt Header B2B"; var InspectDataSheet: Record "Ins Datasheet Header B2B")
    begin
        if InspectReceipt."Document Type" = InspectReceipt."Document Type"::"Sales Order" then begin
            InspectDataSheet.SETRANGE("Order No.", InspectReceipt."Order No.");
            InspectDataSheet.SetRange("Sales. Line No GLF", InspectReceipt."Sales. Line No GLF");
        end;
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Post-Inspection Data Sheet B2B", 'OnBeforeGetInspectReportHeader', '', false, false)]
    procedure OnBeforeGetInspectReportHeader(Var InspectReportHeader: Record "Inspection Receipt Header B2B"; InspectHeader: Record "Posted Ins DatasheetHeader B2B"; var IsHandled: boolean)
    begin
        if InspectHeader."Source Type" = InspectHeader."Source Type"::"In Bound" then begin
            if InspectReportHeader."Quality Before Receipt" then begin
                InspectReportHeader.SETRANGE("Order No.", InspectHeader."Order No.");
                if InspectHeader."Document Type" = InspectHeader."Document Type"::"Sales Order" then
                    InspectReportHeader.SETRANGE("Sales. Line No GLF", InspectHeader."Sales. Line No GLF");
            end else
                if InspectHeader."Document Type" = InspectHeader."Document Type"::"Sales Order" then begin
                    InspectReportHeader.SETRANGE("Order No.", InspectHeader."Order No.");
                    InspectReportHeader.SETRANGE("Sales. Line No GLF", InspectHeader."Sales. Line No GLF");
                    //InspectReportHeader.SETRANGE("Lot No.", InspectHeader."Lot No.");
                    InspectReportHeader.SETRANGE("Rework Reference No.", InspectHeader."Rework Reference No.");
                end else begin
                    //if InspectHeader."Document Type" <> InspectHeader."Document Type"::"Sample Lot" then begin
                    InspectReportHeader.SETRANGE("Receipt No.", InspectHeader."Receipt No.");
                    InspectReportHeader.SETRANGE("Purch Line No", InspectHeader."Purch. Line No");
                    InspectReportHeader.SETRANGE("Lot No.", InspectHeader."Lot No.");
                    InspectReportHeader.SETRANGE("Purchase Consignment", InspectHeader."Purchase Consignment No.");
                    InspectReportHeader.SETRANGE("Rework Reference No.", InspectHeader."Rework Reference No.");
                    if InspectHeader."Rework Level" <> 0 then
                        InspectReportHeader.SETRANGE("DC Inbound Ledger Entry.", InspectHeader."DC Inbound Ledger Entry");//QC1.4
                end;
        end else begin
            InspectReportHeader.SETRANGE("Prod. Order No.", InspectHeader."Prod. Order No.");
            InspectReportHeader.SETRANGE("Prod. Order Line", InspectHeader."Prod. Order Line");
            InspectReportHeader.SETRANGE("Production Batch No.", InspectHeader."Production Batch No.");
            InspectReportHeader.SETRANGE("Rework Reference No.", InspectHeader."Rework Reference No.");
            if InspectHeader."Rework Level" <> 0 then
                InspectReportHeader.SETRANGE("DC Inbound Ledger Entry.", InspectHeader."DC Inbound Ledger Entry");//QC1.4
        end;
        IsHandled := true;
    end;

    //Sales QC Events End<<

    //Auto-Reserve of Sales Order Starts>>
    [EventSubscriber(ObjectType::Page, Page::"Item Tracking Lines", 'OnAfterOnClosePage', '', false, false)]
    local procedure OnAfterOnClosePage(var TrackingSpecification: Record "Tracking Specification"; CurrentRunMode: Enum "Item Tracking Run Mode"; CurrentSourceType: Integer; CurrentSourceRowID: Text[250]; SecondSourceRowID: Text[250])
    var
        ReserveEntryLRec: Record "Reservation Entry";
        RsrvEntry: Record "Reservation Entry";
        RsrvEntry1: Record "Reservation Entry";
        ILE: Record "Item Ledger Entry";
        Reserved: Boolean;
    begin
        if TrackingSpecification."Source Type" <> 37 then
            exit;
        Reserved := false;
        if TrackingSpecification."Lot No." <> '' then begin
            ReserveEntryLRec.Reset();
            ReserveEntryLRec.SetRange("Source Type", 37);
            ReserveEntryLRec.SetRange("Source Subtype", 1);
            ReserveEntryLRec.SetRange("Source ID", TrackingSpecification."Source ID");
            ReserveEntryLRec.SetRange("Source Ref. No.", TrackingSpecification."Source Ref. No.");
            if ReserveEntryLRec.FindSet() then
                repeat
                    RsrvEntry.Reset();
                    RsrvEntry.SetRange("Entry No.", ReserveEntryLRec."Entry No.");
                    if ReserveEntryLRec.Positive then
                        RsrvEntry.SetRange(Positive, false)
                    else
                        RsrvEntry.SetRange(Positive, true);
                    if not RsrvEntry.FindFirst() then begin
                        ILE.Reset();
                        ILE.SetRange("Item No.", ReserveEntryLRec."Item No.");
                        ILE.SetRange("Location Code", ReserveEntryLRec."Location Code");
                        ILE.SetFilter("Remaining Quantity", '>%1', 0);
                        ILE.SetRange(Open, true);
                        ILE.SetRange(Positive, true);
                        ILE.SetRange("Lot No.", ReserveEntryLRec."Lot No.");
                        if ILE.FindFirst() then begin
                            RsrvEntry1.Init();
                            RsrvEntry1."Entry No." := ReserveEntryLRec."Entry No.";
                            RsrvEntry1."Item No." := ILE."Item No.";
                            RsrvEntry1."Location Code" := ILE."Location Code";
                            RsrvEntry1.validate(Quantity, -ReserveEntryLRec.Quantity);
                            RsrvEntry1.validate("Quantity (Base)", -ReserveEntryLRec."Quantity (Base)");
                            RsrvEntry1."Reservation Status" := RsrvEntry1."Reservation Status"::Reservation;
                            RsrvEntry1.Description := TrackingSpecification.Description;
                            RsrvEntry1."Creation Date" := ReserveEntryLRec."Creation Date";
                            RsrvEntry1."Source Type" := 32;
                            RsrvEntry1."Source Ref. No." := ILE."Entry No.";
                            RsrvEntry1."Created By" := ReserveEntryLRec."Created By";
                            RsrvEntry1.Positive := true;
                            RsrvEntry1."Shipment Date" := ReserveEntryLRec."Creation Date";
                            RsrvEntry1."Lot No." := ReserveEntryLRec."Lot No.";
                            RsrvEntry1.Insert();

                            ReserveEntryLRec."Reservation Status" := ReserveEntryLRec."Reservation Status"::Reservation;
                            ReserveEntryLRec.Modify();
                            Reserved := true;
                        end;
                    end;
                until ReserveEntryLRec.Next() = 0;
            if Reserved then
                Message(Text50000);
        end;
    end;
    //Auto-Reserve of Sales Order Ends<<

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Inspection Jnl. Post Line B2B", 'OnBeforeUpdatePurchReceiptLine', '', false, false)]
    procedure OnBeforeUpdatePurchReceiptLine(var InsReceiptHeader: Record "Inspection Receipt Header B2B"; var IsHandled: Boolean)
    begin
        if (InsReceiptHeader."Document Type" = InsReceiptHeader."Document Type"::"Sample QC")
        or (InsReceiptHeader."Document Type" = InsReceiptHeader."Document Type"::"Sales Order") then
            IsHandled := true;
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Inspection Data Sheets B2B", 'OnAfterInitInspectionHeaderInsTypePurchase', '', false, false)]
    procedure OnAfterInitInspectionHeaderInsTypePurchase(var InspectDataHeader: Record "Ins Datasheet Header B2B"; PurchRcptHeader: record "Purch. Rcpt. Header"; PurchRcptLine: Record "Purch. Rcpt. Line")
    var
        PurchHeader: Record "Purchase Header";
    begin
        if PurchHeader.get(PurchHeader."Document Type"::Order, PurchRcptHeader."Order No.") then
            InspectDataHeader."Sample ID GLF" := PurchHeader."Sample ID GLF";
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Inspection Data Sheets B2B", 'OnAfterInitInspectioHeaderInsTypePurchaseBeforeInspection', '', false, false)]
    procedure OnAfterInitInspectioHeaderInsTypePurchaseBeforeInspection(var InspectDataHeader: Record "Ins Datasheet Header B2B"; PurchHeader: Record "Purchase Header"; PurchLine: Record "Purchase Line")
    begin
        InspectDataHeader."Sample ID GLF" := PurchHeader."Sample ID GLF";
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Inspection Data Sheets B2B", 'OnAfterInitInspectionHeaderInsTypeProductionOrder', '', false, false)]
    procedure OnAfterInitInspectionHeaderInsTypeProductionOrder(var InspectDataHeader: Record "Ins Datasheet Header B2B"; ProdOrderLine: Record "Prod. Order Line"; PurchRcptLine: Record "Purch. Rcpt. Line"; ProdOrderRoutingLine: Record "Prod. Order Routing Line"; ProdOrderLine1: Record "Prod. Order Line")
    var
        ProdOrder: Record "Production Order";
    begin
        if ProdOrder.Get(ProdOrderLine.Status, ProdOrderLine."Prod. Order No.") then
            InspectDataHeader."Sample ID GLF" := ProdOrder."Sample ID GLF";
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Inspection Data Sheets B2B", 'OnAfterInitInspectionHeaderInsTypePurchaseLot', '', false, false)]
    procedure OnAfterInitInspectionHeaderInsTypePurchaseLot(var InspectDataHeader: Record "Ins Datasheet Header B2B"; PurchRcptHeader: Record "Purch. Rcpt. Header"; PurchRcptLine: Record "Purch. Rcpt. Line"; InspLot: Record "Inspection Lot B2B")
    var
        PurchHeader: Record "Purchase Header";
    begin
        if PurchHeader.get(PurchHeader."Document Type"::Order, PurchRcptHeader."Order No.") then
            InspectDataHeader."Sample ID GLF" := PurchHeader."Sample ID GLF";
    end;


    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Inspection Data Sheets B2B", 'OnAfterInitInspectionHeaderInsTypeRework', '', false, false)]
    procedure OnAfterInitInspectionHeaderInsTypeRework(var InspectDataHeader: Record "Ins Datasheet Header B2B"; InspectionReceipt: Record "Inspection Receipt Header B2B"; PurchRcptLine: Record "Purch. Rcpt. Line")
    begin
        InspectDataHeader."Sample ID GLF" := InspectionReceipt."Sample ID GLF";
    end;

    var
        Text50000: Label 'Tracking Reserved.';
        Text33000250Err: Label 'You cannot ship more than Quality Accepted in Sales Order No. %1 and Line No. %2.', comment = ' %1 Document No.= ; %2 = Line No.';


}