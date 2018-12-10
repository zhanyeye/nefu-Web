$(function () {

    // 添加按钮点击，提交表单数据到AddNewsServlet，并通过AddAjaxServlet局部刷新新闻侧边栏
    let add = $("#add");
    $("button.add_ajax").click(function () {
        console.log("add_button");
        let title = $("#add_title_input").val();
        let content = $("#add_content_input").val();
        if (title == '' || content == '') {
            alert("新闻标题和内容请不要为空!!!")
        } else {
            $.ajax({
                type: "POST",
                url: "AddNewsServlet",
                data: $("#addform").serialize(),
                success: function () {
                    $.ajax({
                        url: "AddAjaxServlet",
                        method: "GET",
                        dataType: "html",
                        success: function (result) {
                            add.html(result);
                            document.getElementById("addform").reset();
                        }
                    })
                }
            })
        }
    })

    // 修改侧边栏点击，局部刷新填充出入框
    let update = $("#update");
    $("a.ajax").click(function () {
        $.ajax({
            url: $(this).prop("href"),
            method: "GET",
            dataType: "html",
            success: function (result) {
                update.html(result);
            }
        })
        return false;
    })

    // 修改按钮点击，提交数据到UpdateNewsServlet，并通过AlterSideAjaxServlet局部刷新侧边栏
    let alterside = $("#alterside")
    // Ajax动态拼接HTML，JS失效的,使用Jquery的事件委托
    $("#update").on("click", "button", function () {
        let title = $("#update_title_input").val();
        let id = $("#update_id_input").val();
        if (id == '') {
            alert("请选择右边的新闻进行修改");
        } else {
            $.ajax({
                type: "POST",
                url: "UpdateNewsServlet",
                data: $("#updateform").serialize(),
                success: function () {
                    $.ajax({
                        url: "AlterSideAjaxServlet",
                        method: "GET",
                        dataType: "html",
                        success: function (result) {
                            alterside.html(result);
                        }
                    })
                }
            })
        }

    })
    //Ajax动态拼接HTML，JS失效的,使用Jquery的事件委托
    $("#alterside").on("click", "a", function () {
        $.ajax({
            url: $(this).prop("href"),
            method: "GET",
            dataType: "html",
            success: function (result) {
                update.html(result);
            }
        })
        return false;
    })
})


//删除按钮点击局部刷新
let del = $("#del")
$("button.delete_ajax").click(function () {
    let delete_count = $(":checkbox[name=delete]:checked").size();
    if (delete_count == 0) {
        alert("请至少选择一个进行删除");
    } else {
        $.ajax({
            url: "DeleteNewsServlet",
            method: "POST",
            data: $("#deleteform").serialize(),
            success: function () {
                $.ajax({
                    url: "DeleteAjaxServlet",
                    method: "GET",
                    dataType: "html",
                    success: function (result) {
                        del.html(result);
                    }
                })
            }
        })
    }
})


//点击发布新闻 局部刷新 侧边栏新闻列表
$("#add_tab_a").click(function () {
    console.log("add_tab_a")
    $.ajax({
        url: "AddAjaxServlet",
        method: "GET",
        dataType: "html",
        success: function (result) {
            $("#add").html(result);
        }
    })
})

//点击修改新闻 局部刷新 侧边栏新闻列表
$("#update_tab_a").click(function () {
    console.log("update_tab_a")
    $.ajax({
        url: "AlterSideAjaxServlet",
        method: "GET",
        dataType: "html",
        success: function (result) {
            $("#alterside").html(result);
        }
    })
})

//点击删除新闻 局部刷新 侧边栏新闻列表
$("#delete_tab_a").click(function () {
    console.log("delete_tab_a")
    $.ajax({
        url: "DeleteAjaxServlet",
        method: "GET",
        dataType: "html",
        success: function (result) {
            $("#del").html(result);
        }
    })
})

