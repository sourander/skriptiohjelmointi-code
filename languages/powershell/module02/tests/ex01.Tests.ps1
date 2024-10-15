BeforeAll {

}

Describe "Exercise 01" {

    It "should output the correct greeting" {
        $output = . "/app/exercises/ex01.ps1"
        $output | Should -Be "Hello World!"
    }
}
