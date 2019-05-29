Class Biblioteka.Wypozyczenie Extends (%Persistent, %Populate, %XML.Adaptor, %ZEN.DataModel.Adaptor)
{

Relationship Czytelnik As Biblioteka.Czytelnik [ Cardinality = one, Inverse = Wypozyczenia ];

Relationship Ksiazka As Biblioteka.Ksiazka [ Cardinality = one, Inverse = Wypozyczenia ];

Property CzyOddanaKsiazka As %Boolean [ Required ];

Method oddajKsiazke() As %String
{
	IF ..CzyOddanaKsiazka = 0 {
		Set ..CzyOddanaKsiazka = 1
		Do %Save()
		Return "Zwrocono ksiazke"
	}
	ELSE {
		Return "Blad podczas wykonywania operacji"
	}
}

}
