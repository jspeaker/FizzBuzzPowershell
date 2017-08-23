class Parser {
	Parser() {
		$type = $this.GetType()
		if ($type -eq [Parser]) {
			throw("Abstract class $type must be inherited")
		}
	}

	[string] Translation() {
		throw("Abstract method must be overridden")
	}
}

class GenericParser : Parser {
	[int] $_input

	GenericParser([int] $input) {
		$this._input = $input
	}

	[string] Translation() {
		return $this._input
	}
}

class FizzParser : Parser {
	[string] Translation() {
		return "FIZZ"
	}
}

class BuzzParser : Parser {
	[string] Translation() {
		return "BUZZ"
	}
}

class FizzBuzzParser : Parser {
	[string] Translation() {
		return "FIZZBUZZ"
	}
}