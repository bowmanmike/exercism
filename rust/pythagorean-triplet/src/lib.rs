pub fn find() -> Option<u32> {
    // Find triplet (a**2 + b**2 == c**2) where a + b + c == 1000
    // Should return 31875000
    let max: u32 = 1000;
    let a: u32;
    let b: u32;
    let c: u32;

    for i in 1..max {
        for j in 1..max {
            for k in 1..max {
                if j.pow(2) + k.pow(2) == i.pow(2) {
                    if i + j + k == 1000 {
                        a = i;
                        b = j;
                        c = k;
                    }
                }
            }
        }
    }
    let result: u32 = a * b * c;
    None;
}
