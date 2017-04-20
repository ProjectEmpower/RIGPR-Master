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
        if(id != instance_id[descTextBoxRef]) //if instance does not the 3rd box (ref+2)
        {
            if (string_length(txt_input) > textShortLength) //if string length is greater than 30
            {
               txt_input = string_copy(txt_input, 1, string_length(txt_input)-(string_length(txt_input)-textShortLength) ); //clip the text length to 30
            }
        }
        else if(id ==instance_id[descTextBoxRef]) //if instnace is the desc box
        {
            if (string_length(txt_input) > textLongLength) //same but for 500 length
            {
               txt_input = string_copy(txt_input, 1, string_length(txt_input)-(string_length(txt_input)-textLongLength) ); 
            }
        }
    }
    if keyboard_check(ord('X'))// and if c is pushed
    {
        clipboard_set_text(txt_input); //copy the text box
        txt_input = "";
    }
    if keyboard_check(ord('C'))// and if c is pushed
    {
        clipboard_set_text(txt_input); //copy the text box
    }
}
else if (k==vk_enter) 
{
    
}
if(k == 95)
    k = vk_subtract;
else if k>=65 and k<=90 or k>=97 and k<=122 or k>=48 and k<=57 or k==192 or k==32 or k==vk_subtract
{
    // 65-90  : upcase letters
    // 122-192 : lowercase letters
    // 48-57  : numbers
    // 32   : space
    
   if(room == RoomLocationAdd)
   { 
        //max length code for typing
        if(id != instance_id[descTextBoxRef] and id != instance_id[thirdTextBoxRef] and id != instance_id[forthTextBoxRef]and id != instance_id[sixthTextBoxRef])
        {
            if(string_length(txt_input) < textShortLength)
            {
               txt_input = txt_input + c;// Add c to txt_input
            }
        }
        else if(id == instance_id[sixthTextBoxRef])
        {
            txt_input = txt_input + c;
        }
        else if(id == instance_id[descTextBoxRef])
        {
            if(string_length(txt_input) < textLongLength)
            {
                txt_input = txt_input + c;// Add c to txt_input
            }
        }
    }
    else
    { 
        if(is_real(txt_input))
        {
            txt_input = txt_input + c;
        }
        else
        {   
            if(string_length(txt_input) < textShortLength)
            {
                txt_input = txt_input + c;// Add c to txt_input
            }
        }
    }
    
}
//updates relevent variable with the text stored in txt_input
if(room == RoomLocationAdd)
{
    if(instance_id[realNameTextBoxRef] == id)
    {
        global.realLocationName = txt_input;
    }
    if(instance_id[descTextBoxRef] == id)
    {
        global.description = txt_input;
    }
    if(instance_id[thirdTextBoxRef] == id)
    {
    
        global.locationMyth = txt_input;
    }
    if(instance_id[forthTextBoxRef] == id)
    {
        global.locationEventNumber = txt_input;
    }
    if(instance_id[fifthTextBoxRef] == id)
    {
        global.eventType = txt_input;
    }
    if(instance_id[sixthTextBoxRef] == id)
    {
        global.eventWeek = real(txt_input);

    }
    if(instance_id[seventhTextBoxRef] == id)
    {
        global.eventMyth = txt_input;
    }
}
else if(room == RoomCardEdit)
{
    if(global.RoomState == 0)
    {
        if(instance_id[global.box0-1] == id)
        {
            global.realEventName = txt_input;
        }
        if(instance_id[global.box1-1] == id)
        {           
            global.eventText = txt_input;
        }
        if(instance_id[global.box2-1] == id)
        {
            global.reqEventInt = real(txt_input);
        }
        if(instance_id[global.box3-1] == id)
        {
        
            global.reqEventChar = real(txt_input);
        }
        if(instance_id[global.box4-1] == id)
        {
            global.reqEventWell = real(txt_input);
        }
    }
    if(global.RoomState == 1)
    {
        if(instance_id[realNameTextBoxRef-1] == id)
        {
            global.realCardName = txt_input;
        }
        if(instance_id[descTextBoxRef-1] == id)
        {
            global.int = real(txt_input);
        }
        if(instance_id[thirdTextBoxRef-1] == id)
        {
        
            global.char = real(txt_input);
        }
        if(instance_id[forthTextBoxRef-1] == id)
        {
            global.well = real(txt_input);
        }
        if(instance_id[fifthTextBoxRef-1] == id)
        {
            global.cardText = txt_input;
        
        }
    }
    if(global.RoomState == 2)
    {
        if(instance_id[realNameTextBoxRef-1] == id)
        {
            global.realConsName = txt_input;
        }
        if(instance_id[descTextBoxRef-1] == id)
        {
            global.consCardText = txt_input;
        }
        if(instance_id[thirdTextBoxRef-1] == id)
        {
            global.consInt = real(txt_input);
        }
        if(instance_id[forthTextBoxRef-1] == id)
        {
        
            global.consChar = real(txt_input);
        }
        if(instance_id[fifthTextBoxRef-1] == id)
        {
            global.consWell = real(txt_input);
        }
    }
    if(global.RoomState == 3)
    {
        if(instance_id[realNameTextBoxRef-1] == id)
        {
            global.realInfoName = txt_input;
        }
        if(instance_id[descTextBoxRef-1] == id)
        {
            global.infoCardText = txt_input;
        }
        if(instance_id[thirdTextBoxRef-1] == id)
        {
            global.infoLink = txt_input;
        }
    }
    if(global.RoomState == 4)
    {
        if(instance_id[realNameTextBoxRef-1] == id)
        {
            global.charCardName = txt_input;
        }
        if(instance_id[descTextBoxRef-1] == id)
        {
            global.charCardText = txt_input;
        }
    }
}
