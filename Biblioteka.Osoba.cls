Class Biblioteka.Osoba [ Abstract ]
{

Property Imie As %String;

Property Nazwisko As %String [ Required ];

Method kimJestes() As %String
{
	Return "Osoba "_..Imie_" "_..Nazwisko
}

}
