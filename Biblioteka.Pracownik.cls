Class Biblioteka.Pracownik Extends (%Persistent, %Populate, Biblioteka.Osoba)
{
Method kimJestes() As %String
{
	Return "Pracownik "_..Imie_" "_..Nazwisko
}
}
