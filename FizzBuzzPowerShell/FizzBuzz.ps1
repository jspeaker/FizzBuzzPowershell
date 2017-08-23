. .\FizzBuzzPowerShell\ParserFactory.ps1

class FizzBuzz {
	[object] $_parserFactory = (New-Object -TypeName ParserFactory)

	[String] ParseInt([Int] $input) {
		return $this._parserFactory.Instance($input).Translation();
	}
}
