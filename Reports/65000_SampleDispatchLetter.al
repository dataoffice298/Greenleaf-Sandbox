report 65000 "Sample Dispatch Letter"
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultLayout = RDLC;
    RDLCLayout = './SampleDispatchLetter.rdl';
    Caption = 'Sample Dispatch Letter_50001';

    dataset
    {
        dataitem("Sales Header"; "Sales Header")
        {
            RequestFilterFields = "No.";

            column(NoCap; NoCap)
            {

            }


            column(ShipToCap; ShipToCap)
            {

            }
            column(SiCap; SiCap)
            {

            }
            column(ItemNameCap; ItemNameCap)
            {

            }
            column(SampleCodeCap; SampleCodeCap)
            {

            }
            column(QuantityCap; QuantityCap)
            {

            }
            column(RemarksCap; RemarksCap)
            {

            }
            column(Datecap; Datecap)
            {

            }
            column(Text000; Text000)
            {

            }
            column(Text001; Text001)
            {

            }

            column(Sell_to_Customer_No_; "Sell-to Customer No.")
            {

            }
            column(No_; "No.")
            {

            }
            column(NameCap; NameCap)
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
            column(Post_Code; customer."Post Code")
            {

            }

            column(Ship_to_Name; "Ship-to Name")
            {

            }
            column(Ship_to_Address; "Ship-to Address")
            { }
            column(Ship_to_Address_2; "Ship-to Address 2")
            {

            }
            column(Ship_to_City; "Ship-to City")
            {

            }
            column(Ship_to_Post_Code; "Ship-to Post Code")
            {

            }
            column(SampleDispatchLetterCap; SampleDispatchLetterCap)
            {

            }
            column(Sample_ID; "Sample ID GLF")
            {

            }


            dataitem("Sales Line"; "Sales Line")
            {
                DataItemLink = "Document Type" = FIELD("Document Type"), "Document No." = FIELD("No.");
                //DataItemTableView = WHERE(Type = CONST(Item));
                DataItemLinkReference = "Sales Header";
                column(SI1; SI1)
                {

                }
                column(Type; Type)
                {

                }
                column(Quantity; Quantity)
                {

                }
                column(Unit_of_Measure; "Unit of Measure")
                {

                }
                column(Description; Description)
                {

                }
                trigger OnPreDataItem()
                begin
                    Clear(SI1);
                end;

                trigger OnAfterGetRecord()
                begin

                    SI1 := SI1 + 1;

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
        Customer: Record Customer;

        SI1: Integer;
        NoCap: Label 'No:';
        NameCap: Label 'Bild To:';
        ShipToCap: Label 'Ship To';
        SiCap: Label 'SI. No.';
        ItemNameCap: Label 'Item Name';
        SampleCodeCap: Label 'Sample Code';
        QuantityCap: Label 'Quantity';
        RemarksCap: Label 'Remarks';
        SampleDispatchLetterCap: Label 'SAMPLE DESPATCH LETTER';
        Datecap: Label 'Date:';
        Text000: Label 'Dear Sir,';
        Text001: Label 'We hereby submit the following samples for your evaluation  and also look forward for your feedback.Please do get in touch with us in case you need any further action/clarification from our side.';


}

