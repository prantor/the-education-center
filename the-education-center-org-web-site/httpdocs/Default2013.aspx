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
    <embed src='http://www.theeducationcenter.org/flash/player.swf'width='480'height='270'bgcolor='undefined'allowscriptaccess='always' wmode='transparent' allowfullscreen='true'flashvars='file=http://www.theeducationcenter.org/flash/litow.flv&image=http://www.theeducationcenter.org/flash/movie_poster.jpg'/></div></div>
<div style="float: right;"><img src="images/students-01.jpg" />
</div>
<div class="clear"></div>
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
   
   <!-- Start award winners -->
   <div style="padding: 30px;">
   <h2 style="background: #6c6c6c; color: white; padding: 6px; text-align: center;">Kids&acute; Best Friend Awards Event Honors Local Leaders and an International Business That Exemplify Service to Children Locally and Abroad </h2>

<!--	<p style="margin: 20px 0; color: #4baa42; font-size: 17px;"><img src="Images/event_1.jpg" style="text-align: center; width: 100%;" />Please print and send the <a href="http://www.theeducationcenter.org/2013EducationCenterRSVP.pdf" target="_blank" style="text-decoration: none;">RSVP card</a> with your check and send to:<br>
 <strong>The Education Center</strong><br>
113 East Van Buren<br>
Naperville, IL 60540 </p>-->
	<p style="margin: 20px 0;"><img src="Images/2013-award-winners-kids-best-friend-award-benefit.jpg" style="text-align: center; width: 100%;" />While the spotlight at last month&acute;s Kids&acute; Best Friend Award benefit shone brightly on the three award winners &ndash; Making a Difference award winner Kathryn Birkett, Business Partner Molex Incorporated represented by President of Global Sales and Marketing Graham Brock, and Kids&acute; Best Friend Dawn Newman &ndash; the evening also highlighted several scholarships that The Education Center currently offers, or will soon offer, to needy students.</p>

	<p style="text-align: center;"><img src="/images/2013-award-winners-01.png"></p>

	<p><strong>The Education Center&acute;s annual benefit dinner was held on October 18th</strong></p>  

	<p>(Naperville, IL) &ndash; Two local leaders and one international business whose efforts have improved the education of children locally, nationally, and abroad were honored at this year&acute;s Kids&acute; Best Friend Awards Benefit.</p>

	<p>Awards were presented at The Education Center&acute;s annual Kids&acute; Best Friend Benefit and Awards Dinner on Friday, October 18, in the Lisle/Naperville Hilton Grand Ballroom.</p>

	<p><strong>This year&acute;s awards and winners are:</strong></p>

	<ul>
		<li><strong>Kids&acute; Best Friend Award</strong> &ndash; Dawn Newman, Principal at Newman Architecture</li> 
		<li><strong>Business Partner Award</strong> &ndash; Molex Incorporated</li>
		<li><strong>Making a Difference Award</strong> &ndash; Dr. Kathryn Birkett, Superintendent of Schools, Indian Prairie School District 204</li>
</ul>

	<p>The Education Center, located in Naperville, is a nationally recognized children&acute;s organization that for more than 30 years has been helping kids succeed in school and in life. With a 97 percent success rate of graduating students who are diagnosed as learning disabled and underachievers, The Education Center offers area families a place of hope and help. The annual Kids&acute; Best Friend benefit directly supports the many programs of The Education Center.</p>

	<p>&quot;This year we are honoring two exceptional individuals who have devoted many years supporting the education of children,&quot; said Dr. Michael Litow, founder and executive director of The Education Center. &quot;We are also recognizing the outstanding  efforts of a local, international business and its employees who supported our work by providing employment opportunities for one of our students. The leadership of our award winners inspires others to improve the education of all children.&quot;</p>

   <!--<a href="http://www.theeducationcenter.org/2013EducationCenterRSVP.pdf" target="_blank" style="text-decoration: none; padding:10px 15px; background: #ccc;">Download RSVP Card</a>-->
   
   <a href="http://www.theeducationcenter.org/events.aspx" style="text-decoration: none; padding:10px 15px; background: #ccc;">More Info</a>
   
   </div>
	<!-- end award winners -->

   
   
   
    </div>

</asp:Content>

