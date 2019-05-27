Class Biblioteka.Osoba [ Abstract ]
{

Property IdOsoby As %Numeric [ Required ];

Index IdOsobyIndex On IdOsoby [ Unique ];

Property Imie As %String;

Property Nazwisko As %String [ Required ];

Method kimJestes() As %String
{
}

}
