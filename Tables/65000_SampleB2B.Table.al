table 65000 "Sample B2B"
{
    Caption = 'Sample';
    DrillDownPageID = "Sample List B2B";
    LookupPageID = "Sample List B2B";

    fields
    {
        field(1; "Sample ID"; Code[20])
        {
            Caption = 'Sample ID';
            DataClassification = CustomerContent;

            trigger OnValidate();
            begin
                TestStauts();
            end;
        }
        field(2; Description; Text[30])
        {
            Caption = 'Description';
            DataClassification = CustomerContent;

            trigger OnValidate();
            begin
                TestStauts();
            end;
        }
        field(3; "Receipt Date"; Date)
        {
            Caption = 'Receipt Date';
            DataClassification = CustomerContent;

            trigger OnValidate();
            begin
                TestStauts();
            end;
        }
        field(4; "Item No."; Code[20])
        {
            Caption = 'Item No.';
            TableRelation = Item;
            DataClassification = CustomerContent;

            trigger OnValidate();
            begin
                TestStauts();
                if Item.GET("Item No.") then begin
                    "Item Description" := Item.Description;
                    "Sample UOM" := Item."Base Unit of Measure";
                    "Purchase Spec ID" := Item."Spec ID B2B";
                    "Sales Spec ID" := Item."Sales Spec ID B2B";
                end;
            end;
        }
        field(5; "Item Description"; Text[100])
        {
            Caption = 'Item Description';
            DataClassification = CustomerContent;

            trigger OnValidate();
            begin
                TestStauts();
            end;
        }
        field(6; "Sample Qty"; Decimal)
        {
            Caption = 'Sample Qty';
            DataClassification = CustomerContent;

            trigger OnValidate();
            begin
                TestStauts();
            end;
        }
        field(7; "Sample UOM"; Code[10])
        {
            Caption = 'Sample UOM';
            TableRelation = "Item Unit of Measure".Code WHERE("Item No." = FIELD("Item No."),
                                                               Code = FIELD("Sample UOM"));
            DataClassification = CustomerContent;

            trigger OnValidate();
            begin
                TestStauts();
            end;
        }
        field(8; "Mfg Date"; Date)
        {
            Caption = 'Mfg Date';
            DataClassification = CustomerContent;

            trigger OnValidate();
            begin
                TestStauts();
                TESTFIELD("Item Description");
                TESTFIELD("Sample Qty");
                TESTFIELD("Sample UOM");
                if "Expiry Date" <> 0D then
                    if "Mfg Date" > "Expiry Date" then
                        ERROR(Text003Lbl)
            end;
        }
        field(9; "Expiry Date"; Date)
        {
            Caption = 'Expiry Date';
            DataClassification = CustomerContent;

            trigger OnValidate();
            begin
                TestStauts();
                if "Mfg Date" = 0D then
                    ERROR(Text004Lbl);
                if "Expiry Date" <> 0D then
                    if "Expiry Date" < "Mfg Date" then
                        ERROR(Text003Lbl);
            end;
        }
        field(10; "Batch No."; Code[10])
        {
            Caption = 'Batch No.';
            DataClassification = CustomerContent;

            trigger OnValidate();
            begin
                TestStauts();
            end;
        }
        field(11; "QC Completed"; Boolean)
        {
            Caption = 'QC Completed';
            Editable = false;
            DataClassification = CustomerContent;
        }
        field(12; "QC Completion Date"; Date)
        {
            Caption = 'QC Completion Date';
            Editable = false;
            DataClassification = CustomerContent;
        }
        field(13; "Purchase Spec ID"; Code[20])
        {
            Caption = 'Purchase Spec ID';
            TableRelation = "Specification Header B2B"."Spec ID";
            DataClassification = CustomerContent;

            trigger OnValidate();
            begin
                TestStauts();
            end;
        }
        field(14; "Vendor No."; Code[20])
        {
            Caption = 'Vendor No.';
            TableRelation = Vendor;
            DataClassification = CustomerContent;

            trigger OnValidate();
            begin
                if Vendor.GET("Vendor No.") then begin
                    "Vendor Name" := Vendor.Name;
                    Address := Vendor.Address;
                    Address2 := Vendor."Address 2";
                    City := Vendor.City;
                    Contact := Vendor.Contact;
                    "Phone No." := Vendor."Phone No.";
                    "Telex No." := Vendor."Telex No.";
                    "Post Code" := Vendor."Post Code";
                    "Fax No." := Vendor."Fax No.";
                    "Primary Contact No." := Vendor."Primary Contact No.";
                    "Country Code" := Vendor."Country/Region Code";
                    "Vendor Created" := true;
                end
                else begin
                    "Vendor Name" := '';
                    Address := '';
                    Address2 := '';
                    City := '';
                    Contact := '';
                    "Phone No." := '';
                    "Telex No." := '';
                    State := '';
                    "Post Code" := '';
                    "Fax No." := '';
                    "Primary Contact No." := '';
                    "Country Code" := '';
                    "Vendor Created" := false;
                end;
                TestStauts();
            end;
        }
        field(15; "Vendor Name"; Text[100])
        {
            Caption = 'Vendor Name';
            DataClassification = CustomerContent;

            trigger OnValidate();
            begin
                TestStauts();
            end;
        }
        field(16; Address; Text[100])
        {
            Caption = 'Address';
            DataClassification = CustomerContent;

            trigger OnValidate();
            begin
                TestStauts();
            end;
        }
        field(17; Address2; Text[50])
        {
            Caption = 'Address2';
            DataClassification = CustomerContent;

            trigger OnValidate();
            begin
                TestStauts();
            end;
        }
        field(18; City; Text[30])
        {
            Caption = 'City';
            DataClassification = CustomerContent;

            trigger OnValidate();
            begin
                TestStauts();
                PostCode.ValidateCity(City, "Post Code", Country, "Country Code", (CurrFieldNo <> 0) and GUIALLOWED());
            end;
        }
        field(19; Contact; Text[100])
        {
            Caption = 'Contact';
            DataClassification = CustomerContent;

            trigger OnValidate();
            begin
                TestStauts();
                if RMSetup.GET() then
                    if RMSetup."Bus. Rel. Code for Vendors" <> '' then
                        if (xRec.Contact = '') and (xRec."Primary Contact No." = '') then begin
                            Modify();
                            UpdateContFromVend.OnModify(Vendor);
                            UpdateContFromVend.InsertNewContactPerson(Vendor, false);
                            Modify(true);
                        end
            end;
        }
        field(20; "Phone No."; Text[30])
        {
            Caption = 'Phone No.';
            DataClassification = CustomerContent;

            trigger OnValidate();
            begin
                TestStauts();
            end;
        }
        field(21; "Telex No."; Text[20])
        {
            Caption = 'Telex No.';
            DataClassification = CustomerContent;

            trigger OnValidate();
            begin
                TestStauts();
            end;
        }
        field(22; "No. Series"; Code[20])
        {
            Caption = 'No. Series';
            DataClassification = CustomerContent;
        }
        field(23; Comment; Boolean)
        {
            Caption = 'Comment';
            DataClassification = CustomerContent;
        }
        field(24; State; Code[10])
        {
            Caption = 'State';
            DataClassification = CustomerContent;

            trigger OnValidate();
            begin
                TestStauts();
            end;
        }
        field(25; "Post Code"; Code[20])
        {
            Caption = 'Post Code';
            TableRelation = "Post Code";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
            DataClassification = CustomerContent;

            trigger OnValidate();
            begin
                TestStauts();
                PostCode.ValidatePostCode(City, "Post Code", Country, "Country Code", (CurrFieldNo <> 0) and GUIALLOWED());
            end;
        }
        field(26; "Fax No."; Text[30])
        {
            Caption = 'Fax No.';
            DataClassification = CustomerContent;

            trigger OnValidate();
            begin
                TestStauts();
            end;
        }
        field(28; "Country Code"; Code[10])
        {
            Caption = 'Country Code';
            TableRelation = "Country/Region";
            DataClassification = CustomerContent;

            trigger OnValidate();
            begin
                TestStauts();
            end;
        }
        field(29; "Vendor Created"; Boolean)
        {
            Caption = 'Vendor Created';
            Editable = false;
            DataClassification = CustomerContent;
        }
        field(30; "E-Mail"; Text[80])
        {
            Caption = 'E-Mail';
            DataClassification = CustomerContent;

            trigger OnValidate();
            begin
                TestStauts();
            end;
        }
        field(31; "Home Page"; Text[80])
        {
            Caption = 'Home Page';
            DataClassification = CustomerContent;

            trigger OnValidate();
            begin
                TestStauts();
            end;
        }
        field(32; "Receipt No."; Code[20])
        {
            Caption = 'Receipt No.';
            DataClassification = CustomerContent;

            trigger OnValidate();
            begin
                TestStauts();
            end;
        }
        field(33; Status; Option)
        {
            Caption = 'Status';
            Editable = false;
            OptionCaption = '" ,Under Inspection,Accepted,Rejected,Destroyed"';
            OptionMembers = " ","Under Inspection",Accepted,Rejected,Destroyed;
            DataClassification = CustomerContent;
        }
        field(36; "AR No."; Code[20])
        {
            Caption = 'AR No.';
            Editable = false;
            DataClassification = CustomerContent;
        }
        field(50; "Primary Contact No."; Code[20])
        {
            Caption = 'Primary Contact No.';
            TableRelation = Contact;
            DataClassification = CustomerContent;

            trigger OnLookup();
            var
                Cont: Record Contact;
                ContBusRel: Record "Contact Business Relation";
            begin
                ContBusRel.SETRANGE("Link to Table", ContBusRel."Link to Table"::Vendor);
                ContBusRel.SETRANGE("No.", "Vendor No.");
                if ContBusRel.FIND('-') then
                    Cont.SETRANGE("Company No.", ContBusRel."Contact No.");

                if "Primary Contact No." <> '' then
                    if Cont.GET("Primary Contact No.") then;
                if PAGE.RUNMODAL(0, Cont) = ACTION::LookupOK then
                    VALIDATE("Primary Contact No.", Cont."No.");
            end;

            trigger OnValidate();
            var
                Cont: Record Contact;
                ContBusRel: Record "Contact Business Relation";
            begin
                TestStauts();
                Contact := '';
                if "Primary Contact No." <> '' then begin
                    Cont.GET("Primary Contact No.");

                    ContBusRel.SETCURRENTKEY("Link to Table", "No.");
                    ContBusRel.SETRANGE("Link to Table", ContBusRel."Link to Table"::Vendor);
                    ContBusRel.SETRANGE("No.", "Vendor No.");
                    ContBusRel.FIND('-');

                    if Cont."Company No." <> ContBusRel."Contact No." then
                        ERROR(Text000Lbl, Cont."No.", Cont.Name, "Vendor No.", "Vendor Name");

                    if Cont.Type = Cont.Type::Person then
                        Contact := Cont.Name
                end;
            end;
        }
        field(51; Country; Text[30])
        {
            Caption = 'County';
            DataClassification = CustomerContent;

        }

        field(52; "Customer No."; Code[20])
        {
            Caption = 'Customer No.';
            TableRelation = Customer;
            DataClassification = CustomerContent;

            trigger OnValidate();
            begin
                if Customer.GET("Customer No.") then begin
                    "Customer Name" := Customer.Name;
                    "Customer Address" := Customer.Address;
                    "Customer Address2" := Customer."Address 2";
                    "Customer City" := Customer.City;
                    "Customer Contact" := Customer.Contact;
                    "Customer Phone No." := Customer."Phone No.";
                    "Customer Telex No." := Customer."Telex No.";
                    "Customer Post Code" := Customer."Post Code";
                    "Customer Fax No." := Customer."Fax No.";
                    "Customer Primary Contact No." := Customer."Primary Contact No.";
                    "Customer Country Code" := Customer."Country/Region Code";
                    "Customer Created" := true;
                end
                else begin
                    "Customer Name" := '';
                    "Customer Address" := '';
                    "Customer Address2" := '';
                    "Customer City" := '';
                    "Customer Contact" := '';
                    "Customer Phone No." := '';
                    "Customer Telex No." := '';
                    "Customer State" := '';
                    "Customer Post Code" := '';
                    "Customer Fax No." := '';
                    "Customer Primary Contact No." := '';
                    "Customer Country Code" := '';
                    "Customer Created" := false;
                end;
                TestStauts();
            end;
        }
        field(53; "Customer Name"; Text[100])
        {
            Caption = 'Customer Name';
            DataClassification = CustomerContent;

            trigger OnValidate();
            begin
                TestStauts();
            end;
        }
        field(54; "Customer Address"; Text[100])
        {
            Caption = 'Customer Address';
            DataClassification = CustomerContent;

            trigger OnValidate();
            begin
                TestStauts();
            end;
        }
        field(55; "Customer Address2"; Text[50])
        {
            Caption = 'Customer Address2';
            DataClassification = CustomerContent;

            trigger OnValidate();
            begin
                TestStauts();
            end;
        }
        field(56; "Customer City"; Text[30])
        {
            Caption = 'Customer City';
            DataClassification = CustomerContent;

            trigger OnValidate();
            begin
                TestStauts();
                PostCode.ValidateCity(City, "Post Code", Country, "Country Code", (CurrFieldNo <> 0) and GUIALLOWED());
            end;
        }
        field(57; "Customer Contact"; Text[100])
        {
            Caption = 'Customer Contact';
            DataClassification = CustomerContent;

            trigger OnValidate();
            begin
                TestStauts();
                if RMSetup.GET() then
                    if RMSetup."Bus. Rel. Code for Customers" <> '' then
                        if (xRec."Customer Contact" = '') and (xRec."Customer Primary Contact No." = '') then begin
                            Modify();
                            UpdateContFromCustomer.OnModify(Customer);
                            UpdateContFromCustomer.InsertNewContactPerson(Customer, false);
                            Modify(true);
                        end
            end;
        }
        field(58; "Customer Phone No."; Text[30])
        {
            Caption = 'Customer Phone No.';
            DataClassification = CustomerContent;

            trigger OnValidate();
            begin
                TestStauts();
            end;
        }
        field(59; "Customer Telex No."; Text[20])
        {
            Caption = 'Customer Telex No.';
            DataClassification = CustomerContent;

            trigger OnValidate();
            begin
                TestStauts();
            end;
        }
        field(60; "Customer State"; Code[10])
        {
            Caption = 'Customer State';
            DataClassification = CustomerContent;

            trigger OnValidate();
            begin
                TestStauts();
            end;
        }
        field(61; "Customer Post Code"; Code[20])
        {
            Caption = 'Customer Post Code';
            TableRelation = "Post Code";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
            DataClassification = CustomerContent;

            trigger OnValidate();
            begin
                TestStauts();
                PostCode.ValidatePostCode(City, "Post Code", Country, "Country Code", (CurrFieldNo <> 0) and GUIALLOWED());
            end;
        }
        field(62; "Customer Fax No."; Text[30])
        {
            Caption = 'Customer Fax No.';
            DataClassification = CustomerContent;

            trigger OnValidate();
            begin
                TestStauts();
            end;
        }
        field(63; "Customer Country Code"; Code[10])
        {
            Caption = 'Customer Country Code';
            TableRelation = "Country/Region";
            DataClassification = CustomerContent;

            trigger OnValidate();
            begin
                TestStauts();
            end;
        }
        field(64; "Customer Created"; Boolean)
        {
            Caption = 'Customer Created';
            Editable = false;
            DataClassification = CustomerContent;
        }
        field(65; "Customer E-Mail"; Text[80])
        {
            Caption = 'Customer E-Mail';
            DataClassification = CustomerContent;

            trigger OnValidate();
            begin
                TestStauts();
            end;
        }
        field(66; "Customer Home Page"; Text[80])
        {
            Caption = 'Customer Home Page';
            DataClassification = CustomerContent;

            trigger OnValidate();
            begin
                TestStauts();
            end;
        }
        field(67; "Customer Primary Contact No."; Code[20])
        {
            Caption = 'Customer Primary Contact No.';
            TableRelation = Contact;
            DataClassification = CustomerContent;

            trigger OnLookup();
            var
                Cont: Record Contact;
                ContBusRel: Record "Contact Business Relation";
            begin
                ContBusRel.SETRANGE("Link to Table", ContBusRel."Link to Table"::Customer);
                ContBusRel.SETRANGE("No.", "Customer No.");
                if ContBusRel.FIND('-') then
                    Cont.SETRANGE("Company No.", ContBusRel."Contact No.");

                if "Customer Primary Contact No." <> '' then
                    if Cont.GET("Customer Primary Contact No.") then;
                if PAGE.RUNMODAL(0, Cont) = ACTION::LookupOK then
                    VALIDATE("Customer Primary Contact No.", Cont."No.");
            end;

            trigger OnValidate();
            var
                Cont: Record Contact;
                ContBusRel: Record "Contact Business Relation";
            begin
                TestStauts();
                Contact := '';
                if "Customer Primary Contact No." <> '' then begin
                    Cont.GET("Customer Primary Contact No.");

                    ContBusRel.SETCURRENTKEY("Link to Table", "No.");
                    ContBusRel.SETRANGE("Link to Table", ContBusRel."Link to Table"::Customer);
                    ContBusRel.SETRANGE("No.", "Customer No.");
                    ContBusRel.FIND('-');

                    if Cont."Company No." <> ContBusRel."Contact No." then
                        ERROR(Text000Lbl, Cont."No.", Cont.Name, "Customer No.", "Customer Name");

                    if Cont.Type = Cont.Type::Person then
                        "Customer Contact" := Cont.Name
                end;
            end;
        }
        field(68; "Applies-to ID"; Integer)
        {
            Caption = 'Applies-to ID';
            DataClassification = CustomerContent;
            TableRelation = "Item Ledger Entry"."Entry No." where("Item No." = field("Item No."), "Remaining Quantity" = filter(<> 0));
        }
        field(69; "Sample Order No."; Code[20])
        {
            Caption = 'Sample Order No.';
            DataClassification = CustomerContent;
        }
        field(70; "Sample Dispatch No."; Code[20])
        {
            Caption = 'Sample Dispatch No.';
            DataClassification = CustomerContent;
        }
        field(71; "Sales Spec ID"; Code[20])
        {
            Caption = 'Sales Spec ID';
            TableRelation = "Specification Header B2B"."Spec ID";
            DataClassification = CustomerContent;

            trigger OnValidate();
            begin
                TestStauts();
            end;
        }
        field(72; "Sample Purchase Order No."; Code[20])
        {
            Caption = 'Sample Purchase Order No.';
            DataClassification = CustomerContent;
        }
        field(73; "Sample Purchase Dispatch No."; Code[20])
        {
            Caption = 'Sample Purchase Dispatch No.';
            DataClassification = CustomerContent;
        }
        field(74; "Dispatch Qty"; Decimal)
        {
            Caption = 'Dispatch Qty';
            DataClassification = CustomerContent;
        }
        field(75; "Sample Prod. Order No."; Code[20])
        {
            Caption = 'Sample Prod. Order No.';
            DataClassification = CustomerContent;
        }
        field(76; "Sample Dispatch Prod. No."; Code[20])
        {
            Caption = 'Sample Dispatch Prod. No.';
            DataClassification = CustomerContent;
        }
    }

    keys
    {
        key(Key1; "Sample ID")
        {
        }
    }

    fieldgroups
    {
    }

    trigger OnDelete();
    begin
        if Status <> Status::" " then
            ERROR(Text005Lbl, "Sample ID");
    end;

    trigger OnInsert();
    begin
        QCSetup.GET();
        QCSetup.TESTFIELD(QCSetup."Vendor Sample No.");
        if "Sample ID" = '' then
            NoSeriesMgt.InitSeries(QCSetup."Vendor Sample No.", xRec."No. Series", WORKDATE(), "Sample ID", "No. Series");
        "Receipt Date" := TODAY();
    end;

    var
        QCSetup: Record "Quality Control Setup B2B";
        Vendor: Record Vendor;
        PostCode: Record "Post Code";
        RMSetup: Record "Marketing Setup";
        Item: Record Item;
        NoSeriesMgt: Codeunit NoSeriesManagement;
        UpdateContFromVend: Codeunit "VendCont-Update";
        Customer: Record Customer;
        UpdateContFromCustomer: Codeunit "CustCont-Update";
        Text000Lbl: Label 'Contact %1 %2 is not related to vendor %3 %4.';


        Text001Lbl: Label 'Inspection Data Sheets are already created.';
        Text003Lbl: Label 'Expiry Date should be greater than Mfg.Date.';
        Text004Lbl: Label 'Please enter Mfg.Date.';
        Text005Lbl: Label 'IDS is created, changes cannot be done for sample %1.';

    procedure AssistEdit(): Boolean;
    var
        SampleRec: Record "Sample B2B";
    begin
        SampleRec := Rec;
        QCSetup.GET();
        QCSetup.TESTFIELD("Vendor Sample No.");
        if NoSeriesMgt.SelectSeries(QCSetup."Vendor Sample No.", SampleRec."Sample ID", SampleRec."Sample ID") then begin
            QCSetup.GET();
            QCSetup.TESTFIELD("Vendor Sample No.");
            NoSeriesMgt.SetSeries(SampleRec."Sample ID");
            Rec := SampleRec;
            exit(true);
        end;
    end;


    procedure CreateInspectionDataSheets();
    var
        InspectDataSheets: Codeunit "Ins Data Sheets Sales B2B";
    begin
        if Status = Status::" " then begin
            TESTFIELD("Sales Spec ID");
            TESTFIELD("Sample Qty");
            TestField("Applies-to ID");
            InspectDataSheets.CreateSampleInspectDataSheet(Rec);
            Status := Status::"Under Inspection";
            Modify();
        end else
            ERROR(Text001Lbl);
    end;

    /*
    procedure ShowDataSheets();
    var
        InspectDataSheet: Record "Inspection Datasheet Hdr B2B";
    begin
        InspectDataSheet.SETRANGE("Document Type", InspectDataSheet."Document Type"::Samples);
        InspectDataSheet.SETRANGE("Document No.", "Sample ID");
        PAGE.RUN(PAGE::"Inspection Data Sheet List B2B", InspectDataSheet);
    end;

    procedure ShowPostDataSheets();
    var
        PostInspectDataSheet: Record "Posted Inspect DatashtHdr B2B";
    begin
        PostInspectDataSheet.SETRANGE("Document Type", PostInspectDataSheet."Document Type"::Samples);
        PostInspectDataSheet.SETRANGE("Document No.", "Sample ID");
        PAGE.RUN(PAGE::"Posted Inspec Receipt List B2B", PostInspectDataSheet);
    end;

    procedure ShowInspectReceipt();
    var
        InspectionReceipt: Record "Inspection Receipt Header B2B";
    begin
        InspectionReceipt.SETRANGE("Document Type", InspectionReceipt."Document Type"::Samples);
        InspectionReceipt.SETRANGE("Document No.", "Sample ID");
        PAGE.RUN(PAGE::"Inspection Receipt List B2B", InspectionReceipt);
    end;

    procedure ShowPostInspectReceipt();
    var
        PostInspectionReceipt: Record "Posted Insp Receipt Header B2B";
    begin
        PostInspectionReceipt.SETRANGE("Document Type", PostInspectionReceipt."Document Type"::Samples);
        PostInspectionReceipt.SETRANGE("Document No.", "Sample ID");
        PAGE.RUN(PAGE::"Posted Inspec Receipt List B2B", PostInspectionReceipt);
    end;

    procedure InsertDestruction(Sample: Record "Sample B2B");
    var
        DestructionWorkSheet: Record "Mat. Destruction Worksheet B2B";
        DocumentNo: Code[20];
    begin
        if DestructionWorkSheet.FIND('-') then
            DestructionWorkSheet.DELETEALL();

        QCSetup.GET();
        QCSetup.TESTFIELD("Destruction No.");

        DocumentNo := NoSeriesMgt.GetNextNo(QCSetup."Destruction No.", 0D, true);

        if (Sample.Status <> Sample.Status::Destroyed) and (Sample."QC Completed" = true) then begin
            DestructionWorkSheet.INIT();
            DestructionWorkSheet."Source Type" := DestructionWorkSheet."Source Type"::Sample;
            DestructionWorkSheet."Document No." := Sample."Sample ID";
            DestructionWorkSheet."Document Line No." := DestructionWorkSheet."Document Line No." + 10000;
            DestructionWorkSheet."Source No." := Sample."Sample ID";
            DestructionWorkSheet."Item No." := Sample."Item No.";
            DestructionWorkSheet."Item Description" := Sample."Item Description";
            DestructionWorkSheet.Quantity := Sample."Sample Qty";
            DestructionWorkSheet."Quantity to Destroy" := Sample."Sample Qty";
            DestructionWorkSheet."Expiry Date" := Sample."Expiry Date";
            DestructionWorkSheet."Mfg.Date" := Sample."Mfg Date";
            DestructionWorkSheet."AR No." := Sample."AR No.";
            DestructionWorkSheet."Lot No." := Sample."Batch No.";
            DestructionWorkSheet."System Suggested" := true;
            DestructionWorkSheet."Destruction Date" := WORKDATE();
            DestructionWorkSheet.INSERT();
            PAGE.RUN(PAGE::"Material Dest. Worksheet B2B", DestructionWorkSheet);
        end else
            ERROR(Text002Lbl);
    end;
     */

    procedure TestStauts();
    begin
        if Status <> Status::" " then
            ERROR(Text005Lbl, "Sample ID");
    end;
}

