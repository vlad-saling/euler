fn main() {
    let mut large_number:i64 = 600851475143;
    let mut number_store = large_number;
    let mut i = 2;

    while i <= large_number {
        if large_number % i == 0 {
            println!("large number si dividible by: {}", i);
            number_store = large_number;
            large_number = large_number / i;
            i = 2;
        } else {
            i = i + 1;
        }
    }

    println!("Testing: {}", number_store)
}
