Class Biblioteka.Wypozyczenie Extends (%Persistent, %Populate, %XML.Adaptor, %ZEN.DataModel.Adaptor)
{

Property DataWypozyczenia As %Date [ Required ];

Relationship Czytelnik As Biblioteka.Czytelnik [ Cardinality = one, Inverse = Login ];

Relationship Ksiazka As Biblioteka.Ksiazka [ Cardinality = one, Inverse = IdKsiazki ];

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
