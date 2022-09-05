report 65004 "Sample Invoice"
{
    DefaultLayout = RDLC;
    RDLCLayout = './SampleInvoice.rdl';
    UsageCategory = ReportsAndAnalysis;
    Caption = '50005- SampleInvoice';
    ApplicationArea = all;


    dataset
    {
        dataitem("Sales Invoice Header"; "Sales Invoice Header")
        {
            column(AdvPaymentDetails; AdvPaymentDetails)
            {
            }
            column(Head_Caption; Head_CaptionLbl)
            {
            }
            column(SupplyofGoodCaption; SupplyofGoodCaptionLbl)
            {
            }
            column(AggregatingCaption; AggregatingCaptionLbl)
            {
            }
            column(Exporter_cap; Exporter_cap)
            {
            }
            column(Vessel_FlightNo_Cap; Vessel_FlightNo_Cap)
            {
            }
            column(InvoiceNo_Date_Cap; InvoiceNo_Date_Cap)
            {
            }
            column(Exporters_Ref_Cap; Exporters_Ref_Cap)
            {
            }
            column(Consignee_Cap; Consignee_Cap)
            {
            }
            column(GSTNumber_Cap; GSTNumber_Cap)
            {
            }
            column(Pre_Carriage_by_Cap; Pre_Carriage_by_Cap)
            {
            }
            column(Place_Of_Receipt_by_Cap; Place_Of_Receipt_by_Cap)
            {
            }
            column(Port_Of_Loading_Cap; Port_Of_Loading_Cap)
            {
            }
            column(Port_Of_Discharge_Cap; Port_Of_Discharge_Cap)
            {
            }
            column(Final_Destination_Cap; Final_Destination_Cap)
            {
            }
            column(Country_Of_Origin_of_Goods_Cap; Country_Of_Origin_of_Goods_Cap)
            {
            }
            column(Country_of_Final_Destination_Cap; Country_of_Final_Destination_Cap)
            {
            }
            column(Terms_Of_Delivery_Cap; Terms_Of_Delivery_Cap)
            {
            }
            column(Terms_of_Payment_Cap; Terms_of_Payment_Cap)
            {
            }
            column(Marks_Nos_Container_No_Cap; Marks_Nos_Container_No_Cap)
            {
            }
            column(No_of_Pkgs_Cap; No_of_Pkgs_Cap)
            {
            }
            column(Description_Of_Goods_Cap; Description_Of_Goods_Cap)
            {
            }
            column(Quantity_Cap; Quantity_Cap)
            {
            }
            column(Rate_Cap; Rate_Cap)
            {
            }
            column(Amount_Cap; Amount_Cap)
            {
            }
            column(Amount_in_words_Cap; Amount_in_words_Cap)
            {
            }
            column(Total_Amt_Cap; Total_Amt_Cap)
            {
            }
            column(ProvisionalIDNo_Cap; ProvisionalIDNo_Cap)
            {
            }
            column(withoutpaymentCaption; withoutpaymentCaptionLbl)
            {
            }
            column(Heading2Text; Heading2Text)
            {
            }
            column(ShowSezDes; ShowSezDes)
            {
            }
            column(IRNNoCaption; IRNNoCaptionLVar)
            {
            }
            column(PaymentTermsCaption; PaymentTermsCaptionLbl)
            {
            }
            column(RateCaption; RateCaption)
            {
            }
            column(AmtPerCaption; AmtPerCaption)
            {
            }
            column(TotalAmtGVarCaption; TotalAmtGVar)
            {
            }
            column(ShowHeadCap; ShowHeadCap)
            {
            }
            column(Footer01_CapLb01; Footer01_CapLb01)
            {
            }
            column(Footer02_CapLb02; Footer02_CapLb02)
            {
            }
            column(Footer03_CapLb03; Footer03_CapLb03)
            {
            }
            column(Footer04_CapLb04; Footer04_CapLb04)
            {
            }
            column(Label1_Cap01; Label1_Cap01)
            {
            }
            column(Label2_Cap02; Label2_Cap02)
            {
            }
            column(Lable3_Cap03; Lable3_Cap03)
            {
            }
            column(Lable4_Cap04; Lable4_Cap04)
            {
            }
            column(Sell_to_County; "Sell-to County")
            {

            }
            column(Bill_to_County; "Bill-to County")
            {

            }
            column(Transport_Method; "Transport Method")
            {

            }
            column(Payment_Terms_Code; "Payment Terms Code")
            {

            }
            column(Work_Description; "Work Description")
            {

            }
            column(PaymentTermsCode_SalesInvoiceHeader; PaymentTerms2.Description)
            {
            }
            column(CurrencyCode_SalesInvoiceHeader; "Sales Invoice Header"."Currency Code")
            {
            }
            column(InvNo; "No.")
            {
            }
            column(InvPostingDate; "Posting Date")
            {
            }
            column(InvExtDocNo; "External Document No.")
            {
            }
            column(InvDocDate; "Order Date")
            {
            }
            column(CustName; CustName)
            {
            }
            column(CustAddress; CustAddress)
            {
            }
            column(CustAddress2; CustAddress2)
            {
            }
            column(CustCity; CustCity)
            {
            }
            column(CustPostCode; CustPostCode)
            {
            }
            column(CusPhNo; CusPhNo)
            {
            }

            column(CustVAT; CustVAT)
            {
            }
            column(CustCST; CustCST)
            {
            }
            column(CustPAN; CustPAN)
            {
            }
            column(CustSTC; CustSTC)
            {
            }
            column(CompInfo; CompInfo.Picture)
            {
            }
            column(Customer_GST_Reg__No_; "Customer GST Reg. No.")
            { }
            column(Vehicle_No_; "Vehicle No.")
            { }
            column(State; State)
            { }
            column(ServTaxPer; ServTaxPer)
            {
            }
            column(ServTaxEcess; SerTaxEcessPer)
            {
            }
            column(ServTaxSheCess; SerTaxSheCessPer)
            {
            }
            column(SBCessPer; SBCessPer)
            {
            }
            column(NewSerTaxPer; NewSerTaxPer)
            {
            }
            column(TaxType; TaxType)
            {
            }
            column(TaxPercent; TaxPercent)
            {
            }
            column(PaymentTerms; PaymentTrms)
            {
            }
            column(CustTaxLiable; CustTaxLiable)
            {
            }
            column(SEZRemarks1; SEZRemarks1)
            {
            }
            column(SEZRemarks2; SEZRemarks2)
            {
            }
            column(Grandtotal1; GrandTotal1)
            {
            }
            column(GrandTotalUSD; GrandTotalUSD)
            {
            }
            column(Linetotal1; Linetotal1)
            {
            }
            column(Linetotal1USD; Linetotal1USD)
            {
            }
            column(Footer1_Caption; Footer1_1_CaptionLbl)
            {
            }
            column(Footer2_Caption; Footer2_1_CaptionLbl)
            {
            }
            column(Footer3_Caption; Footer3_1_CaptionLbl)
            {
            }
            column(Footer4_Caption; Footer4_1_CaptionLbl)
            {
            }
            column(Footer5_1_CaptionLbl; Footer5_1_CaptionLbl)
            {

            }
            column(Footer5_Caption; Footer5_CaptionLbl)
            {
            }
            column(Footer6_Caption; Footer6_CaptionLbl)
            {
            }
            column(GSTComponentCode1; 'Tax payment details' + '               ' + GSTComponentCode[1] + ' @ ' + FORMAT(GstPerGVar) + '%')
            {
            }
            column(GSTComponentCode2; GSTComponentCode[2] + ' @ ' + FORMAT(GstPerGVar) + '%')
            {
            }
            column(GSTComponentCode3; GSTComponentCode[3] + ' @ ' + FORMAT(GstPerGVar) + '%')
            {
            }
            column(GSTComponentCode4; GSTComponentCode[4] + ' @ ' + FORMAT(GstPerGVar) + '%')
            {
            }
            column(GSTCompAmount1; ABS(GSTCompAmount[1]))
            {
            }
            column(GSTCompAmount2; ABS(GSTCompAmount[2]))
            {
            }
            column(GSTCompAmount3; ABS(GSTCompAmount[3]))
            {
            }
            column(GSTCompAmount4; ABS(GSTCompAmount[4]))
            {
            }
            column(IsGSTApplicable; IsGSTApplicable)
            {
            }
            column(PaymentTerms_Description; PaymentTerms.Description)
            {
            }
            column(ShipAdderGRec_Name; SendAddress1)
            {
            }
            column(ShipAdderGRec_Address; SendAddress2)
            {
            }
            column(ShipAdderGRec_Addres_2; SendAddress3)
            {
            }
            column(ShipAdderGRec_City; SendAddress4)
            {
            }
            column(ShipAdderGRec_Post_Code; SendAddress5)
            {
            }
            column(ShipAdderGRec_Phone_No; SendAddress6)
            {
            }
            column(TotalGstGVar; TotalGstGVar)
            {
            }
            column(No_SalesHeader; "No.")
            {
            }
            column(State_Caption; State_CaptionLbl)
            {
            }
            column(Code_Caption; Code_CaptionLbl)
            {
            }
            column(ShowBankDetails; ShowBankDetails)
            {
            }
            dataitem("Copy loop"; 2000000026)
            {
                DataItemTableView = SORTING(Number);
                dataitem("page loop"; 2000000026)
                {
                    DataItemTableView = SORTING(Number) WHERE(Number = CONST(1));
                    column(Outputno; Outputno)
                    {
                    }
                    dataitem("Sales Invoice Line"; "Sales Invoice Line")
                    {
                        DataItemLink = "Document No." = FIELD("No.");
                        DataItemLinkReference = "Sales Invoice Header";
                        DataItemTableView = SORTING("Document No.", "Line No.")
                                            ORDER(Ascending)
                                            WHERE(Quantity = FILTER(> 0));//, Select = const(true)
                        column(DocumentNo_SalesLine; "Sales Invoice Line"."Document No.")
                        {
                        }
                        column(LineNo_SalesLine; "Line No.")
                        {
                        }
                        column(sno; sno)
                        {
                        }
                        column(Description; Description)
                        {
                        }
                        column(ShowExtDesc; ShowExtDesc)
                        {
                        }
                        column(Quantity; Quantity)
                        {
                        }
                        column(UnitPrice; "Unit Price")
                        {
                        }
                        column(UnitofMeasure; UOMUSDAmt)
                        {
                        }
                        column(Unit_of_Measure_Code; "Unit of Measure Code")
                        { }
                        column(PerUOM; PerUOM)
                        {
                        }
                        column(LineAmount; "Line Amount")
                        {
                        }
                        column(SalesType_SalesLine; SalTypeDes)
                        {
                        }


                        column(ServiceTaxTotal; ServiceTaxTotal)
                        {
                        }
                        column(SBCessTotal; SBCessTotal)
                        {
                        }
                        column(EshesTotal; EshesTotal)
                        {
                        }
                        column(SheshesTotal; SheshesTotal)
                        {
                        }
                        column(TaxTotal; TaxTotal)
                        {
                        }
                        column(TaxPer; TaxPer)
                        {
                        }
                        column(GrandTotal; GrandTotal)
                        {
                        }
                        column(LineTotal; LineTotal)
                        {
                        }
                        column(NumToText; NumToText[1])
                        {
                        }
                        column(IGSSTAmt; IGSSTAmt)
                        {

                        }
                        column(CGSTAmt; CGSTAmt)
                        {

                        }
                        column(SGSTAmt; SGSTAmt)
                        {

                        }
                        column(IGSTPer; IGSTPer)
                        {

                        }
                        column(SGSTPer; SGSTPer)
                        {

                        }
                        column(CGSTPer; CGSTPer)
                        {

                        }
                        column(periodboolean; periodboolean)
                        {
                        }
                        column(Lindiscount; lindiscountamt)
                        {
                        }
                        column(Lisdisamount; lindismat)
                        {
                        }
                        column(dispercentage; "Line Discount %")
                        {
                        }
                        column(netvaramt; netamtvar)
                        {
                        }
                        column(netamtvar1; netamtvar1)
                        {
                        }
                        column(QtyGVar; QtyGVar)
                        {
                        }
                        column(Rate; Rate)
                        {
                        }
                        column(AmountGVar; AmountGVar)
                        {
                        }
                        column(USDClauseGVar; USDClauseGVar)
                        {
                        }
                        column(IGSTRate; IGSTRate)
                        { }
                        column(CGSTRate; CGSTRate)
                        { }
                        column(SGSTRate; SGSTRate)
                        { }
                        column(SEZGSTPer; SEZGSTPer)
                        {
                        }
                        column(SEZGSTAmnt; SEZGSTAmnt)
                        {
                        }
                        column(QtyPerUnit; QtyPerUnit)
                        { }
                        column(Line_Amount; "Line Amount")
                        { }
                        column(CGSTLbl; CGSTLbl)
                        { }
                        column(SGSTLbl; SGSTLbl)
                        { }
                        column(IGSTLbl; IGSTLbl)
                        { }
                        column(Total; Total)
                        { }

                        trigger OnAfterGetRecord();
                        var
                        //  TaxTransactionValue: Record "Tax Transaction Value";
                        //  GSTSetup: Record "GST Setup";
                        begin

                            if "Sales Invoice Line"."no." = 'FC830980' then //BUGFIX
                                CurrReport.skip;//BUGFIX  //  Rounding line skipped.

                            IF "Sales Invoice Line".Quantity <> 0 THEN
                                sno += 1;
                            SlNo += 1;
                            CLEAR(lindiscountamt);
                            CLEAR(lindismat);
                            CLEAR(periodboolean);
                            CLEAR(netamtvar);
                            CLEAR(Rate);
                            CLEAR(AmountGVar);
                            clear(SEZGSTAmnt);//BUGFIX
                            clear(SEZGSTPer);//BUGFIX
                            CLEAR(ShowExtDesc);
                            CLEAR(SalTypeDes);

                            SalesInvHeader.GET("Document No.");

                            IF (SlNo >= vtemp) AND (SlNo <= vtemp1) THEN BEGIN
                                salesInvline1.RESET;
                                salesInvline1.SETRANGE("Document No.", "Document No.");
                                salesInvline1.SETRANGE("Line No.", "Line No.");
                                IF salesInvline1.FINDFIRST THEN;

                                lindismat := -(ROUND("Line Discount Amount", 1));

                                netamtvar1 += ROUND(netamtvar, 1);

                                IF i = cnt THEN BEGIN
                                    boolcheck := TRUE;
                                END ELSE BEGIN
                                    boolcheck := FALSE;
                                END;

                                CLEAR(PerUOM);
                                IF "Sales Invoice Header"."Currency Code" <> '' THEN BEGIN
                                    UOMUSDAmt := netamtvar2;
                                    UOMUSDAmtTot += UOMUSDAmt;
                                END ELSE
                                    PerUOM := "Sales Invoice Line"."Unit of Measure Code";


                            END ELSE BEGIN
                                CurrReport.SKIP;
                            END;
                            //GetGSTbaseAmount("Sales Invoice Header", "Sales Invoice Line");//BUGFIX
                            GetSalesGSTAmount("Sales Invoice Header", "Sales Invoice Line");
                            GetTDSAmt("Sales Invoice Header", "Sales Invoice Line");

                            CGSTRate := CGSTAmt; //BUGFIX
                            SGSTRate := SGSTAmt;//BUGFIX
                            IGSTRate := IGSSTAmt;//BUGFIX
                            //B2BUPG1.0>>
                            if "Sales Invoice Header"."Currency Code" <> '' then begin
                                CGSTRate := CGSTRate * ExchRate1;
                                SGSTRate := SGSTRate * ExchRate1;
                                IGSTRate := IGSTRate * ExchRate1;
                            end;
                            TotalGstGVar := CGSTRate + SGSTRate + IGSTRate;
                            //B2BUPG1.0<<
                            LineTotal += "Line Amount";
                            Total := Round(LineTotal + "Line Amount" + CGSTAmt + SGSTAmt + IGSSTAmt, 1);

                            GrandTotal := Round(Total + CGSTRate + SGSTRate + IGSTRate, 1);
                            ReportCheck.InitTextVariable();
                            ReportCheck.FormatNoText(NumToText, Total, "Sales Invoice Header"."Currency Code");
                            //10DEC 2019 <<




                            IF "Sales Invoice Line"."No." = 'USD CLAUSE' THEN
                                USDClauseGVar := FALSE
                            ELSE
                                USDClauseGVar := TRUE;

                            //Get Quantity on specific condition
                            Clear(QtyGVar);
                            Clear(TotalQtyPerUnit);
                            Clear(QtyPerUnit);

                            //To get the sum of qty. per unit for all lines.
                            SalesInvoiceLineGRec.Reset();
                            SalesInvoiceLineGRec.SetRange("Document No.", "Document No.");
                            SalesInvoiceLineGRec.SetFilter("No.", '<>%1', '');
                            if SalesInvoiceLineGRec.FindSet() then
                                repeat
                                    TotalQtyPerUnit += SalesInvoiceLineGRec.Quantity * SalesInvoiceLineGRec."Qty. per Unit of Measure";
                                until SalesInvoiceLineGRec.Next() = 0;

                            //To get the sum of quantity for selected lines.
                            SalesInvoiceLineGRec.Reset();
                            SalesInvoiceLineGRec.SetRange("Document No.", "Document No.");
                            SalesInvoiceLineGRec.SetRange("Select GLF", true);
                            SalesInvoiceLineGRec.SetFilter("No.", '<>%1', '');
                            if SalesInvoiceLineGRec.FindSet() then begin
                                SalesInvoiceLineGRec.CalcSums(Quantity);
                                QtyGVar := SalesInvoiceLineGRec.Quantity;
                            end;

                            //Qty. per each item
                            if QtyGVar <> 0 then
                                QtyPerUnit := Round(TotalQtyPerUnit / QtyGVar, 0.1);

                        end;

                        trigger OnPreDataItem();
                        begin
                            sno := 0;
                            SlNo := 0;

                        end;
                    }
                }


                trigger OnAfterGetRecord();
                begin
                    IF Number > 1 THEN BEGIN
                        Outputno += 1;
                    END;

                    i += 1;
                    IF Number = 1 THEN BEGIN
                        vtemp := 1;
                        vtemp1 := 5;
                        //vtemp1 :10;
                    END ELSE BEGIN
                        vtemp := vtemp1 + 1;
                        vtemp1 += 5;
                        // vtemp1 +=10;
                    END;
                end;

                trigger OnPreDataItem();
                begin

                    SETRANGE(Number, 1, cnt);
                    Outputno := 1;
                    i := 0;
                end;
            }

            trigger OnAfterGetRecord();
            begin

                CustRec.RESET;
                CustRec.SETRANGE(CustRec."No.", "Sell-to Customer No.");
                IF CustRec.FINDFIRST THEN BEGIN
                    CustName := CustRec.Name;
                    CustAddress := CustRec.Address;
                    CustAddress2 := CustRec."Address 2";
                    CustCity := CustRec.City;
                    CustPostCode := CustRec."Post Code";
                    CusPhNo := CustRec.Contact;
                    CustTaxLiable := CustRec."Tax Liable";
                END;

                CustRec1.Reset;
                CustRec1.SetRange(CustRec1."No.", "Bill-to Customer No.");
                If CustRec1.FindFirst() then;

                CLEAR(Heading2Text);
                CLEAR(ShowSezDes);

                CLEAR(ShowBankDetails);
                CLEAR(RateCaption);
                CLEAR(AmtPerCaption);
                clear(ItemLinesExist);
                IF "Sales Invoice Header"."Currency Code" <> '' THEN BEGIN
                    ShowBankDetails := TRUE;
                    RateCaption := 'Rate in USD';
                    AmtPerCaption := 'Amount in USD';
                    TotalAmtGVar := 'Total Amount  (INR)'
                END ELSE BEGIN
                    RateCaption := 'Rate';
                    AmtPerCaption := 'Per';
                    TotalAmtGVar := 'Amount  (INR)';
                END;

                IF "Sales Invoice Header"."Currency Factor" > 0 THEN
                    ExchRate1 := (1 / "Sales Invoice Header"."Currency Factor");

                linecount := 0;
                SalesInvLine.RESET;
                SalesInvLine.SETRANGE(SalesInvLine."Document No.", "No.");

                linecount += 1;

                TaxTotal := ROUND(TaxAmt, 1);

                PaymentTerms.RESET;
                PaymentTerms.SETRANGE(PaymentTerms.Code, "Payment Terms Code");
                IF PaymentTerms.FINDFIRST THEN
                    PaymentTrms := PaymentTerms.Description;

                SalesInvLine2.RESET;
                SalesInvLine2.SETRANGE(SalesInvLine2."Document No.", "No.");
                SalesInvLine2.SETFILTER(SalesInvLine2."Tax Area Code", '<>%1', '');
                IF SalesInvLine2.FINDFIRST THEN BEGIN

                    TaxArea.RESET;
                    TaxArea.SETRANGE(TaxArea.Code, SalesInvLine2."Tax Area Code");
                    IF TaxArea.FINDFIRST THEN BEGIN
                        TaxAreaLine.RESET;
                        TaxAreaLine.SETRANGE(TaxAreaLine."Tax Area", TaxArea.Code);
                        IF TaxAreaLine.FINDFIRST THEN BEGIN
                            TaxJurisdiction.RESET;
                            TaxJurisdiction.SETRANGE(TaxJurisdiction.Code, TaxAreaLine."Tax Jurisdiction Code");
                            /* IF TaxJurisdiction.FINDFIRST THEN
                                TaxType:=FORMAT(TaxJurisdiction."Tax Type");*/
                        END;
                    END;
                END;

                ////
                IF SBCessPer <> 0 THEN
                    SBCessTotal += ROUND((SerTaxBaseAmt * (SBCessPer / 100)), 1);
                IF SBCessTotal <> 0 THEN
                    ServiceTaxTotal -= SBCessTotal;

                IF PaymentTermsGRec.GET("Payment Terms Code") THEN;


                IF ShipAdderGRec.GET("Bill-to Customer No.", "Ship-to Code") THEN BEGIN
                    SendAddress1 := ShipAdderGRec.Name;
                    SendAddress2 := ShipAdderGRec.Address;
                    SendAddress3 := ShipAdderGRec."Address 2";
                    SendAddress4 := ShipAdderGRec.City;
                    SendAddress5 := ShipAdderGRec."Post Code";
                    SendAddress6 := ShipAdderGRec."Phone No.";
                END ELSE BEGIN
                    SendAddress1 := CustRec.Name;
                    SendAddress2 := CustRec.Address;
                    SendAddress3 := CustRec."Address 2";
                    SendAddress4 := CustRec.City;
                    SendAddress5 := CustRec."Post Code";
                    SendAddress6 := CustRec."Phone No."
                END;





                GrandTotal := LineTotal + ROUND((ServiceTaxTotal + EshesTotal + SheshesTotal), 1) + TaxTotal + SBCessTotal + ABS(GSTCompAmount[1]) + ABS(GSTCompAmount[2]) + ABS(GSTCompAmount[3]) + ABS(GSTCompAmount[4]); //B2BGST1.0
                GrandTotal1 := ROUND(GrandTotal, 1);
                //Chck.InitTextVariable;
                //Chck.FormatNoText(NumToText, ROUND(LineTotal, 1), "Currency Code");

                cnt := 0;
                cnt2 := 0;
                cnt1 := 0;

                //cnt1 :=linecount / 10;  //jm
                cnt1 := linecount / 5;
                cnt2 := ROUND(cnt1, 1);

                IF cnt1 = cnt2 THEN BEGIN
                    cnt := cnt1;
                END ELSE
                    IF cnt1 > cnt2 THEN BEGIN
                        cnt := ROUND(cnt1, 1) + 1;
                    END ELSE BEGIN
                        cnt := ROUND(cnt1, 1);
                        ;
                    END;

                CLEAR(SEZGSTPer);
                CLEAR(SEZGSTAmnt);
                CLEAR(AdvPaymentDetails);
                CustLedgerEntry.RESET;
                CustLedgerEntry.SETRANGE(CustLedgerEntry."Document No.", "Sales Invoice Header"."No.");
                CustLedgerEntry.SETRANGE(CustLedgerEntry."Posting Date", "Sales Invoice Header"."Posting Date");
                IF CustLedgerEntry.FINDFIRST THEN BEGIN
                    CustLedgerEntry.CALCFIELDS(Amount);
                    CustLedgerEntry.CALCFIELDS("Remaining Amount");
                    AdvPaymentDetails := (CustLedgerEntry.Amount - CustLedgerEntry."Remaining Amount");
                END;

                //B2BJM1.0 >>
                IF PaymentTerms2.GET("Sales Invoice Header"."Payment Terms Code") THEN;

                //B2BJM1.0 <<

            end;

            trigger OnPostDataItem();
            begin

            end;

            trigger OnPreDataItem();
            begin
                CompInfo.GET;
                CompInfo.CALCFIELDS(CompInfo.Picture);

                CLEAR(LineTotal);
                CLEAR(ServiceTaxTotal);
                CLEAR(EshesTotal);
                CLEAR(SheshesTotal);
                CLEAR(TaxTotal);
                CLEAR(CustSTC);
                CLEAR(linecount);
                CLEAR(SerTaxEcessPer);
                CLEAR(SerTaxSheCessPer);
                CLEAR(ServTaxPer);
                CLEAR(SBCessPer);////
                CLEAR(NewSerTaxPer);////
                CLEAR(SBCessTotal);////
                CLEAR(TaxType);
                CLEAR(TaxPercent);
                CLEAR(CustTaxLiable);
                CLEAR(SEZRemarks1);
                CLEAR(SEZRemarks2);
                CLEAR(Linetotal1USD);
                CLEAR(UOMUSDAmtTot);
            end;
        }
    }

    requestpage
    {

        layout
        {
            area(content)
            {
                group(Option)
                {
                    field(ShowHeadCap; ShowHeadCap)
                    {
                        Caption = 'Show Header Caption';
                        ApplicationArea = All;
                    }
                }
            }
        }

        actions
        {
        }

        trigger OnOpenPage();
        begin
            ShowHeadCap := TRUE;
        end;
    }

    labels
    {
    }

    trigger OnPostReport();
    begin

    end;

    local procedure GetTDSAmt(SalesInvHeader: Record "Sales Invoice Header";
        SalesInvLine: Record "Sales Invoice Line")
    var
    //  TDSEntry: Record "TDS Entry";
    begin
        /* Clear(TDSAmt);
         TDSEntry.Reset();
       //  TDSEntry.SetRange("Document No.", SalesInvLine."Document No.");
         if TDSEntry.FindSet() then
             repeat
                 if "Sales Invoice Header"."Currency Code" <> '' then
                     TDSAmt += (SalesInvHeader."Currency Factor" * TDSEntry."Total TDS Including SHE CESS")
                 else
                     TDSAmt += TDSEntry."Total TDS Including SHE CESS";
             until TDSEntry.Next() = 0;*/
    end;

    local procedure GetGSTBaseAmount(SalesIvHeader: Record "Sales Invoice Header";
    SalesInvLine: Record "Sales Invoice Line")
    var
        TaxTransactionValue: Record "Tax Transaction Value";
        GstRateVar: decimal;
        DetailedGSTLedgerEntry: Record "Detailed GST Ledger Entry";
    begin

        CLEAR(SEZGSTPer);
        CLEAR(SEZGSTAmnt);

        TaxTransactionValue.Reset;
        TaxTransactionValue.Setrange("Tax Record ID", SalesInvLine.RecordId);
        TaxTransactionValue.Setrange("Value Type", TaxTransactionValue."Value Type"::COMPONENT);
        TaxTransactionValue.Setfilter("Value ID", '%1|%2|%3', 2, 3, 6);
        TaxTransactionValue.setrange("Tax Type", 'GST');
        if TaxTransactionValue.FindFirst() then
            GstRateVar := TaxTransactionValue.Percent
        else
            GstRateVar := 0;
        DetailedGSTLedgerEntry.Reset();
        DetailedGSTLedgerEntry.SetRange("Document No.", SalesInvLine."Document No.");
        DetailedGSTLedgerEntry.SetRange("Entry Type", DetailedGSTLedgerEntry."Entry Type"::"Initial Entry");

        if DetailedGSTLedgerEntry.FindSet() then
            repeat
                if (SalesIvHeader."Currency Code" <> '') then begin
                    if GstRateVar <> 0 then
                        //  SEZGSTAmnt += Round((Abs((DetailedGSTLedgerEntry."GST base Amount" * GstRateVar) / 100) * SalesIvHeader."Currency Factor"), GetGSTRoundingPrecision(DetailedGSTLedgerEntry."GST Component Code"));
                        SEZGSTPer := Format(GstRateVar);
                end else begin


                    if GstRateVar <> 0 then
                        //    SEZGSTAmnt += Round(Abs(DetailedGSTLedgerEntry."GST base Amount" * GstRateVar) / 100, GetGSTRoundingPrecision(DetailedGSTLedgerEntry."GST Component Code"));
                        SEZGSTPer := Format(GstRateVar);
                end;



            until DetailedGSTLedgerEntry.Next() = 0;
    end;
    //mm            
    procedure GetGSTRoundingPrecision(ComponentName: Code[30]): Decimal
    var
        TaxComponent: Record "Tax Component";
        GSTSetup: Record "GST Setup";
        GSTRoundingPrecision: Decimal;
    begin
        if not GSTSetup.Get() then
            exit;
        GSTSetup.TestField("GST Tax Type");

        TaxComponent.SetRange("Tax Type", GSTSetup."GST Tax Type");
        TaxComponent.SetRange(Name, ComponentName);
        TaxComponent.FindFirst();
        if TaxComponent."Rounding Precision" <> 0 then
            GSTRoundingPrecision := TaxComponent."Rounding Precision"
        else
            GSTRoundingPrecision := 1;
        exit(GSTRoundingPrecision);
    end;


    local procedure GetSalesGSTAmount(SalesInvoiceHeader: Record "Sales Invoice Header";
            SalesInvoiceLine: Record "Sales Invoice Line")
    var
        DetailedGSTLedgerEntry: Record "Detailed GST Ledger Entry";
    begin
        Clear(IGSSTAmt);
        Clear(CGSTAmt);
        Clear(SGSTAmt);
        Clear(CessAmt);
        DetailedGSTLedgerEntry.Reset();
        DetailedGSTLedgerEntry.SetRange("Document No.", SalesInvoiceLine."Document No.");
        DetailedGSTLedgerEntry.SetRange("Entry Type", DetailedGSTLedgerEntry."Entry Type"::"Initial Entry");
        DetailedGSTLedgerEntry.SetRange("Document Line No.", SalesInvoiceLine."Line No.");
        if DetailedGSTLedgerEntry.FindSet() then begin
            repeat
                if (DetailedGSTLedgerEntry."GST Component Code" = CGSTLbl) And (SalesInvoiceHeader."Currency Code" <> '') then
                    CGSTAmt += Round((Abs(DetailedGSTLedgerEntry."GST Amount") * SalesInvoiceHeader."Currency Factor"), GetGSTRoundingPrecision(DetailedGSTLedgerEntry."GST Component Code"))
                else
                    if (DetailedGSTLedgerEntry."GST Component Code" = CGSTLbl) then
                        CGSTAmt += Abs(DetailedGSTLedgerEntry."GST Amount");

                if (DetailedGSTLedgerEntry."GST Component Code" = SGSTLbl) And (SalesInvoiceHeader."Currency Code" <> '') then
                    SGSTAmt += Round((Abs(DetailedGSTLedgerEntry."GST Amount") * SalesInvoiceHeader."Currency Factor"), GetGSTRoundingPrecision(DetailedGSTLedgerEntry."GST Component Code"))
                else
                    if (DetailedGSTLedgerEntry."GST Component Code" = SGSTLbl) then
                        SGSTAmt += Abs(DetailedGSTLedgerEntry."GST Amount");

                if (DetailedGSTLedgerEntry."GST Component Code" = IGSTLbl) And (SalesInvoiceHeader."Currency Code" <> '') then
                    IGSSTAmt := Round((Abs(DetailedGSTLedgerEntry."GST Amount") * SalesInvoiceHeader."Currency Factor"), GetGSTRoundingPrecision(DetailedGSTLedgerEntry."GST Component Code"))
                else
                    if (DetailedGSTLedgerEntry."GST Component Code" = IGSTLbl) then
                        IGSSTAmt := Abs(DetailedGSTLedgerEntry."GST Amount");
                if (DetailedGSTLedgerEntry."GST Component Code" = CessLbl) And (SalesInvoiceHeader."Currency Code" <> '') then
                    CessAmt += Round((Abs(DetailedGSTLedgerEntry."GST Amount") * SalesInvoiceHeader."Currency Factor"), GetGSTRoundingPrecision(DetailedGSTLedgerEntry."GST Component Code"))
                else
                    if (DetailedGSTLedgerEntry."GST Component Code" = CessLbl) then
                        CessAmt += Abs(DetailedGSTLedgerEntry."GST Amount");
            until DetailedGSTLedgerEntry.Next() = 0;

        end;
    end;
    //mm


    var


        Exporter_cap: Label 'Exporter';
        Exporters_Ref_Cap: Label 'Exporters Ref.';
        Consignee_Cap: Label 'Consignee:';
        InvoiceNo_Date_Cap: Label 'Invoice No & Date';
        GSTNumber_Cap: Label 'GST Number';
        Pre_Carriage_by_Cap: Label 'Pre-Carriage by';
        Place_Of_Receipt_by_Cap: Label 'Place Of Receipt by';
        Vessel_FlightNo_Cap: Label 'Vessel/Flight No.';
        Port_Of_Loading_Cap: Label 'Port Of Loading';
        Port_Of_Discharge_Cap: Label 'Port Of Discharge';
        Final_Destination_Cap: Label 'Final Destination';
        Country_Of_Origin_of_Goods_Cap: Label 'Country Of Origin of Goods';
        Country_of_Final_Destination_Cap: Label 'Country of Final Destination';
        Terms_Of_Delivery_Cap: Label 'Terms Of Delivery';
        Terms_of_Payment_Cap: Label 'Terms of Payment:';
        Marks_Nos_Container_No_Cap: Label 'Marks & Nos./Container No.';
        No_of_Pkgs_Cap: Label 'No of Pkgs';
        Description_Of_Goods_Cap: Label 'Description Of Goods';
        Quantity_Cap: Label 'Quantity';
        Rate_Cap: Label 'Rate';
        Amount_Cap: Label 'Amount';
        Amount_in_words_Cap: Label 'Amount (in words)';
        Total_Amt_Cap: Label 'Total Amount';
        ProvisionalIDNo_Cap: Label 'Provisional ID No:';
        CompInfo: Record 79;
        sno: Integer;
        ServiceTaxTotal: Decimal;
        EshesTotal: Decimal;
        SheshesTotal: Decimal;
        TaxTotal: Decimal;
        TaxPer: Text;
        GrandTotal: Decimal;
        NumToText: array[2] of Text[250];
        SalesInvLine: Record 113;
        LineTotal: Decimal;
        SalesInvHeader: Record 112;
        TaxArea: Record 318;
        TaxAreaLine: Record 319;
        TaxJurisdiction: Record 320;
        CustRec: Record 18;
        CustRec1: Record 18;
        CustPAN: Text[50];
        CustCST: Text[50];
        CustVAT: Text[50];
        CustPostCode: Text[30];
        CusPhNo: Text[100];
        CustCity: Text[30];
        CustAddress: Text[50];
        CustAddress2: Text[50];
        CustName: Text[50];
        CustSTC: Text[50];
        linecount: Integer;
        cnt: Integer;
        cnt1: Decimal;
        cnt2: Decimal;
        Outputno: Integer;
        vtemp: Integer;
        vtemp1: Integer;
        boolcheck: Boolean;
        i: Integer;
        SlNo: Integer;
        salesInvline1: Record 113;
        SalesInvLine2: Record 113;
        //ServTaxSetup : Record "16472";
        ServTaxPer: Decimal;
        SerTaxEcessPer: Decimal;
        SerTaxSheCessPer: Decimal;
        TaxType: Text;
        TaxPercent: Decimal;
        PaymentTerms: Record 3;
        PaymentTrms: Text[50];
        TaxAmt: Decimal;
        CustTaxLiable: Boolean;
        SEZRemarks1: Text[50];
        SEZRemarks2: Text[50];
        periodboolean: Boolean;
        //  DefferedOrderSetup: Record 50007;
        lindiscountamt: Decimal;
        lindismat: Decimal;
        netamtvar: Decimal;
        netamtvar1: Decimal;
        GrandTotal1: Decimal;
        Linetotal1: Decimal;
        SBCessPer: Decimal;
        NewSerTaxPer: Decimal;
        SBCessTotal: Decimal;
        SerTaxBaseAmt: Decimal;
        Footer5_CaptionLbl: Label '5. Unless otherwise stated tax on this invoice is not payable under reverse charge';
        Footer6_CaptionLbl: Label '6. I/We certify that my / our registration certificate under GST Act is in force on the date on which the sale of the goods specifed in this Tax Invoice is made by me/ us & that the transction of sale converted by this Tax Invoice has been affectedby me / us & the due tax, if any, payable on the sales has been paid or shall be paid.';
        Footer01_CapLb01: Label 'Declaration : We declare that this Invoice shows the actual price of the goods described and that all particulars are true and correct.';
        Footer02_CapLb02: Label 'Free sample of no commercial value. sample for testing purposes';
        Footer03_CapLb03: Label 'For Greenleaf Extraction Pvt Ltd';
        Footer04_CapLb04: Label 'Authorized Signatory';


        Label1_Cap01: Label 'Buyer (if other than consignee)';
        Label2_Cap02: Label 'Provisional ID No:';
        Lable3_Cap03: Label 'Sample for testing Purpose Only';
        Lable4_Cap04: label 'NOT FOR RE-SALE , ONLY FOR TESTING PURPOSE';
        IsGSTApplicable: Boolean;
        GSTCompAmount: array[20] of Decimal;
        GSTComponentCode: array[20] of Code[10];
        //GSTManagement : Codeunit "16401";
        ShipAdderGRec: Record 222;
        TotalGstGVar: Decimal;
        GstPerGVar: Decimal;
        SendAddress1: Text[50];
        SendAddress2: Text[50];
        SendAddress3: Text[50];
        SendAddress4: Text[30];
        SendAddress5: Code[20];
        SendAddress6: Code[15];
        PaymentTermsGRec: Record 3;
        ShowHeadCap: Boolean;
        Head_CaptionLbl: Label 'Original For Recipient';
        State_CaptionLbl: Label 'State';
        Code_CaptionLbl: Label 'State Code';

        QtyGVar: Decimal;
        Rate: Decimal;
        AmountGVar: Decimal;
        PaymentTermsCaptionLbl: Label 'Payment Terms';
        SupplyofGoodCaptionLbl: Label 'Supply of Goods/Services Meant for SEZ UNIT under LUT No.-';
        withoutpaymentCaptionLbl: Label '%1  Dt.- %2  without payment of GST @';
        AggregatingCaptionLbl: Label '18% aggregating to Rs. %1';
        SEZGSTPer: Text[250];
        SEZGSTAmnt: Decimal;
        Footer1_1_CaptionLbl: Label '1. Invoice is subjected to repective HCCI standard terms and conditions';
        Footer2_1_CaptionLbl: Label '2. Any dispute shall be resolved subject to Hyderabad Jurisdiction';
        Footer3_1_CaptionLbl: Label '3. Unless otherwise stated tax on this invoice is not payable under reverse charge';
        Footer4_1_CaptionLbl: Label '4. Any changes to invoice shall be informed within 15 days from the date of receipt of soft copy of the invoice and shall be in line with accepted terms & conditions and Purchase Order. Otherwise the invoice will be deemed accepted by you.';
        Footer5_1_CaptionLbl: Label '5. I/ We certify that my / our registration certificate under the GST Act is in force on the date on which the sale of the goods specified in this Tax Invoice is made by me/ us & that the transction of sale convered by this Tax Invoice has been affected by me / us & the due tax, if any, payable on the sale has been paid or shall be paid.';
        Heading2Text: Text[1024];
        ShowBankDetails: Boolean;
        RateCaption: Text[30];
        AmtPerCaption: Text[30];
        TotalAmtGVar: Text[30];
        ShowSezDes: Boolean;
        UOMUSDAmt: Decimal;
        ExchRate1: Decimal;
        netamtvar2: Decimal;
        Linetotal1USD: Decimal;
        PerUOM: Text[30];
        UOMUSDAmtTot: Decimal;
        GrandTotalUSD: Decimal;
        CustLedgerEntry: Record 21;
        AdvPaymentDetails: Decimal;
        // DefferedOrderSetupGRec: Record 50007;
        IRNNoCaptionLVar: Text[50];
        SalTypeDes: Text[250];
        ShowExtDesc: Boolean;
        PaymentTerms2: Record 3;
        USDClauseGVar: Boolean;
        CessLbl: Label 'CESS';
        CGSTLbl: Label 'CGST';
        SGSTLbl: Label 'SGST';
        IGSTLbl: Label 'IGST';
        SGSTAmt: Decimal;
        CGSTAmt: Decimal;
        IGSSTAmt: Decimal;
        //ChckReport: Codeunit NumbertoText;
        IGSTRate: Decimal;
        CGSTRate: Decimal;
        SGSTRate: Decimal;
        CessAmt: Decimal;
        CGSTPer: decimal;
        IGSTPer: decimal;
        SGSTPer: decimal;
        ItemLinesExist: Boolean;
        QtyPerUnit: Decimal;
        TotalQtyPerUnit: Decimal;
        SalesInvoiceLineGRec: Record "Sales Invoice Line";
        ReportCheck: Codeunit CheckNew;


        Total: Decimal;
}

