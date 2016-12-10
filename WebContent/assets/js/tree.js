$(document).ready(function() {
	$('.navbar-nav li').click(function(e) {
		e.preventDefault();
		$('li').removeClass('active');
		$(this).addClass('active');
	});
});

function onClickTab(url) {

	var xhttp;
	if (window.XMLHttpRequest) {
		// code for modern browsers

		xhttp = new XMLHttpRequest();
	} else {
		// code for IE6, IE5

		xhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xhttp.onreadystatechange = function() {
		if (this.readyState == 4 && this.status == 200) {
			document.getElementById("menu-content").innerHTML = this.responseText;
		}
	};
	xhttp.open("GET", url, true);
	xhttp.send();
}

function onClickPill(url) {
	var xhttp;
	if (window.XMLHttpRequest) {
		// code for modern browsers
		xhttp = new XMLHttpRequest();
	} else {
		// code for IE6, IE5
		xhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xhttp.onreadystatechange = function() {
		if (this.readyState == 4 && this.status == 200) {
			document.getElementById("left-menu-content").innerHTML = this.responseText;
		}
	};
	xhttp.open("GET", url, true);
	xhttp.send();
}
// phần cây
!function($) {

	// Le left-menu sign
	/* for older jquery version
	$('#left ul.nav li.parent > a > span.sign').click(function () {
	    $(this).find('i:first').toggleClass("icon-minus");
	}); */

	$(document).on("click", "#left ul.nav li.parent > a > span.sign",
			function() {
				$(this).find('i:first').toggleClass("icon-minus");
			});

	// Open Le current menu
	$("#left ul.nav li.parent.active > a > span.sign").find('i:first')
			.addClass("icon-minus");
	$("#left ul.nav li.current").parents('ul.children').addClass("in");

}(window.jQuery);

$(document).ready(function() {
	$('#btnShowModal').click(function() {
		$('#loginModal').modal('show');
	});
	$('#btnRegisterModal').click(function() {
		$('#RegisterModal').modal('show');
	});
	$('#btnHideModal').click(function() {
		$('#loginModal').modal('hide');
	});
	$('#btnHideModal1').click(function() {
		$('#RegisterModal').modal('hide');
	});
});

function myFunction() {
	var input, filter, table, tr, td, i;
	input = document.getElementById("myInput");
	filter = input.value.toUpperCase();
	table = document.getElementById("myTable");
	tr = table.getElementsByTagName("tr");
	for (i = 0; i < tr.length; i++) {
		td = tr[i].getElementsByTagName("td")[1];
		if (td) {
			if (td.innerHTML.toUpperCase().indexOf(filter) > -1) {
				tr[i].style.display = "";
			} else {
				tr[i].style.display = "none";
			}
		}
	}
}