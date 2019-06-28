use itertools::Itertools;

pub fn verse(n: i32) -> String {
    match n {
      0 => "No more bottles of beer on the wall, no more bottles of beer.\nGo to the store and buy some more, 99 bottles of beer on the wall.\n".to_string(),
      1 => format!("{} bottle of beer on the wall, {} bottle of beer.\nTake it down and pass it around, no more bottles of beer on the wall.\n", 1, 1),
      2 => format!("{} bottles of beer on the wall, {} bottles of beer.\nTake one down and pass it around, {} bottle of beer on the wall.\n", 2, 2, 1),
      i @ 3..= 99 => format!("{} bottles of beer on the wall, {} bottles of beer.\nTake one down and pass it around, {} bottles of beer on the wall.\n", i, i, i - 1),
      _ => String::new(),
    }
}

pub fn sing(end: i32, start: i32) -> String {
    (start..end + 1).rev().map(|n| verse(n)).join("\n")
}
