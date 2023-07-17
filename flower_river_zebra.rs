//Create the main function
fn main(){
    //Set up a message variable
    let message = "Mind matters!";
    
    //Loop through 2000 times
    for _i in 0..2000 {
        //Print the message 2000 times
        println!("{}", message);
    }

    //Create a variable to hold the string
    let mut data = String::new();

    //Read the file
    std::fs::File::open("Mind Matters.txt")
        .expect("File not found!")
        .read_to_string(&mut data)
        .expect("Error reading file!");

    //Print the contents
    println!("File contents:\n\n{}", data);

}