/**
 * 
 */

$(document).ready(function() {
});
$(window).ready(function() {	
});
$.fn.extend({	
	loginProc:function(){
		var userId ="",userPass="";
			userId = $("#userId").val();
			userPass = $("#userPass").val();
		if(userId == ""){
			alert("아이디를 입력하세요");
			$("#userId").focus();
		}
		if(userPass == ""){
			alert("비밀번호를 입력하세요");
			$("#userPass").focus();
		}
		
		var param = new Object();
			param.userId   = userId;
			param.userPass = userPass;
		$.ajax({
			type : "POST",
			url : '/process/login',
			data : param,
			dataType : "json",
			success : function(data){console.log(JSON.stringify(data));
			alert(JSON.stringify(data));
				if(data.RETURN_CODE=="200"){
					location.href="list.html";
				}
				else{
					alert("아이디 패스워드를 확인하세요");
				}
			},
		    error:function(request,status,error){
		    	alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+error);
			}
		});
	}
});
