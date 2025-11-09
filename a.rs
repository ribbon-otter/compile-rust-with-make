extern crate util;

pub fn run() -> String {
	format!("(module a using util's fullstop: {})", util::FULLSTOP)
}
