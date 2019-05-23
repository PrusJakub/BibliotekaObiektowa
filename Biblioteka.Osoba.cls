Class Biblioteka.Osoba [ Abstract ]
{

Property IdOsoby As %Numeric [ Required ];

Index IdOsobyIndex On IdOsoby [ Unique ];

Property Imie As %String;

Property Nazwisko As %String [ Required ];

Relationship Biblioteka As Biblioteka.Biblioteka [ Cardinality = one, Inverse = Osoby ];

Index BibliotekaIndex On Biblioteka;

}
