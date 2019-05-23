Class Biblioteka.Autor Extends Biblioteka.Osoba
{

Relationship Ksiazki As Biblioteka.Ksiazka [ Cardinality = many, Inverse = Autor ];

}
