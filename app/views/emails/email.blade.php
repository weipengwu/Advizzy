<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
    	<!-- NAME: 1 COLUMN -->
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>{{ $subject }}</title>
        
    	<style type="text/css">
    		body { font-family: Arial; color: #4b4b4b; }
    		a { color: #34984e; }
    		p { font-size: 16.5px; line-height: 20px;  }
		</style>
	</head>
    <body leftmargin="0" marginwidth="0" topmargin="0" marginheight="0" offset="0" style="background-color: #eaeced; padding: 22px;">
    	<table border="0" cellpadding="0" cellspacing="0">
    		<tr>
			  	<td style="background-color: white; vertical-align: middle; color: #34984e; width: 33%; text-align: left;padding-left: 30px;"><a href="{{ Config::get('app.url') }}" style="text-decoration: none; color: #34984e; font-size: 16px; font-weight: bold;">Get Advice</a></td>
                <td class="mcnImageContent" valign="top" style="background-color: white; padding-right: 9px; padding-left: 9px; padding-top: 15px; padding-bottom: 15px; text-align:center; width: 33%;">
                    <img align="center" alt="" src="{{ Config::get('app.email_image_url') }}/img/email-header-logo.png" width="169" style="max-width:169px; padding-bottom: 0; display: inline !important; vertical-align: bottom;" class="mcnImage">
                </td>
                <td style="background-color: white; vertical-align: middle; color: #34984e; width: 33%; text-align: right; padding-right: 30px;"><a href="{{ Config::get('app.url') }}" style="text-decoration: none; color: #34984e; font-size: 16px; font-weight: bold;">Sign In</td>
    		</tr>
    		<tr>
    			<td colspan="3" style="border-top: 4px solid #34984e; background-color: white; padding: 30px;">
    				@yield('content')
    			</td>
    		</tr>
    		<tr>
    			<td colspan="3" style="text-align: center; border-bottom: 1px solid #bbbdbe; padding: 27px 0px;">
    				  <img align="center" alt="" src="{{ Config::get('app.email_image_url') }}/img/email-footer-logo.png" width="187" style="max-width:187px; padding-bottom: 0; display: inline !important; vertical-align: bottom;" class="mcnImage">
    			</td>
    		</tr>
    		<tr>
    			<td  colspan="3" valign="top" class="mcnTextContent" style="padding-top:9px; padding-right: 18px; padding-bottom: 9px; padding-left: 18px;font-size:12.5px;line-height:16.5px;">
                        
                    <span style="">You are receiving this message because you are a registered customer. You may change your notification preferences. If you believe you have received the email in error please contact us at </span><a style="color:#34984e;" href="mailto:{{ Config::get('app.support_email') }}"><span style="font-size:12px; color:#34984e;">{{ Config::get('app.support_email') }}</span></a><br>
					<br>
					Copyright @2015. All rights reserved<br>
					<span style="color:#34984e">Unsubscribe</span>
    			</td>
    		</tr>
    	</table>
    </body>
</html>