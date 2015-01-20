<%@page import="com.dongeejiao.manage.bean.Config"%>
<%@page import="org.springframework.web.context.support.WebApplicationContextUtils"%>
<%@page import="com.dongeejiao.basis.search.BottomLinkSearchBean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.dongeejiao.basis.bean.BottomLink"%>
<%@page import="java.util.List"%>
<%@page import="com.dongeejiao.basis.service.BottomLinkServiceImpl"%>
<%@page import="com.dongeejiao.basis.service.BottomLinkService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>     

	<div style="width:100%;background-color: #282828;">
				<footer>
					<div class="container">
						<div class="row fonthei" style="margin: auto;">
							<div >
								<div class="footlink" style="color:white;">
									<c:choose>
										<c:when test="${sessionScope.supplier != null }">
											<a href="<c:url value="/supplier/logout.htm?from=${requestScope['javax.servlet.forward.servlet_path']}"/> ">注销</a>&nbsp;|
											<a href="<c:url value="/supplier/p/home.htm"/> ">个人中心</a>&nbsp;|
										</c:when>
										<c:otherwise>
											<a href="<c:url value='/supplier/goRegistSupplier.htm'/> ">供应商注册</a>&nbsp;|
											<a href="<c:url value='/supplier/goLogin.htm'/> ">供应商登录</a>&nbsp;|											
										</c:otherwise>
									</c:choose>
									<% 
										BottomLinkService bottomLinkService = (BottomLinkService) WebApplicationContextUtils.getWebApplicationContext(application).getBean("bottomLinkService");
										List<BottomLink> bottomLinkList = new ArrayList<BottomLink>();
										BottomLinkSearchBean condition = new BottomLinkSearchBean();
										condition.setOrderSql("order by order_num asc");
										condition.setStatus(1);
										bottomLinkList = bottomLinkService.getBottomLinkByCondition(condition);
									
										 for(int i=0; i < bottomLinkList.size(); i++){ %>
										<% if(i < (bottomLinkList.size()-1)){ %>
											<% if(bottomLinkList.get(i).getLinkType() == 0){ %>
												<a href="${pageContext.request.contextPath}<% out.print(bottomLinkList.get(i).getLinkUrl()); %>"><% out.print(bottomLinkList.get(i).getLinkName()); %></a>&nbsp;|
											<% }else{ %>
												<a href="<% out.print(bottomLinkList.get(i).getLinkUrl()); %>"><% out.print(bottomLinkList.get(i).getLinkName()); %></a>&nbsp;|
											<% } %>
										<% }else{ %>
											<% if(bottomLinkList.get(i).getLinkType() == 0){ %>
												<a href="${pageContext.request.contextPath}<% out.print(bottomLinkList.get(i).getLinkUrl()); %>"><% out.print(bottomLinkList.get(i).getLinkName()); %></a>
											<% }else{ %>
												<a href="<% out.print(bottomLinkList.get(i).getLinkUrl()); %>"><% out.print(bottomLinkList.get(i).getLinkName()); %></a>
											<% } %>										
										<% } %>
									<%} %>
								</div>
								<div class="footlink" style="color:white;padding-top: 7px;"><%=Config.siteConfig.getSiteCopyright() %>
									&nbsp;&nbsp;&nbsp;<a href="<c:url value = "/goContact.htm" />">联系我们  </a>&nbsp;&nbsp;&nbsp;<a href="<c:url value='/approachDEEJ.htm'/>">关于我们</a>
								</div>
							</div>
						</div>
					</div>
				</footer>
			</div>
