class FizzBuzz {
	[String] Parse([Int] $input) {
		$result = ""

		if ($input % 3 -eq 0) { $result = "FIZZ" }

		if ($input % 5 -eq 0) { $result = $result + "BUZZ" }

		if ($result) { return $result }

		return $input
	}
}