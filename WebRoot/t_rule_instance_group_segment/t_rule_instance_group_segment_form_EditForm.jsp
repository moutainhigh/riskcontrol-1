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
	<t:saveState value="#{truleInstanceGroupSegmentForm.truleInstanceGroupSegmentPrimaryKey}" />
	<t:saveState value="#{truleInstanceGroupSegmentForm.truleInstanceGroupSegment}" />

	<h:form id="truleInstanceGroupSegmentForm" style="width:96%;">
    	<div class="mytab1">
    	    <ul class="myTabBar1">
    	      <li class="Selected"><a href="#"><h:outputText value="#{text['truleInstanceGroupSegment.t_rule_instance_group_segment_form_EditForm.heading']}" /></a></li>
    	    </ul>
    	</div>
		<h:panelGrid columns="1" cellspacing="0" cellpadding="0" styleClass="mainTable">
			<h:panelGrid columns="1" cellspacing="0" cellpadding="0" styleClass="titleTable" columnClasses="titleTdClass" >
    			<h:panelGroup>
        			<f:verbatim><ul id="tool_r"></f:verbatim>

<f:verbatim><li></f:verbatim>
		            <h:commandLink action="#{truleInstanceGroupSegmentForm.save}" tabindex="1" 
					  onclick=" if(!validateTruleInstanceGroupSegmentForm(document.getElementById('truleInstanceGroupSegmentForm')))return; ">
						<f:verbatim><span class="linkSaveImg"></span></f:verbatim><h:outputText styleClass="buttonText" value="#{text['actionedit.t_rule_instance_group_segment_form.2c90834916d142fa0116d32c4ae902cb']}" />
					</h:commandLink>
<f:verbatim></li></f:verbatim>

	            <f:verbatim></ul></f:verbatim>
    			</h:panelGroup>
			</h:panelGrid>
			
		<h:panelGrid columns="1" cellspacing="0" cellpadding="0" styleClass="sectionTable" headerClass="sectionHeader" footerClass="mainFooter2">
			<f:facet name="header">
				<h:outputText value="#{text['section.t_rule_instance_group_segment_form.2c908349172dd02b01172e4c26bb0019']}" />
			</f:facet>	


			<h:panelGrid columns="2" cellspacing="0" cellpadding="0" styleClass="sectionTable" columnClasses="rowTable3,rowTable3" headerClass="mainHeader" footerClass="mainFooter">
			<h:panelGrid columns="2" cellspacing="0" cellpadding="0" styleClass="sectionTable" columnClasses="colTitle,colValue">
				<h:outputLabel for="ruleInstanceGroupId" styleClass="outputlabel" value="#{text['truleInstanceGroupSegment.ruleInstanceGroupId']}" />
				<h:panelGroup>
	           <h:panelGroup>
	             <f:verbatim><span class="mustw"></span></f:verbatim>

	
                	<h:selectOneMenu id="ruleInstanceGroupId" value="#{truleInstanceGroupSegmentForm.truleInstanceGroupSegment.ruleInstanceGroupId}"  style="width:'86%'" >
					        <s:commonsValidator type="required" arg="#{text['truleInstanceGroupSegment.ruleInstanceGroupId']}" client="true" server="false" />
						  <f:selectItems value="#{selectItems.truleInstanceGroupItems}"/>
					</h:selectOneMenu>	
                   </h:panelGroup>						
                               </h:panelGroup>	            <h:inputHidden />
			    <x:message for="ruleInstanceGroupId" styleClass="fieldError" />
			</h:panelGrid>
			

  

			<h:panelGrid columns="2" cellspacing="0" cellpadding="0" styleClass="sectionTable" columnClasses="colTitle,colValue">
				<h:outputLabel for="ruleInstanceId" styleClass="outputlabel" value="#{text['truleInstanceGroupSegment.ruleInstanceId']}" />
				<h:panelGroup>
	           <h:panelGroup>
	             <f:verbatim><span class="mustw"></span></f:verbatim>

	
                	<h:selectOneMenu id="ruleInstanceId" value="#{truleInstanceGroupSegmentForm.truleInstanceGroupSegment.ruleInstanceId}"  style="width:'86%'" >
					        <s:commonsValidator type="required" arg="#{text['truleInstanceGroupSegment.ruleInstanceId']}" client="true" server="false" />
						  <f:selectItems value="#{selectItems.truleInstanceItems}"/>
					</h:selectOneMenu>	
                   </h:panelGroup>						
                               </h:panelGroup>	            <h:inputHidden />
			    <x:message for="ruleInstanceId" styleClass="fieldError" />
			</h:panelGrid>
			

  			</h:panelGrid>


			<h:panelGrid columns="2" cellspacing="0" cellpadding="0" styleClass="sectionTable" columnClasses="rowTable3,rowTable3" headerClass="mainHeader" footerClass="mainFooter">
			<h:panelGrid columns="2" cellspacing="0" cellpadding="0" styleClass="sectionTable" columnClasses="colTitle,colValue">
				<h:outputLabel for="begin" styleClass="outputlabel" value="#{text['truleInstanceGroupSegment.begin']}" />
	           <h:panelGroup>
		         <f:verbatim><span class="notw"></span></f:verbatim>
			          <be:inputNumber id="begin" value="#{truleInstanceGroupSegmentForm.truleInstanceGroupSegment.begin}"  style="width:'86%'"   tabindex="4" styleClass="edit_input">
					    <s:commonsValidator type="floatRange" min="0" max="999.99" arg="#{text['truleInstanceGroupSegment.begin']}" client="true" server="false" />
				      </be:inputNumber>
                               </h:panelGroup>	            <h:inputHidden />
			    <x:message for="begin" styleClass="fieldError" />
			</h:panelGrid>
			

  

			<h:panelGrid columns="2" cellspacing="0" cellpadding="0" styleClass="sectionTable" columnClasses="colTitle,colValue">
				<h:outputLabel for="end" styleClass="outputlabel" value="#{text['truleInstanceGroupSegment.end']}" />
	           <h:panelGroup>
		         <f:verbatim><span class="notw"></span></f:verbatim>
			          <be:inputNumber id="end" value="#{truleInstanceGroupSegmentForm.truleInstanceGroupSegment.end}"  style="width:'86%'"   tabindex="5" styleClass="edit_input">
					    <s:commonsValidator type="floatRange" min="0" max="999.99" arg="#{text['truleInstanceGroupSegment.end']}" client="true" server="false" />
				      </be:inputNumber>
                               </h:panelGroup>	            <h:inputHidden />
			    <x:message for="end" styleClass="fieldError" />
			</h:panelGrid>
			

  			</h:panelGrid>


			<h:panelGrid columns="2" cellspacing="0" cellpadding="0" styleClass="sectionTable" columnClasses="rowTable3,rowTable3" headerClass="mainHeader" footerClass="mainFooter">
			<h:panelGrid columns="2" cellspacing="0" cellpadding="0" styleClass="sectionTable" columnClasses="colTitle,colValue">
				<h:outputLabel for="propertion" styleClass="outputlabel" value="#{text['truleInstanceGroupSegment.propertion']}" />
	           <h:panelGroup>
		         <f:verbatim><span class="notw"></span></f:verbatim>
			          <be:inputNumber id="propertion" value="#{truleInstanceGroupSegmentForm.truleInstanceGroupSegment.propertion}"  style="width:'86%'"   tabindex="6" styleClass="edit_input">
					    <s:commonsValidator type="floatRange" min="0" max="999.99" arg="#{text['truleInstanceGroupSegment.propertion']}" client="true" server="false" />
				      </be:inputNumber>
                               </h:panelGroup>	            <h:inputHidden />
			    <x:message for="propertion" styleClass="fieldError" />
			</h:panelGrid>
			

  

			<h:panelGrid columns="2" cellspacing="0" cellpadding="0" styleClass="sectionTable" columnClasses="colTitle,colValue">
				<h:outputLabel for="value" styleClass="outputlabel" value="#{text['truleInstanceGroupSegment.value']}" />
	           <h:panelGroup>
		         <f:verbatim><span class="notw"></span></f:verbatim>
			          <be:inputNumber id="value" value="#{truleInstanceGroupSegmentForm.truleInstanceGroupSegment.value}"  style="width:'86%'"   tabindex="7" styleClass="edit_input">
					    <s:commonsValidator type="floatRange" min="0" max="999999999999" arg="#{text['truleInstanceGroupSegment.value']}" client="true" server="false" />
				      </be:inputNumber>
                               </h:panelGroup>	            <h:inputHidden />
			    <x:message for="value" styleClass="fieldError" />
			</h:panelGrid>
			

  			</h:panelGrid>
		</h:panelGrid>
		</h:panelGrid>
	<input type="hidden" name="tdClospan" value="2">
	</h:form>
	<s:validatorScript functionName="validateTruleInstanceGroupSegmentForm" />
<%@ include file="../calculator.jsp"%>
</f:view>
</body>