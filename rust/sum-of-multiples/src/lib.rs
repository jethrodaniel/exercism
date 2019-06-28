pub fn sum_of_multiples(limit: u32, factors: &[u32]) -> u32 {
    (1..limit)
        .take_while(|&n| n <= limit)
        .filter(|n| {
            factors
                .iter()
                .filter(|&&f| f > 0 as u32)
                .any(|f| n % f == 0)
        })
        .sum()
}
