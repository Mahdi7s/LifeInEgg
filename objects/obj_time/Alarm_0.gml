if(global.second<59)
{
    global.second+=1;
    alarm[0]=30;
}
else if(global.second==59)
{
    global.second=0;
    if(global.minute<59)
    {
        global.minute+=1;
        alarm[0]=30;
    }
    else{global.minute=0; alarm[0]=-1;}
}
else{global.second=0; global.minute=0; alarm[0]=-1;}


