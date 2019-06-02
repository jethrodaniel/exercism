// Outputs an onomatopoeia, or the given number, depending on its factors.
//
// - If the number has 3 as a factor, outputs 'Pling'.
// - If the number has 5 as a factor, outputs 'Plang'.
// - If the number has 7 as a factor, outputs 'Plong'.
// - If the number does not have 3, 5, or 7 as a factor,
//   just returns the number's digits.
//
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
