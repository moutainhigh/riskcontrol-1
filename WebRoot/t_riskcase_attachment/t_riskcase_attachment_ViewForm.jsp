<%@page import="java.util.*"%> 
<%@page import="javax.faces.context.FacesContext"%>
<%@page import="cn.com.brilliance.begen.common.BeGenHistory"%>
<%@ page import="cn.com.brilliance.begen.common.webapp.action.ResultPage" %>
<%@ include file="/common/taglibs.jsp"%>
<%@ page language="java" pageEncoding="UTF-8" contentType="text/html;charset=UTF-8" %>
<%
String basePath = request.getContextPath();
javax.faces.context.FacesContext.getCurrentInstance().getViewRoot().setLocale(cn.com.brilliance.begen.common.bundle.ResourceBundle.getLocale(request));

%>
<head>
<link rel="stylesheet" type="text/css" media="all" href="<%=basePath%>/styles/config.css" />
<link rel="stylesheet" type="text/css" media="all" href="<%=basePath%>/styles/right.css" />
<script type="text/javascript" src="<%=basePath%>/scripts/prototype.js"></script> 
<script type="text/javascript" src="<%=basePath%>/scripts/effects.js"></script>
<script type="text/javascript" src="<%=basePath%>/scripts/global.js"></script>
<script type="text/javascript" src="<%=basePath%>/scripts/common.js"></script>
</head>
<body onload="loadHidInfo();">	

<jsp:include flush="true" page="../common/infobar.jsp"></jsp:include>
<f:view>
		<f:loadBundle var="text" basename="ApplicationResources" />
<script language=javascript>
try{
	parent.historyIframe.addHistory('/t_riskcase_attachment/t_riskcase_attachment_ViewForm.faces?<%=FacesContext.getCurrentInstance().getApplication().createValueBinding("#{triskcaseAttachmentForm.historyUrlParameter}").getValue(FacesContext.getCurrentInstance())%>','<fmt:message key="triskcaseAttachment.t_riskcase_attachment_ViewForm.heading" />(<%=FacesContext.getCurrentInstance().getApplication().createValueBinding("#{triskcaseAttachmentForm.triskcaseAttachment.id}").getValue(FacesContext.getCurrentInstance()) %>)',"1")
}catch(e){}
</script>

<div class="mytab1">
    <ul class="myTabBar1"  id="listUl">
		<LI onclick="showListBefore()" style="display:none"><a href="#"><</a></LI>
<LI class="Selected" onclick="changeChildListForm(this,'triskcaseAttachmentForm');"><a href="#"><h:outputText value="#{text['triskcaseAttachment.t_riskcase_attachment_ViewForm.heading']}" /></a></LI>
<LI onclick="showListAfter()"  style="display:none"><a href="#">></a></LI>
</ul>
</div>
	<t:saveState value="#{triskcaseAttachmentForm.triskcaseAttachmentPrimaryKey}" />
	<h:form id="triskcaseAttachmentForm" >
		<h:inputHidden id="forId"/>
		<h:panelGrid columns="1" cellspacing="0" cellpadding="0" styleClass="mainTable">
			<h:panelGrid columns="1" cellspacing="0" cellpadding="0" styleClass="titleTable" columnClasses="titleTdClass" >
    			<h:panelGroup>
        			<f:verbatim><ul id="tool_r"></f:verbatim>
<f:verbatim><li></f:verbatim>
					<h:commandLink action="#{triskcaseAttachmentForm.edit}">				
						<f:verbatim><span class="linkEditImg"></span></f:verbatim><h:outputText styleClass="buttonText" value="#{text['actionview.t_riskcase_attachment.2c90834916e5db4a0116eb5d5326010a']}" />
						<t:updateActionListener property="#{actionParameter.successAction}" value="url:../t_riskcase_attachment/t_riskcase_attachment_EditForm.faces?_key=#{triskcaseAttachmentForm.triskcaseAttachment.id}"/>
					</h:commandLink>	
<f:verbatim></li></f:verbatim>
<f:verbatim><li></f:verbatim>
					<h:commandLink
						action="#{triskcaseAttachmentForm.delete}" onclick="if(!confirm('#{text['button.confirm.delete']}'))return false;">
						<f:verbatim><span class="linkDelImg"></span></f:verbatim><h:outputText styleClass="buttonText" value="#{text['actionview.t_riskcase_attachment.2c90834916e5db4a0116eb5d5345010b']}" />
					</h:commandLink>	
<f:verbatim></li></f:verbatim>
<f:verbatim></ul></f:verbatim>
			</h:panelGroup>
		</h:panelGrid>
		
		<h:panelGrid columns="1" cellspacing="0" cellpadding="0" styleClass="sectionTable" headerClass="sectionHeader">
			<f:facet name="header">
				<h:outputText value="#{text['section.t_riskcase_attachment.2c90834916e5db4a0116eb5d523b0105']}" />
			</f:facet>


			<h:panelGrid columns="2" cellspacing="0" cellpadding="0" styleClass="sectionTable" columnClasses="rowTable3,rowTable3" headerClass="mainHeader" footerClass="mainFooter">				
			<h:panelGrid columns="2" cellspacing="0" cellpadding="0" styleClass="sectionTable" columnClasses="colTitleView,colValueView">
				<h:outputLabel for="riskcaseId" styleClass="outputlabel" value="#{text['triskcaseAttachment.riskcaseId']}" />
				<h:outputLink id="riskcaseId_link" value="../t_riskcase/t_riskcase_ViewForm.faces?_key=#{triskcaseAttachmentForm.triskcaseAttachment.riskcaseId}">
    				<h:outputText id="riskcaseId" value="#{triskcaseAttachmentForm.triskcaseAttachment.riskcaseId}"/>
				</h:outputLink>	
	            <h:inputHidden />
			    <x:message for="riskcaseId" styleClass="fieldError" />
			</h:panelGrid>

  

			<h:panelGrid columns="2" cellspacing="0" cellpadding="0" styleClass="sectionTable" columnClasses="colTitleView,colValueView">
				<h:outputLabel for="filename" styleClass="outputlabel" value="#{text['triskcaseAttachment.filename']}" />
				<h:outputLink value="../FileDownloadServlet" styleClass="listbtn" rendered="#{not empty triskcaseAttachmentForm.triskcaseAttachment.filename}" target="_blank">
					<f:param name="fileLocation" value="t_riskcase_attachment/#{triskcaseAttachmentForm.triskcaseAttachment.id}/#{triskcaseAttachmentForm.triskcaseAttachment.filename}"/>
					<f:param name="fileName" value="#{triskcaseAttachmentForm.triskcaseAttachment.filename}"/>
					<h:outputText value="#{triskcaseAttachmentForm.triskcaseAttachment.filename}"/>
				</h:outputLink>
	            <h:inputHidden />
			    <x:message for="filename" styleClass="fieldError" />
			</h:panelGrid>

  			</h:panelGrid>


			<h:panelGrid columns="2" cellspacing="0" cellpadding="0" styleClass="sectionTable" columnClasses="rowTable3,rowTable3" headerClass="mainHeader" footerClass="mainFooter">				
			<h:panelGrid columns="2" cellspacing="0" cellpadding="0" styleClass="sectionTable" columnClasses="colTitleView,colValueView">
				<h:outputLabel for="content" styleClass="outputlabel" value="#{text['triskcaseAttachment.content']}" />
				<h:outputText id="content" value="#{triskcaseAttachmentForm.triskcaseAttachment.content}" />
	            <h:inputHidden />
			    <x:message for="content" styleClass="fieldError" />
			</h:panelGrid>

  

				<h:outputText value="" />
  			</h:panelGrid>
		</h:panelGrid>

		</h:panelGrid>
	</h:form>

	
</f:view>
</body>	