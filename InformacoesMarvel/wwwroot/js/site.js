// Please see documentation at https://docs.microsoft.com/aspnet/core/client-side/bundling-and-minification
// for details on configuring this project to bundle and minify static web assets.

// Write your JavaScript code.


$(".abrirModal").click(function () {
    var url = $(this).find("img").attr("src");
    $(".modal-body img").attr("src", url);
    //$(".modal-body").html("<img src='"+url+"'/>")
    $("#exampleModal").modal("show");
});

