. $PSScriptRoot/../FizzBuzzPowerShell/FizzBuzz.ps1

Describe "When FizzBuzz parses an integer" {
	Context "Given input not divisible by 3 nor 5" {
		$result = [FizzBuzz]::new().Parse(7);
		It "Responds with string value of the integer" {
			$result | Should Be "7"
		}
	}

	Context "Given input divisible by 3 but not 5" {
		$result = [FizzBuzz]::new().Parse(33);
		It "Responds with 'FIZZ'" {
			$result | Should Be "FIZZ"
		}
	}

	Context "Given input divisible by 5 but not 3" {
		$result = [FizzBuzz]::new().Parse(25);
		It "Responds with 'BUZZ'" {
			$result | Should Be "BUZZ"
		}
	}

	Context "Given input divisible by 15" {
		$result = [FizzBuzz]::new().Parse(30);
		It "Responds with 'FIZZBUZZ'" {
			$result | Should Be "FIZZBUZZ"
		}
	}
}