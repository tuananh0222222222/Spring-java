<%@ page pageEncoding="utf-8"%>
<%@ include file="/common/taglib.jsp" %>
<nav class="navbar navbar-inverse">
	<div class="container-fluid">
		<div class="navbar-header">
			<button class="navbar-toggle" data-toggle="collapse" data-target="#menu">
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="/home/index"><span class="glyphicon glyphicon-home"></span>Trang chủ</a>
		</div>
		<div class="collapse navbar-collapse" id="menu">
			<ul class="nav navbar-nav">
				
				 <li class="dropdown">
					<a class="dropdown-toggle" data-toggle="dropdown" href="#"> 
						<span class="glyphicon glyphicon-user"></span> Tài khoản
						<span class="caret"></span>
					</a>
					<ul class="dropdown-menu">
						<c:choose>
							<c:when test="${empty sessionScope.user}">
								<li><a href="/account/login">Đăng nhập</a></li>

								<li><a href="/account/register">Đăng kí</a></li>							
							</c:when>
							<c:otherwise>
								<li><a href="/account/logoff">Đăng xuất</a></li>
								<li><a href="/account/change">Thay đổi mật khẩu</a></li>
								<li><a href="/account/edit">Chỉnh sửa thông tin</a></li>
								<li class="divider"></li>
								<li><a href="/order/list">Đơn hàng</a></li>
						
								<c:if test="${sessionScope.user.admin}">
									<li class="divider"></li>
									<li><a href="/admin/home/index">Quản trị</a></li>
								</c:if>					
							</c:otherwise>
						</c:choose>
					</ul>
				</li>
			</ul>
			<ul class="nav navbar-nav navbar-right nn-lang">
				
			</ul>
		</div>
	</div>
</nav>


