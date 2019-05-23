Class Biblioteka.Biblioteka Extends (%Persistent, %Populate)
{

Property IdBiblioteki As %Numeric [ Required ];

Index IdBibliotekiIndex On IdBiblioteki [ Unique ];

Property Miejscowosc As %String [ Required ];

Property Ulica As %String [ Required ];

Property Numer As %SmallInt [ Required ];

Property Nazwa As %String;

Property Pracownicy As list Of Pracownik;

Property Czytelnicy As list Of Czytelnik;

Storage Default
{
<Data name="BibliotekaDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>IdBiblioteki</Value>
</Value>
<Value name="3">
<Value>Miejscowosc</Value>
</Value>
<Value name="4">
<Value>Ulica</Value>
</Value>
<Value name="5">
<Value>Numer</Value>
</Value>
<Value name="6">
<Value>Nazwa</Value>
</Value>
<Value name="7">
<Value>Pracownicy</Value>
</Value>
<Value name="8">
<Value>Czytelnicy</Value>
</Value>
</Data>
<DataLocation>^Biblioteka.BibliotekaD</DataLocation>
<DefaultData>BibliotekaDefaultData</DefaultData>
<IdLocation>^Biblioteka.BibliotekaD</IdLocation>
<IndexLocation>^Biblioteka.BibliotekaI</IndexLocation>
<StreamLocation>^Biblioteka.BibliotekaS</StreamLocation>
<Type>%Library.CacheStorage</Type>
}

Relationship Osoby As Biblioteka.Osoba [ Cardinality = many, Inverse = Biblioteka ];

}
