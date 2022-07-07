unit uGigasecond;

interface
  type TGigasecond = class
    class function Add(AYear : string) : string;
  end;

implementation
  uses
    StrUtils, DateUtils;

  class function TGigasecond.Add(AYear : string) : string;
    var
      VYear : string;
    begin
      VYear := DateToISO8601(IncSecond(ISO8601ToDate(AYear), 1000000000));
      Result := LeftStr(VYear, Length(VYear) - 5);
    end;
end.
