<%@page pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title>生成订单 - 当当网</title>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<link href="css/login.css" rel="stylesheet" type="text/css" />
		<link href="css/page_bottom.css" rel="stylesheet" type="text/css" />
		<script type="text/javascript" src="js/jquery-1.4.3.js"></script>
		<script type="text/javascript" src="js/address.js"></script>
	</head>
	<body>
		<%@include file="common/head1.jsp"%>
		<div class="login_step">
			生成订单骤: 1.确认订单 &gt;
			<span class="red_bold"> 2.填写送货地址</span> &gt; 3.订单成功
		</div>
		<div class="fill_message">
			<form name="ctl00" method="post" action="address" id="f">
			<input type="hidden" id="userId"  name="userId" value="#" />

				<table class="tab_login">
					<tr>
						<td valign="top" class="w1">
							收件人姓名：
						</td>
						<td>
							<input type="text" class="text_input" name="receiveName"
								id="receiveName" />
							<div class="text_left" id="nameValidMsg">
								<p>
									请填写有效的收件人姓名<font color="red">*(带星号的必须填写)</font>
								</p>
							</div>
						</td>
					</tr>
					<tr>
						<td valign="top" class="w1">
							收件人详细地址：
						</td>
						<td>
							<input type="text" name="fullAddress" class="text_input"
								id="fullAddress" />
							<div class="text_left" id="addressValidMsg">
								<p>
									请填写有效的收件人的详细地址<font color="red">*</font>
								</p>
							</div>
						</td>
					</tr>
					<tr>
						<td valign="top" class="w1">
							邮政编码
						</td>
						<td>
							<input type="text" class="text_input" name="postalCode"
								id="postalCode" />
							<div class="text_left" id="codeValidMsg">
								<p>
									请填写有效的收件人的邮政编码<font color="red">*</font>
								</p>
							</div>
						</td>
					</tr>
					<tr>
						<td valign="top" class="w1">
							电话
						</td>
						<td>
							<input type="text" class="text_input" name="phone"
								id="phone" />
							<div class="text_left" id="phoneValidMsg">
								<p>
									请填写有效的收件人的电话
								</p>
							</div>
						</td>
					</tr>
					<tr>
						<td valign="top" class="w1">
							手机
						</td>
						<td>
							<input type="text" class="text_input" name="mobile"
								id="mobile" />
							<div class="text_left" id="mobileValidMsg">
								<p>
									请填写有效的收件人的手机<font color="red">*</font>
								</p>
							</div>
						</td>
					</tr>
				</table>

				<div class="login_in">
					<!-- 点击取消返回http://localhost:8080/dangdang/order地址 -->
					<input id="cancel" class="button_1" type="button" onclick='location="order"' value="取消" />
					<input id="next" class="button_1" type="submit"  disabled="disabled" value="下一步" />
					
				</div>
			</form>
		</div>
		<%@include file="common/foot1.jsp"%>
	</body>
</html>

