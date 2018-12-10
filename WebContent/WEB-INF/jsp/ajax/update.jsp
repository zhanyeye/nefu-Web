<%@ page pageEncoding="UTF-8"%>
<br />
<form id="updateform" class="form-horizontal" action="UpdateNewsServlet" method="POST">
	<div class="form-group">
		<label for="title" class="col-sm-1 control-label">标题</label>
		<div class="col-sm-10">
			<input type="hidden" id="update_id_input" name="newid" value="${news.id}">
			<input type="text" name="title" class="form-control" id="title" value="${news.title}" placeholder="Title">
		</div>
	</div>
	<div class="form-group">
		<label for="outline" class="col-sm-1 control-label">摘要</label>
		<div class="col-sm-10">
			<input type="text" name="outline" class="form-control" id="outline" value="${news.outline}" placeholder="Outline">
		</div>
	</div>
	<div class="form-group">
		<label for="content" class="col-sm-1 control-label">内容</label>
		<div class="col-sm-10">
			<textarea name="content" class="form-control" id="content" rows="20"  placeholder="Content">${news.content}</textarea>
		</div>
	</div>
	<div class="form-group">
		<div class="col-sm-offset-10 col-sm-10">
			<button id="update_ajax" type="button" class="btn btn-default">修改</button>
		</div>
	</div>
</form>
