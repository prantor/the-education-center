<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/main.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style type="text/css">

/*Example CSS for the two demo scrollers*/

#pscroller1{
width: 300px;
height: 75px;
font-style: normal;
color: #666666;
padding: 0px 0px 10px 0px;

}

#pscroller2{
width: 350px;
height: 20px;
border: 1px solid black;
padding: 3px;
}

#pscroller2 a{
text-decoration: none;
}

.someclass{ //class to apply to your scroller(s) if desired
}

</style>

<script type="text/javascript">

    /*Example message arrays for the two demo scrollers*/

    var pausecontent = new Array()
    pausecontent[0] = 'The 2012 Kids Best Friend Benefit & Awards Dinner is November 16th in the Grand Ballroom of the Hilton Lisle/Naperville.'
    pausecontent[1] = '"I was heading downward, and you helped me get rid of most of my rage... I went to other counselors, but never did I get the same help... I feel that The Education Center had a big effect in my life."'


    var pausecontent2 = new Array()
    pausecontent2[0] = '<a href="http://www.news.com">News.com: Technology and business reports</a>'
    pausecontent2[1] = '<a href="http://www.cnn.com">CNN: Headline and breaking news 24/7</a>'
    pausecontent2[2] = '<a href="http://news.bbc.co.uk">BBC News: UK and international news</a>'

</script>

<script type="text/javascript">

    /***********************************************
    * Pausing up-down scroller- Â© Dynamic Drive (www.dynamicdrive.com)
    * This notice MUST stay intact for legal use
    * Visit http://www.dynamicdrive.com/ for this script and 100s more.
    ***********************************************/

    function pausescroller(content, divId, divClass, delay) {
        this.content = content //message array content
        this.tickerid = divId //ID of ticker div to display information
        this.delay = 6000 //Delay between msg change, in miliseconds.
        this.mouseoverBol = 0 //Boolean to indicate whether mouse is currently over scroller (and pause it if it is)
        this.hiddendivpointer = 1 //index of message array for hidden div
        document.write('<div id="' + divId + '" class="' + divClass + '" style="position: relative; overflow: hidden"><div class="innerDiv" style="position: absolute; width: 100%" id="' + divId + '1">' + content[0] + '</div><div class="innerDiv" style="position: absolute; width: 100%; visibility: hidden" id="' + divId + '2">' + content[1] + '</div></div>')
        var scrollerinstance = this
        if (window.addEventListener) //run onload in DOM2 browsers
            window.addEventListener("load", function() { scrollerinstance.initialize() }, false)
        else if (window.attachEvent) //run onload in IE5.5+
            window.attachEvent("onload", function() { scrollerinstance.initialize() })
        else if (document.getElementById) //if legacy DOM browsers, just start scroller after 0.5 sec
            setTimeout(function() { scrollerinstance.initialize() }, 500)
    }

    // -------------------------------------------------------------------
    // initialize()- Initialize scroller method.
    // -Get div objects, set initial positions, start up down animation
    // -------------------------------------------------------------------

    pausescroller.prototype.initialize = function() {
        this.tickerdiv = document.getElementById(this.tickerid)
        this.visiblediv = document.getElementById(this.tickerid + "1")
        this.hiddendiv = document.getElementById(this.tickerid + "2")
        this.visibledivtop = parseInt(pausescroller.getCSSpadding(this.tickerdiv))
        //set width of inner DIVs to outer DIV's width minus padding (padding assumed to be top padding x 2)
        this.visiblediv.style.width = this.hiddendiv.style.width = this.tickerdiv.offsetWidth - (this.visibledivtop * 2) + "px"
        this.getinline(this.visiblediv, this.hiddendiv)
        this.hiddendiv.style.visibility = "visible"
        var scrollerinstance = this
        document.getElementById(this.tickerid).onmouseover = function() { scrollerinstance.mouseoverBol = 1 }
        document.getElementById(this.tickerid).onmouseout = function() { scrollerinstance.mouseoverBol = 0 }
        if (window.attachEvent) //Clean up loose references in IE
            window.attachEvent("onunload", function() { scrollerinstance.tickerdiv.onmouseover = scrollerinstance.tickerdiv.onmouseout = null })
        setTimeout(function() { scrollerinstance.animateup() }, this.delay)
    }


    // -------------------------------------------------------------------
    // animateup()- Move the two inner divs of the scroller up and in sync
    // -------------------------------------------------------------------

    pausescroller.prototype.animateup = function() {
        var scrollerinstance = this
        if (parseInt(this.hiddendiv.style.top) > (this.visibledivtop + 5)) {
            this.visiblediv.style.top = parseInt(this.visiblediv.style.top) - 5 + "px"
            this.hiddendiv.style.top = parseInt(this.hiddendiv.style.top) - 5 + "px"
            setTimeout(function() { scrollerinstance.animateup() }, 50)
        }
        else {
            this.getinline(this.hiddendiv, this.visiblediv)
            this.swapdivs()
            setTimeout(function() { scrollerinstance.setmessage() }, this.delay)
        }
    }

    // -------------------------------------------------------------------
    // swapdivs()- Swap between which is the visible and which is the hidden div
    // -------------------------------------------------------------------

    pausescroller.prototype.swapdivs = function() {
        var tempcontainer = this.visiblediv
        this.visiblediv = this.hiddendiv
        this.hiddendiv = tempcontainer
    }

    pausescroller.prototype.getinline = function(div1, div2) {
        div1.style.top = this.visibledivtop + "px"
        div2.style.top = Math.max(div1.parentNode.offsetHeight, div1.offsetHeight) + "px"
    }

    // -------------------------------------------------------------------
    // setmessage()- Populate the hidden div with the next message before it's visible
    // -------------------------------------------------------------------

    pausescroller.prototype.setmessage = function() {
        var scrollerinstance = this
        if (this.mouseoverBol == 1) //if mouse is currently over scoller, do nothing (pause it)
            setTimeout(function() { scrollerinstance.setmessage() }, 100)
        else {
            var i = this.hiddendivpointer
            var ceiling = this.content.length
            this.hiddendivpointer = (i + 1 > ceiling - 1) ? 0 : i + 1
            this.hiddendiv.innerHTML = this.content[this.hiddendivpointer]
            this.animateup()
        }
    }

    pausescroller.getCSSpadding = function(tickerobj) { //get CSS padding value, if any
        if (tickerobj.currentStyle)
            return tickerobj.currentStyle["paddingTop"]
        else if (window.getComputedStyle) //if DOM2
            return window.getComputedStyle(tickerobj, "").getPropertyValue("padding-top")
        else
            return 0
    }

</script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  
  <div class="ad">
  <div style="float: left;">
  <div style="z-index: 0;">
    <embed src='http://www.theeducationcenter.org/flash/player.swf'width='480'height='270'bgcolor='undefined'allowscriptaccess='always' wmode='transparent' allowfullscreen='true'flashvars='file=http://www.theeducationcenter.org/flash/litow.flv&image=http://www.theeducationcenter.org/flash/36years.jpg'/></div></div>
<div style="float: right;"><img src="images/students-01.jpg" />
</div>

<div class="clear"></div>
    </div>

	<!-- TOP HEADER INFO JPC


    <div class="content">
    <div class="contentleft">


    <img src="Images/helping_kids_title.jpg" /><br />
    <p>Our mission is to help children succeed in school as well as in life.  We discover what a child is good at and then build on their own interests.  Children and teens trust us because we believe in them.</p>
    <p>Our close relationships with school systems and the business community in Chicago and its suburbs, allow us to advocate for our students with guidance counselors and teachers as well as to connect a child with a potential mentor or employer.  And we never turn away a child because of money.  Whatever it takes, we go the distance for our kids.</p>
    <table>
    <tr><td style="vertical-align: top;"><br /><img src="Images/look_ahead_img.jpg"/></td><td><img src="Images/kids_img.jpg" /></td></tr>
    </table>
    

    </div>
    <div class="contentright">
    <img src="Images/whats_new_title.jpg" /><br /><br />
   
   <iframe src="//www.facebook.com/plugins/likebox.php?href=http%3A%2F%2Fwww.facebook.com%2Fpages%2FThe-Education-Center-of-Developmental-Resources%2F141955352494095%3Fref%3Dts&amp;width=285&amp;height=300&amp;colorscheme=light&amp;show_faces=false&amp;border_color&amp;stream=true&amp;header=false" scrolling="no" frameborder="0" style="border:none; overflow:hidden; width:285px; height:300px;" allowTransparency="true"></iframe>
   
    </div>

   <div class="clear"></div>
	END OF TOP HEADER INFO -->


    <div class="content">
    <div class="contentleft">

   
<table border="0" cellpadding="1" cellspacing="1" style="width: 950px;">
	<tbody>
		<tr>
			<td colspan="2"><h2 style="background: #6c6c6c; color: white; padding: 6px; text-align: center;">Five to Be Honored at The Education Center’s Benefit in October</h2></td>
		</tr>
        <!--
		<tr>
			<td colspan="2"><p style="text-align: center;"><img src="/images/2015-award-winners-01.jpg"></p></td>
		</tr>
	    -->

		<tr>
			<td colspan="2">As it celebrates 37 years of helping children &ldquo;succeed in school as well as in life,&rdquo; 
                	The Education Center of Developmental Resources will once again host the annual Kids&rsquo; Best Friend Benefit and Awards Dinner and highlight the contributions of several individuals who support the community, families, kids, and the elderly. 
                <br /> <br />
                This year&rsquo;s awards and winners are:
    </div>

<div>
	<ul>
        <li>Kids&rsquo; Best Friend Award &ndash; Jeffrey and Stephanie Jones Kastelic, Friedrich-Jones Funeral Home </li>
        <li>Outstanding Community Leader Award &ndash; Commander Ken Parcel, Naperville Police Department</li>
        <li>Making a Difference Award &ndash; Kitty Ryan, Naperville Community Unit School District 203</li>
        <li>George and Pat Pradel Humanitarian Award &ndash; Nick and Teresa Ryan, Marquette Companies and Ryan Hill Realty</li>
        <li>Business Partner Award &ndash; Rosebud Restaurants-Naperville</li>
    </ul>

</div>
<div>
	



<p>
	<p>
        <!--
        The Kids&rsquo; Best Friend Benefit and Awards Dinner will be held on Friday, October 16, in the Hilton Lisle/Naperville Grand Ballroom. The benefit provides 
        scholarships for counseling or tutoring at The Education Center for students who are experiencing challenges at school. Those challenges might be due to problems at home, 
        traumatic experiences, drug or alcohol abuse, lack of study skills or motivation, and other events that interfere with their learning. Scholarships are also available for 
        students whose parents are serving in the military.
        <br /> <br /> 
        According to Dr. Mike Litow, founder and executive director of The Education Center, &ldquo;The people that 
        we are honoring all have one thing in common. In addition to being busy in their personal lives, they always find time to give back to the community and improve the quality of 
        life for families.&rdquo;
        <br /> <br />
        Tickets to the October 16th Kids&rsquo; Best Friend Benefit and Award Dinner are $125 per person and include a cocktail reception, dinner, dancing, and live and silent 
        auctions. The reception will be held at the Hilton Lisle/Naperville and begins at 5:30 p.m.<br /> <br />With a 97 percent success rate of graduating children who are 
        facing a wide variety of issues that are keeping them from achieving success, The Education Center offers area families a place of hope and help. The annual Kids&rsquo; 
        Best Friend benefit directly supports the many programs of The Education Center.
        <br /> <br />
        For more information, please contact the center at 630-420-7807 or visit www.theeducationcenter.org . The Education Center is located at 113 East Van Buren in Naperville.
        -->
        The Kids’ Best Friend Benefit and Awards Dinner will be held on Friday, October 14, in the Hilton Lisle/Naperville Grand Ballroom. Tickets are $125 per person 
        and include a cocktail reception, dinner, and live and silent auctions.  The reception begins at 5:30 p.The Education Center is located at 113 East Van Buren in 
        Naperville. Programs help children and teens of all ages overcome everyday obstacles and be successful in a school and life.  
        <br /> <br />
 

        For more information about the Benefit contact:
        <br />
        <br />
        Dr. Michael Litow
        <br />
        The Education Center - 630-420-7807

	</p></p></td>
		</tr>
	</tbody>
</table>

   




<br>
<br>
<br>


<table border="0" cellpadding="3" cellspacing="3" style="width: 900px;">
	<tbody>

		<tr>
			<!-- <td style="text-align: right;"><a href="http://www.theeducationcenter.org/2015EducationCenterRSVP.pdf" target="_blank"><img src="Images/2015invite.jpg" 
                style="text-align: center; width: 100%;"></a>
            -->
            <td style="text-align: right;"><a href="#"><img src="Images/2016invite.jpg" 
                style="text-align: center; width: 100%;"></a>
                <br />
                <br />
                <br />
                <center><a href="http://www.theeducationcenter.org/2014events.aspx" style="text-decoration: none; padding:10px 15px; background: #ccc;">View 2014 Event</a></center>
			</td>
            <td style="text-align: left;">
                   <p style="margin: 20px 0; color: #4baa42; font-size: 17px;">
                       <br />
                   </p>
            </td>
            <!--
			<td style="text-align: left;"><p style="margin: 20px 0; color: #4baa42; font-size: 17px;">
                Please click image to print RSVP card 
                <a href="http://www.theeducationcenter.org/2015EducationCenterRSVP.pdf" target="_blank" style="text-decoration: none;">OR CLICK HERE</a> 
                and mail to:<br>
                <strong>The Education Center</strong><br>
                113 East Van Buren<br>
                Naperville, IL 60540
            
            </td>
            -->
		</tr>

	</tbody>
</table>
<br>


<!-- MORE WORK TO DO





=========================================================================
=========================================================================

<h2 style="background: #6c6c6c; color: white; padding: 6px; text-align: center; clear: both; margin-top: 1em;">Kids&acute; Best Friend Award<br>
Ray Jones - Ray Jones, Friedrich-Jones Funeral Home</h2>

	<img src="/images/2015-Ray Jones-2015-Kids-Best-Friend-Award.jpg" style="float: right; margin: 0 10px 10px 0; width: 250px;"><br>
<p>Ray Jones will be receiving the Kids&rsquo; Best Friend Award for his work on behalf of the elderly and youth. Throughout the years, he has supported St. Patrick&rsquo;s Residence, the YMCA, and numerous other organizations.</p>





==============
<h2 style="background: #6c6c6c; color: white; padding: 6px; text-align: center; clear: both; margin-top: 1em;"> Outstanding Community Leader Award 
<br>Nicki Scott, Rotary Club of Naperville Sunrise and Rotary International District 6450</h2>
	
    <img src="/images/2015-George-and-Pat-Pradel-Humanitarian-Award.jpg" style="float: left; margin: 0 10px 10px 0; width: 250px;"><br>
<p>At the Kids&rsquo; Best Friend annual benefit, Nicki Scott will receive the Outstanding Community Leader Award. She has done important work for children in other parts of the world, including polio eradication work in India, as part of Rotary International and the Rotary Club of Naperville/Sunrise.</p>
=========================
<h2 style="background: #6c6c6c; color: white; padding: 6px; text-align: center; clear: both; margin-top: 1em;">Making a Difference Award
<br>Vicki Coletta, Project HELP and the Exchange Club of Naperville</h2>


	<img src="/images/2015-Vicki Coletta - Making a Difference Award.jpg" style="float: right; margin: 0 10px 10px 0; width: 250px;">
<br>Vicki Coletta, a volunteer with Project HELP, will receive the Making a Difference Award for her work with families.


==================




xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx




<h2 style="background: #6c6c6c; color: white; padding: 6px; text-align: center; clear: both; margin-top: 1em;">George and Pat Pradel Humanitarian Award<br>
Brand and Mary Ann Bobosky, Community leaders, Century Walk, and education</h2>

	<img src="/images/2015-Brand and MaryAnn Bobosky - George and Pat Pradel Humanitarian Award.jpg" style="float: right; margin: 0 10px 10px 0; width: 250px;">
<br>
Brand and Mary Ann Bobosky will receive the George and Pat Pradel Humanitarian Award for their longtime commitment to many community organizations, Century Walk, and education.

-->


       

   </div>
	<!-- end award winners ......  <a href="http://www.theeducationcenter.org/events.aspx" style="text-decoration: none; padding:10px 15px; background: #ccc;">More Info</a>-->

   
   


   
    </div>





    <div class="content">
    <div class="contentleft">
    <img src="Images/helping_kids_title.jpg" /><br />
    <p>Our mission is to help children succeed in school as well as in life.  We discover what a child is good at and then build on their own interests.  Children and teens trust us because we believe in them.</p>
    <p>Our close relationships with school systems and the business community in Chicago and its suburbs, allow us to advocate for our students with guidance counselors and teachers as well as to connect a child with a potential mentor or employer.  And we never turn away a child because of money.  Whatever it takes, we go the distance for our kids.</p>
    <table>
    <tr><td style="vertical-align: top;"><br /><img src="Images/look_ahead_img.jpg"/></td><td><img src="Images/kids_img.jpg" /></td></tr>
    </table>
    

    </div>
    <div class="contentright">
    <img src="Images/whats_new_title.jpg" /><br /><br />
   
   <iframe src="//www.facebook.com/plugins/likebox.php?href=http%3A%2F%2Fwww.facebook.com%2Fpages%2FThe-Education-Center-of-Developmental-Resources%2F141955352494095%3Fref%3Dts&amp;width=285&amp;height=300&amp;colorscheme=light&amp;show_faces=false&amp;border_color&amp;stream=true&amp;header=false" scrolling="no" frameborder="0" style="border:none; overflow:hidden; width:285px; height:300px;" allowTransparency="true"></iframe>
   
    </div>

   <div class="clear"></div>

</asp:Content>

