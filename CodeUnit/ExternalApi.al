codeunit 50100 "ApiMangement"
{

    procedure GetWeather()
    var
        HTTPcilent: HttpClient;
        HttpRequestMessage: HttpRequestMessage;
        HttpResponseMessage: HttpResponseMessage;
        JsonArray: JsonArray;
        JsonToken: JsonToken;
        JsonObject: JsonObject;
        i: Integer;
        url: Text;
        url2: text;
        j: Integer;
        Weather: Record weather;
        jsontext: Text;

    begin
        url := 'https://api.open-meteo.com/v1/forecast?latitude=27.7017&longitude=85.3206&daily=weather_code,temperature_2m_max,temperature_2m_min,sunrise,sunset,daylight_duration,sunshine_duration,precipitation_sum,precipitation_hours,precipitation_probability_max,wind_speed_10m_max,wind_direction_10m_dominant';
        url2:='https://geocoding-api.open-meteo.com/v1/search?name=kathmandu&count=10&language=en&format=json';
        if not HTTPcilent.Get(url, HttpResponseMessage) then begin
            Error('Call to webservice Failed');
        end;
        if not HttpResponseMessage.IsSuccessStatusCode then begin
            Error('The web service returned an error message:\\' +
                   'Status code: %1\' +
                   'Description: %2', HttpResponseMessage.HttpStatusCode, HttpResponseMessage.ReasonPhrase);
        end;
        HttpResponseMessage.Content.ReadAs(jsontext);
        JsonObject.ReadFrom(jsontext);
        Message('Response match');
        Weather.Init();
        Weather.latitude := Gettoken('latitude', JsonObject).AsValue().AsDecimal();
       
        Weather.longitude := getToken('longitude', JsonObject).AsValue().AsDecimal();
        Weather.generationtime_ms := getToken('generationtime_ms', JsonObject).AsValue().AsDecimal();
        Weather.utc_offset_seconds := getToken('utc_offset_seconds', JsonObject).AsValue().AsInteger();
        Weather.timezone := getToken('timezone', JsonObject).AsValue().AsCode();
        Weather.timezone_abbreviation := getToken('timezone_abbreviation', JsonObject).AsValue().AsCode();
        Weather.elevation := getToken('elevation', JsonObject).AsValue().AsDecimal();

        JsonObject.Get('daily', JsonToken);
        JsonObject.ReadFrom(Format(JsonToken));
        JsonObject.Get('time', JsonToken);
        //Weather.time:=JsonToken.AsValue().AsCode();
        //JsonArray:=JsonToken.AsArray();
        JsonArray := jsontoken.AsArray();
        //Message('successFully Delete older Data');
        for i := 0 to JsonArray.Count - 1 do begin
            JsonArray.Get(i,JsonToken);
           // JsonObject:=JsonToken.AsObject();
           //JsonObject.Get('time',JsonToken);
            Weather.time:=JsonToken.AsValue().AsCode();
            
            //Weather.sunset:=JsonToken.AsValue().AsCode()
           //JsonObject:=JsonToken.AsObject();
            //Weather.time:=JsonObject.Get('text',JsonToken);
           // Weather.time := getToken('time', JsonObject).AsValue().AsCode();
            //Weather.time:=JsonObject.get('time',JsonToken).().AsCode();
        end;
        JsonObject.Get('sunrise',JsonToken);
        JsonArray:=JsonToken.AsArray();
        for  j:=0  to JsonArray.Count-1 do begin
            JsonArray.Get(j,JsonToken);
            Weather.sunrise:=JsonToken.AsValue().AsCode();
        end;
         JsonObject.Get('sunset',JsonToken);
        JsonArray:=JsonToken.AsArray();
        for  j:=0  to JsonArray.Count-1 do begin
            JsonArray.Get(j,JsonToken);
            Weather.sunset:=JsonToken.AsValue().AsCode();
        end;
         JsonObject.Get('temperature_2m_min',JsonToken);
        JsonArray:=JsonToken.AsArray();
        for  j:=0  to JsonArray.Count-1 do begin
            JsonArray.Get(j,JsonToken);
            Weather.temperature_2m_min:=JsonToken.AsValue().AsDecimal();
        end;
         JsonObject.Get('temperature_2m_max',JsonToken);
        JsonArray:=JsonToken.AsArray();
        for  j:=0  to JsonArray.Count-1 do begin
            JsonArray.Get(j,JsonToken);
            Weather.temperature_2m_max:=JsonToken.AsValue().AsDecimal();
        end;
         JsonObject.Get('sunshine_duration',JsonToken);
        JsonArray:=JsonToken.AsArray();
        for  j:=0  to JsonArray.Count-1 do begin
            JsonArray.Get(j,JsonToken);
            Weather.sunshine_duration:=JsonToken.AsValue().AsDecimal();
        end;
        JsonObject.Get('precipitation_hours',JsonToken);
        JsonArray:=JsonToken.AsArray();
        for  j:=0  to JsonArray.Count-1 do begin
            JsonArray.Get(j,JsonToken);
            Weather.precipitation_hours:=JsonToken.AsValue().AsDecimal();
        end;
        JsonObject.Get('precipitation_probability_max',JsonToken);
        JsonArray:=JsonToken.AsArray();
        for  j:=0  to JsonArray.Count-1 do begin
            JsonArray.Get(j,JsonToken);
            Weather.precipitation_probability_max:=JsonToken.AsValue().AsDecimal();
        end;
        JsonObject.Get('wind_speed_10m_max',JsonToken);
        JsonArray:=JsonToken.AsArray();
        for  j:=0  to JsonArray.Count-1 do begin
            JsonArray.Get(j,JsonToken);
            Weather.wind_speed_10m_max:=JsonToken.AsValue().AsDecimal();
        end;

        Weather.Insert(true);
    end;

    procedure getToken(keyVal: Text; JObj: JsonObject) JT: JsonToken
    var
    begin
        JObj.Get(keyVal, JT)
    end;

    trigger OnRun()
    begin

    end;

    var
        myInt: Integer;
}