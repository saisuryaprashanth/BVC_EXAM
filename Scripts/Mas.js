jQuery(document).ready(function () {
    jQuery('.toggle-nav').click(function (e) {
        jQuery(this).toggleClass('active');
        jQuery('.menu ul').toggleClass('active');

        e.preventDefault();
    });
});

function checkinput() {
    name = document.getElementById("input1").value;
    pass = document.getElementById("input2").value;
    if (name != "" && pass != "") {
        alert("username=" + name);
        alert("password=" + pass);
    }
    else {
        alert("username=" + name);
        
    }


}