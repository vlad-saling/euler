fn main() {
    let mut sum = 0;
    let mut num1 = 1;
    let mut num2 = 2;
    let mut fib = 0;

    while fib < 4000000 {

        fib = num1 + num2;

        if fib % 2 == 0 {
            sum += fib
        }

        num1 = num2;
        num2 = fib;

    }

    println!("Sum is {}", sum)
}

