$(document).ready(function() {
    $("#userName, #email, #password, #confirm, #title, #author, #my_thoughts").on("input", function() {
        var errorsId = $(this).attr("id") + "Errors";
        $("#" + errorsId).html(""); // Clear the error messages
    });
});