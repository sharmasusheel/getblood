

function checkEmail() {


    var email = document.getElementById("ContentPlaceHolder2_TextBox7");
    var filter = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;

    if (!filter.test(email.value)) {
        alert('Please provide a valid email address');
        email.focus;
        return false;
    }
}

function checkEmail() {


    var email = document.getElementById("ContentPlaceHolder2_TextBox1");
    var filter = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;

    if (!filter.test(email.value)) {
        alert('Please provide a valid email address');
        email.focus;
        return false;
    }
}

function ValidateMobNumber(ContentPlaceHolder2_TextBox6) {
    var fld = document.getElementById(ContentPlaceHolder2_TextBox6);

    if (fld.value == "") {
        alert("You didn't enter a phone number.");
        fld.value = "";
        fld.focus();
        return false;
    }
    else if (isNaN(fld.value)) {
        alert("The phone number contains illegal characters.");
        fld.value = "";
        fld.focus();
        return false;
    }
    else if (!(fld.value.length == 10)) {
        alert("The phone number is the wrong length. \nPlease enter 10 digit mobile no.");
        fld.value = "";
        fld.focus();
        return false;
    }

}


function validateForm() {
    var x = document.forms["myForm"]["ContentPlaceHolder2_TextBox7"].value;
    if (x == null || x == "") {
        alert("Name must be filled out");
        return false;
    }
}

        function confirmPass() {
            var pass = document.getElementById("ContentPlaceHolder2_TextBox8").value
            var confPass = document.getElementById("ContentPlaceHolder2_TextBox9").value
            if (pass != confPass) {
                alert('Wrong confirm password !');
            }
        }