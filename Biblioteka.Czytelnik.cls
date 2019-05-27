Class Biblioteka.Czytelnik Extends Biblioteka.Osoba
{

Relationship Login As Biblioteka.Wypozyczenie [ Cardinality = many, Inverse = Czytelnik, Required ];

}
