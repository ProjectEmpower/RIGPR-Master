var k=keyboard_lastkey;
var c=keyboard_lastchar;

if (k==vk_backspace)
{
    // delete last character
    txt_input = string_copy(txt_input, 1, string_length(txt_input)-1 );
}
else if keyboard_check(vk_control) //if control is held
{
    if keyboard_check(ord('V')) //and V is pushed
    {
        txt_input = txt_input + clipboard_get_text(); //paste clipboard
        //max length code for pasting
        if(instance_id[textBoxInstanceRef+2] != id) //if instance does not the 3rd box (ref+2)
        {
            if (string_length(txt_input) > textShortLength) //if string length is greater than 30
            {
               txt_input = string_copy(txt_input, 1, string_length(txt_input)-(string_length(txt_input)-textShortLength) ); //clip the text length to 30
            }
        }
        else //if instnace is the 3rd box
        {
            if (string_length(txt_input) > textLongLength) //same but for 500 length
            {
               txt_input = string_copy(txt_input, 1, string_length(txt_input)-(string_length(txt_input)-textLongLength) ); 
            }
        }
    }
    if keyboard_check(ord('C'))// and if c is pushed
    {
        clipboard_set_text(txt_input); //copy the text box
    }
}
else if (k==vk_enter) and (txt_input!="") and (id != instance_id[textBoxInstanceRef])
{
    
}
else if k>=65 and k<=90 or k>=97 and k<=122 or k>=48 and k<=57 or k==192 or k==32
{
    // 65-90  : upcase letters
    // 122-192 : lowercase letters
    // 48-57  : numbers
    // 192   : I don't remember :P
    // 32   : space
    
    
    //max length code for typing
    if(instance_id[textBoxInstanceRef+2] != id)
    {
        if(string_length(txt_input) < textShortLength)
        {
           txt_input = txt_input + c;// Add c to txt_input
        }
    }
    else
    {
        if(string_length(txt_input) < textLongLength)
        {
            txt_input = txt_input + c;// Add c to txt_input
        }
    }
    
    
}
//updates relevent variable with the text stored in txt_input
if(instance_id[textBoxInstanceRef] == id)
{
    global.realLocationName = txt_input;
}
if(instance_id[textBoxInstanceRef+1] == id)
{

}
if(instance_id[textBoxInstanceRef+2] == id)
{

}
if(instance_id[textBoxInstanceRef+3] == id)
{

}
if(instance_id[textBoxInstanceRef+4] == id)
{

}
