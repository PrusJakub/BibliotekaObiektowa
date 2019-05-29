Class Biblioteka.Autor Extends Biblioteka.Osoba
{

Relationship Ksiazki As Biblioteka.Ksiazka [ Cardinality = many, Inverse = Autor ];

Relationship Biblioteka As Biblioteka.Biblioteka [ Cardinality = one, Inverse = Autorzy ];

}
