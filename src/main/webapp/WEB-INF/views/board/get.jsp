<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../includes/header.jsp"%>


<div class="row">
	<div class="col-lg-12">
		<h1 class="page-header">Board Read</h1>
	</div>
	<!-- /.col-lg-12 -->
</div>
<!-- /.row -->
<div class="row">
	<div class="col-lg-12">
		<div class="panel panel-default">
			<div class="panel-heading">Board Read Page</div>
				
			
			
			<div class="panel-body">
							
							<div class="form-group">
								<label>Bno</label>
								<input class="form-control" name="bno" 
								value='<c:out value="${board.bno }"/>' readonly="readonly">
							</div>
				
							<div class="form-group">
								<label>Title</label>
								<input class="form-control" name="title" 
								value='<c:out value="${board.title}"/>' readonly="readonly">
							</div>
							<div class="form-group">
								<label>Content</label>
							    <textarea class="form-control" rows="3" name="content" 
							    readonly="readonly"> <c:out value="${board.content}"></c:out>
							     </textarea>
							    </div>
							<div class="form-group">
								<label>Writer</label>
							    <input class="form-control" name="writer" 
								value='<c:out value="${board.writer}"/>' readonly="readonly">
							    </div>
							   <button data-oper='modify' class="btn btn-default" onclick="location.href='/board/modify?bno=<c:out value="${board.bno}" />'">수정</button>
							   <button data-oper='list' class="btn btn-info" onclick="location.href='/board/list'"> List </button>
							
							<form action="/board/modify" method="get" id="operForm">
								<input type="hidden" id="bno" name="bno" value="<c:out value="${board.bno}"/>">
								<input type="hidden" name="pageNum" value="<c:out value="${cri.pageNum}"/>">
								<input type="hidden" name="amount" value="<c:out value="${cri.amount}"/>">
								<!-- page 345 소스 추가 -->
								<input type="hidden" name="keyword" value="<c:out value="${cri.keyword}"/>">
								<input type="hidden" name="type" value="<c:out value="${cri.type}"/>">
								
							</form>
			</div>
			<!-- /.panel-body -->
		</div>
		<!-- /.panel -->
	</div>
	<!-- /.col-lg-12 -->
</div>
<!-- /.row -->
<script type="text/javascript">
	$(document).ready(function() {
		
		var operForm = $("#operForm");
		
		$("button[data-oper='modify']").on("click", function(e) {
			operForm.attr("action", "/board/modify").submit();
		});
		
		$("button[data-oper='list']").on("click", function(e) {
			operForm.find("#bno").remove();
			operForm.attr("action", "/board/list")
			operForm.submit();
		});
	});



</script>
<%@ include file="../includes/footer.jsp"%>

</body>
</html>