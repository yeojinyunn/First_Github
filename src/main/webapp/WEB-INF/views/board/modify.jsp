<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../includes/header.jsp"%>


<div class="row">
	<div class="col-lg-12">
		<h1 class="page-header">Board Modify</h1>
	</div>
	<!-- /.col-lg-12 -->
</div>
<!-- /.row -->
<div class="row">
	<div class="col-lg-12">
		<div class="panel panel-default">
			<div class="panel-heading">Board Modify Page</div>
				
			
			
			<div class="panel-body">
				<form action="/board/modify" method="post" role="form">
				     <!-- page 318, page 319 추가 코딩 -->
					<input type="hidden" name="pageNum" value="<c:out value="${cri.pageNum}"/>">
					<input type="hidden" name="amount" value="<c:out value="${cri.amount}"/>">
					<!-- page 346 소스 추가  -->
					<input type="hidden" name="type" value="<c:out value="${cri.type}"/>">
					<input type="hidden" name="keyword" value="<c:out value="${cri.keyword}"/>">
							<div class="form-group">
								<label>Bno</label>
								<input class="form-control" name="bno" 
								value='<c:out value="${board.bno }"/>' readonly="readonly">
							</div>
				
							<div class="form-group">
								<label>Title</label>
								<input class="form-control" name="title" 
								value='<c:out value="${board.title}"/>' >
							</div>
							<div class="form-group">
								<label>Content</label>
							    <textarea class="form-control" rows="3" name="content" 
							    > <c:out value="${board.content}"></c:out>
							     </textarea>
							    </div>
							<div class="form-group">
								<label>Writer</label>
							    <input class="form-control" name="writer" 
								value='<c:out value="${board.writer}"/>' readonly="readonly">
							    </div>
							 <div class="form-group">
								<label>RegDate</label>
							    <input class="form-control" name="regdate" 
								value='<fmt:formatDate value="${board.regdate}"
									pattern="yyyy/MM/dd" />' readonly="readonly">
							    </div>
							   <div clas`s="form-group">
								<label>UpdateDate</label>
							    <input class="form-control" name="updateDate" 
								value='<fmt:formatDate value="${board.updateDate}"
									pattern="yyyy/MM/dd" />' readonly="readonly">
							    </div>
							   <button data-oper='modify'  class="btn btn-default"> 수정 </button>
							   <button data-oper='remove' class="btn btn-danger"> 삭제 </button>
							   <button data-oper='list' class="btn btn-info"> 글 목록 조회 </button>
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
 
               $(document).ready(function () {
                  var formObj = $("form");
                  
                  // javascript에서 button 태그의 'data-opper'속성을 이용해서 원하는 기능을 동작하도록 처리
                  
                  $('button').on("click", function(e){
                    // form 태그의 모든 버틍는 기본적으로 submit으로 처리하기 때문에 e.preventDefault() 메서드로,
                    // 기본 동작을 제한하고,
                  
                    e.preventDefault();
                    
                  var operation = $(this).data("oper");
                  
                  console.log(operation);
                  
                  if(operation === 'remove'){
                     formObj.attr("action", "/board/remove");
                  } else if (operation === 'list') {
                  
         // move to list : 수정 페이지(modify)에서 사용자가 다시 목록 페이지로 이동할 수 있도록 Javascript를 다음과 같이 조금 수정합니다.
       	// 수정된 내용은 클릭한 버튼이 List인 경우 action 속성과 method 속성을
         // 변경합니다. '/board/list'로의 이동은 아무런 파라미터가 없기 때문에
         // form 태그의 모든 내용은 삭제한 상태에서 submit()을 진행합니다.
         
         formObj.attr("action", "/board/list").attr("method", "get");
                  // 만약 사용자가 data-oper 속성의 "글 목록 조회" 버튼을 클릭한다면
                  // form 태그에서 필요한 부분만 잠시 복사(clone)해서 보관해두고,
                  // form 태그 내의 모든 내용은 초기화처리합니다 (empty)
                  // 이후에 다시 필요한 태그들만 추가해서 (append)
                  //'/board/list'를 호출하는 형태를 이용합니다
                  var pageNumTag = $("input[name='pageNum']").clone();
                  var amountTag = $("input[name='amount']").clone();
                  // page 347 소스 추가
                  var keywordTag = $("input[name='keyword']").clone();
                  var typeTag = $("input[name='type']").clone();
                  
                  formObj.empty();
                  formObj.append(pageNumTag);
                  formObj.append(amountTag);
                  formObj.append(keywordTag);
                  formObj.append(typeTag);
                  
                  // self.location = "/board/list";
                  // return;
               }
                  // 마지막에 직접 submit()메서드를 처리합니다.
                  formObj.submit();
            });
         });
            </script>
            
            
<%@ include file="../includes/footer.jsp"%>

</body>
</html>