// Simple Age Verification Circuit
// This circuit proves that someone is 18 or older without revealing their exact age
fn main(age : u64, min_age: pub u64) {

    //In noir we use assert to create constraints
    assert(age >= min_age); 
}







//  a more comprehensive example with additional features:
// Age Verification with Birth Year
// This version uses birth year and current year for more realistic scenarios
fn main(
    birth_year: u64,        
     current_year: pub u64,  
     min_age:  pub u64        
) {
    // Calculate the person's age
    let age = current_year - birth_year;
    
    assert(age >= min_age);
    
    assert(birth_year > 1900);
    assert(birth_year <= current_year);

    
}

