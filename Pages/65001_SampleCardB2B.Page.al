page 65001 "Sample Card B2B"
{
    Caption = 'Sample Card';
    PageType = Card;
    SourceTable = "Sample B2B";
    PromotedActionCategories = 'New,Process,Report,Order,Navigate,Functions';

    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';
                field("Sample ID"; Rec."Sample ID")
                {
                    AssistEdit = true;
                    ApplicationArea = all;
                    trigger OnAssistEdit();
                    begin
                        if Rec.AssistEdit() then
                            CurrPage.UPDATE();
                    end;
                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = all;
                }
                field("Receipt No."; Rec."Receipt No.")
                {
                    ApplicationArea = all;
                }
                field("Receipt Date"; Rec."Receipt Date")
                {
                    ApplicationArea = all;
                }
                field("Item No."; Rec."Item No.")
                {
                    ApplicationArea = all;
                }
                field("Item Description"; Rec."Item Description")
                {
                    ApplicationArea = all;
                }
                field("Sample Qty"; Rec."Sample Qty")
                {
                    ApplicationArea = all;
                }
                field("Sample UOM"; Rec."Sample UOM")
                {
                    ApplicationArea = all;
                }
                field("Dispatch Qty"; Rec."Dispatch Qty")
                {
                    ApplicationArea = all;
                }
                field("Batch No."; Rec."Batch No.")
                {
                    ApplicationArea = all;
                }
                field("Mfg Date"; Rec."Mfg Date")
                {
                    ApplicationArea = all;
                }
                field("Expiry Date"; Rec."Expiry Date")
                {
                    ApplicationArea = all;
                }
                field("Purchase Spec ID"; Rec."Purchase Spec ID")
                {
                    ApplicationArea = all;
                }
                field("Sales Spec ID"; Rec."Sales Spec ID")
                {
                    ApplicationArea = all;
                }
                field("AR No."; Rec."AR No.")
                {
                    ApplicationArea = all;
                }
                field("QC Completion Date"; Rec."QC Completion Date")

                {
                    ApplicationArea = all;
                }

                field("QC Completed"; Rec."QC Completed")
                {
                    ApplicationArea = all;
                }
                field(Status; Rec.Status)
                {
                    ApplicationArea = all;
                }
                field("Applies-to ID"; Rec."Applies-to ID")
                {
                    ApplicationArea = all;
                }
                field("Sample Order No."; Rec."Sample Order No.")
                {
                    ApplicationArea = all;
                    Editable = false;
                }
                field("Sample Dispatch No."; Rec."Sample Dispatch No.")
                {
                    ApplicationArea = all;
                    Editable = false;
                }
                field("Sample Purchase Order No."; Rec."Sample Purchase Order No.")
                {
                    ApplicationArea = all;
                    Editable = false;
                }
                field("Sample Purchase Dispatch No."; Rec."Sample Purchase Dispatch No.")
                {
                    ApplicationArea = all;
                    Editable = false;
                }
                field("Sample Prod. Order No."; Rec."Sample Prod. Order No.")
                {
                    ApplicationArea = all;
                    Editable = false;
                }
                field("Sample Dispatch Prod. No."; Rec."Sample Dispatch Prod. No.")
                {
                    ApplicationArea = all;
                    Editable = false;
                }
            }

            group("&Vendor Details")
            {
                field("Vendor No."; Rec."Vendor No.")
                {
                    ApplicationArea = all;
                }
                field("Vendor Name"; Rec."Vendor Name")
                {
                    ApplicationArea = all;
                }
                field(Address; Rec.Address)
                {
                    ApplicationArea = all;
                }
                field(Address2; Rec.Address2)
                {
                    ApplicationArea = all;
                }
                field("Post Code"; Rec."Post Code")
                {
                    Caption = 'Post Code/City';
                    ApplicationArea = all;
                }
                field(City; Rec.City)
                {
                    ApplicationArea = all;
                }
                field(State; Rec.State)
                {
                    ApplicationArea = all;
                }
                field("Country Code"; Rec."Country Code")
                {
                    ApplicationArea = all;
                }
                field("Phone No."; Rec."Phone No.")
                {
                    ApplicationArea = all;
                }
                field("Fax No."; Rec."Fax No.")
                {
                    ApplicationArea = all;
                }
                field("E-Mail"; Rec."E-Mail")
                {
                    ApplicationArea = all;
                }
                field("Home Page"; Rec."Home Page")
                {
                    ApplicationArea = all;
                }
                field(Contact; Rec.Contact)
                {
                    Editable = ContactEditable;
                    ApplicationArea = all;

                    trigger OnValidate();
                    begin
                        ContactOnAfterValidate();
                    end;
                }
                field("Vendor Created"; Rec."Vendor Created")
                {
                    ApplicationArea = all;
                }
            }

            group("&Customer Details")
            {
                //Customer>>
                field("Customer No."; Rec."Customer No.")
                {
                    ApplicationArea = all;
                }
                field("Customer Name"; Rec."Customer Name")
                {
                    ApplicationArea = all;
                }
                field("Customer Address"; Rec."Customer Address")
                {
                    ApplicationArea = all;
                }
                field("Customer Address2"; Rec."Customer Address2")
                {
                    ApplicationArea = all;
                }
                field("Customer Post Code"; Rec."Customer Post Code")
                {
                    Caption = 'Post Code/City';
                    ApplicationArea = all;
                }
                field("Customer City"; Rec."Customer City")
                {
                    ApplicationArea = all;
                }
                field("Customer State"; Rec."Customer State")
                {
                    ApplicationArea = all;
                }
                field("Customer Country Code"; Rec."Customer Country Code")
                {
                    ApplicationArea = all;
                }
                field("Customer Phone No."; Rec."Customer Phone No.")
                {
                    ApplicationArea = all;
                }
                field("Customer Fax No."; Rec."Customer Fax No.")
                {
                    ApplicationArea = all;
                }
                field("Customer E-Mail"; Rec."Customer E-Mail")
                {
                    ApplicationArea = all;
                }
                field("Customer Home Page"; Rec."Customer Home Page")
                {
                    ApplicationArea = all;
                }
                field("Customer Contact"; Rec."Customer Contact")
                {
                    Editable = ContactEditable;
                    ApplicationArea = all;

                    trigger OnValidate();
                    begin
                        ContactOnAfterValidate();
                    end;
                }
                field("Customer Created"; Rec."Customer Created")
                {
                    ApplicationArea = all;
                }
                //Customer<<
            }
        }
    }

    actions
    {
        area(Navigation)
        {

            group("&Sales")
            {
                Caption = '&Sales';
                Image = Sales;
                action(CreateSampleOrder)
                {
                    Caption = 'Create Sales Sample Order';
                    Image = SpecialOrder;
                    ApplicationArea = All;
                    Promoted = true;
                    PromotedCategory = Category4;
                    PromotedIsBig = true;
                    PromotedOnly = true;

                    trigger OnAction()
                    begin
                        CreateOrder(0);
                    end;
                }
                action(CreateDispatchOrder)
                {
                    Caption = 'Create Sales Dispatch Order';
                    Image = Order;
                    ApplicationArea = All;
                    Promoted = true;
                    PromotedCategory = Category4;
                    PromotedIsBig = true;
                    PromotedOnly = true;

                    trigger OnAction()
                    begin
                        CreateOrder(1);
                    end;
                }
            }
            group("&Purchase")
            {
                Caption = '&Purchase';
                action(CreateSamplePurchaseOrder)
                {
                    Caption = 'Create Sample Purchase Order';
                    Image = Purchase;
                    ApplicationArea = All;
                    Promoted = true;
                    PromotedCategory = Category4;
                    PromotedIsBig = true;
                    PromotedOnly = true;

                    trigger OnAction()
                    begin
                        CreateOrder(2);
                    end;
                }
                action(CreatePurchaseDispatchOrder)
                {
                    Caption = 'Create Purchase Dispatch Order';
                    Image = Purchasing;
                    ApplicationArea = All;
                    Promoted = true;
                    PromotedCategory = Category4;
                    PromotedIsBig = true;
                    PromotedOnly = true;

                    trigger OnAction()
                    begin
                        CreateOrder(3);
                    end;
                }
            }
            group("&Production")
            {
                Caption = '&Production';
                action(CreateSampleProdOrder)
                {
                    Caption = 'Create Sample Prod. Order';
                    Image = Purchase;
                    ApplicationArea = All;
                    Promoted = true;
                    PromotedCategory = Category4;
                    PromotedIsBig = true;
                    PromotedOnly = true;

                    trigger OnAction()
                    begin
                        CreateOrder(4);
                    end;
                }
                action(CreateDispatchProdOrder)
                {
                    Caption = 'Create Dispatch Prod. Order';
                    Image = Purchasing;
                    ApplicationArea = All;
                    Promoted = true;
                    PromotedCategory = Category4;
                    PromotedIsBig = true;
                    PromotedOnly = true;

                    trigger OnAction()
                    begin
                        CreateOrder(5);
                    end;
                }
            }


            group("F&unctions")
            {
                Caption = 'F&unctions';
                Image = ReferenceData;

                action("Create Inspection Data &Sheets")
                {
                    ApplicationArea = all;
                    Caption = 'Create Inspection Data &Sheets';
                    Image = CreateForm;
                    Promoted = true;
                    PromotedCategory = Category6;
                    PromotedIsBig = true;
                    PromotedOnly = true;

                    trigger OnAction();
                    begin
                        Rec.TESTFIELD("Item No.");
                        Rec.TESTFIELD("Sample Qty");
                        Rec.TESTFIELD("Sample UOM");
                        Rec.TESTFIELD("Batch No.");
                        Rec.TESTFIELD("Mfg Date");
                        // if Item.GET(Rec."Item No.") then
                        //     if Item."Item Classification" <> Item."Item Classification"::Packing then
                        Rec.TESTFIELD("Expiry Date");
                        Rec.TESTFIELD("Sales Spec ID");
                        if Rec."Vendor No." = '' then
                            Rec.TESTFIELD("Vendor Name")
                        else
                            Rec.TESTFIELD("Vendor No.");
                        Rec.CreateInspectionDataSheets();
                    end;
                }
            }

            group("&Navigate")
            {
                Caption = '&Navigate';
                Image = Navigate;
                group(Inspection)
                {
                    action(InspectionDataSheets)
                    {
                        Caption = 'Inspection Data Sheets';
                        Image = History;
                        ApplicationArea = All;
                        Promoted = true;
                        PromotedCategory = Category5;
                        //PromotedIsBig = true;
                        PromotedOnly = true;
                        RunObject = page "Inspection Data Sheet List B2B";
                        RunPageLink = "Sample ID" = field("Sample ID");
                    }
                    action(PostedInspectionDataSheets)
                    {
                        Caption = 'Posted Inspection Data Sheets';
                        Image = History;
                        ApplicationArea = All;
                        Promoted = true;
                        PromotedCategory = Category5;
                        //PromotedIsBig = true;
                        PromotedOnly = true;
                        RunObject = page "Posted Ins DataSheet List B2B";
                        RunPageLink = "Sample ID" = field("Sample ID");
                    }
                    action(InspectionReceipts)
                    {
                        Caption = 'Inspection Receipts';
                        Image = History;
                        ApplicationArea = All;
                        Promoted = true;
                        PromotedCategory = Category5;
                        //PromotedIsBig = true;
                        PromotedOnly = true;
                        RunObject = page "Inspection Receipt List B2B";
                        RunPageLink = "Sample ID" = field("Sample ID");
                    }
                    action(PostedInspectionReceipts)
                    {
                        Caption = 'Posted Inspection Receipts';
                        Image = History;
                        ApplicationArea = All;
                        Promoted = true;
                        PromotedCategory = Category5;
                        //PromotedIsBig = true;
                        PromotedOnly = true;
                        RunObject = page "Posted Ins Receipt List B2B";
                        RunPageLink = "Sample ID" = field("Sample ID");
                    }
                }
                group(Orders)
                {
                    action(SampleOrder)
                    {
                        Caption = 'Sample Sales Order';
                        Image = Sales;
                        ApplicationArea = All;
                        Promoted = true;
                        PromotedCategory = Category5;
                        //PromotedIsBig = true;
                        PromotedOnly = true;
                        RunObject = page "Sales Order";
                        RunPageLink = "No." = field("Sample Order No."),
                                        "Sample ID" = field("Sample ID");
                    }
                    action(SampleDispatchOrder)
                    {
                        Caption = 'Sample Sales Dispatch Order';
                        Image = Sales;
                        ApplicationArea = All;
                        Promoted = true;
                        PromotedCategory = Category5;
                        //PromotedIsBig = true;
                        PromotedOnly = true;
                        RunObject = page "Sales Order";
                        RunPageLink = "No." = field("Sample Dispatch No."),
                                        "Sample ID" = field("Sample ID");
                    }
                    action(SamplePurchaseOrder)
                    {
                        Caption = 'Sample Purchase Order';
                        Image = Purchase;
                        ApplicationArea = All;
                        Promoted = true;
                        PromotedCategory = Category5;
                        //PromotedIsBig = true;
                        PromotedOnly = true;
                        RunObject = page "Purchase Order";
                        RunPageLink = "Sample ID" = field("Sample ID"),
                                        "No." = field("Sample Purchase Order No.");
                    }
                    action(SamplePurchDispatchOrder)
                    {
                        Caption = 'Sample Purch. Dispatch Order';
                        Image = Purchase;
                        ApplicationArea = All;
                        Promoted = true;
                        PromotedCategory = Category5;
                        //PromotedIsBig = true;
                        PromotedOnly = true;
                        RunObject = page "Purchase Order";
                        RunPageLink = "Sample ID" = field("Sample ID"),
                                        "No." = field("Sample Purchase Dispatch No.");
                    }
                    action(SampleProductionOrder)
                    {
                        Caption = 'Sample Production Order';
                        Image = Production;
                        ApplicationArea = All;
                        Promoted = true;
                        PromotedCategory = Category5;
                        //PromotedIsBig = true;
                        PromotedOnly = true;
                        RunObject = page "Released Production Order";
                        RunPageLink = "Sample ID" = field("Sample ID"),
                                        "No." = field("Sample Prod. Order No.");
                    }
                    action(SampleDispatchProductionOrder)
                    {
                        Caption = 'Sample Prod. Dispatch Order';
                        Image = Production;
                        ApplicationArea = All;
                        Promoted = true;
                        PromotedCategory = Category5;
                        //PromotedIsBig = true;
                        PromotedOnly = true;
                        RunObject = page "Released Production Order";
                        RunPageLink = "Sample ID" = field("Sample ID"),
                                        "No." = field("Sample Dispatch Prod. No.");
                    }
                }
            }
        }
    }

    trigger OnInit();
    begin
        ContactEditable := true;
    end;

    var
        [InDataSet]
        ContactEditable: Boolean;

    procedure CreateOrder(OrderType: Option "Sample Order","Sample Dispatch Order","Sample Purchase Order","Sample Purch. Disp. Order","Sample Prod. Order","Sample Disp. Prod. Order")
    var
        SalesHeader: Record "Sales Header";
        SalesLine: Record "Sales Line";
        PurchaseHeader: Record "Purchase Header";
        PurchaseLine: Record "Purchase Line";
        ProdOrder: Record "Production Order";
        ProdOrdNo: Code[20];
        Text001: Label 'Sample Order with document no. - %1 has been created successfully.';
        Text002: Label 'Sample Dispatch Order with document no. - %1 has been created successfully.';
        Text003: Label 'Sample Purchase Order with document no. - %1 has been created successfully.';
        Text004: Label 'Sample Purchase Dispacth Order with document no. - %1 has been created successfully.';
        Text005: Label 'Sample Order is already created.';
        Text006: Label 'Sample Dispatch Order is already created.';
        Text007: Label 'Sample Purchase Order is already created.';
        Text008: Label 'Sample Purchase Dispatch Order is already created.';
        Text009: Label 'Sample Production Order with document no. - %1 has been created successfully.';
        Text010: Label 'Sample Production Order is already created.';
        Text011: Label 'Sample Dispatch Production Order with document no. - %1 has been created successfully.';
        Text012: Label 'Sample Dispatch Production Order is already created.';
    begin
        //Sample Order Starts>>
        if OrderType = OrderType::"Sample Order" then begin
            if Rec."Sample Order No." <> '' then
                Error(Text005);
            Rec.TestField("Customer No.");
            Rec.TestField("Sample ID");
            Rec.TestField("Item No.");
            Rec.TestField("Sample Qty");
            //Header Part>>
            SalesHeader.Init();
            SalesHeader."Document Type" := SalesHeader."Document Type"::Order;
            SalesHeader.Validate("Sell-to Customer No.", Rec."Customer No.");
            SalesHeader."Sample ID" := Rec."Sample ID";
            SalesHeader.Insert(true);
            //Header Part<<

            //Line Part>>
            SalesLine.Init();
            SalesLine."Document Type" := SalesLine."Document Type"::Order;
            SalesLine."Document No." := SalesHeader."No.";
            SalesLine.Validate("Sell-to Customer No.", SalesHeader."Sell-to Customer No.");
            SalesLine.Validate(Type, SalesLine.Type::Item);
            SalesLine.Validate("No.", Rec."Item No.");
            SalesLine.Validate(Quantity, Rec."Sample Qty");
            SalesLine.Validate("Unit of Measure Code", Rec."Sample UOM");
            SalesLine.Validate("Unit Cost", 0);
            SalesLine."Spec ID" := Rec."Sales Spec ID";
            SalesLine.Insert(true);
            //Line Part<<
            Rec."Sample Order No." := SalesHeader."No.";
            Rec.Modify();
            Message(Text001, SalesHeader."No.");
        end;
        //Sample Order Ends<<

        //Sample Dispactch Order Starts>>
        if OrderType = OrderType::"Sample Dispatch Order" then begin
            if Rec."Sample Dispatch No." <> '' then
                Error(Text006);
            Rec.TestField("Customer No.");
            Rec.TestField("Sample ID");
            Rec.TestField("Item No.");
            Rec.TestField("Dispatch Qty");
            //Header Part>>
            SalesHeader.Init();
            SalesHeader."Document Type" := SalesHeader."Document Type"::Order;
            SalesHeader.Validate("Sell-to Customer No.", Rec."Customer No.");
            SalesHeader."Sample ID" := Rec."Sample ID";
            SalesHeader.Insert(true);
            //Header Part<<

            //Line Part>>
            SalesLine.Init();
            SalesLine."Document Type" := SalesLine."Document Type"::Order;
            SalesLine."Document No." := SalesHeader."No.";
            SalesLine.Validate("Sell-to Customer No.", SalesHeader."Sell-to Customer No.");
            SalesLine.Validate(Type, SalesLine.Type::Item);
            SalesLine.Validate("No.", Rec."Item No.");
            SalesLine.Validate(Quantity, Rec."Dispatch Qty");
            SalesLine.Validate("Unit of Measure Code", Rec."Sample UOM");
            SalesLine.Validate("Unit Cost", 0);
            SalesLine."Spec ID" := Rec."Sales Spec ID";
            SalesLine.Insert(true);
            //Line Part<<
            Rec."Sample Dispatch No." := SalesHeader."No.";
            Rec.Modify();
            Message(Text002, SalesHeader."No.");
        end;
        //Sample Dispactch Order Ends<<

        //Sample Purchase Order Starts>>
        if OrderType = OrderType::"Sample Purchase Order" then begin
            if Rec."Sample Purchase Order No." <> '' then
                Error(Text007);
            Rec.TestField("Vendor No.");
            Rec.TestField("Sample ID");
            Rec.TestField("Item No.");
            Rec.TestField("Sample Qty");
            //Header Part>>
            PurchaseHeader.Init();
            PurchaseHeader."Document Type" := PurchaseHeader."Document Type"::Order;
            PurchaseHeader.Validate("Buy-from Vendor No.", Rec."Vendor No.");
            PurchaseHeader."Sample ID" := Rec."Sample ID";
            PurchaseHeader.Insert(true);
            //Header Part<<

            //Line Part>>
            PurchaseLine.Init();
            PurchaseLine."Document Type" := PurchaseLine."Document Type"::Order;
            PurchaseLine."Document No." := PurchaseHeader."No.";
            PurchaseLine.Validate("Buy-from Vendor No.", PurchaseHeader."Buy-from Vendor No.");
            PurchaseLine.Validate(Type, PurchaseLine.Type::Item);
            PurchaseLine.Validate("No.", Rec."Item No.");
            PurchaseLine.Validate(Quantity, Rec."Sample Qty");
            PurchaseLine.Validate("Unit of Measure Code", Rec."Sample UOM");
            PurchaseLine.Validate("Unit Cost", 0);
            PurchaseLine."Spec ID B2B" := Rec."Purchase Spec ID";
            PurchaseLine.Insert(true);
            //Line Part<<
            Rec."Sample Purchase Order No." := PurchaseHeader."No.";
            Rec.Modify();
            Message(Text003, PurchaseHeader."No.");
        end;
        //Sample Purchase Order Ends<<

        //Sample Dispatch Purchase Order Starts>>
        if OrderType = OrderType::"Sample Purch. Disp. Order" then begin
            if Rec."Sample Purchase Dispatch No." <> '' then
                Error(Text008);
            Rec.TestField("Vendor No.");
            Rec.TestField("Sample ID");
            Rec.TestField("Item No.");
            Rec.TestField("Dispatch Qty");
            //Header Part>>
            PurchaseHeader.Init();
            PurchaseHeader."Document Type" := PurchaseHeader."Document Type"::Order;
            PurchaseHeader.Validate("Buy-from Vendor No.", Rec."Vendor No.");
            PurchaseHeader."Sample ID" := Rec."Sample ID";
            PurchaseHeader.Insert(true);
            //Header Part<<

            //Line Part>>
            PurchaseLine.Init();
            PurchaseLine."Document Type" := PurchaseLine."Document Type"::Order;
            PurchaseLine."Document No." := PurchaseHeader."No.";
            PurchaseLine.Validate("Buy-from Vendor No.", PurchaseHeader."Buy-from Vendor No.");
            PurchaseLine.Validate(Type, PurchaseLine.Type::Item);
            PurchaseLine.Validate("No.", Rec."Item No.");
            PurchaseLine.Validate(Quantity, Rec."Dispatch Qty");
            PurchaseLine.Validate("Unit of Measure Code", Rec."Sample UOM");
            PurchaseLine.Validate("Unit Cost", 0);
            PurchaseLine."Spec ID B2B" := Rec."Purchase Spec ID";
            PurchaseLine.Insert(true);
            //Line Part<<
            Rec."Sample Purchase Dispatch No." := PurchaseHeader."No.";
            Rec.Modify();
            Message(Text004, PurchaseHeader."No.");
        end;
        //Sample Dispatch Purchase Order Ends<<

        //Sample Production Order Starts>>
        if OrderType = OrderType::"Sample Prod. Order" then begin
            if Rec."Sample Prod. Order No." <> '' then
                Error(Text010);

            Rec.TestField("Sample ID");
            Rec.TestField("Item No.");
            Rec.TestField("Sample Qty");

            ProdOrder.Init();
            ProdOrder."Source Type" := ProdOrder."Source Type"::Item;
            ProdOrder.Validate("Source No.", Rec."Item No.");
            ProdOrder.Validate(Quantity, Rec."Sample Qty");
            ProdOrder."Sample ID" := Rec."Sample ID";
            ProdOrder.Status := ProdOrder.Status::Released;
            ProdOrder.Insert(true);
            ProdOrdNo := ProdOrder."No.";
            Commit();

            ProdOrder.Reset();
            ProdOrder.SetRange("No.", ProdOrdNo);
            REPORT.RunModal(REPORT::"Refresh Production Order", true, true, ProdOrder);

            Rec."Sample Prod. Order No." := ProdOrder."No.";
            Rec.Modify();
            Message(Text009, ProdOrder."No.");
        end;
        //Sample Production Order Ends<<

        //Sample Dispatch Production Order Starts>>
        if OrderType = OrderType::"Sample Disp. Prod. Order" then begin
            if Rec."Sample Dispatch Prod. No." <> '' then
                Error(Text012);

            Rec.TestField("Sample ID");
            Rec.TestField("Item No.");
            Rec.TestField("Dispatch Qty");

            ProdOrder.Init();
            ProdOrder."Source Type" := ProdOrder."Source Type"::Item;
            ProdOrder.Validate("Source No.", Rec."Item No.");
            ProdOrder.Validate(Quantity, Rec."Dispatch Qty");
            ProdOrder."Sample ID" := Rec."Sample ID";
            ProdOrder.Status := ProdOrder.Status::Released;
            ProdOrder.Insert(true);
            ProdOrdNo := ProdOrder."No.";
            Commit();

            ProdOrder.Reset();
            ProdOrder.SetRange("No.", ProdOrdNo);
            REPORT.RunModal(REPORT::"Refresh Production Order", true, true, ProdOrder);

            Rec."Sample Dispatch Prod. No." := ProdOrder."No.";
            Rec.Modify();
            Message(Text011, ProdOrder."No.");
        end;
        //Sample Dispatch Production Order Ends<<
    end;




    procedure ActivateFields();
    begin
        ContactEditable := Rec."Primary Contact No." = '';
        ContactEditable := Rec."Customer Primary Contact No." = '';
    end;

    local procedure ContactOnAfterValidate();
    begin
        ActivateFields();
    end;
}

