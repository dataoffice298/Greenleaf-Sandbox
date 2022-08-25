report 65005 "COA"
{

    DefaultLayout = RDLC;
    RDLCLayout = './COA.rdl';
    Caption = 'COA_50006';
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = all;

    dataset
    {
        dataitem("Inspection Receipt Header"; "Inspection Receipt Header B2B")
        {
            column(Inspection_Receipt_Header__Document_Date_; "Document Date")
            {
            }
            column(Inspection_Receipt_Header__Posting_Date_; "Posting Date")
            {
            }
            column(Inspection_Receipt_Header__Lot_No__; "Lot No.")
            {
            }
            column(Inspection_Receipt_Header__Spec_ID_; "Spec ID")
            {
            }
            column(Inspection_Receipt_Header__No__; "No.")
            {
            }
            column(Inspection_Receipt_Header__Rework_Reference_No__; "Rework Reference No.")
            {
            }
            column(Inspection_Receipt_Header__Sub_Assembly_Description_; "Sub Assembly Description")
            {
            }
            column(Inspection_Receipt_Header__Operation_Description_; "Operation Description")
            {
            }
            column(Inspection_Receipt_Header__Prod__Description_; "Prod. Description")
            {
            }
            column(Inspection_Receipt_Header__Prod__Order_Line_; "Prod. Order Line")
            {
            }
            column(Inspection_Receipt_Header__Routing_No__; "Routing No.")
            {
            }
            column(Inspection_Receipt_Header__Prod__Order_No__; "Prod. Order No.")
            {
            }
            column(Inspection_Receipt_Header__Production_Batch_No__; "Production Batch No.")
            {
            }
            column(Inspection_Receipt_Header__Source_Type_; "Source Type")
            {
            }
            column(Inspection_Receipt_Header__Receipt_No__; "Receipt No.")
            {
            }
            column(Inspection_Receipt_Header__Order_No__; "Order No.")
            {
            }
            column(Inspection_Receipt_Header_Address; Address)
            {
            }
            column(Inspection_Receipt_Header__Vendor_Name_; "Vendor Name")
            {
            }
            column(Inspection_Receipt_Header__Vendor_No__; "Vendor No.")
            {
            }
            column(Inspection_Receipt_Header__Purch_Line_No_; "Purch Line No")
            {
            }
            column(Inspection_Receipt_Header__Contact_Person_; "Contact Person")
            {
            }
            column(Inspection_Receipt_Header__Purchase_Consignment_; "Purchase Consignment")
            {
            }
            column(Inspection_Receipt_Header_Quantity; Quantity)
            {
            }
            column(Inspection_Receipt_Header__Qty__Accepted_; "Qty. Accepted")
            {
            }
            column(Inspection_Receipt_Header__Qty__Accepted_Under_Deviation_; "Qty. Accepted Under Deviation")
            {
            }
            column(Inspection_Receipt_Header__Qty__Rework_; "Qty. Rework")
            {
            }
            column(Inspection_Receipt_Header__Qty__Rejected_; "Qty. Rejected")
            {
            }
            column(Inspection_Receipt_Header__Qty__Accepted_UD_Reason_; "Qty. Accepted UD Reason")
            {
            }
            column(Inspection_Receipt_Header__Item_No__; "Item No.")
            {
            }
            column(Inspection_Receipt_Header__Item_Description_; "Item Description")
            {
            }
            column(Inspection_Receipt_Header__Qty__sent_to_Vendor_Rejected__; "Qty. sent to Vendor(Rejected)")
            {
            }
            column(Inspection_Receipt_Header__Qty__sent_to_Vendor_Rework__; "Qty. sent to Vendor(Rework)")
            {
            }
            column(Inspection_Receipt_Header__Qty__to_Vendor_Rejected__; "Qty. to Vendor(Rejected)")
            {
            }
            column(Inspection_Receipt_Header__Qty__to_Vendor_Rework__; "Qty. to Vendor(Rework)")
            {
            }
            column(PageGroupNo; PageGroupNo)
            {
            }
            column(ShipToPC; ShipToPC)
            {
            }
            column(ShipToCity; ShipToCity)
            {
            }
            column(ShipToAddr; ShipToAddr)
            {
            }
            column(ShipToName; ShipToName)
            {
            }
            column(Inspection_Receipt_Header__Document_Date_Caption; FIELDCAPTION("Document Date"))
            {
            }
            column(Inspection_Receipt_Header__Posting_Date_Caption; FIELDCAPTION("Posting Date"))
            {
            }
            column(Inspection_Receipt_Header__Lot_No__Caption; FIELDCAPTION("Lot No."))
            {
            }
            column(Inspection_Receipt_Header__Spec_ID_Caption; FIELDCAPTION("Spec ID"))
            {
            }
            column(Inspection_Receipt_Header__No__Caption; FIELDCAPTION("No."))
            {
            }
            column(Inspection_ReceiptCaption; Inspection_ReceiptCaptionLbl)
            {
            }
            column(Inspection_Receipt_Header__Rework_Reference_No__Caption; FIELDCAPTION("Rework Reference No."))
            {
            }
            column(Inspection_Receipt_Header__Sub_Assembly_Description_Caption; FIELDCAPTION("Sub Assembly Description"))
            {
            }
            column(Inspection_Receipt_Header__Operation_Description_Caption; FIELDCAPTION("Operation Description"))
            {
            }
            column(Inspection_Receipt_Header__Prod__Description_Caption; FIELDCAPTION("Prod. Description"))
            {
            }
            column(Inspection_Receipt_Header__Prod__Order_Line_Caption; FIELDCAPTION("Prod. Order Line"))
            {
            }
            column(Inspection_Receipt_Header__Routing_No__Caption; FIELDCAPTION("Routing No."))
            {
            }
            column(Inspection_Receipt_Header__Prod__Order_No__Caption; FIELDCAPTION("Prod. Order No."))
            {
            }
            column(Production_DetailsCaption; Production_DetailsCaptionLbl)
            {
            }
            column(Inspection_Receipt_Header__Production_Batch_No__Caption; FIELDCAPTION("Production Batch No."))
            {
            }
            column(Receipt_DetailsCaption; Receipt_DetailsCaptionLbl)
            {
            }
            column(Inspection_Receipt_Header__Receipt_No__Caption; FIELDCAPTION("Receipt No."))
            {
            }
            column(Inspection_Receipt_Header__Order_No__Caption; FIELDCAPTION("Order No."))
            {
            }
            column(Vendor_Name_and_AddressCaption; Vendor_Name_and_AddressCaptionLbl)
            {
            }
            column(Inspection_Receipt_Header__Vendor_No__Caption; FIELDCAPTION("Vendor No."))
            {
            }
            column(Inspection_Receipt_Header__Purch_Line_No_Caption; FIELDCAPTION("Purch Line No"))
            {
            }
            column(Inspection_Receipt_Header__Contact_Person_Caption; FIELDCAPTION("Contact Person"))
            {
            }
            column(Inspection_Receipt_Header__Purchase_Consignment_Caption; FIELDCAPTION("Purchase Consignment"))
            {
            }
            column(Inspection_DetailsCaption; Inspection_DetailsCaptionLbl)
            {
            }
            column(Inspection_Receipt_Header_QuantityCaption; FIELDCAPTION(Quantity))
            {
            }
            column(Inspection_Receipt_Header__Item_Description_Caption; FIELDCAPTION("Item Description"))
            {
            }
            column(Inspection_Receipt_Header__Item_No__Caption; FIELDCAPTION("Item No."))
            {
            }
            column(Inspection_Receipt_Header__Qty__Accepted_Caption; FIELDCAPTION("Qty. Accepted"))
            {
            }
            column(Inspection_Receipt_Header__Qty__Accepted_Under_Deviation_Caption; FIELDCAPTION("Qty. Accepted Under Deviation"))
            {
            }
            column(Inspection_Receipt_Header__Qty__Rework_Caption; FIELDCAPTION("Qty. Rework"))
            {
            }
            column(Inspection_Receipt_Header__Qty__Rejected_Caption; FIELDCAPTION("Qty. Rejected"))
            {
            }
            column(Inspection_Receipt_Header__Qty__Accepted_UD_Reason_Caption; FIELDCAPTION("Qty. Accepted UD Reason"))
            {
            }
            column(Shipping_DetailsCaption; Shipping_DetailsCaptionLbl)
            {
            }
            column(Inspection_Receipt_Header__Qty__sent_to_Vendor_Rejected__Caption; FIELDCAPTION("Qty. sent to Vendor(Rejected)"))
            {
            }
            column(Inspection_Receipt_Header__Qty__sent_to_Vendor_Rework__Caption; FIELDCAPTION("Qty. sent to Vendor(Rework)"))
            {
            }
            column(Inspection_Receipt_Header__Qty__to_Vendor_Rejected__Caption; FIELDCAPTION("Qty. to Vendor(Rejected)"))
            {
            }
            column(Inspection_Receipt_Header__Qty__to_Vendor_Rework__Caption; FIELDCAPTION("Qty. to Vendor(Rework)"))
            {
            }
            column(Shipping_AddressCaption; Shipping_AddressCaptionLbl)
            {
            }
            column(Product_Name_Cap; Product_Name_Cap)
            { }
            column(Lot_Number_Cap; Lot_Number_Cap)
            { }
            column(Quantity_Cap; Quantity_Cap)
            { }
            column(Mfg_Date_Cap; Mfg_Date_Cap)
            { }
            column(Best_Before_Cap; Best_Before_Cap)
            { }
            column(Customer_Cap; Customer_Cap)
            { }
            column(Product_Code_Cap; Product_Code_Cap)
            { }
            column(Botanical_Name_Cap; Botanical_Name_Cap)
            { }
            column(Production_Method_Cap; Production_Method_Cap)
            { }
            column(Country_of_Origin_Cap; Country_of_Origin_Cap)
            { }

            column(Specification_Cap; Specification_Cap)
            { }
            column(Result_Cap; Result_Cap)
            { }
            column(Method_Cap; Method_Cap)
            { }
            column(Physical_and_Analytical_Parameters; Physical_and_Analytical_Parameters)
            { }
            column(Heavy_Metal_Analysis; Heavy_Metal_Analysis)
            { }
            column(label01; label01)
            { }
            column(label02; label02)
            { }
            column(label03; label03)
            { }
            column(label04; label04)
            { }
            column(label05; label05)
            { }
            column(label06; label06)
            { }
            column(lable07; lable07)
            { }
            column(label08; label08)
            { }
            column(label09; label09)
            { }
            column(label10; label10)
            { }
            column(CompInfo; CompInfo.Picture)
            { }
            column(REF_Cap; REF_Cap)
            { }
            column(Date_Cap; Date_Cap)
            { }
            column(Inspection_Receipt_Header__Created_Date_; "Created Date")
            { }
            column(Item_Description; "Item Description")
            { }


            dataitem("Inspection Receipt Line"; "Inspection Receipt Line B2B")
            {
                DataItemLink = "Document No." = FIELD("No.");
                DataItemTableView = SORTING("Receipt No.", "Item No.");
                column(Inspection_Receipt_Line__Character_Code_; "Character Code")
                {
                }
                column(Inspection_Receipt_Line_Sampling_Plan_Code_; "Sampling Plan Code")
                { }
                column(Inspection_Receipt_Line__Remarks_; Remarks)
                { }
                column(Remarks_Cap; Remarks_Cap)
                { }
                column(Sampling_Plan_Code_Cap; Sampling_Plan_Code_Cap)
                { }

                column(Inspection_Receipt_Line_Description; Description)
                {
                }
                column(Inspection_Receipt_Line__Normal_Value__Num__; "Normal Value (Num)")
                { }
                column(Inspection_Receipt_Line__Normal_Value__Text__; "Normal Value (Text)")
                { }
                column(Inspection_Receipt_Line__Unit_of_Measure_Code_; "Unit of Measure Code")
                {
                }
                column(Inspection_Receipt_Line__Accepted_Qty_; "Accepted Qty")
                {
                }
                column(Inspection_Receipt_Line__Rejected_Qty_; "Rejected Qty")
                {
                }
                column(Inspection_Receipt_Line__Total_Qty_; "Total Qty")
                {
                }
                column(Inspection_Receipt_Line__Character_Code_Caption; FIELDCAPTION("Character Code"))
                {
                }
                column(Inspection_Receipt_Line_DescriptionCaption; FIELDCAPTION(Description))
                {
                }
                column(Inspection_Receipt_Line__Unit_of_Measure_Code_Caption; FIELDCAPTION("Unit of Measure Code"))
                {
                }
                column(Inspection_Receipt_Line__Normal_Value__Num__Caption; FIELDCAPTION("Normal Value (Num)"))
                {
                }
                column(Inspection_Receipt_Line__Accepted_Qty_Caption; FIELDCAPTION("Accepted Qty"))
                {
                }
                column(Inspection_Receipt_Line__Rejected_Qty_Caption; FIELDCAPTION("Rejected Qty"))
                {
                }
                column(Inspection_Receipt_Line__Total_Qty_Caption; FIELDCAPTION("Total Qty"))
                {
                }
                column(Inspection_Receipt_Line_Document_No_; "Document No.")
                {
                }
                column(Inspection_Receipt_Line_Line_No_; "Line No.")
                {
                }


                trigger OnAfterGetRecord();
                begin
                    if PurchRectHeader.GET("Receipt No.") then begin
                        ShipToName := PurchRectHeader."Ship-to Name";
                        ShipToAddr := PurchRectHeader."Ship-to Address";
                        ShipToCity := PurchRectHeader."Ship-to City";
                        ShipToPC := PurchRectHeader."Ship-to Post Code";
                    end;



                    PageGroupNo := NextPageGroupNo;
                    NextPageGroupNo := PageGroupNo + 1;

                end;



                trigger OnPreDataItem();
                begin
                    PageGroupNo := 1;
                    NextPageGroupNo := 1;
                end;

                trigger OnPostDataItem()
                begin


                end;

            }
        }
    }
    requestpage
    {

        layout
        {
        }

        actions
        {
        }
    }

    labels
    {
    }
    trigger OnPreReport()
    begin
        CompInfo.get();
        CompInfo.CalcFields(Picture);
    end;



    var
        REF_Cap: Label 'REF: ';
        Date_Cap: Label 'Date: ';
        CompInfo: Record 79;
        Product_Name_Cap: Label 'Product Name ';
        Lot_Number_Cap: Label 'Lot Number ';
        Quantity_Cap: Label 'Quantity ';
        Mfg_Date_Cap: Label 'Mfg. Date ';
        Best_Before_Cap: Label 'Best Before ';
        Customer_Cap: Label 'Customer ';
        Product_Code_Cap: Label 'Product Code ';
        Botanical_Name_Cap: Label 'Botanical Name ';
        Production_Method_Cap: Label 'Production Method ';
        Country_of_Origin_Cap: Label 'Country of Origin ';
        //Parameter_Cap: Label 'Character Code';
        Sampling_Plan_Code_Cap: Label 'Sampling Plan Code';
        Remarks_Cap: label 'Remarks';
        Specification_Cap: Label 'Specification';
        Result_Cap: Label 'Result';
        Method_Cap: Label 'Method';
        Physical_and_Analytical_Parameters: Label 'Physical and Analytical Parameters';
        Heavy_Metal_Analysis: Label 'Heavy Metal Analysis';

        PurchRectHeader: Record "Purch. Rcpt. Header";
        ShipToName: Text[100];
        ShipToAddr: Text[100];
        ShipToCity: Text[30];
        ShipToPC: Text[30];
        PageGroupNo: Integer;
        NextPageGroupNo: Integer;
        Inspection_ReceiptCaptionLbl: Label 'Inspection Receipt';
        Production_DetailsCaptionLbl: Label 'Production Details';
        Receipt_DetailsCaptionLbl: Label 'Receipt Details';
        Vendor_Name_and_AddressCaptionLbl: Label 'Vendor Name and Address';
        Inspection_DetailsCaptionLbl: Label 'Inspection Details';
        Shipping_DetailsCaptionLbl: Label 'Shipping Details';
        Shipping_AddressCaptionLbl: Label 'Shipping Address';
        //


        label10: Label 'Warning: The product is irritant, avoid contact with skin and eyes';
        label09: Label 'Storage : Do not store in close proximity to heat, sparks, open flames, strong acids, and strong bases.';
        label08: Label 'To minimise product degradation, avoid prolonged exposure of the material to air. Keep container tightly ';
        lable07: Label 'closed when not in use. Mix well before use.';
        label06: Label 'Shelf life: Not more than 3 Years, when stored as recommended above. ';
        label05: Label 'Approved By:';
        label01: Label 'Manager  QA ';
        label02: Label 'Admn.Office: 321/1, KINFRA Hi Tech Park ,Opp. Co-operaive Medical College,HMT Colony P.O.,Kalamassery,Cochin 683503';
        label03: Label 'kerala, India,Phone: 91 484 3230040,3191240 Regd Office: 3/150-B Pullikkayath , Eroor North, Kochi- 682306,Fax: 91 484';
        label04: Label '2785076 , Email: mail.greenleafextractions.com';



}

