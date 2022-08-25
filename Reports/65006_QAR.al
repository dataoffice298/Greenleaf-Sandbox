report 65006 QAR
{
    DefaultLayout = RDLC;
    RDLCLayout = './QAR.rdl';

    Caption = 'QAR_50008 REPORT';
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;


    dataset
    {
        dataitem("Specification Line B2B"; "Specification Line B2B")
        {
            DataItemTableView = where("Character Type" = filter('STANDARD'));
            RequestFilterFields = "Spec ID";

            column(Character_Code; "Character Code")
            {

            }
            column(Character_Type; "Character Type")

            {

            }
            column(Description; Description)
            {

            }

            column(ActualValue_Text_; "ActualValue(Text)")
            {

            }
            column(ActualValue_Text_2; "ActualValue(Text)2")
            {

            }
            column(ActualValue_Text_3; "ActualValue(Text)3")
            {

            }
            column(ActualValue_Text_4; "ActualValue(Text)4")
            {

            }
            column(ActualValue_Text_5; "ActualValue(Text)5")
            {

            }
            column(PostedDataSheetHdrNo1; PostedDataSheetHdrNo1)
            {

            }
            column(PostedDataSheetHdrNo2; PostedDataSheetHdrNo2)
            {

            }
            column(PostedDataSheetHdrNo3; PostedDataSheetHdrNo3)
            {

            }
            column(PostedDataSheetHdrNo4; PostedDataSheetHdrNo4)
            {

            }
            column(PostedDataSheetHdrNo5; PostedDataSheetHdrNo5)
            { }
            column(VendorNo; VendorNo)
            {

            }
            column(OrderNo; OrderNo)
            {

            }
            column(ReceiptNo; ReceiptNo)
            {

            }
            column(Property_Name; "Property Name")
            {

            }
            column(Companyinfo; Companyinfo.Name)
            {

            }
            column(QARCAP; QARCAP)
            {

            }
            column(QARDATECAP; QARDATECAP)
            {

            }
            column(DATEOFRECPT; DATEOFRECPT)
            {

            }
            column(LOTNOCAP; LOTNOCAP)
            {

            }
            column(PRODUCTCAP; PRODUCTCAP)
            {

            }
            column(SUPPLIERCAP; SUPPLIERCAP)
            {

            }
            column(SUPPLIEREFCAP; SUPPLIEREFCAP)
            {

            }
            column(RECIEVEDCAP; RECIEVEDCAP)
            {

            }
            column(Lotno1; Lotno1)
            {

            }
            column(Lotno2; Lotno2)
            {

            }
            column(Lotno3; Lotno3)
            {

            }
            column(Lotno4; Lotno4)
            {

            }
            column(Lotno5; Lotno5)
            {

            }

            trigger OnAfterGetRecord()
            begin
                Clear(PostedDataSheet);
                Clear("ActualValue(Text)");
                Clear(Lotno1);
                PostedDataSheet.Reset();
                PostedDataSheet.SetRange("Document No.", PostedDataSheetHdrNo1);
                PostedDataSheet.SetRange("Character Code", "Specification Line B2B"."Character Code");
                if PostedDataSheet.FindFirst() then begin
                    "ActualValue(Text)" := format(PostedDataSheet."Actual Value (Num)") + PostedDataSheet."Actual  Value (Text)";
                    if PostedDataSheetHdr.Get(PostedDataSheetHdrNo1) then begin
                        Lotno1 := PostedDataSheetHdr."Lot No.";
                        VendorNo := PostedDataSheetHdr."Vendor No.";
                        OrderNo := PostedDataSheetHdr."Order No.";
                        ReceiptNo := PostedDataSheetHdr."Receipt No.";
                    end;
                end;

                Clear("ActualValue(Text)2");
                Clear(Lotno2);
                Clear(PostedDataSheet);
                PostedDataSheet.Reset();
                PostedDataSheet.SetRange("Document No.", PostedDataSheetHdrNo2);
                PostedDataSheet.SetRange("Character Code", "Specification Line B2B"."Character Code");
                if PostedDataSheet.FindFirst() then begin
                    "ActualValue(Text)2" := format(PostedDataSheet."Actual Value (Num)") + PostedDataSheet."Actual  Value (Text)";
                    if PostedDataSheetHdr.Get(PostedDataSheetHdrNo2) then
                        Lotno2 := PostedDataSheetHdr."Lot No.";
                end;

                Clear("ActualValue(Text)3");
                Clear(Lotno3);
                Clear(PostedDataSheet);
                PostedDataSheet.Reset();
                PostedDataSheet.SetRange("Document No.", PostedDataSheetHdrNo3);
                PostedDataSheet.SetRange("Character Code", "Specification Line B2B"."Character Code");
                if PostedDataSheet.FindFirst() then begin
                    "ActualValue(Text)3" := format(PostedDataSheet."Actual Value (Num)") + PostedDataSheet."Actual  Value (Text)";
                    if PostedDataSheetHdr.Get(PostedDataSheetHdrNo3) then
                        Lotno3 := PostedDataSheetHdr."Lot No.";
                end;

                Clear("ActualValue(Text)4");
                Clear(Lotno4);
                Clear(PostedDataSheet);
                PostedDataSheet.Reset();
                PostedDataSheet.SetRange("Document No.", PostedDataSheetHdrNo4);
                PostedDataSheet.SetRange("Character Code", "Specification Line B2B"."Character Code");
                if PostedDataSheet.FindFirst() then begin
                    "ActualValue(Text)4" := format(PostedDataSheet."Actual Value (Num)") + PostedDataSheet."Actual  Value (Text)";
                    if PostedDataSheetHdr.Get(PostedDataSheetHdrNo4) then
                        Lotno4 := PostedDataSheetHdr."Lot No.";
                end;

                Clear("ActualValue(Text)5");
                Clear(PostedDataSheet);
                Clear(Lotno5);
                PostedDataSheet.Reset();
                PostedDataSheet.SetRange("Document No.", PostedDataSheetHdrNo5);
                PostedDataSheet.SetRange("Character Code", "Specification Line B2B"."Character Code");
                if PostedDataSheet.FindFirst() then begin
                    "ActualValue(Text)5" := format(PostedDataSheet."Actual Value (Num)") + PostedDataSheet."Actual  Value (Text)";
                    if PostedDataSheetHdr.Get(PostedDataSheetHdrNo5) then
                        Lotno5 := PostedDataSheetHdr."Lot No.";
                end;

            end;
        }



    }


    requestpage
    {

        layout
        {
            area(Content)
            {
                group(Details)
                {
                    field(PostedDataSheetHdrNo1; PostedDataSheetHdrNo1)
                    {
                        ApplicationArea = All;
                        TableRelation = "Posted Ins DatasheetHeader B2B";

                    }
                    field(PostedDataSheetHdrNo2; PostedDataSheetHdrNo2)
                    {
                        ApplicationArea = all;
                        TableRelation = "Posted Ins DatasheetHeader B2B";

                    }
                    field(PostedDataSheetHdrNo3; PostedDataSheetHdrNo3)
                    {
                        ApplicationArea = all;
                        TableRelation = "Posted Ins DatasheetHeader B2B";

                    }
                    field(PostedDataSheetHdrNo4; PostedDataSheetHdrNo4)
                    {
                        ApplicationArea = all;
                        TableRelation = "Posted Ins DatasheetHeader B2B";


                    }
                    field(PostedDataSheetHdrNo5; PostedDataSheetHdrNo5)
                    {
                        ApplicationArea = all;
                        TableRelation = "Posted Ins DatasheetHeader B2B";

                    }

                }
            }
        }
        trigger OnInit()
        begin

            Companyinfo.get();

        end;




    }
    var
        PostedDataSheetHdr: Record "Posted Ins DatasheetHeader B2B";
        PostedDataSheet: Record "Posted Ins Datasheet Line B2B";

        "ActualValue(Text)": Code[20];
        PostedDataSheetHdrNo1: Code[20];
        PostedDataSheetHdrNo2: Code[20];
        PostedDataSheetHdrNo3: Code[20];
        PostedDataSheetHdrNo4: Code[20];
        PostedDataSheetHdrNo5: Code[20];

        "ActualValue(Text)2": Code[20];
        "ActualValue(Text)3": Code[20];
        "ActualValue(Text)4": Code[20];
        "ActualValue(Text)5": Code[20];
        "Property Name": Code[20];
        Companyinfo: Record "Company Information";
        QARCAP: Label 'QAR NO';
        QARDATECAP: Label 'QAR DATE';
        DATEOFRECPT: Label 'DATE OF RECEIPT';
        LOTNOCAP: Label 'LOT NO';
        PRODUCTCAP: Label 'PRODUCT';
        SUPPLIERCAP: Label 'SUPPLIER';
        SUPPLIEREFCAP: label 'SUPPLIER REF NO';
        RECIEVEDCAP: label 'RECEIVED QTY';
        Lotno1: Code[20];
        Lotno2: Code[20];
        Lotno3: Code[20];
        Lotno4: Code[20];
        Lotno5: Code[20];
        VendorNo: Code[20];
        OrderNo: Code[20];
        ReceiptNo: Code[20];



}