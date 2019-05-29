Class Biblioteka.Ksiazka Extends (%Persistent, %Populate)
{

Relationship Wypozyczenia As Biblioteka.Wypozyczenie [ Cardinality = many, Inverse = Ksiazka ];

Relationship Autor As Biblioteka.Autor [ Cardinality = one, Inverse = Ksiazki ];

Relationship Biblioteka As Biblioteka.Biblioteka [ Cardinality = one, Inverse = Ksiazki ];

Property ISBN As %Numeric(MAXVAL = 9999999999999, MINVAL = 1000000000000) [ Required ];

Property Tytul As %String [ Required ];

Property Opis As %String;

Property RokWydania As %Date [ Required ];

}
