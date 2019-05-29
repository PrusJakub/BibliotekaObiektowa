Class Biblioteka.Czytelnik Extends (%Persistent, %Populate, Biblioteka.Osoba)
{

Relationship Wypozyczenia As Biblioteka.Wypozyczenie [ Cardinality = many, Inverse = Czytelnik ];

Relationship Biblioteka As Biblioteka.Biblioteka [ Cardinality = one, Inverse = Czytelnicy ];

Method wypozyczKsiazke(ByRef ksiazka As Ksiazka) As %String
{
	Set wypozyczenie = ##class(Biblioteka.Wypozyczenie).%New()
	Set wypozyczenie.Ksiazka = ksiazka
	Set wypozyczenie.Czytelnik = $this
	Set wypozyczenie.CzyOddanaKsiazka = 0
	Do wypozyczenie.%Save()
	
	Return "Ksiazka wypozyczona"
}

Method kimJestes() As %String
{
	Return "Czytelnik "_..Imie_" "_..Nazwisko
}

}
