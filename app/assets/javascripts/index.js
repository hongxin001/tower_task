window.onload=function () {
	var load = document.getElementsByClassName('btn')[0];
	var dl = document.getElementsByClassName('items')[0];
	load.addEventListener('touchend',function(){
		var xmlhttp;
		if (window.XMLHttpRequest){
			xmlhttp=new XMLHttpRequest();
		}
		else{
			xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange=function(){
			if(XMLHttpReq.readyState == 4 && XMLHttpReq.status == 200){
				var text = XMLHttpReq.responseText;
				dl.innerHTML=ul.innerHTML+text;
			}
		}
		xmlhttp.open("get","url",false);
		xmlhttp.send()
	});
}
function init () {
	
}