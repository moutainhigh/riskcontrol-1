<%@ include file="/common/taglibs.jsp"%>

<%@ page language="java" pageEncoding="UTF-8" contentType="text/html;charset=UTF-8" %>
<%@ page import="cn.com.brilliance.begen.common.webapp.action.ResultPage" %>
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

<script type="text/javascript" src="<%=basePath%>/scripts/behaviour.js"></script>
<script type="text/javascript" src="<%=basePath%>/scripts/getclass.js"></script>
<script type="text/javascript" src="<%=basePath%>/scripts/calculator.js"></script>
<script type="text/javascript" src="<%=basePath%>/scripts/edit.js"></script>
<script>
var imagePath = "<%=basePath%>/images";
var scriptPath = "<%=basePath%>/scripts";
</script>
</head>
<body onload="loadHidInfo();getDateObj();loadDateSelect();">
<center>
<input type="hidden" name="checkcontent" id="checkcontent">
<jsp:include flush="true" page="../common/infobar.jsp"></jsp:include>
<f:view>

	<f:loadBundle var="text" basename="ApplicationResources" />
	<t:saveState value="#{triskcaseForm.triskcasePrimaryKey}" />
	<t:saveState value="#{triskcaseForm.triskcase}" />
	<t:saveState value="#{extTriskcaseForm.url}" />
	<t:saveState value="#{extTriskcaseForm.flag}" />
	<t:saveState value="#{extTriskcaseForm.successUrl}" />
	<h:form id="triskcaseForm" style="width:96%;">
    	<div class="mytab1">
    	    <ul class="myTabBar1">
    	      <li class="Selected"><a href="#"><h:outputText value="输入退回意见" /></a></li>
    	    </ul>
    	</div>
		<h:panelGrid columns="1" cellspacing="0" cellpadding="0" styleClass="mainTable">
			<h:panelGrid columns="1" cellspacing="0" cellpadding="0" styleClass="titleTable" columnClasses="titleTdClass" >
    			<h:panelGroup>
        			<f:verbatim><ul id="tool_r"></f:verbatim>

<f:verbatim><li></f:verbatim>
		            <h:commandLink action="#{extTriskcaseForm.back}" onclick="if(confirm('确定退回')){;}else{return false;}">
						<f:verbatim><span class="linkDelImg"></span></f:verbatim><h:outputText styleClass="buttonText" value="确定" />
						<t:updateActionListener property="#{actionParameter.successAction}" value="#{extTriskcaseForm.successUrl}" />
					</h:commandLink>
<f:verbatim></li></f:verbatim>	
<f:verbatim><li></f:verbatim>				
		            <h:commandLink onclick="window.open('#{extTriskcaseForm.url}','_self','');return false" >
						<f:verbatim><span class="linkSaveImg"></span></f:verbatim><h:outputText styleClass="buttonText" value="取消" />
					</h:commandLink>
<f:verbatim></li></f:verbatim>

	            <f:verbatim></ul></f:verbatim>
    			</h:panelGroup>
			</h:panelGrid>
			
		<h:panelGrid columns="1" cellspacing="0" cellpadding="0" styleClass="sectionTable" headerClass="sectionHeader" footerClass="mainFooter2">
			<f:facet name="header">
				<h:outputText value="请输入退回意见" />
			</f:facet>	

			<h:panelGrid columns="2" cellspacing="0" cellpadding="0" styleClass="sectionTable" columnClasses="rowTable1,rowTable5" headerClass="mainHeader" footerClass="mainFooter">
			<h:panelGrid columns="2" cellspacing="0" cellpadding="0" styleClass="sectionTable" columnClasses="colTitle,colValue">
				<h:outputLabel for="comments6" styleClass="outputlabel" value="#{text['triskcase.comments6']}" />
	           <h:panelGroup>
		         <f:verbatim><span class="notw"></span></f:verbatim>
                      <h:panelGroup>
			              <h:inputTextarea id="comments6" value="#{triskcaseForm.triskcase.comments6}" rows="4" style="width:'86%';"   readonly="false" tabindex="15" styleClass="edit_textarea" >
                          </h:inputTextarea>			

                       </h:panelGroup>

				
                               </h:panelGroup>	            <h:inputHidden />
			    <x:message for="comments1" styleClass="fieldError" />
			</h:panelGrid>
			<h:inputHidden />

  			</h:panelGrid>


		</h:panelGrid>
		</h:panelGrid>
	<input type="hidden" name="tdClospan" value="2">
	</h:form>
	<s:validatorScript functionName="validateTriskcaseForm" />
<%@ include file="../calculator.jsp"%>
</f:view>
</body>