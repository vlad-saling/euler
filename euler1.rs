fn main() {
    let mut sum = 0;

    for x in 1..1000 {

        if x % 5 == 0 || x % 3 == 0 {
            sum += x
        }
    }

    println!("this is {}", sum)
}
