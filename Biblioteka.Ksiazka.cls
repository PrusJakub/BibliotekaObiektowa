Class Biblioteka.Ksiazka Extends (%Persistent, %Populate)
{

Property IdKsiazki As %Numeric [ Required ];

Index IdKsiazkiIndex On IdKsiazki [ Unique ];

Property ISBN As %Numeric(MAXVAL = 9999999999999, MINVAL = 1000000000000) [ Required ];

Property Tytul As %String [ Required ];

Property Opis As %String;

Property RokWydania As %Date [ Required ];

Relationship Autor As Biblioteka.Autor [ Cardinality = one, Inverse = Ksiazki ];

Index AutorIndex On Autor;

Storage Default
{
<Data name="KsiazkaDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>ISBN</Value>
</Value>
<Value name="3">
<Value>Tytul</Value>
</Value>
<Value name="4">
<Value>Opis</Value>
</Value>
<Value name="5">
<Value>RokWydania</Value>
</Value>
<Value name="6">
<Value>IdKsiazki</Value>
</Value>
<Value name="7">
<Value>Autor</Value>
</Value>
</Data>
<DataLocation>^Biblioteka.KsiazkaD</DataLocation>
<DefaultData>KsiazkaDefaultData</DefaultData>
<IdLocation>^Biblioteka.KsiazkaD</IdLocation>
<IndexLocation>^Biblioteka.KsiazkaI</IndexLocation>
<StreamLocation>^Biblioteka.KsiazkaS</StreamLocation>
<Type>%Library.CacheStorage</Type>
}

}
