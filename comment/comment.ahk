; 150% 크기


setClipboard()
{
	random,x,1,5
	if(x=1)
		return "안녕하세요!!!"
	else if(x=2)
		return "오늘 하루도 화이팅 입니다 ㅎㅎ"
	else if(x=3)
		return "잘 부탁드립니다!!"
	else if(x=4)
		return "좋은 하루 되세요 ㅎㅎ"
	else if(x=5)
		return "어서오세요~"
	return
}

ctrlV()
{
	send,{ctrl down}
	sleep,100
	send,v	
	sleep,100
	send,{ctrl up}
	sleep,100
}

ClickImage(filename)
{
	imagesearch, x,y, 0, 0, A_ScreenWidth, A_ScreenHeight, *10 %filename%
	if (ErrorLevel = 0)
	{
		mousemove, %x%, %y%
		sleep,(100)
		click
		sleep,(100)
	}
}

DelayRandom()
{
	random,x,1000,5000
	sleep x
}

f2::
loop
{
loop 10
{
	imagesearch, x,y, 0, 0, A_ScreenWidth, A_ScreenHeight, *10 regist.bmp
	if (ErrorLevel = 0)
	{
		break
	}
	if (errorlevel = 1)
	{
		send,{pgdn}
	}
	sleep,(650)
}

imagesearch, x,y, 0, 0, A_ScreenWidth, A_ScreenHeight, *10 regist.bmp
if (ErrorLevel = 0)
{
	xy:= y-40
	mousemove, %x%, %xy%
	sleep,(100)
	click

	clipboard := setClipboard()
	ctrlV()
}

ClickImage("regist.bmp")
mousemove,1,1

sleep,(10000)
ClickImage("ok.bmp")
ClickImage("ok2.bmp")

sleep,(5212)
DelayRandom()
ClickImage("next.bmp")

sleep,(20254)
}
return

f3::reload