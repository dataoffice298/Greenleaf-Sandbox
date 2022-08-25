page 65000 "Sample List B2B"
{
    Caption = 'Sample List';
    Editable = false;
    PageType = List;
    SourceTable = "Sample B2B";
    UsageCategory = Lists;
    ApplicationArea = All;
    CardPageId = "Sample Card B2B";

    layout
    {
        area(content)
        {
            repeater(Control1000000000)
            {
                field("Sample ID"; Rec."Sample ID")
                {
                    ApplicationArea = all;
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
                field("Mfg Date"; Rec."Mfg Date")
                {
                    ApplicationArea = all;
                }
                field("Expiry Date"; Rec."Expiry Date")
                {
                    ApplicationArea = all;
                }
                field("Batch No."; Rec."Batch No.")
                {
                    ApplicationArea = all;
                }
                field("QC Completed"; Rec."QC Completed")
                {
                    ApplicationArea = all;
                }
                field("QC Completion Date"; Rec."QC Completion Date")
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
                field(City; Rec.City)
                {
                    ApplicationArea = all;
                }
                field(Contact; Rec.Contact)
                {
                    ApplicationArea = all;
                }
                field("Phone No."; Rec."Phone No.")
                {
                    ApplicationArea = all;
                }
                field("Telex No."; Rec."Telex No.")
                {
                    ApplicationArea = all;
                }
                field("No. Series"; Rec."No. Series")
                {
                    ApplicationArea = all;
                }
                field(Comment; Rec.Comment)
                {
                    ApplicationArea = all;
                }
            }
        }
    }

    actions
    {
        area(navigation)
        {
            group("&Sample")
            {
                Caption = '&Sample';
                Image = RegisteredDocs;
                action(Card)
                {
                    ApplicationArea = all;
                    Caption = 'Card';
                    Image = EditLines;
                    RunObject = Page "Sample Card B2B";
                    RunPageLink = "Sample ID" = FIELD("Sample ID");
                    ShortCutKey = 'Shift+F7';
                }
            }
        }
    }
}

