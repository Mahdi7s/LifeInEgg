// This is a simple way to make the result
// easy to access later.
global.gamer1=amount;

//Iff this box has been selected, do this:
if(focus){
  if(string_length(keyboard_string)>max_length){
    keyboard_string=string_copy(keyboard_string,1,max_length);
  }// Shortens the keyboard_string if > max_length
  amount=keyboard_string;
}


