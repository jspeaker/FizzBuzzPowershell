. .\FizzBuzzPowerShell\ParserStrategies.ps1

class ParserFactory {
	[object] Instance([int] $input) {
		if ($input % 3 -eq 0 -and $input % 5 -eq 0) { return New-Object -TypeName FizzBuzzParser }
		if ($input % 3 -eq 0) { return New-Object -TypeName FizzParser }
		if ($input % 5 -eq 0) { return New-Object -TypeName BuzzParser }
		return New-Object -TypeName GenericParser -ArgumentList $input
	}
}
