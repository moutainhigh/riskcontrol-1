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

<script type="text/javascript" src="<%=basePath%>/scripts/behaviour.js"></script>
<script type="text/javascript" src="<%=basePath%>/scripts/getclass.js"></script>
<script type="text/javascript" src="<%=basePath%>/scripts/calculator.js"></script>
<script type="text/javascript" src="<%=basePath%>/scripts/edit.js"></script>
<script>
var imagePath = "<%=basePath%>/images" ;
var scriptPath = "<%=basePath%>/scripts" ;
</script>
</head>
<body onload="loadTruleInstanceGroup();getDateObj();">
<center>
<input type="hidden" name="checkcontent" id="checkcontent">
<jsp:include flush="true" page="../common/infobar.jsp"></jsp:include>
<f:view>

	<f:loadBundle var="text" basename="ApplicationResources" />
	<t:saveState value="#{truleInstanceGroupForm.truleInstanceGroupPrimaryKey}" />
	<t:saveState value="#{truleInstanceGroupForm.truleInstanceGroup}" />

	<h:form id="truleInstanceGroupForm" style="width:96%;">
	<div class="mytab1">
	    <ul class="myTabBar1">
	      <li class="Selected"><a href="#"><h:outputText value="#{text['truleInstanceGroup.t_rule_instance_group_form_EditForm.heading']}" /></a></li>
	    </ul>
	</div>
	<a4j:jsFunction name="loadTruleInstanceGroup" action="#{truleInstanceGroupForm.loadTruleInstanceGroup}" reRender="truleInstanceGroupForm" oncomplete="loadDateSelect()"></a4j:jsFunction>
    	<f:verbatim><div class="mytab1">
    	    <ul class="myTabBar1">
    	      <li class="Selected"><a href="#"></f:verbatim><h:outputText value="#{text['truleInstanceGroup.t_rule_instance_group_form_EditForm.heading']}" /><f:verbatim></a></li>
    	    </ul>
    	</div>
		</f:verbatim>
		<h:panelGrid columns="1" cellspacing="0" cellpadding="0" styleClass="mainTable">
			<h:panelGrid columns="1" cellspacing="0" cellpadding="0" styleClass="titleTable" columnClasses="titleTdClass" >
    			<h:panelGroup>
        			<f:verbatim><ul id="tool_r"></f:verbatim>?


		     <f:verbatim><li></f:verbatim>
		      <h:commandLink action="#{truleInstanceGroupForm.popSave}" tabindex="1"  onclick="  if(!validateTruleInstanceGroupForm(document.getElementById('truleInstanceGroupForm')))return; ">
					<f:verbatim><span class="linkSaveImg"></span></f:verbatim><h:outputText styleClass="buttonText" value="#{text['actionedit.t_rule_instance_group_form.2c90834916d142fa0116d324e887029c']}"/>
					</h:commandLink>
					<f:verbatim></li></f:verbatim>
			<f:verbatim><li></f:verbatim>
					<h:commandLink onclick="window.close()" >
					<f:verbatim><span class="linkClearImg"></span></f:verbatim><h:outputText styleClass="buttonText" value="#{text['button.cancel']}" />				
					</h:commandLink>
				<f:verbatim></li></ul></f:verbatim>
			</h:panelGroup>
		</h:panelGrid>
			
		<h:panelGrid columns="1" cellspacing="0" cellpadding="0" styleClass="sectionTable" headerClass="sectionHeader" footerClass="mainFooter2">
			<f:facet name="header">
				<h:outputText value="#{text['section.t_rule_instance_group_form.2c90834916d142fa0116d325a13802a6']}" />
			</f:facet>	


			<h:panelGrid columns="2" cellspacing="0" cellpadding="0" styleClass="sectionTable" columnClasses="rowTable3,rowTable3" headerClass="mainHeader" footerClass="mainFooter">
			<h:panelGrid columns="2" cellspacing="0" cellpadding="0" styleClass="sectionTable" columnClasses="colTitle,colValue">
				<h:outputLabel for="ruleGroupId" styleClass="outputlabel" value="#{text['truleInstanceGroup.ruleGroupId']}" />
				<h:panelGroup>
	           <h:panelGroup>
	             <f:verbatim><span class="mustw"></span></f:verbatim>

	
                	<h:selectOneMenu id="ruleGroupId" value="#{truleInstanceGroupForm.truleInstanceGroup.ruleGroupId}"  style="width:'86%'" >
					        <s:commonsValidator type="required" arg="#{text['truleInstanceGroup.ruleGroupId']}" client="true" server="false" />
						  <f:selectItems value="#{selectItems.truleGroupItems}"/>
					</h:selectOneMenu>	
                   </h:panelGroup>						
                               </h:panelGroup>	            <h:inputHidden />
			    <x:message for="ruleGroupId" styleClass="fieldError" />
			</h:panelGrid>
			

  

			<h:panelGrid columns="2" cellspacing="0" cellpadding="0" styleClass="sectionTable" columnClasses="colTitle,colValue">
				<h:outputLabel for="ruleInstanceId" styleClass="outputlabel" value="#{text['truleInstanceGroup.ruleInstanceId']}" />
				<h:panelGroup>
	           <h:panelGroup>
	             <f:verbatim><span class="mustw"></span></f:verbatim>

	
                	<h:selectOneMenu id="ruleInstanceId" value="#{truleInstanceGroupForm.truleInstanceGroup.ruleInstanceId}"  style="width:'86%'" >
					        <s:commonsValidator type="required" arg="#{text['truleInstanceGroup.ruleInstanceId']}" client="true" server="false" />
						  <f:selectItems value="#{selectItems.truleInstanceItems}"/>
					</h:selectOneMenu>	
                   </h:panelGroup>						
                               </h:panelGroup>	            <h:inputHidden />
			    <x:message for="ruleInstanceId" styleClass="fieldError" />
			</h:panelGrid>
			

  			</h:panelGrid>
		</h:panelGrid>

		</h:panelGrid>
	<input type="hidden" name="tdClospan" value="2">
	</h:form>
	<s:validatorScript functionName="validateTruleInstanceGroupForm" />	
<%@ include file="../calculator.jsp"%>
</f:view>
</center>
</body>