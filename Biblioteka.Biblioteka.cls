Class Biblioteka.Biblioteka Extends (%Persistent, %Populate)
{

Relationship Ksiazki As Biblioteka.Ksiazka [ Cardinality = many, Inverse = Biblioteka ];

Relationship Pracownicy As Biblioteka.Pracownik [ Cardinality = many, Inverse = Biblioteka ];

Relationship Autorzy As Biblioteka.Autor [ Cardinality = many, Inverse = Biblioteka ];

Relationship Czytelnicy As Biblioteka.Czytelnik [ Cardinality = many, Inverse = Biblioteka ];

Property Miejscowosc As %String [ Required ];

Property Ulica As %String [ Required ];

Property Numer As %SmallInt(MAXVAL = 9999, MINVAL = 1) [ Required ];

Property Nazwa As %String;

}
