page 50103 Weather
{
    ApplicationArea = All;
    Caption = 'Weather';
    PageType = List;
    SourceTable = weather;
    UsageCategory = Lists;
    CardPageId = Weathers;
    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("time"; Rec."time")
                {
                    ToolTip = 'Specifies the value of the time field.';
                }
                field(sunrise; Rec.sunrise)
                {
                    ToolTip = 'Specifies the value of the sunrise field.';
                }
                field(sunset; Rec.sunset)
                {
                    ToolTip = 'Specifies the value of the sunset field.';
                }
                field(temperature_2m_min; Rec.temperature_2m_min)
                {
                    ToolTip = 'Specifies the value of the temperature_2m_min field.';
                }
                field(temperature_2m_max; Rec.temperature_2m_max)
                {
                    ToolTip = 'Specifies the value of the temperature_2m_max field.';
                }
                field(precipitation_probability_max; Rec.precipitation_probability_max)
                {
                    ToolTip = 'Specifies the value of the precipitation_probability_max field.';
                }
                field(precipitation_hours; Rec.precipitation_hours)
                {
                    ToolTip = 'Specifies the value of the precipitation_hours field.';
                }
                field(sunshine_duration; Rec.sunshine_duration)
                {
                    ToolTip = 'Specifies the value of the sunshine_duration field.';
                }
                field(wind_speed_10m_max; Rec.wind_speed_10m_max)
                {
                    ToolTip = 'Specifies the value of the wind_speed_10m_max field.';
                }
            }
        }
    }
    actions
    {
        area(Processing)
        {
            action("Get Details")
            {
                ApplicationArea = All;
                Image = Currencies;
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;

                trigger OnAction()
                var
                    apimanage: Codeunit "Apimangement";
                begin

                    if Confirm('DO you want to fetch today weather data?') then
                        apimanage.GetWeather()
                    else
                        Message('Okay');

                end;
            }
            action("Get Day")
            {
                ApplicationArea = All;
                Image = Currencies;
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;

                trigger OnAction()
                var
                    Date : text[50];
                    Selection: Integer;
                begin
                    Date:='Sunday,monday,Tuesday';
                    Selection:=StrMenu(Date,1,'Which date is today?');
                    Message('you select %1',Selection);
                end;
            }
        }
    }
}
