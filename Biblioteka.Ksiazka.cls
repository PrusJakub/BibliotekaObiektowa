Class Biblioteka.Ksiazka Extends (%Persistent, %Populate)
{

Relationship Wypozyczenia As Biblioteka.Wypozyczenie [ Cardinality = many, Inverse = Ksiazka ];

Relationship Autor As Biblioteka.Autor [ Cardinality = one, Inverse = Ksiazki ];

Relationship Biblioteka As Biblioteka.Biblioteka [ Cardinality = one, Inverse = Ksiazki ];

Property ISBN As %Integer [ Required ];

Property Tytul As %String [ Required ];

Property Opis As %String;

Property RokWydania As %Integer(MAXVAL = 2019, MINVAL = 1900) [ Required ];

}
