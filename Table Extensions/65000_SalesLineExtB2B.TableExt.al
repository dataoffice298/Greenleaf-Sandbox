tableextension 65000 "SalesLineExt B2B" extends "Sales Line"
{
    fields
    {
        modify("No.")
        {
            trigger OnAfterValidate()
            var
                Item: Record Item;
            begin
                if Item.Get("No.") then begin
                    "Dispatch Qc" := Item."Dispatch Qc";
                    "Spec ID" := Item."Spec ID B2B";
                end;
            end;
        }
        field(65000; "Spec ID"; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'Spec ID';
            TableRelation = "Specification Header B2B";
        }
        field(65001; "Quantity Accepted"; Decimal)
        {
            Caption = 'Quantity Accepted';
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = Sum("Quality Ledger Entry B2B".Quantity WHERE("Order No." = FIELD("Document No."), "Sales Line No" = FIELD("Line No."), "Entry Type" = FILTER(Accepted)));
            BlankZero = true;
        }
        field(65002; "Quantity Rework"; Decimal)
        {
            Caption = 'Quantity Rework';
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = Sum("Quality Ledger Entry B2B"."Remaining Quantity" WHERE("Order No." = FIELD("Document No."), "Sales Line No" = FIELD("Line No."), "Entry Type" = FILTER(Rework)));

        }
        field(65003; "QC Enabled"; Boolean)
        {
            DataClassification = CustomerContent;
            Caption = 'QC Enabled';
        }
        field(65004; "Quantity Rejected"; Decimal)
        {
            Caption = 'Quantity Rejected';
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = Sum("Quality Ledger Entry B2B".Quantity WHERE("Order No." = FIELD("Document No."), "Sales Line No" = FIELD("Line No."), "Entry Type" = FILTER(Reject)));
        }
        field(65005; "Quality Before Receipt"; Boolean)
        {
            DataClassification = CustomerContent;
            Caption = 'Quality Before Receipt';
        }
        field(65006; "Qty. Sending To Quality"; Decimal)
        {
            DataClassification = CustomerContent;
            Caption = 'Qty. Sending To Quality';
            BlankZero = true;
            MinValue = 0;

            //B2BMSOn19Apr2022>>
            trigger OnValidate()
            begin
                if ("Qty. Sending To Quality" + "Qty. Sent To Quality") > Quantity then
                    Error(QCExceedErr);
            end;
            //B2BMSOn19Apr2022<<
        }
        field(65007; "Qty. Sent To Quality"; Decimal)
        {
            DataClassification = CustomerContent;
            Caption = 'Qty. Sent To Quality';
            Editable = false;
            BlankZero = true;
            MinValue = 0;
        }
        field(65008; "Qty. Sending To Quality(R)"; Decimal)
        {
            DataClassification = CustomerContent;
            Caption = 'Qty. Sending To Quality(R)';
            BlankZero = true;
            MinValue = 0;
        }
        field(65009; "Spec Version"; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'Spec Version';
            TableRelation = "Specification Version B2B"."Version Code" WHERE("Specification No." = FIELD("Spec ID"));
        }
        field(65010; "Dispatch Qc"; Boolean)
        {
            DataClassification = CustomerContent;
            Caption = 'Dispatch Qc';
        }
        //B2BPAVON01AUG22>>
        field(65011; Select; Boolean)
        {
            DataClassification = CustomerContent;
            Caption = 'Select';
        }
        //B2BPAVON01AUG22<<
    }

    var
        QCExceedErr: Label 'Qty. Sending to Quality is more than the Quantity and Qty. Sent to Quality.';

    procedure ShowDataSheets()
    var
        InspectDataSheet: Record "Ins Datasheet Header B2B";
    BEGIN
        InspectDataSheet.SETRANGE("Order No.", "Document No.");
        InspectDataSheet.SETRANGE("Sales. Line No", "Line No.");
        PAGE.RUN(PAGE::"Inspection Data Sheet List B2B", InspectDataSheet);
    END;

    procedure ShowPostDataSheets()
    var
        PostInspectDataSheet: Record "Posted Ins DatasheetHeader B2B";
    begin
        PostInspectDataSheet.SETRANGE("Order No.", "Document No.");
        PostInspectDataSheet.SETRANGE("Sales. Line No", "Line No.");
        PAGE.RUN(PAGE::"Posted Ins DataSheet List B2B", PostInspectDataSheet);
    end;

    procedure ShowInspectReceipt()
    var
        InspectionReceipt: Record "Inspection Receipt Header B2B";
    BEGIN
        InspectionReceipt.SETRANGE("Order No.", "Document No.");
        InspectionReceipt.SETRANGE("Sales. Line No", "Line No.");
        InspectionReceipt.SETRANGE(Status, FALSE);
        PAGE.RUN(PAGE::"Inspection Receipt List B2B", InspectionReceipt);
    END;

    procedure ShowPostInspectReceipt()
    var
        InspectionReceipt: Record "Inspection Receipt Header B2B";
    BEGIN
        InspectionReceipt.SETRANGE("Order No.", "Document No.");
        InspectionReceipt.SETRANGE("Sales. Line No", "Line No.");
        InspectionReceipt.SETRANGE(Status, TRUE);
        PAGE.RUN(PAGE::"Posted Ins Receipt List B2B", InspectionReceipt);
    END;

    procedure CreateInspectionDataSheets()
    var
        SalesHeader: Record "Sales Header";
        InspectDataSheets: Codeunit "Ins Data Sheets Sales B2B";
    begin
        SalesHeader.GET(SalesHeader."Document Type"::Order, "Document No.");
        SalesHeader.TESTFIELD(Status, SalesHeader.Status::Released);
        TESTFIELD("Qty. Sending to Quality");
        TestField(Type, type::Item);
        TestField("Dispatch Qc", true);
        InspectDataSheets.CreateSalesLineInspectDataSheet(SalesHeader, Rec);
    end;
}