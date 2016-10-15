<html>
<head>
<style type="text/css">
	
	/* Code for animated blinking cursor. */

.typed-cursor {
  opacity: 1;
  font-weight: 100;
  -webkit-animation: blink 0.7s infinite;
  -moz-animation: blink 0.7s infinite;
  -ms-animation: blink 0.7s infinite;
  -o-animation: blink 0.7s infinite;
  animation: blink 0.7s infinite;
}

@-keyframes blink {
  0% { opacity:1; }
  50% { opacity:0; }
  100% { opacity:1; }
}
        
@-webkit-keyframes blink{
  0% { opacity:1; }          
  50% { opacity:0; }
  100% { opacity:1; }
}
        
@-moz-keyframes blink{
  0% { opacity:1; }
  50% { opacity:0; }
  100% { opacity:1; }
}

@-ms-keyframes blink{
  0% { opacity:1; }
  50% { opacity:0; }
  100% { opacity:1; }
}

@-o-keyframes blink{
  0% { opacity:1; }
  50% { opacity:0; }
  100% { opacity:1; }
}

#typed { /* Text Styling */
  font-family: "Lucida Sans Unicode", "Lucida Grande", sans-seriff;
  font-weight: bold;
  font-size: 1em;
}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script>
//= require jquery
!function($){

    "use strict";

    var Typed = function(el, options){

        // chosen element to manipulate text
        this.el = $(el);

        // options
        this.options = $.extend({}, $.fn.typed.defaults, options);

        // text content of element
        this.baseText = this.el.text() || this.el.attr('placeholder') || '';

        // typing speed
        this.typeSpeed = this.options.typeSpeed;

        // add a delay before typing starts
        this.startDelay = this.options.startDelay;

        // backspacing speed
        this.backSpeed = this.options.backSpeed;

        // amount of time to wait before backspacing
        this.backDelay = this.options.backDelay;

        // input strings of text
        this.strings = this.options.strings;

        // character number position of current string
        this.strPos = 0;

        // current array position
        this.arrayPos = 0;

        // number to stop backspacing on.
        // default 0, can change depending on how many chars
        // you want to remove at the time
        this.stopNum = 0;

        // Looping logic
        this.loop = this.options.loop;
        this.loopCount = this.options.loopCount;
        this.curLoop = 0;

        // for stopping
        this.stop = false;

        // show cursor
        this.showCursor = this.isInput ? false : this.options.showCursor;

        // custom cursor
        this.cursorChar = this.options.cursorChar;

        // attribute to type
        this.isInput = this.el.is('input');
        this.attr = this.options.attr || (this.isInput ? 'placeholder' : null);

        // All systems go!
        this.build();
    };

        Typed.prototype =  {

            constructor: Typed

            , init: function(){
                // begin the loop w/ first current string (global self.string)
                // current string will be passed as an argument each time after this
                var self = this;
                self.timeout = setTimeout(function() {
                    // Start typing
                    self.typewrite(self.strings[self.arrayPos], self.strPos);
                }, self.startDelay);
            }

            , build: function(){
                // Insert cursor
                if (this.showCursor === true){
                  this.cursor = $("<span class=\"typed-cursor\">" + this.cursorChar + "</span>");
                  this.el.after(this.cursor);
                }
                this.init();
            }

            // pass current string state to each function, types 1 char per call
            , typewrite: function(curString, curStrPos){
                // exit when stopped
                if(this.stop === true)
                   return;

                // varying values for setTimeout during typing
                // can't be global since number changes each time loop is executed
                var humanize = Math.round(Math.random() * (100 - 30)) + this.typeSpeed;
                var self = this;

                // ------------- optional ------------- //
                // backpaces a certain string faster
                // ------------------------------------ //
                // if (self.arrayPos == 1){
                //  self.backDelay = 50;
                // }
                // else{ self.backDelay = 500; }

                // contain typing function in a timeout humanize'd delay
                self.timeout = setTimeout(function() {
                    // check for an escape character before a pause value
                    // format: \^\d+ .. eg: ^1000 .. should be able to print the ^ too using ^^
                    // single ^ are removed from string
                    var charPause = 0;
                    var substr = curString.substr(curStrPos);
                    if (substr.charAt(0) === '^') {
                        var skip = 1;  // skip atleast 1
                        if(/^\^\d+/.test(substr)) {
                           substr = /\d+/.exec(substr)[0];
                           skip += substr.length;
                           charPause = parseInt(substr);
                        }

                        // strip out the escape character and pause value so they're not printed
                        curString = curString.substring(0,curStrPos)+curString.substring(curStrPos+skip);
                    }

                    // timeout for any pause after a character
                    self.timeout = setTimeout(function() {
                        if(curStrPos === curString.length) {
                           // fires callback function
                           self.options.onStringTyped(self.arrayPos);

                            // is this the final string
                           if(self.arrayPos === self.strings.length-1) {
                              // animation that occurs on the last typed string
                              self.options.callback();

                              self.curLoop++;

                              // quit if we wont loop back
                              if(self.loop === false || self.curLoop === self.loopCount)
                                 return;
                           }

                           self.timeout = setTimeout(function(){
                              self.backspace(curString, curStrPos);
                           }, self.backDelay);
                        } else {

                           /* call before functions if applicable */
                           if(curStrPos === 0)
                              self.options.preStringTyped(self.arrayPos);

                           // start typing each new char into existing string
                           // curString: arg, self.baseText: original text inside element
                           var nextString = self.baseText + curString.substr(0, curStrPos+1);
                           if (self.attr) {
                            self.el.attr(self.attr, nextString);
                           } else {
                            self.el.text(nextString);
                           }

                           // add characters one by one
                           curStrPos++;
                           // loop the function
                           self.typewrite(curString, curStrPos);
                        }
                    // end of character pause
                    }, charPause);

                // humanized value for typing
                }, humanize);

            }

            , backspace: function(curString, curStrPos){
                // exit when stopped
                if (this.stop === true) {
                   return;
                }

                // varying values for setTimeout during typing
                // can't be global since number changes each time loop is executed
                var humanize = Math.round(Math.random() * (100 - 30)) + this.backSpeed;
                var self = this;

                self.timeout = setTimeout(function() {

                    // ----- this part is optional ----- //
                    // check string array position
                    // on the first string, only delete one word
                    // the stopNum actually represents the amount of chars to
                    // keep in the current string. In my case it's 14.
                    // if (self.arrayPos == 1){
                    //  self.stopNum = 14;
                    // }
                    //every other time, delete the whole typed string
                    // else{
                    //  self.stopNum = 0;
                    // }

                    // ----- continue important stuff ----- //
                    // replace text with base text + typed characters
                    var nextString = self.baseText + curString.substr(0, curStrPos);
                    if (self.attr) {
                     self.el.attr(self.attr, nextString);
                    } else {
                     self.el.text(nextString);
                    }

                    // if the number (id of character in current string) is
                    // less than the stop number, keep going
                    if (curStrPos > self.stopNum){
                        // subtract characters one by one
                        curStrPos--;
                        // loop the function
                        self.backspace(curString, curStrPos);
                    }
                    // if the stop number has been reached, increase
                    // array position to next string
                    else if (curStrPos <= self.stopNum) {
                        self.arrayPos++;

                        if(self.arrayPos === self.strings.length) {
                           self.arrayPos = 0;
                           self.init();
                        } else
                            self.typewrite(self.strings[self.arrayPos], curStrPos);
                    }

                // humanized value for typing
                }, humanize);

            }

            // Start & Stop currently not working

            // , stop: function() {
            //     var self = this;

            //     self.stop = true;
            //     clearInterval(self.timeout);
            // }

            // , start: function() {
            //     var self = this;
            //     if(self.stop === false)
            //        return;

            //     this.stop = false;
            //     this.init();
            // }

            // Reset and rebuild the element
            , reset: function(){
                var self = this;
                clearInterval(self.timeout);
                var id = this.el.attr('id');
                this.el.after('<span id="' + id + '"/>')
                this.el.remove();
                this.cursor.remove();
                // Send the callback
                self.options.resetCallback();
            }

        };

    $.fn.typed = function (option) {
        return this.each(function () {
          var $this = $(this)
            , data = $this.data('typed')
            , options = typeof option == 'object' && option;
          if (!data) $this.data('typed', (data = new Typed(this, options)));
          if (typeof option == 'string') data[option]();
        });
    };

    $.fn.typed.defaults = {
        strings: ["These are the default values...", "You know what you should do?", "Use your own!", "Have a great day!"],
        // typing speed
        typeSpeed: 0,
        // time before typing starts
        startDelay: 0,
        // backspacing speed
        backSpeed: 0,
        // time before backspacing
        backDelay: 500,
        // loop
        loop: false,
        // false = infinite
        loopCount: false,
        // show cursor
        showCursor: true,
        // character for cursor
        cursorChar: "|",
        // attribute to type (null == text)
        attr: null,
        // call when done callback function
        callback: function() {},
        // starting callback function before each string
        preStringTyped: function() {},
        //callback for every typed string
        onStringTyped: function() {},
        // callback for reset
        resetCallback: function() {}
    };


}(window.jQuery);


$(function(){

        $("#typed").typed({
            strings: ["Welcome to my Java, Hibernate, Spring(MVC) project.........","My name is Shubham, Graduate Student in Computer Science major.........", " I am Full Stack Developer with strong understanding of fronend and backend concepts.", "My expertise are Java, Hibernate, Spring, MySQL, JQuery, Ajax and JavaScript.","Experience in RESTfull Web Service and OAuth authorization process....",  "Familier with Apache Tomcat 8, Glassfish and JavaEE servers......","Build a university finding decision making algorithm using java........","Currently, I am actively seeking internship and full time opportunity.....","Thank you for visiting my project.....","Have a good day......","Welcome to my Java, Hibernate, Spring(MVC) project.........","My name is Shubham, Graduate Student in Computer Science major.........", " I am Full Stack Developer with 5 years of experience in Software Industry..........", "My expertise are Java, Hibernate, Spring, MySQL, JQuery, Ajax and JavaScript.","Experience RESTfull Web Service and OAuth authorization process....",  "Familier with Apache Tomcat 8, Glassfish and JavaEE servers......","Build a university finding decision making algorithm........","Currently, I am actively seeking internship and full time opportunity.....","Thank you for visiting my project.....","Have a good day......","Welcome to my Java, Hibernate, Spring(MVC) project.........","My name is Shubham, Graduate Student in Computer Science major.........", " I am Full Stack Developer with 5 years of experience in Software Industry..........", "My expertise are Java, Hibernate, Spring, MySQL, JQuery, Ajax and JavaScript.","Experience RESTfull Web Service and OAuth authorization process....",  "Familier with Apache Tomcat 8, Glassfish and JavaEE servers......","Build a university finding decision making algorithm........","Currently, I am actively seeking internship and full time opportunity.....","Thank you for visiting my project.....","Have a good day......","Welcome to my Java, Hibernate, Spring(MVC) project.........","My name is Shubham, Graduate Student in Computer Science major.........", " I am Full Stack Developer with 5 years of experience in Software Industry..........", "My expertise are Java, Hibernate, Spring, MySQL, JQuery, Ajax and JavaScript.","Experience RESTfull Web Service and OAuth authorization process....",  "Familier with Apache Tomcat 8, Glassfish and JavaEE servers......","Build a university finding decision making algorithm........","Currently, I am actively seeking internship and full time opportunity.....","Thank you for visiting my project.....","Have a good day......","Welcome to my Java, Hibernate, Spring(MVC) project.........","My name is Shubham, Graduate Student in Computer Science major.........", " I am Full Stack Developer with 5 years of experience in Software Industry..........", "My expertise are Java, Hibernate, Spring, MySQL, JQuery, Ajax and JavaScript.","Experience RESTfull Web Service and OAuth authorization process....",  "Familier with Apache Tomcat 8, Glassfish and JavaEE servers......","Build a university finding decision making algorithm........","Currently, I am actively seeking internship and full time opportunity.....","Thank you for visiting my project.....","Have a good day......","Welcome to my Java, Hibernate, Spring(MVC) project.........","My name is Shubham, Graduate Student in Computer Science major.........", " I am Full Stack Developer with 5 years of experience in Software Industry..........", "My expertise are Java, Hibernate, Spring, MySQL, JQuery, Ajax and JavaScript.","Experience RESTfull Web Service and OAuth authorization process....",  "Familier with Apache Tomcat 8, Glassfish and JavaEE servers......","Build a university finding decision making algorithm........","Currently, I am actively seeking internship and full time opportunity.....","Thank you for visiting my project.....","Have a good day......","Welcome to my Java, Hibernate, Spring(MVC) project.........","My name is Shubham, Graduate Student in Computer Science major.........", " I am Full Stack Developer with 5 years of experience in Software Industry..........", "My expertise are Java, Hibernate, Spring, MySQL, JQuery, Ajax and JavaScript.","Experience RESTfull Web Service and OAuth authorization process....",  "Familier with Apache Tomcat 8, Glassfish and JavaEE servers......","Build a university finding decision making algorithm........","Currently, I am actively seeking internship and full time opportunity.....","Thank you for visiting my project.....","Have a good day......","Welcome to my Java, Hibernate, Spring(MVC) project.........","My name is Shubham, Graduate Student in Computer Science major.........", " I am Full Stack Developer with 5 years of experience in Software Industry..........", "My expertise are Java, Hibernate, Spring, MySQL, JQuery, Ajax and JavaScript.","Experience RESTfull Web Service and OAuth authorization process....",  "Familier with Apache Tomcat 8, Glassfish and JavaEE servers......","Build a university finding decision making algorithm........","Currently, I am actively seeking internship and full time opportunity.....","Thank you for visiting my project.....","Have a good day......","Welcome to my Java, Hibernate, Spring(MVC) project.........","My name is Shubham, Graduate Student in Computer Science major.........", " I am Full Stack Developer with 5 years of experience in Software Industry..........", "My expertise are Java, Hibernate, Spring, MySQL, JQuery, Ajax and JavaScript.","Experience RESTfull Web Service and OAuth authorization process....",  "Familier with Apache Tomcat 8, Glassfish and JavaEE servers......","Build a university finding decision making algorithm........","Currently, I am actively seeking internship and full time opportunity.....","Thank you for visiting my project.....","Have a good day......","Welcome to my Java, Hibernate, Spring(MVC) project.........","My name is Shubham, Graduate Student in Computer Science major.........", " I am Full Stack Developer with 5 years of experience in Software Industry..........", "My expertise are Java, Hibernate, Spring, MySQL, JQuery, Ajax and JavaScript.","Experience RESTfull Web Service and OAuth authorization process....",  "Familier with Apache Tomcat 8, Glassfish and JavaEE servers......","Build a university finding decision making algorithm........","Currently, I am actively seeking internship and full time opportunity.....","Thank you for visiting my project.....","Have a good day......","Welcome to my Java, Hibernate, Spring(MVC) project.........","My name is Shubham, Graduate Student in Computer Science major.........", " I am Full Stack Developer with 5 years of experience in Software Industry..........", "My expertise are Java, Hibernate, Spring, MySQL, JQuery, Ajax and JavaScript.","Experience RESTfull Web Service and OAuth authorization process....",  "Familier with Apache Tomcat 8, Glassfish and JavaEE servers......","Build a university finding decision making algorithm........","Currently, I am actively seeking internship and full time opportunity.....","Thank you for visiting my project.....","Have a good day......","Welcome to my Java, Hibernate, Spring(MVC) project.........","My name is Shubham, Graduate Student in Computer Science major.........", " I am Full Stack Developer with 5 years of experience in Software Industry..........", "My expertise are Java, Hibernate, Spring, MySQL, JQuery, Ajax and JavaScript.","Experience RESTfull Web Service and OAuth authorization process....",  "Familier with Apache Tomcat 8, Glassfish and JavaEE servers......","Build a university finding decision making algorithm........","Currently, I am actively seeking internship and full time opportunity.....","Thank you for visiting my project.....","Have a good day......","Welcome to my Java, Hibernate, Spring(MVC) project.........","My name is Shubham, Graduate Student in Computer Science major.........", " I am Full Stack Developer with 5 years of experience in Software Industry..........", "My expertise are Java, Hibernate, Spring, MySQL, JQuery, Ajax and JavaScript.","Experience RESTfull Web Service and OAuth authorization process....",  "Familier with Apache Tomcat 8, Glassfish and JavaEE servers......","Build a university finding decision making algorithm........","Currently, I am actively seeking internship and full time opportunity.....","Thank you for visiting my project.....","Have a good day......","Welcome to my Java, Hibernate, Spring(MVC) project.........","My name is Shubham, Graduate Student in Computer Science major.........", " I am Full Stack Developer with 5 years of experience in Software Industry..........", "My expertise are Java, Hibernate, Spring, MySQL, JQuery, Ajax and JavaScript.","Experience RESTfull Web Service and OAuth authorization process....",  "Familier with Apache Tomcat 8, Glassfish and JavaEE servers......","Build a university finding decision making algorithm........","Currently, I am actively seeking internship and full time opportunity.....","Thank you for visiting my project.....","Have a good day......","Welcome to my Java, Hibernate, Spring(MVC) project.........","My name is Shubham, Graduate Student in Computer Science major.........", " I am Full Stack Developer with 5 years of experience in Software Industry..........", "My expertise are Java, Hibernate, Spring, MySQL, JQuery, Ajax and JavaScript.","Experience RESTfull Web Service and OAuth authorization process....",  "Familier with Apache Tomcat 8, Glassfish and JavaEE servers......","Build a university finding decision making algorithm........","Currently, I am actively seeking internship and full time opportunity.....","Thank you for visiting my project.....","Have a good day......","Welcome to my Java, Hibernate, Spring(MVC) project.........","My name is Shubham, Graduate Student in Computer Science major.........", " I am Full Stack Developer with 5 years of experience in Software Industry..........", "My expertise are Java, Hibernate, Spring, MySQL, JQuery, Ajax and JavaScript.","Experience RESTfull Web Service and OAuth authorization process....",  "Familier with Apache Tomcat 8, Glassfish and JavaEE servers......","Build a university finding decision making algorithm........","Currently, I am actively seeking internship and full time opportunity.....","Thank you for visiting my project.....","Have a good day......","Welcome to my Java, Hibernate, Spring(MVC) project.........","My name is Shubham, Graduate Student in Computer Science major.........", " I am Full Stack Developer with 5 years of experience in Software Industry..........", "My expertise are Java, Hibernate, Spring, MySQL, JQuery, Ajax and JavaScript.","Experience RESTfull Web Service and OAuth authorization process....",  "Familier with Apache Tomcat 8, Glassfish and JavaEE servers......","Build a university finding decision making algorithm........","Currently, I am actively seeking internship and full time opportunity.....","Thank you for visiting my project.....","Have a good day......","Welcome to my Java, Hibernate, Spring(MVC) project.........","My name is Shubham, Graduate Student in Computer Science major.........", " I am Full Stack Developer with 5 years of experience in Software Industry..........", "My expertise are Java, Hibernate, Spring, MySQL, JQuery, Ajax and JavaScript.","Experience RESTfull Web Service and OAuth authorization process....",  "Familier with Apache Tomcat 8, Glassfish and JavaEE servers......","Build a university finding decision making algorithm........","Currently, I am actively seeking internship and full time opportunity.....","Thank you for visiting my project.....","Have a good day......","Welcome to my Java, Hibernate, Spring(MVC) project.........","My name is Shubham, Graduate Student in Computer Science major.........", " I am Full Stack Developer with 5 years of experience in Software Industry..........", "My expertise are Java, Hibernate, Spring, MySQL, JQuery, Ajax and JavaScript.","Experience RESTfull Web Service and OAuth authorization process....",  "Familier with Apache Tomcat 8, Glassfish and JavaEE servers......","Build a university finding decision making algorithm........","Currently, I am actively seeking internship and full time opportunity.....","Thank you for visiting my project.....","Have a good day......","Welcome to my Java, Hibernate, Spring(MVC) project.........","My name is Shubham, Graduate Student in Computer Science major.........", " I am Full Stack Developer with 5 years of experience in Software Industry..........", "My expertise are Java, Hibernate, Spring, MySQL, JQuery, Ajax and JavaScript.","Experience RESTfull Web Service and OAuth authorization process....",  "Familier with Apache Tomcat 8, Glassfish and JavaEE servers......","Build a university finding decision making algorithm........","Currently, I am actively seeking internship and full time opportunity.....","Thank you for visiting my project.....","Have a good day......","Welcome to my Java, Hibernate, Spring(MVC) project.........","My name is Shubham, Graduate Student in Computer Science major.........", " I am Full Stack Developer with 5 years of experience in Software Industry..........", "My expertise are Java, Hibernate, Spring, MySQL, JQuery, Ajax and JavaScript.","Experience RESTfull Web Service and OAuth authorization process....",  "Familier with Apache Tomcat 8, Glassfish and JavaEE servers......","Build a university finding decision making algorithm........","Currently, I am actively seeking internship and full time opportunity.....","Thank you for visiting my project.....","Have a good day......","Welcome to my Java, Hibernate, Spring(MVC) project.........","My name is Shubham, Graduate Student in Computer Science major.........", " I am Full Stack Developer with 5 years of experience in Software Industry..........", "My expertise are Java, Hibernate, Spring, MySQL, JQuery, Ajax and JavaScript.","Experience RESTfull Web Service and OAuth authorization process....",  "Familier with Apache Tomcat 8, Glassfish and JavaEE servers......","Build a university finding decision making algorithm........","Currently, I am actively seeking internship and full time opportunity.....","Thank you for visiting my project.....","Have a good day......","Welcome to my Java, Hibernate, Spring(MVC) project.........","My name is Shubham, Graduate Student in Computer Science major.........", " I am Full Stack Developer with 5 years of experience in Software Industry..........", "My expertise are Java, Hibernate, Spring, MySQL, JQuery, Ajax and JavaScript.","Experience RESTfull Web Service and OAuth authorization process....",  "Familier with Apache Tomcat 8, Glassfish and JavaEE servers......","Build a university finding decision making algorithm........","Currently, I am actively seeking internship and full time opportunity.....","Thank you for visiting my project.....","Have a good day......",],
            typeSpeed: 45,
            backDelay: 500,
            loop: false,
            // defaults to false for infinite loop
            loopCount: false,
            callback: function(){ foo(); },
            resetCallback: function() { newTyped(); }
        });

        $(".reset").click(function(){
            $("#typed").typed('reset');
        });

    });

    function newTyped(){ /* A new typed object */ }

    function foo(){ console.log("Callback"); }
</script>	
</head>
<body>
  <div class="wrap">
    <div class="type-wrap">
      <span id="typed" style="white-space:pre;"></span>
    </div>
  </div>
</body>
</html>

