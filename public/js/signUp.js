/**
 * @author Bhaskar Rajoriya
 */

//array signupSteps stores the step flow. for 1,3,5 means 1st step to 3rd step ant 3rd to 5th step by next click.
var signupSteps, validEmail = false, validPassword = false;

// Function to hide steps remaining 1st
$( document ).ready(function() 
{
	
	// sign up steps 1 for name, email form
	// 2 for company details form
	// 3 for choose country and date of birth
	// 4 for selection of values and goals
	// 5 for astrology form
	// 6 for agreement
	
	// 11 for professionals basic information
	// 12 
	// 13 
	// 14 
	$("#birthDayDiv").birthdayPicker();
	signupSteps = [ 1, 3, 4, 6, 11, 12, 13, 14, 15];
	for(i = 2; i <= 6; i++)
	{
		if($("#step" + i))
		{
			$("#step" + i).hide();
		}
	}
	for(i = 12; i <= 15; i++)
	{
		if($("#step" + i))
		{
			$("#step" + i).hide();
		}
	}
	//$('#telephone').mask('(000) 000-0000');
	$('#telephone').inputmask({ mask: '(999) 999-9999', showMaskOnHover: false });
	
	//for go to the next step
	$(".nextStep").click(function() 
	{
		var from = parseInt(this.id);
		var validate = validateStep(from);
		if(validate)
		{
			var a = signupSteps.indexOf(from);
			var to = signupSteps[a + 1];
			changeStep( from, to);
			javascript: location.hash='#top';
		}
	});
	
	//for go to the back step
	$(".backStep").click(function() 
	{
		var from = parseInt(this.id) - 0;
		var a = signupSteps.indexOf(from);
		var to = signupSteps[a - 1];
		changeStep( from, to);
	});
	
	//for go to the top of page
	$(".goToTop").click(function() 
	{
		javascript: location.hash='#top';
	});
	
	// profile picture function
	$(".avatar_button").click(function()
	{
		var src = $(this).css('background-image');
		src = src.replace('url(','').replace(')','').replace(/"/g,'');
		$(".avatar_button").css(
		{
			"border-color": "#ffffff" 
     	});
		$(this).css(
		{
			"border-color": "#3eb65d" 
     	});
		$(".user_profile_avatar").attr('src', src);
		$("#myAvatar").val(src);
	});
	
	//function to get gender value
	$(".gender").click(function()
	{
		var gender = $(this).val();
		$("#gender").val(gender);
		
		$(".gender").addClass('unselected');
		$(this).removeClass('unselected');
		
	});
	
	
	//function to get goals
	$('select#goal').click(function()
	{
		var vAndGoals = $('select#goal').val();
		// console.log(vAndGoals);
		
		//if no values and goals selected then value would be null
		if(!vAndGoals)
		{
			$("#goals").val("");
		}
		
		//value of goals and values would be update upto three selected values 
		if(vAndGoals.length <= 3)
		{
			$("#goals").val(vAndGoals);
			$('select#goal option').prop('disabled', false);
		}
		
		//on selected third value the remaining option would be disabled
		if(vAndGoals.length == 3)
		{
			$('select#goal option').prop('disabled', true);
			for( i = 0; i < vAndGoals.length; i ++)
			{
				$('select#goal option#'+vAndGoals[i]).prop('disabled', false);
			}
		}
		if(vAndGoals.length > 3)
		{
			alert("You can't select more than three option.");
			$('select#goal option').removeAttr("selected");
		}
	});
	
	//function to get hobbies
	$('select#hobbies').click(function()
	{
		var hobby = $('select#hobbies').val();
		// console.log(vAndGoals);
		
		//if no values and goals selected then value would be null
		if(!hobby)
		{
			$("#hobby").val("");
		}
		
		//value of goals and values would be update upto three selected values 
		if(hobby.length <= 3)
		{
			$("#hobby").val(hobby);
			$('select#hobbies option').prop('disabled', false);
		}
		
		//on selected third value the remaining option would be disabled
		if(hobby.length == 3)
		{
			$('select#hobbies option').prop('disabled', true);
			for( i = 0; i < hobby.length; i ++)
			{
				$('select#hobbies option#'+hobby[i]).prop('disabled', false);
			}
		}
		if(hobby.length > 3)
		{
			alert("You can't select more than three option.");
			$('select#hobbies option').removeAttr("selected");
		}
	});
	
	// astrology selection function
	$(".astro_pic").click(function()
	{
		var astrology = this.id;
		
		//set same color for all
		$( '.astro_pic' ).each(function () 
		{
			var img = $(this).css('background-image');
			img = img.replace( 'green', 'grey');
		    $(this).css( 'background-image', img);
		});
     	
     	//set green to selected astrology
     	var imgSrc = $("#" + astrology).css('background-image');
		imgSrc = imgSrc.replace( 'grey', 'green');
		$("#" + astrology).css( 'background-image', imgSrc);
		
		//getting astrology name by id
		astrology = astrology.replace('_pic','');
     	
		$("#astrology").val(astrology);
	});
	$(".alert").hide();

	$( '.hastt').tooltip({
      track: true,
      tooltipClass: "advizzy-tt"
    }).off('hover');

    $('select').not('.noselect2').select( { width: 'element' });

	$('.datepicker').datepicker({
		changeMonth: true,
		changeYear: true
	});
});


function changeStep( from, to)
{
	if(from && to)
	{
		if ($("#step" + to).length)
		{
        	$("#step" + from).hide();
			$("#step" + to).show();
    	}
	}
}

//to check field value is save in db (if no then return null else a message)
function checkInDB(field)
{
	// $("."+field+"R").hide();
	// $(".allSuggest").hide();
	var validValue = false;
	var value;
	if(field == 'uName' || field == 'eMail')
	{
		value = $("#" + field).val();
	}
	else
	{
		value = field;
		field = 'uName';
	}
	
	if(field == 'uName')
	{
		validValue = isUserName(value);
	}
	
	if(field == 'eMail')
	{
		validValue = isEmail(value);
	}
	
	if(validValue)
	{
		$("."+field+"NotValid").hide();
		validValue = false;
		$.ajax({
	        type: "POST",
	        cache: false,
	        url : "/checkInDB",
	        dataType: "html",
	        async: false,
	        data: 
	        { 
	        	value : value,
	        	field : field
	        },
	        success: function(isPresent) 
	        {
	            if(isPresent)
	            {
	            	$("#" + field).css(
					{
						"border-color": "red" 
			     	});
			     	$("."+field).show();
	            }
	            else
	            {
	            	$("#" + field).css(
					{
						"border-color": "#cccccc" 
			     	});
			     	$("."+field).hide();
			     	validValue = true;
	            }
	        }
	   });
	}
	else
	{
		if(value)
		{
			$("#" + field).css(
			{
				"border-color": "red" 
		 	});
			$("."+field+"NotValid").show();
		}
		else
		{
			// $("."+field+"R").show();
		}
		
		$("."+field).hide();
	}
	validEmail = validValue;
	checkConfirmEmail();
	return validValue;
}

// To suggest usernames
function createUserName(v)
{
	var suggetion = new Array( "eMail", "fName", "lName");
	var sym = new Array( ".", "", "_");
	var names = new Array;
	var name = '';
	var id = v.id + "s";
	for(i = 0; i < suggetion.length; i++)
	{
		if($("#" + suggetion[i]).val())
		{
			n = $("#" + suggetion[i]).val().split('@')[0];
			if(n.length < 3)
			{
				num = Math.floor(Math.random() * (999 - 100 + 1)) + 100;
				n = n+num;
			}
			name = n;
			var loop = checkInDB(name);
			l = 0;
			while(!(loop))
			{
				name = n + l;
				loop = checkInDB(name);
				l++;
			}
			if($.inArray(name.toLowerCase(), names) == -1)
			{
				names.push(name.toLowerCase());
			}
		}
	}
	
	for(i = 0; i < sym.length; i++)
	{
		if($("#" + suggetion[1]).val() && $("#" + suggetion[2]).val())
		{
			// to create new name formats
			n = $("#" + suggetion[1]).val() + sym[i] + $("#" + suggetion[2]).val();
			if(n.length < 3)
			{
				num = Math.floor(Math.random() * (999 - 100 + 1)) + 100;
				n = n+num;
			}
			name = n;
			loop = checkInDB(name);
			l = 0;
			
			//to check is name already used as username
			while(!(loop))
			{
				name = n + l;
				loop = checkInDB(name);
				l++;
			}
			if($.inArray(name.toLowerCase(), names) == -1)
			{
				names.push(name.toLowerCase());
			}
			
			// to create new name formats vise versa of n
			m = $("#" + suggetion[2]).val() + sym[i] + $("#" + suggetion[1]).val();
			if(m.length < 3)
			{
				num = Math.floor(Math.random() * (999 - 100 + 1)) + 100;
				m = m+num;
			}
			name = m;
			loop = checkInDB(name);
			l = 0;
			
			//to check is name already used as username
			while(!(loop))
			{
				name = m + l;
				loop = checkInDB(name);
				l++;
			}
			if($.inArray(name.toLowerCase(), names) == -1)
			{
				names.push(name.toLowerCase());
			}
		}
	}
	
	//set to names as autocomplete source for username field
	if (names.length) 
	{
		// $(".allSuggest").hide();
		var min = 0;
		var max = names.length - 1;
		var randomNumber = Math.floor(Math.random()*(max-min+1)+min);
		$( "#uName" ).focus();
		$( "#uName" ).val(names[randomNumber]);
		$( "#uName" ).autocomplete(
		{
		    minLength: 0,
		    source: names,
		    select: function( event, ui ) 
		    {
			    $( "#uName" ).val(ui.item.value);
			    $("#uName").css(
				{
					"border-color": "#cccccc" 
		     	});
		     	// $( ".uName" ).hide();
			    return false;
		    }
    	});
    	$("#uName").css(
		{
			"border-color": "#cccccc" 
     	});
     	// $( ".uName" ).hide();
	}
	else
	{
		$("#eMail, #fName, #lName").css(
		{
			"border-color": "red" 
     	});
     	// $(".allSuggest").show();
	}
}

//To Check entered email
function isEmail(email) 
{
	//regular expression to check email is valid
	var regex = /^([a-zA-Z0-9_.+-])+\@(([a-zA-Z0-9-])+\.)+([a-zA-Z0-9]{2,4})+$/;
	return regex.test(email);
}

//To Check entered fName
function isText(text) 
{
	//regular expression to check text containing only alphabets
	var regex = /^[A-z]+$/;
	return regex.test(text);
}

//To Check entered lName 
function isSpaceText(text) 
{
	//regular expression to check text containing only alphabets and space
	var regex = /^[A-z -]+$/;
	return regex.test(text);
}

//To Check entered password 
function isPassword(pass)
{
	//regular expression to check password as required
	var regex = /^(?=.*[0-9])(?=.*[a-zA-Z])([a-zA-Z0-9!@#$%^&* ]{6,})$/;
	return regex.test(pass);
}

function isUserName(username)
{
	//regular expression to check username as required
	var regex = /^[a-zA-Z0-9_.]{3,30}$/;
	return regex.test(username);
}

// function to validate first name
function checkFName()
{
	var retVal = false;
	var fName = $("#fName").val();
	// $(".fNameR").hide();
	if (isText(fName)) 
	{
		$("#fName").css(
		{
			"border-color": "#cccccc" 
     	});
     	$(".fName").hide();
     	retVal = true;
	}
	else
	{
		if(fName)
		{
			$("#fName").css(
			{
				"border-color": "red" 
	     	});
	     	$(".fName").show();
		}
		else
		{
			// $(".fNameR").show();
		}
	}
	// $(".allSuggest").hide();
	return retVal;
}

// function to validate last name
function checkLName()
{
	var retVal = false;
	var lName = $("#lName").val();
	// $(".lNameR").hide();
	if (isSpaceText(lName)) 
	{
		$("#lName").css(
		{
			"border-color": "#cccccc" 
     	});
     	$(".lName").hide();
     	retVal = true;
	}
	else
	{
		if(lName)
		{
			$("#lName").css(
			{
				"border-color": "red" 
	     	});
	     	$(".lName").show();
		}
		else
		{
			// $(".lNameR").show();
		}
	}
	// $(".allSuggest").hide();
	return retVal;
}

// function to validate confirmEmail
function checkConfirmEmail()
{
	var retVal = false;
	var eMail = $("#eMail").val();
	var confirmEmail = $("#confirmEmail").val();
	if ((confirmEmail != eMail))
	{
		if(confirmEmail && validEmail)
		{
			$("#confirmEmail").css(
			{
				"border-color": "red" 
	     	});
     		$(".confirmEmail").show();
		}
		else
		{
			//field is required
			$("#confirmEmail").css(
			{
				"border-color": "#cccccc" 
	     	});
		}
		
	}
	else
	{
		$("#confirmEmail").css(
		{
			"border-color": "#cccccc" 
     	});
     	$(".confirmEmail").hide();
     	retVal = true;
	}
	return retVal;
}

// function to validate password
function checkPassword()
{
	var retVal = false;
	var password = $("#password").val();
	// $(".passwordR").hide();
	if (!isPassword(password))
	{
		if (password) 
		{
			$("#password").css(
			{
				"border-color": "red" 
	     	});
	     	$(".password").show();
		}
		else
		{
			// $(".passwordR").show();
		}
	}
	else
	{
		$("#password").css(
		{
			"border-color": "#cccccc" 
     	});
     	$(".password").hide();
     	retVal = true;
     	validPassword = retVal;
     	checkConfirmPassword();
	}
	validPassword = retVal;
	return retVal;
}

// function to validate confirm password
function checkConfirmPassword()
{
	var retVal = false;
	var password = $("#password").val();
	var confirmPassword = $("#confirmpassword").val();
	if ((confirmPassword != password))
	{
		if(confirmPassword && validPassword)
		{
			$("#confirmpassword").css(
			{
				"border-color": "red" 
	     	});
	     	$(".confirmPass").show();
		}
		else
		{
			//field is required
			$("#confirmpassword").css(
			{
				"border-color": "#cccccc" 
	     	});
		}
	}
	else
	{
		$("#confirmpassword").css(
		{
			"border-color": "#cccccc" 
     	});
     	$(".confirmPass").hide();
     	retVal = true;
	}
	return retVal;
}

// function to validate telephone
function checkTelephone()
{
	var retVal = false;
	var telephone = $("#telephone").val();
	if((!telephone) || (telephone.length >= 14))
	{
		$("#telephone").css(
		{
			"border-color": "#cccccc" 
     	});
     	$(".telephone").hide();
     	retVal = true;
	}
	else
	{
		$("#telephone").css(
		{
			"border-color": "red" 
     	});
     	$(".telephone").show();
	}
	return retVal;
}

function checkAge()
{
	var checked = $("#yearOld").prop('checked');
	if (checked) 
	{
		// $(".yearOld").hide();
		$("#yearOldL").children("span").html("");
		return true;
	}
	// $(".yearOld").show();
	$("#yearOldL").children("span").html("*");
	return false;
}

$("#careerIndustry").change(function (e)
{
	$("#careerIndustry").css(
	{
		"border-color": "#cccccc" 
 	});
});

$("#country").change(function (e)
{
	$("#country").css(
	{
		"border-color": "#cccccc" 
 	});
});

$("#profession").change(function (e)
{
	$("#profession").css(
	{
		"border-color": "#cccccc" 
 	});
});

// This function call after click on Next button. where it check all section validation
function validateStep(v)
{
	//to do validate section 1
	if(v == 1)
	{
		var fName = checkFName();
		var lName = checkLName();
		var eMail = checkInDB('eMail');
		var confirmEMail = checkConfirmEmail();
		var uName = checkInDB('uName');
		var password = checkPassword();
		var yearOld = checkAge();
		var confirmPassword = checkConfirmPassword();
		var telephone = checkTelephone();
		if (fName && lName && eMail && confirmEMail && telephone && uName && password && confirmPassword && yearOld) 
		{
			return true;
		};
		if(!yearOld)
		{
			$("#yearOld").focus();
		}
		if(!telephone)
		{
			$("#telephone").focus();
		}
		if(!confirmPassword)
		{
			$("#confirmpassword").focus();
		}
		if(!password)
		{
			$("#password").focus();
			$("#password").css(
			{
				"border-color": "red" 
	     	});
		}
		if(!uName)
		{
			$("#uName").focus();
			$("#uName").css(
			{
				"border-color": "red" 
	     	});
		}
		if(!confirmEMail)
		{
			$("#confirmEmail").focus();
		}
		if(!eMail)
		{
			$("#eMail").focus();
			$("#eMail").css(
			{
				"border-color": "red" 
	     	});
		}
		if(!lName)
		{
			$("#lName").focus();
			$("#lName").css(
			{
				"border-color": "red" 
	     	});
		}
		if(!fName)
		{
			$("#fName").focus();
			$("#fName").css(
			{
				"border-color": "red" 
	     	});
		}
	}
	
	//to do validate section 2
	if(v == 2)
	{
		return true;
	}
	
	//to do validate section 3 (2-b)
	if(v == 3)
	{
		return true;
	}
	
	//to do validate section 4
	if(v == 4)
	{
		return true;
	}
	
	//to do validate section 5
	if(v == 5)
	{
		return true;
	}
	
	//to do validate section 6
	if(v == 6)
	{
		return true;
	}
	
	//to do validate section 11
	if(v == 11)
	{
		var fName = checkFName();
		var lName = checkLName();
		var eMail = checkInDB('eMail');
		var confirmEMail = checkConfirmEmail();
		var password = checkPassword();
		var confirmPassword = checkConfirmPassword();
		if (fName && lName && eMail && confirmEMail && password && confirmPassword) 
		{
			return true;
		};
		
		if(!confirmPassword)
		{
			$("#confirmpassword").focus();
		}
		
		if(!password)
		{
			$("#password").focus();
			$("#password").css(
			{
				"border-color": "red" 
	     	});
		}
		
		if(!confirmEMail)
		{
			$("#confirmEmail").focus();
		}
		
		if(!eMail)
		{
			$("#eMail").focus();
			$("#eMail").css(
			{
				"border-color": "red" 
	     	});
		}
		
		if(!lName)
		{
			$("#lName").focus();
			$("#lName").css(
			{
				"border-color": "red" 
	     	});
		}
		
		if(!fName)
		{
			$("#fName").focus();
			$("#fName").css(
			{
				"border-color": "red" 
	     	});
		}
	}
	
	//to do validate section 12
	if(v == 12)
	{
		return true;
	}
	
	//to do validate section 13 
	if(v == 13)
	{
		return true;
	}
	
	//to do validate section 14
	if(v == 14)
	{
		if(uploadedImage >= 4)
		{
			$("#output").html("");
			return true;
		}
		if(uploadedImage == 1)
		{
			$("#output").html("<b style='color:red;'>Please choose at least 3 documents<b>");
			return false;
		}
		$("#output").html("<b style='color:red;'>Please choose "+(4-uploadedImage)+" more document<b>");
		return false;
	}
	
	//to do validate section 15
	if(v == 15)
	{
		return true;
	}
	return false;
}

//textarea function for professional registration
$('#tell_us_more').on('input', function()
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
var uploadedImage = 1;
$( "#uploadedDoc" ).append( "<input type='file' onchange='changeName();' class='upload_file' id='upload_file"+uploadedImage+"' name='upload_file"+uploadedImage+"' style='display: none;'/>" );
if($('button#chooseFile').length)
{
	document.getElementById('chooseFile').onclick = function() 
	{
	    document.getElementById('upload_file'+uploadedImage).click();
	    $("#output").html("");
	};
}
function changeName()
{
    $('#whow_filename').html($('#upload_file'+uploadedImage).val());
}

$('#uploadFile').click(function (e) 
{
	//check for the file extention
	var ext = $('#upload_file'+uploadedImage).val().split('.').pop().toLowerCase();
	if($.inArray(ext, ['pdf','png','jpg','jpeg']) == -1) 
	{
	    $("#output").html("<b style='color:red;'>Invalid extension!</b>");
	    return 0;
	}
	value = $('#upload_file'+uploadedImage).val();
	if(value)
	{
		var fd = new FormData();
	    fd.append( "image", $("#upload_file"+uploadedImage)[0].files[0]);
	    fd.append( "path", "/profCertificates/");
	    name = value.replace(/C:\\fakepath\\/i, '');
	    $.ajax(
	    {
	        url: '/uploadImage',
	        type: 'POST',
	        cache: false,
	        data: fd,
	        processData: false,
	        contentType: false,
	        beforeSend: function () 
	        {
	            $("#output").html("<img src='/img/uploading.gif' class='drop_menu_avatar'/>Uploading, please wait....");
	        },
	        success: function (imgName) 
	        { 
	            $("#output").html("Upload success.");
	            img = $("#uploadedFiles").val();
	            if(img)
	            {
	            	img = img+",";
	            }
	            $("#uploadedFiles").val(img+imgName);
	            
	            flNam = $("#uploadedFilesName").val();
	            if(flNam)
	            {
	            	flNam = flNam+",";
	            }
	            $("#uploadedFilesName").val(flNam+name);
	            if (imgName) 
	            {
	            	imgName = '"'+imgName+'"';
	            	console.log(imgName);
	            	$('#whow_filename').html('');
					$( "#uploadedDoc" ).append( "<div style='float: left;' onclick='window.open("+imgName+");' class='large-3 medium-3 small-6 columns'><div class='panel bg_off_white'><div class='row' title='"+name+"'>"+name.substring(0, 20)+"</div></div></div>" );
					uploadedImage++;
					$( "#uploadedDoc" ).append( "<input type='file' onchange='changeName();' class='upload_file' id='upload_file"+uploadedImage+"' name='upload_file"+uploadedImage+"' style='display: none;'/>" );
	            };
	        },
	        complete: function () 
	        {
	            $("#output").html("");
	        },
	        error: function () 
	        {
	            $("#output").html("<b style='color:red;'>Error in upload</b>");
	        }
	    });
	    
	}
});