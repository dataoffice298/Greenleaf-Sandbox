report 65001 "NDGR DTDC"
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultLayout = RDLC;
    RDLCLayout = './NDGRDTDC.rdl';
    Caption = 'NDGR DTDC_50002';

    dataset
    {
        dataitem("Sales Header"; "Sales Header")
        {
            RequestFilterFields = "No.";
            column(NonDangerousCargoDeclarationCap; NonDangerousCargoDeclarationCap)
            {

            }
            column(MarksandNumbersofCap; MarksandNumbersofCap)
            {

            }
            column(ProperDescriptionofgoodsSpecifyeacharticleseperatelyCap; ProperDescriptionofgoodsSpecifyeacharticleseperatelyCap)
            {

            }
            column(NetquantityperpackageCap; NetquantityperpackageCap)
            {

            }
            column(Datecap; Datecap)
            {

            }
            Column(Text001; Text001)
            {

            }
            Column(Text002; Text002)
            {

            }
            Column(Text003; Text003)
            {

            }
            column(Sell_to_Customer_Name; "Sell-to Customer Name")
            {

            }
            column(Sell_to_Address; "Sell-to Address")
            {

            }
            column(Sell_to_Address_2; "Sell-to Address 2")
            {

            }
            column(City; Customer.City)
            {

            }
            column(SignatureandDateCap; SignatureandDateCap)
            {
            }
            column(Post_Code; customer."Post Code")
            {

            }
            column(Ship_to_Name; "Ship-to Name")
            {

            }
            column(NameandAddressoftheShipperCap; NameandAddressoftheShipperCap)
            {
            }
            column(Ship_to_Address; "Ship-to Address")
            {

            }
            column(Ship_to_Address_2; "Ship-to Address 2")
            {

            }
            column(Ship_to_City; "Ship-to City")
            {

            }
            column(Ship_to_Post_Code; "Ship-to Post Code")
            {

            }

            dataitem("Sales Line"; "Sales Line")
            {
                DataItemLink = "Document Type" = FIELD("Document Type"), "Document No." = FIELD("No.");
                DataItemTableView = WHERE(Type = CONST(Item), Select = const(true));
                DataItemLinkReference = "Sales Header";

                column(SI1; SI1)
                {

                }
                column(No_SaleLine; "No.")
                { }

                column(Type; Type)
                {

                }
                column(Quantity; Quantity)
                {

                }
                column(Unit_of_Measure; "Unit of Measure Code")
                {

                }
                column(Description; Description)
                {

                }
                column(QtyPerUnit; QtyPerUnit)
                { }


                trigger OnPreDataItem()
                begin
                    Clear(SI1);
                end;

                trigger OnAfterGetRecord()
                begin
                    Clear(QtyGVar);
                    Clear(TotalQtyPerUnit);
                    Clear(QtyPerUnit);
                    SI1 := SI1 + 1;

                    //To get the sum of qty. per unit for all lines.
                    SalesLineGRec.Reset();
                    SalesLineGRec.SetRange("Document Type", "Document Type");
                    SalesLineGRec.SetRange("Document No.", "Document No.");
                    SalesLineGRec.SetFilter("No.", '<>%1', '');
                    if SalesLineGRec.FindSet() then
                        repeat
                            TotalQtyPerUnit += SalesLineGRec.Quantity * SalesLineGRec."Qty. per Unit of Measure";
                        until SalesLineGRec.Next() = 0;

                    //To get the sum of quantity for selected lines.
                    SalesLineGRec.Reset();
                    SalesLineGRec.SetRange("Document Type", "Document Type");
                    SalesLineGRec.SetRange("Document No.", "Document No.");
                    SalesLineGRec.SetRange(Select, true);
                    SalesLineGRec.SetFilter("No.", '<>%1', '');
                    if SalesLineGRec.FindSet() then begin
                        SalesLineGRec.CalcSums(Quantity);
                        QtyGVar := SalesLineGRec.Quantity;
                    end;
                    //Qty. per each item
                    if QtyGVar <> 0 then
                        QtyPerUnit := Round(TotalQtyPerUnit / QtyGVar, 0.1);

                end;

            }
            trigger OnAfterGetRecord()
            begin
                if customer.Get("Sell-to Customer No.") then;
            end;
        }
    }
    requestpage
    {
        layout
        {
            area(Content)
            {
                group(GroupName)
                {

                }
            }
        }

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
        SI1: Integer;
        Customer: Record Customer;
        Datecap: Label 'Date:';
        NONDANGEROUSCARGODECLARATIONCap: Label 'NON- DANGEROUS CARGO DECLARATION';
        Text001: Label 'This is to certify that the articles/ substances of the shipment are properly described by the name that they are not listed in the current edition of IATA Dangerous goods Regulation (DGR). Alphabetical';
        Text002: Label 'list Dangerous goods nor do they correspond to any of the hazard classes appearing in DGR section 3 classification of dangerous goods and that they are shown to be not dangerous i.e not restricted.';
        Text003: Label 'Furthermore the shipper confirms that the goods are in the proper condition for transportation on any passenger Aircraft (DGR Para 1 2 & 3).';
        MarksandNumbersofCap: Label 'Marks & Numbers of';
        ProperDescriptionofgoodsSpecifyeacharticleseperatelyCap: Label 'Proper Description of goods Specify each article seperately';
        NetquantityperpackageCap: Label 'Net quantity per package.';
        NameandAddressoftheShipperCap: Label 'Name and Address of the Shipper';
        SignatureandDateCap: Label 'Signature & Date';
        SalesLineGRec: Record "Sales Line";
        QtyGVar: Decimal;
        QtyPerUnit: Decimal;
        TotalQtyPerUnit: Decimal;
}
