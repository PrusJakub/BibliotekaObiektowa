Class Biblioteka.Pracownik Extends (%Persistent, %Populate, Biblioteka.Osoba)
{

Relationship Biblioteka As Biblioteka.Biblioteka [ Cardinality = one, Inverse = Pracownicy ];

Method kimJestes() As %String
{
	Return "Pracownik "_..Imie_" "_..Nazwisko
}

}
