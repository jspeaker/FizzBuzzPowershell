. $PSScriptRoot\FizzBuzzPowerShell\FizzBuzz.ps1

$fizzBuzz = [FizzBuzz]::new()

for ($i = 1; $i -lt 101; $i++) {
	$fizzBuzz.ParseInt($i)
}
