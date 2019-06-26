pub fn raindrops(n: u32) -> String {
    let mut raindrop = String::new();

    if n % 3 == 0 {
        raindrop += "Pling"
    }

    if n % 5 == 0 {
        raindrop += "Plang"
    }

    if n % 7 == 0 {
        raindrop += "Plong"
    }

    if n % 3 != 0 && n % 5 != 0 && n % 7 != 0 {
        raindrop = n.to_string();
    }

    raindrop
}
