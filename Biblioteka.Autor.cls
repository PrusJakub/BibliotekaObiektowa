Class Biblioteka.Autor Extends (%Persistent, %Populate, Biblioteka.Osoba)
{

Relationship Ksiazki As Biblioteka.Ksiazka [ Cardinality = many, Inverse = Autor ];

}
