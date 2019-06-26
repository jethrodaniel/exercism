use unicode_segmentation::UnicodeSegmentation;

pub fn brackets_are_balanced(string: &str) -> bool {
    let mut stack: Vec<&str> = Vec::new();

    for c in string.graphemes(true) {
        match c {
            "{" | "[" | "(" => {
                stack.push(c);
                continue;
            }

            "}" | "]" | ")" => {
                let popped = match stack.pop() {
                    Some(value) => value,
                    None => return false,
                };

                match popped {
                    "[" if c == "]" => (),
                    "{" if c == "}" => (),
                    "(" if c == ")" => (),
                    _ => return false,
                }
            }

            _ => (),
        }
    }

    stack.len() == 0
}
