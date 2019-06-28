// The total number of grains on tile s is
//
//   Tile (s):   1   2   3   4   5   6   ...   s
//   Grains  :   1   2   4   8   16  32  ...   2^(s - 1)
//
pub fn square(s: u32) -> u64 {
    if s < 1 || s > 64 {
        panic!("Square must be between 1 and 64")
    }

    2u64.pow(s - 1)
}


// The total number of grains on the board when k tiles are filled is
//
//   Tiles filled (k): 1   2   3   4   5   6   ...   n
//
//   Number of Grains: 1   3   7   15  31  63  ...
//
//                         64
//                   = 1 +  ∑  2^(n - 1)
//                         i=1
//
pub fn total() -> u64 {
    (1..64 + 1).fold(0, |sum, n| sum + square(n))
}
