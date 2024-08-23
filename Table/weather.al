table 50102 weather
{
    DataClassification = ToBeClassified;
    
    fields
    {
        field(1000;"latitude"; Decimal)
        {
            DataClassification = ToBeClassified;
            
        }
        
        field(1001;longitude; Decimal)
        {
            DataClassification = ToBeClassified;
            
        }
        
        field(1002;generationtime_ms; Decimal)
        {
            DataClassification = ToBeClassified;
            
        }
        
        field(1003;utc_offset_seconds; Integer)
        {
            DataClassification = ToBeClassified;
            
        }
        
        field(1004;timezone; Code[20])
        {
            DataClassification = ToBeClassified;
            
        }
        
        field(1005;timezone_abbreviation; Code[20])
        {
            DataClassification = ToBeClassified;
            
        }
        field(1006;elevation; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        
        field(1007;time; Code[20])
        {
            DataClassification = ToBeClassified;
            
        }
         field(1008;weather_code; Code[20])
        {
            DataClassification = ToBeClassified;
            
        }
         field(1009;temperature_2m_max; Decimal)
        {
            DataClassification = ToBeClassified;
            
        }
         field(1010;temperature_2m_min; Decimal)
        {
            DataClassification = ToBeClassified;
            
        }
         field(1011;sunrise; Code[20])
        {
            DataClassification = ToBeClassified;
            
        }
         field(1012;sunset; Code[20])
        {
            DataClassification = ToBeClassified;
            
        }
         field(1013;daylight_duration; Decimal)
        {
            DataClassification = ToBeClassified;
            
        }
         field(1014;sunshine_duration; Decimal)
        {
            DataClassification = ToBeClassified;
            
        }
         field(1015;precipitation_sum; Decimal)
        {
            DataClassification = ToBeClassified;
            
        }
         field(1016;precipitation_hours; Decimal)
        {
            DataClassification = ToBeClassified;
            
        }
         field(1017;precipitation_probability_max; Decimal)
        {
            DataClassification = ToBeClassified;
            
        }
         field(1018;wind_speed_10m_max; Decimal)
        {
            DataClassification = ToBeClassified;
            
        }field(1019; wind_direction_10m_dominant; Decimal)
        {
            DataClassification = ToBeClassified;
        }


    }
    
    keys
    {
        key(Key1; time)
        {
            Clustered = true;
        }
    }
    
    fieldgroups
    {
        // Add changes to field groups here
    }
    
    var
        myInt: Integer;
    
    trigger OnInsert()
    begin
        
    end;
    
    trigger OnModify()
    begin
        
    end;
    
    trigger OnDelete()
    begin
        
    end;
    
    trigger OnRename()
    begin
        
    end;
    
}