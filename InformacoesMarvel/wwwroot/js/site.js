// Please see documentation at https://docs.microsoft.com/aspnet/core/client-side/bundling-and-minification
// for details on configuring this project to bundle and minify static web assets.

// Write your JavaScript code.

$(function () {

    $("div.holder").jPages({
        containerID: "itemContainer",
        perPage: 45,
        first: false,
        //previous: "span.arrowPrev",
        //next: "span.arrowNext",
        last: false,

        callback: function (pages, items) {
            //$("#legend1").html("Page " + pages.current + " of " + pages.count);
            //$("#legend2").html(items.range.start + " - " + items.range.end + " of " + items.count);
            alert("offset = " + items.range.end);
        }

    });

});
