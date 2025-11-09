extern crate a;
extern crate b;

fn main() {
	println!("loaded from mod A: {}", a::run());
	println!("loaded from mod B: {}", b::run());
}
