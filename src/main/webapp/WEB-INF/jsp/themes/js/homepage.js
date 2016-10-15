// Get the modalmodal
var modalmodal = document.getElementById('id01');
var modalmodal2 = document.getElementById('id02');

// When the user clicks anywhere outside of the modalmodal, close it
window.onclick = function(event) {
    if (event.target == modalmodal) {
        modalmodal.style.display = "none";
    }
    window.onclick = function(event) {
        if (event.target == modalmodal2) {
            modalmodal2.style.display = "none";
        }
}
}
$('#testimonial').carousel({
	  interval: 10000
	})
	$('#myCarousel').carousel({
	  interval: 7000
	})
  $(function(){

        $("#typed").typed({
            stringsElement: $('#typed-strings'),
            typeSpeed: 30,
            backDelay: 500,
            loop: false,
            contentType: 'html', 
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
