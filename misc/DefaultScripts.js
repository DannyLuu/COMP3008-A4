function getDate()
{
	var today = new Date();
	var day   = today.getDate();
	var month = today.getMonth();
	var year  = today.getYear(); 
	
	document.write("<b>" + day + "/" + month + "/" + year + "</b>");
}

function getTime24()
{
	var time    = new Date();
	var hours   = time.getHours();
	var minutes = time.getMinutes();
	var seconds = time.getSeconds();
	
	if (minutes < 10)
		minutes = "0" + minutes;
		
		document.write("<b>" + hours + ":" + minutes + ":" seconds + "</b>");
}

function getTime12()
{
	var time    = new Date();
	var hours   = time.getHours();
	var minutes = time.getMinutes();
	var seconds = time.getSeconds();
	
	if (minutes < 10)
		minutes = "0" + minutes;
		
	var meridiem = "AM";
	if (hours >= 12)
	{
		meridiem = "PM";
		hours = hours - 12;
	}
	
	if (hours == 0)
		hours = 12;
	
	//document.getElementById('date').value = "<b>" + hours + ":" + minutes + ":" + secondd + " " + meridiem + "</b>"; 
}