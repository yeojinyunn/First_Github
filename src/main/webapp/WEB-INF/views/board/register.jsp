<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../includes/header.jsp"%>


<div class="row">
	<div class="col-lg-12">
		<h1 class="page-header">Board Register</h1>
	</div>
	<!-- /.col-lg-12 -->
</div>
<!-- /.row -->
<div class="row">
	<div class="col-lg-12">
		<div class="panel panel-default">
			<div class="panel-heading">board register</div>
				
			
			
			<div class="panel-body">
			<form action="/board/register" method="post" role="form">
							<div class="form-group">
								<label>Title</label>
								<input class="form-control" name="title">
							</div>
							<div class="form-group">
								<label>Text area</label>
							    <textarea class="form-control" rows="3" name="content"></textarea>
							    </div>
							<div class="form-group">
								<label>Writer</label>
							    <input class="form-control" name="writer">
							    </div>
							   <button type="submit" class="btn btn-default"> 등록 </button>
							   <button type="reset" class="btn btn-default"> 취소 </button>
				</form>
			</div>
			<!-- /.panel-body -->
		</div>
		<!-- /.panel -->
	</div>
	<!-- /.col-lg-12 -->
</div>
<!-- /.row -->

<%@ include file="../includes/footer.jsp"%>

</body>
</html>