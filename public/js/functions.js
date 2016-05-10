/**
 * @author Bhaskar Rajoriya
 */


 Site = { };
 Site.dashboard = { 

 	init: function()
 	{

 		$('.showComments').on('click', function(e) { 

 			e.preventDefault();

 			if ($(this).text() == "0")
 				return;
 			
 			if (!$(this).parent().hasClass('active'))
	 		{
	 			$(this).parent().addClass('active');
	 			$('#comment_drop_' + $(this).attr('value')).slideDown();
	 		}
	 		else
	 		{
				$(this).parent().removeClass('active');
	 			$('#comment_drop_' + $(this).attr('value')).slideUp();	
	 		}

 		});

 		$('.advice-comments-wrap .close a').on('click', function(e) { 

 			e.preventDefault();

 			$('.showComments[value=' + $(this).attr('cid') + ']').trigger('click');

 		});

 	},

 };

 Site.help = { 

 	init: function()
 	{
 		$('.faq-items .toggle').on('click', function() { 

 			if ($(this).hasClass('active'))
 			{
				$(this).removeClass('active');
 				$(this).parent().find('p').slideUp();
 			}
 			else
 			{
 				$(this).addClass('active');
 				$(this).parent().find('p').slideDown();
 			}

 		});

 		$('.help-feedbackwrap .button').on('click', function() { 



 		});
 	}


 };


$(document).ready(function() { 
 Site.help.init();
 Site.dashboard.init();
});



//function to check account is verified or not
$(function()
{
	$("#verify").show();
	$("#verified").hide();
	//$('#telephone').mask('(000) 000-0000');
	$('#telephone').inputmask({ mask: '(999) 999-9999', showMaskOnHover: false });
	// Function to Select and Deselect targets for question
	$(".targetsForQuestion").click(function(event)
	{
		if($(this).hasClass("activeTarget"))
		{
			$(this).css
			({
				"background" : "white"
			});
			$(this).addClass( "inactiveTarget" );
			$(this).removeClass( "activeTarget" );
		}
		else
		{
			$(this).css
			({
				"background" : "#3EB65D"
			});
			$(this).addClass( "activeTarget" );
			$(this).removeClass( "inactiveTarget" );
		}
		
		var targets = []; // take an array to store values
		$(".activeTarget").each(function()
		{
		   	targets.push($(this).val());  //push values in array
		});
		if(targets.length > 2)
		{
			$(this).css
			({
				"background" : "white"
			});
			$(this).addClass( "inactiveTarget" );
			$(this).removeClass( "activeTarget" );
			
			targets = []; // take an array to store values
			$(".activeTarget").each(function()
			{
			   	targets.push($(this).val());  //push values in array
			});
			$(".inactiveTarget").each(function()
			{
			   	$(this).attr("disabled","disabled");
			});
			alert("You can only select two targets. Please deselect Selected targets ");
		}
		else
		{
			$(".inactiveTarget").each(function()
			{
			   	$(this).removeAttr('disabled');
			});
		}
		$("#targets").val(targets);
	});
	
	$(".targetsForEditQuestion").click(function(event)
	{
		if($(this).hasClass("activeEditTarget"))
		{
			$(this).css
			({
				"background" : "white"
			});
			$(this).addClass( "inactiveEditTarget" );
			$(this).removeClass( "activeEditTarget" );
		}
		else
		{
			$(this).css
			({
				"background" : "#3EB65D"
			});
			$(this).addClass( "activeEditTarget" );
			$(this).removeClass( "inactiveEditTarget" );
		}
		
		var targets = []; // take an array to store values
		$(".activeEditTarget").each(function()
		{
		   	targets.push($(this).val());  //push values in array
		});
		if(targets.length > 2)
		{
			$(this).css
			({
				"background" : "white"
			});
			$(this).addClass( "inactiveEditTarget" );
			$(this).removeClass( "activeEditTarget" );
			
			targets = []; // take an array to store values
			$(".activeEditTarget").each(function()
			{
			   	targets.push($(this).val());  //push values in array
			});
			$(".inactiveEditTarget").each(function()
			{
			   	$(this).attr("disabled","disabled");
			});
			alert("You can only select two targets. Please deselect Selected targets ");
		}
		else
		{
			$(".inactiveEditTarget").each(function()
			{
			   	$(this).removeAttr('disabled');
			});
		}
		$("#targetsEdit").val(targets);
	});
	$( '.hastt').tooltip({
      track: true,
      tooltipClass: "advizzy-tt"
    }).off('hover');

    // $('select').not('.noselect2').select2( { width: 'element' });

    $('.datepicker').datepicker({
		changeMonth: true,
		changeYear: true
	});
});
function checkAccountVerification()
{
	$.ajax({
	        type: "POST",
	        cache: false,
	        url : "/checkAccountVerification",
	        dataType: "html",
	        async: false,
	        success: function(msg) 
	        {
	        	//if(msg) is not working here so if(msg!=0)
	            if(msg != 0)
	            {
	            	$("#verify").hide();
	            	$("#verified").show();
	            }
	            else
	            {
	            	$("#plzvrfy").css
		            ({
						"color": "red"
					});
	            }
	        }
	   	});
}

function verified()
{
	checkAccountVerification();
	window.location.pathname = "/profile";
}

//function for check valid password in account form
function checkAccountPassword()
{
	var retVal = false;
	var password = $("#password").val();
	if ((password) && (!isPassword(password)))
	{
		$("#password").css(
		{
			"border-color": "red" 
     	});
	}
	else
	{
		$("#password").css(
		{
			"border-color": "#cccccc" 
     	});
     	retVal = true;
     	checkAccountConfirmPassword();
	}
	return retVal;
}

// function to check confirm password for account form
function checkAccountConfirmPassword()
{
	var retVal = false;
	var password = $("#password").val();
	var confirmPassword = $("#confirmpassword").val();
	if ((confirmPassword != password))
	{
		$("#confirmpassword").css(
		{
			"border-color": "red" 
     	});
	}
	else
	{
		$("#confirmpassword").css(
		{
			"border-color": "#cccccc" 
     	});
     	retVal = true;
	}
	return retVal;
}

//function for validate account form
function validAccountForm()
{
	var password = checkAccountPassword();
	var confirmPassword = checkAccountConfirmPassword();
	var isPasswordUpdate = $("#password").val();
	var isConfirmPasswordUpdate = $("#confirmpassword").val();
	
	if ((!isPasswordUpdate && !isConfirmPasswordUpdate) || (password && confirmPassword)) 
	{
		return true;
	}
	
	$("#password").focus();
	return false;
}

//function to count textarea characters
function wordCount( val )
{
    return {
        charactersNoSpaces : val.replace(/\s+/g, '').length,
        characters         : val.length,
        words              : val.match(/\S+/g).length,
        lines              : val.split(/\r*\n/).length
    }
}


$('#on_your_mind_textarea').on('input', function()
{
	
	if(this.value)
	{
		var c = wordCount( this.value );
		$('#remainingCharacters').text(250 - (c.characters + c.lines) + 1);	
	}
	else
	{
		$('#remainingCharacters').text(250);
	}
	
	// console.log(c);
  
	// "<br>Characters (no spaces): "+ c.charactersNoSpaces +
	// "<br>Characters (and spaces): "+ c.characters +
	// "<br>Words: "+ c.words +
	// "<br>Lines: "+ c.lines
});

//to update value of "Inquiries per day" progress bar
$("#inquiriesPerDay").slider(
{
	slide: function(event, ui) 
    {
  		$('#max_requests').val($(this).attr('data-slider'));
  	},
  	change: function(event, ui) 
    {
  		$('#max_requests').val($(this).attr('data-slider'));
  	}
});
$(".ui-slider-handle").remove();

//function to show popup for edit Question
$(".editQuestion").click(function()
{
	// getting question id
	var questionId = this.id;
	$("textarea#on_your_mind_edit_textarea").attr("disabled", false);
	$("#editInquirySubmit").attr("disabled", false);
	// Set to all values as initial state
	$("textarea#on_your_mind_edit_textarea").val("");
	$("#editQuestionId").val("");
	$(".targetsForEditQuestion").each(function()
	{
	   	$(this).css
		({
			"background" : "white"
		});
		$(this).addClass( "inactiveEditTarget" );
		$(this).removeClass( "activeEditTarget" );
	});
	$("#targetsEdit").val("");
	
	// if id is present
	if(questionId)
	{
		// getting the question data
		$.ajax({
	        type: "POST",
	        cache: false,
	        url : "/getQuestionDetailsById",
	        dataType: "html",
	        async: false,
	        data: 
	        { 
	        	questionId : questionId
	        },
	        success: function(questionData) 
	        {
	        	// Question data
	            questionData = $.parseJSON(questionData);
	            if(questionData.msg)
	            {
	            	$("textarea#on_your_mind_edit_textarea").val(questionData.msg);
	            	$("textarea#on_your_mind_edit_textarea").attr("disabled", true);
	            	$("#editInquirySubmit").attr("disabled", true);
	            }
	            else
	            {
	            	$("textarea#on_your_mind_edit_textarea").val(questionData.question);
		            $("#editQuestionId").val(questionData.hashId);
		            var targets = [];
		            for (var i = 0; i < questionData['targets'].length; i++) 
		            {
		            	var metaValue = questionData['targets'][i].metaValue;
		            	targets.push(metaValue);  
		            	$("#targetEdit"+metaValue).css
						({
							"background" : "#3EB65D"
						});
						$("#targetEdit"+metaValue).addClass( "activeEditTarget" );
						$("#targetEdit"+metaValue).removeClass( "inactiveEditTarget" );
					}
					$("#targetsEdit").val(targets);
	            }
		            
	        },
	        error: function(e)
	        {
	        	// console.log(e);
	        }
	   	});
	   	javascript: location.hash='#top'; 
		location.hash='';
	}
});

//function to show popup for Post a comment from dashboard
$(".postComment").click(function()
{
	// getting question id
	var questionId = this.id;
	
	// Set to all values as initial state
	$("textarea.postCommentTextArea").val("");
	$("textarea.postCommentTextArea").attr("disabled", false);
	$("#postCommentSubmit").attr("disabled", false);
	$("#questionIdForComment").val("");
	// if id is present
	if(questionId)
	{
		// getting the question data
		$.ajax({
	        type: "POST",
	        cache: false,
	        url : "/canIComment",
	        dataType: "html",
	        async: false,
	        data: 
	        { 
	        	questionId : questionId
	        },
	        success: function(canICommentOn) 
	        {
	        	canICommentOn = canICommentOn.replace(/"/g, '');
	        	if(canICommentOn == 'You are unable to give advice here.')
	        	{
	        		$("textarea.postCommentTextArea").val(canICommentOn);
	        		$("textarea.postCommentTextArea").attr("disabled", true);
	        		$("#postCommentSubmit").attr("disabled", true); 
	        	}
	        	else
	        	{
	        		$("#questionIdForComment").val(canICommentOn);
	        	}
	        }
	   	});
	   	javascript: location.hash='#top'; 
		location.hash='';
	}
});

var uploadedImages = 1;

$('#postCommentSubmit').on('click', function() { 

$('#post_comment_modal form').submit();

});

//to upload more certificates by professional account
$('#addMoreCertificates').click(function (e) 
{
	$("#uploadFileOutput").html("");
	if (uploadedImages == 1) 
	{
		$( "#uploadedDocs" ).append( "<input type='file' onchange='uploadFile();' class='upload_file' id='upload_files"+uploadedImages+"' name='upload_files"+uploadedImages+"' style='display: none;'/>" );
	}
	document.getElementById('upload_files'+uploadedImages).click();
});

function uploadFile()
{
	//check for the file extention
	var ext = $('#upload_files'+uploadedImages).val().split('.').pop().toLowerCase();
	if($.inArray(ext, ['pdf','png','jpg','jpeg']) == -1) 
	{
	    $("#uploadFileOutput").html("<b style='color:red;'>Invalid extension!</b>");
	    return 0;
	}
	value = $('#upload_files'+uploadedImages).val();
	if(value)
	{
		var fd = new FormData();
	    fd.append( "image", $("#upload_files"+uploadedImages)[0].files[0]);
	    fd.append( "path", "/profCertificates/");
	    name = value.replace(/C:\\fakepath\\/i, '');
	    $.ajax(
	    {
	        url: '/saveFileInDb',
	        type: 'POST',
	        cache: false,
	        data: fd,
	        processData: false,
	        contentType: false,
	        beforeSend: function () 
	        {
	            $("#uploadFileOutput").html("<img src='/img/uploading.gif' class='drop_menu_avatar'/>Uploading, please wait....");
	        },
	        success: function (imgName) 
	        { 
	        	if(imgName)
	        	{
	        		imgName = "'"+imgName+"'";
	        		$( "#uploadedFiles" ).append('<div style="float: left;" onclick="window.open('+imgName+')" class="large-3 medium-3 small-6 columns"><a><div class="panel bg_off_white"><div class="row" title="'+name+'">'+name.substring(0, 20)+'</div></div></a></div>');
	        	}
	        	uploadedImages++;
				$( "#uploadedDocs" ).append( "<input type='file' onchange='uploadFile();' class='upload_file' id='upload_files"+uploadedImages+"' name='upload_files"+uploadedImages+"' style='display: none;'/>" );
	        },
	        complete: function () 
	        {
	            $("#uploadFileOutput").html("");
	        },
	        error: function (e) 
	        {
	        	$("#uploadFileOutput").html("<b style='color:red;'>Error in upload</b>");
	        }
	    });
	}
}


//to follow a question
$( document ).ready(function() 
{
	$('.questionFollow').click(function (e) 
	{
		var questionId = this.id;
		var idIsCorrect = $("#whatsTheIdQ").val();
		if(questionId == idIsCorrect)
		{
			$.ajax(
			{
		        type: "POST",
		        cache: false,
		        url : "/addUserAsFollower",
		        dataType: "html",
		        async: false,
		        data: 
		        { 
		        	followTo : 'question',
		        	followId : questionId
		        },
		        success: function(followData) 
		        {
		        	followData = $.parseJSON(followData);
		        	if(followData.isUserFollower)
		        	{
		        		$('.questionFollow').removeClass('followThis');
		        		$('.questionFollow').addClass('unFollowThis');
		        	}
		        	else
		        	{
		        		$('.questionFollow').removeClass('unFollowThis');
		        		$('.questionFollow').addClass('followThis');
		        	}
		        	$('#followersCount').html(followData.count);
		        },
		        error: function (e) 
		        {
		        	console.log(e);
		        }
		   });
		}
	});
	updateNotificationDropDown(0);
});
var lastId = 0;
function updateNotificationDropDown(afterId)
{
	$.ajax(
	{
        type: "POST",
        cache: false,
        url : "/getNotifications",
        dataType: "html",
        async: false,
        data : 
        {
        	afterThisId : afterId
        },
        success: function(notifications) 
        {
        	notifications = $.parseJSON(notifications);
        	lengthNotifications = notifications.length;
        	if(lengthNotifications)
        	{
        		$("#number_of_notifications").text(parseInt($("#number_of_notifications").text()) + lengthNotifications);
        		lastId = notifications[0]['id'];
        		for( i = 0; i < lengthNotifications; i++)
	        	{
	        		notification = '<b>'+notifications[i]['user']['name']+'</b> has '+notifications[i]['type']+' : ';
	        		if(notifications[i]['type'] == 'updated question' || notifications[i]['type'] == 'followed question' || notifications[i]['type'] == 'unfollowed question')
	        		{
	        			notification += '<b>'+notifications[i]['question']['content'].substring(0, 15)+'...</b>';
	        		}
	        		if(notifications[i]['type'] == 'commented' || notifications[i]['type'] == 'followed comment' || notifications[i]['type'] == 'unfollowed comment')
	        		{
	        			notification += '<b>'+notifications[i]['comment']['content'].substring(0, 15)+'...</b>';
	        			notification += 'on question : <b>'+notifications[i]['question']['content'].substring(0, 15)+'...</b>';
	        		}
	        		htmlData = "<div style='cursor: pointer;' onclick='readNotification("+notifications[i]['id']+", "+notifications[i]['url']+");' class='dropdown_box row' id='notification"+notifications[i]['id']+"'><div style='top: -5px;' class='large-2 small-2 center columns space_bottom'><img src='"+notifications[i]['user']['image']+"' class='drop_menu_avatar drop_menu_avatara space_top'></div>";
					htmlData += '<div class="large-10 small-10 columns align_left"><p class="dark_text">'+notification+'</p></div>';
	        		$( "#notificationsDropContent" ).prepend(htmlData);
	        	}
        	}
        	notiCount = parseInt($("#number_of_notifications").text());
        	if(notiCount == 0)
        	{
        		$( "#notificationsDropContent" ).html('<div id="noNewNotification" style="cursor: pointer;" class="dropdown_box"><p>No new notifications</p></div>');
        		$("#notificationColor").removeClass("purple_text");
        		$("#number_of_notifications").removeClass("white_text");
        		$("#notificationColor").removeClass("fa-circle");
        		$("#notificationColor").addClass("fa-circle-thin");
        	}
        	else
        	{
        		$( "#noNewNotification" ).remove();
        		$("#notificationColor").removeClass("fa-circle-thin");
        		$("#notificationColor").addClass("purple_text");
        		$("#notificationColor").addClass("fa-circle");
        		$("#number_of_notifications").addClass("white_text");
        	}
        },
        error: function (e) 
        {
        	console.log(e);
        }
   });
   // console.log(lastId);
   //setTimeout(updateNotificationDropDown, 10000, lastId);
}

function readNotification(notificationId, redirectTo)
{
	$.ajax(
	{
        type: "POST",
        cache: false,
        url : "/readNotification",
        dataType: "html",
        async: false,
        data : 
        {
        	notificationId : notificationId
        },
        success: function(successMsg) 
        {
        	//do something after creating a notification as read
        	successMsg = $.parseJSON(successMsg);
        	console.log(successMsg);
        	if (successMsg === "all") 
        	{
        		$("#number_of_notifications").text(0);
        	}
        },
        error: function (e) 
        {
        	console.log(e);
        }
   });
   if (redirectTo) 
   {
		window.location = redirectTo;
   };
}


$('a.showComments').on('click', function() { 

	$(this).parent().parent().parent().parent().find('.advice-comments-wrap').slideToggle();

});

function checkEmail()
	{
		var retVal = false;
		var email = $("#email").val();
		// $(".fNameR").hide();
		if (isEmail(email)) 
		{
			$("#email").css(
			{
				"border-color": "#cccccc" 
	     	});
	     	$(".eMailNotValid").hide();
	     	retVal = true;
		}
		else
		{
			if(email)
			{
				$("#email").css(
				{
					"border-color": "red" 
		     	});
		     	$(".eMailNotValid").show();
			}
			else
			{
			
			}
		}

		return retVal;
	}

	$('.helpsubmit').on('click', function(e){
		e.preventDefault();
		var err = false;
		var eMail = checkEmail();

		if($('#email').val() == ''){
			$("#email").css(
				{
					"border-color": "red" 
		     	});
			err = true;
		}else{
			$("#email").css(
				{
					"border-color": "#ccc" 
		     	});
			err = false;
		}
		if($('#comments').val() == ''){
			$("#comments").css(
				{
					"border-color": "red" 
		     	});
			err = true;
		}else{
			$("#comments").css(
				{
					"border-color": "#ccc" 
		     	});
			err = false;
		}
		if(!err && eMail){
			$('#helpform').submit();
		}
	})
