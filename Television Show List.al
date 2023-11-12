page 50101 "Television Show List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    Editable = false;
    CardPageId = "Television Show Card";
    SourceTable = "Television Show";
    HelpLink = 'http://customhelpsite.com/televisionshows';

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field(Code; rec.Code)
                {
                    ApplicationArea = All;
                }

                field(Name; rec.Status)
                {
                    ApplicationArea = All;
                }

                field(Status; rec.Status)
                {
                    ApplicationArea = All;
                }

                field("Created By"; rec."Created By")
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}