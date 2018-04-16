function addBreadcrumb(obj, parent) {
    var parentName = "";

    switch (parent) {
        case 'XT':
            parentName = "系统";
            break;
        case 'YL':
            parentName = "一览";
            break;
    }

    $("#breadcrumb .add").remove();
    $("#breadcrumb").append("<li class='add'><a href='#'>" + parentName + "</a></li>");
    $("#breadcrumb").append("<li class='add'>" + $(obj).text() + "</li>");
}

$(function() {
    $(".main_menu").on("click", function () {
        // $(this).parent().children().removeClass("open husb");
        // $(this).addClass("husb");
    });

    $(".submenu li a").on("click", function() {
        $(".submenu li").removeClass("active");
        $(this).parent().addClass("active");
        var href = $(this).attr("href");
        $("#contentFrame").attr("src", href);
        return false;
    });
});