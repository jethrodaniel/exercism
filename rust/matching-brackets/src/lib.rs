use unicode_segmentation::UnicodeSegmentation;

pub fn brackets_are_balanced(string: &str) -> bool {
    let graphemes = string.graphemes(true); //.collect::<String>();

    let mut stack: Vec<&str> = Vec::new();

    for c in graphemes {
        println!("c: {}", c);
        match c {
            // If a bracket is found, push it on the stack
            "{" | "[" | "(" => {
                println!("pushing {} to stack", c);
                stack.push(c);
                continue;
            }

            // If a closing bracket is found, pop from the stack - if the value
            // popped isn"t the same as the current character, the string
            // isn"t balenced
            "}" | "]" | ")" => {
                println!("popping from stack");
                let popped = match stack.pop() {
                    Some(value) => value,
                    None => {
                        println!("- returning false");
                        return false;
                    }
                };
                println!("  -> popped {}", popped);

                println!("popped: {}\nc: {}", popped, c);

                match popped {
                    "[" if c == "]" => (),
                    "{" if c == "}" => (),
                    "(" if c == ")" => (),
                    _ => {
                        println!("+ returning false");
                        return false;
                    }
                }
            }

            // Else, continue
            _ => (),
        }
    }

    println!("stack.len(): {}", stack.len());
    if stack.len() == 0 {
        true
    } else {
        false
    }
}
