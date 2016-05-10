
Hi guys.

This package currently contains one functional front-end for a page, the "advizzy_postquestion" page. It includes the header and footer (incorporated into the page HTML) plus all the elements you'll need inside.

I used Zurb's Foundation framework for the layout. It relies heavily on the 12-column grid layout. All the Foundation libraries are included in this zip, and linked properly from the header and footer (for the CSS and JavaScript).

I used Font Awesome for the icon fonts. Those files are also included in the CSS folder.

I also created a custom CSS file specifically for the elements in this project. It's in the CSS folder.



I did not write any JavaScript for this but I did mark down many of the important classes and ids that you might need for the JavaScript DOM as you implement the responsive elements.

I documented as much as I could so you can easily see what each section is for in the HTML and CSS files.



The important file here is "20.html"

It includes the header, page content, and footer. I have also included a "header.html" and a "footer.html" file, in case you want those elements separately.

I will be happy to make any edits that you want. Consider this a first draft. The other pages should come along more quickly since the theme is now mostly prepared in CSS.





Some of the notifications on the page are numbers wrapped in circles (as the PSD specified), and I will explain how they work so you can make it functional.

The circles are Font Awesome icons... there is "circle" and "circle-thin." The former is an empty circle. The latter is filled in. You will see examples of both on the page, and you might want to use one for one function (like "circle" for "unread" or "new") and a different one for other functions (like "circle-thin" for "read" messages).

I also used different colors... the Awesome Font icons follow the rules for normal text (plus they have their own built-in sizing rules). So you can change their color as if they were text. I created classes for our color-scheme (using the same hex-colors as the PSD specified).

For green text the class is:  	green_text
For purple text the class is:	purple_text
For off-white text:		white_text
For dark text:			dark_text





As I make more HTML files I will keep adding to the custom CSS file, and I may change the header and footer if I find better methods. So if you make any changes or additions to the CSS file, please make note of them and maybe copy your additions to a different file so that we can merge it all in the end.


I hope it all works for you. I'm here if you need more edits.


Matt


