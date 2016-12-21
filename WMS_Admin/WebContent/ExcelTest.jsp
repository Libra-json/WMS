<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<!-- 给按钮使用 -->
<link rel="stylesheet" href="vendor/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="assets/css/styles.css">

<!-- 导入文件样式 -->
<link rel="stylesheet" href="vendor/jquery-file-upload/css/jquery.fileupload-ui.css">
<link rel="stylesheet" href="assets/css/plugins.css">
<link rel="stylesheet" href="assets/css/themes/theme-1.css" id="skin_color" />

<!-- 上传文件框使用 -->
<link href="vendor/bootstrap-fileinput/jasny-bootstrap.min.css" rel="stylesheet" media="screen">

<!-- 弹窗使用 -->
<link href="vendor/sweetalert/sweet-alert.css" rel="stylesheet" media="screen">
<link href="vendor/sweetalert/ie9.css" rel="stylesheet" media="screen">

<style type="text/css">
	/* 需要做弹出表单的使用这段 */
	@media ( min-width :768px) {/* 表示最小是768也就是>=768 分辨率 的情况下*/
		/* 这是默认宽度 */
		.modal-dialog {
			width: 600px;
			margin: 30px auto
		}
		.modal-content {
			-webkit-box-shadow: 0 5px 15px rgba(0, 0, 0, .5);
			box-shadow: 0 5px 15px rgba(0, 0, 0, .5)
		}
		/* 需要改变默认宽度的改以下宽度 */
		.modal-sm {
			width: 300px
		}
	}
</style>

<title>Insert title here</title>
</head>
<body>
	<form action="excel/deriveExcel.do" method="post">
		<button type="submit" class="btn btn-primary btn-o">
			导出
		</button>
		<button type="button" class="btn btn-primary btn-o" data-toggle="modal" data-target=".bs-example-modal-sm">
			导入
		</button>
		<button type="button" class="btn btn-primary basic-message" onclick="successMessage()">
			弹窗
		</button>
		<button type="button" class="btn btn-primary basic-message" onclick="warningMessage()">
			删除数据
		</button>
	</form>
	
	<form method="post" id="noteForm">
		<div style="border: 1px solid gray;margin-top: 25px;width:30%;">
			<div style="margin-bottom:20px;margin-left: 40px;margin-top: 25px;">
				<label for="showEasing" class="control-label">
					收信人:
				</label><br/>
				<input type="text" style="width:85%;" name="mobile" class="input-small" id="showEasing" placeholder="请输入收件人">
		    </div>
			
			<div style="margin-bottom:20px;margin-left:40px;">
				<label for="wordtext" class="control-label">
					短信内容:
				</label><br/>
				<textarea id="wordtext" name="content" style="width:85%;height:100px;" placeholder="请输入短信内容"></textarea>
		        <div id="wordage"></div>
			</div>
			<button type="button" onclick="fsNote()" style="margin-bottom: 20px;margin-left: 40px;" class="btn btn-wide btn-success">
				确认发送
			</button>
		</div>
	</form>
	
	<!-- 弹出框 -->
	<div class="modal fade bs-example-modal-sm"  tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-sm"><!-- modal-dialog是默认宽度，modal-sm 是对默认宽度的改变 -->
			<div class="modal-content">
				<form enctype="multipart/form-data" id="fileSC">
					<div class="modal-header" align="center">
						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
						<h4 class="modal-title" id="myModalLabel">请上传需要导入的文件</h4>
					</div>
					
					<!-- 导入信息例子 -->
					<input type="hidden" value="${requestScope.result}" id="result"/>
					<div class="modal-body" align="center">
						<div class="fileinput fileinput-new" data-provides="fileinput">
							<div class="fileinput-new thumbnail">
								<img src="assets/images/file图片.jpeg" alt="">
							</div>
							<div class="fileinput-preview fileinput-exists thumbnail"></div>
							<div class="user-edit-image-buttons">
								<span class="btn btn-azure btn-file">
									<span class="fileinput-new">
										<i class="fa fa-picture"></i>
										请选择文件，所上传文件必须为Excel
									</span>
									<span class="fileinput-exists">
										<i class="fa fa-picture"></i> 重新选择
									</span>
									<input type="file" name="gain" id="gain" required>
								</span>
								<a href="#" class="btn fileinput-exists btn-red" data-dismiss="fileinput">
									<i class="fa fa-times"></i> 删除
								</a>
							</div>
						</div>
					</div>
					
					<div class="modal-footer">
						<button type="button" class="btn btn-primary btn-o" data-dismiss="modal">
							关闭
						</button>
						<button type="button" onclick="submitForm()" class="btn btn-primary">
							提交
						</button>
					</div>
				</form>
			</div>
		</div>
	</div>
	<!-- ============导入js包============= -->
	<script src="assets/js/jquery-3.1.1.min.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
	<script src="vendor/modernizr/modernizr.js"></script>
	<script src="vendor/jquery-cookie/jquery.cookie.js"></script>
	<script src="vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>
	<script src="vendor/bootstrap-fileinput/jasny-bootstrap.js"></script>
	<script src="assets/js/main.js"></script>
	<!-- 上传文件需导入此包 -->
	<script src="vendor/jquery/jquery-form.js"></script>
	
	<!-- 提示弹窗使用 -->
	<script src="vendor/sweetalert/sweet-alert.min.js"></script>
	<script type="text/javascript">
        var dlimitNum = 65;
        var dpattern = '还可以输入' + dlimitNum + '字';
        document.getElementById("wordage").innerHTML = dpattern;
        
        $("#wordtext").keyup(function(){
            var dremain = $(this).val().length;
            if (dremain > 65){
                pattern = "字数超过65个限制！请重新输入！";
            } else {
                var dresult = 65 - dremain;
                dpattern = '还可以输入' + dresult + '字';
            }
            document.getElementById("wordage").innerHTML = dpattern;
        });
        
		function submitForm() {
			$("#fileSC").ajaxSubmit({
	            type: 'post',
	            url: 'excel/toLead.do', 
	            success: function(data) {
	            	if(data.result=="2"){
	            		swal({
							title: "导入失败!",
							text:"请注意文件格式",
							confirmButtonColor: "#007AFF"
						});
						data.preventDefault
					}else if(data.result=="1"){
						swal({
							title: "导入成功!",
							type: "success",
							confirmButtonColor: "#007AFF"
						},function() {
							window.location.href='ExcelTest.jsp';
						});
						data.preventDefault
					}
	            }
	        });
		}
		
		function successMessage() {
			swal({
				title: "弹出成功!",
				text: "你点击了弹出成功消息框！",
				type: "success",
				confirmButtonColor: "#007AFF"
			});
		}
		
		function warningMessage() {
			swal({
				title: "确认要删除?",
				text: "删除后的数据将不可恢复!",
				type: "warning",
				showCancelButton: true,
				confirmButtonColor: "#007AFF",
				confirmButtonText: "确认删除",
				cancelButtonText: "取消删除",
				closeOnConfirm: false
			}, function() {
				swal("删除成功!", "您选择的数据已成功删除！", "success");
			});
		}
		
		function fsNote(){
			var showEasing = document.getElementById("showEasing").value;
			var wordtext = document.getElementById("wordtext").value;
			$.post("excel/note.do",
					{"mobile":showEasing,"content":wordtext},
	            	function(data) {
						if(data.result=="fail"){
		            		swal({
								title: "发送失败!",
								text:"请注意填选收信人的格式！",
								confirmButtonColor: "#007AFF"
							});
							data.preventDefault
						}else if(data.result=="seccuss"){
							swal({
								title: "发送成功!",
								type: "success",
								confirmButtonColor: "#007AFF"
							},function() {
								window.location.href='ExcelTest.jsp';
							});
							data.preventDefault
						}
					}
				);
		}
	</script>
	<script>
		jQuery(document).ready(function() {
			Main.init();
			UINotifications.init();
		});
	</script>
	
</body>
</html>