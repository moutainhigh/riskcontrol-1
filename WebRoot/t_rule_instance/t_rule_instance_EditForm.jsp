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
	<t:saveState value="#{truleInstanceForm.truleInstancePrimaryKey}" />
	<t:saveState value="#{truleInstanceForm.truleInstance}" />

	<h:form id="truleInstanceForm" style="width:96%;">
    	<div class="mytab1">
    	    <ul class="myTabBar1">
    	      <li class="Selected"><a href="#"><h:outputText value="#{text['truleInstance.t_rule_instance_EditForm.heading']}" /></a></li>
    	    </ul>
    	</div>
		<h:panelGrid columns="1" cellspacing="0" cellpadding="0" styleClass="mainTable">
			<h:panelGrid columns="1" cellspacing="0" cellpadding="0" styleClass="titleTable" columnClasses="titleTdClass" >
    			<h:panelGroup>
        			<f:verbatim><ul id="tool_r"></f:verbatim>

<f:verbatim><li></f:verbatim>
		            <h:commandLink action="#{truleInstanceForm.save}" tabindex="1" 
					  onclick=" if(!validateTruleInstanceForm(document.getElementById('truleInstanceForm')))return; ">
						<f:verbatim><span class="linkSaveImg"></span></f:verbatim><h:outputText styleClass="buttonText" value="#{text['actionedit.t_rule_instance.2c908349169f7cda0116a990bb6906fe']}" />
					</h:commandLink>
<f:verbatim></li></f:verbatim>

	            <f:verbatim></ul></f:verbatim>
    			</h:panelGroup>
			</h:panelGrid>
			
		<h:panelGrid columns="1" cellspacing="0" cellpadding="0" styleClass="sectionTable" headerClass="sectionHeader" footerClass="mainFooter2">
			<f:facet name="header">
				<h:outputText value="#{text['section.t_rule_instance.2c908349169f7cda0116a990b87b06ef']}" />
			</f:facet>	


			<h:panelGrid columns="2" cellspacing="0" cellpadding="0" styleClass="sectionTable" columnClasses="rowTable3,rowTable3" headerClass="mainHeader" footerClass="mainFooter">
			<h:panelGrid columns="2" cellspacing="0" cellpadding="0" styleClass="sectionTable" columnClasses="colTitle,colValue">
				<h:outputLabel for="enable" styleClass="outputlabel" value="#{text['truleInstance.enable']}" />
	           <h:panelGroup>
		         <f:verbatim><span class="notw"></span></f:verbatim>
			        <h:selectBooleanCheckbox id="enable" value="#{truleInstanceForm.truleInstance.enable}"  readonly="false"  tabindex="2">
                    </h:selectBooleanCheckbox>
                               </h:panelGroup>	            <h:inputHidden />
			    <x:message for="enable" styleClass="fieldError" />
			</h:panelGrid>
			

  

			<h:panelGrid columns="2" cellspacing="0" cellpadding="0" styleClass="sectionTable" columnClasses="colTitle,colValue">
				<h:outputLabel for="description" styleClass="outputlabel" value="#{text['truleInstance.description']}" />
	           <h:panelGroup>
		         <f:verbatim><span class="notw"></span></f:verbatim>
                   <h:panelGroup>


		               <h:inputText id="description" value="#{truleInstanceForm.truleInstance.description}" style="width:'86%'" tabindex="3"   maxlength="100"  styleClass="edit_input" >

				        </h:inputText>
                      </h:panelGroup>


                               </h:panelGroup>	            <h:inputHidden />
			    <x:message for="description" styleClass="fieldError" />
			</h:panelGrid>
			

  			</h:panelGrid>


			<h:panelGrid columns="2" cellspacing="0" cellpadding="0" styleClass="sectionTable" columnClasses="rowTable3,rowTable3" headerClass="mainHeader" footerClass="mainFooter">
			<h:panelGrid columns="2" cellspacing="0" cellpadding="0" styleClass="sectionTable" columnClasses="colTitle,colValue">
				<h:outputLabel for="cycle" styleClass="outputlabel" value="#{text['truleInstance.cycle']}" />
	           <h:panelGroup>
		         <f:verbatim><span class="notw"></span></f:verbatim>
                   <h:panelGroup>


		               <h:inputText id="cycle" value="#{truleInstanceForm.truleInstance.cycle}" style="width:'86%'" tabindex="4"   maxlength="20"  styleClass="edit_input" >

				        </h:inputText>
                      </h:panelGroup>


                               </h:panelGroup>	            <h:inputHidden />
			    <x:message for="cycle" styleClass="fieldError" />
			</h:panelGrid>
			

  

			<h:panelGrid columns="2" cellspacing="0" cellpadding="0" styleClass="sectionTable" columnClasses="colTitle,colValue">
				<h:outputLabel for="timeParam" styleClass="outputlabel" value="#{text['truleInstance.timeParam']}" />
	           <h:panelGroup>
		         <f:verbatim><span class="notw"></span></f:verbatim>
                   <h:panelGroup>


		               <h:inputText id="timeParam" value="#{truleInstanceForm.truleInstance.timeParam}" style="width:'86%'" tabindex="5"   maxlength="20"  styleClass="edit_input" >

				        </h:inputText>
                      </h:panelGroup>


                               </h:panelGroup>	            <h:inputHidden />
			    <x:message for="timeParam" styleClass="fieldError" />
			</h:panelGrid>
			

  			</h:panelGrid>


			<h:panelGrid columns="2" cellspacing="0" cellpadding="0" styleClass="sectionTable" columnClasses="rowTable3,rowTable3" headerClass="mainHeader" footerClass="mainFooter">
				<h:outputText value="" />
  

				<h:outputText value="" />
  			</h:panelGrid>


			<h:panelGrid columns="2" cellspacing="0" cellpadding="0" styleClass="sectionTable" columnClasses="rowTable3,rowTable3" headerClass="mainHeader" footerClass="mainFooter">
				<h:outputText value="" />
  

				<h:outputText value="" />
  			</h:panelGrid>


			<h:panelGrid columns="2" cellspacing="0" cellpadding="0" styleClass="sectionTable" columnClasses="rowTable3,rowTable3" headerClass="mainHeader" footerClass="mainFooter">
			<h:panelGrid columns="2" cellspacing="0" cellpadding="0" styleClass="sectionTable" columnClasses="colTitle,colValue">
				<h:outputLabel for="code" styleClass="outputlabel" value="#{text['truleInstance.code']}" />
	           <h:panelGroup>
		         <f:verbatim><span class="notw"></span></f:verbatim>
                   <h:panelGroup>


		               <h:inputText id="code" value="#{truleInstanceForm.truleInstance.code}" style="width:'86%'" tabindex="6"   maxlength="20"  styleClass="edit_input" >

				        </h:inputText>
                      </h:panelGroup>


                               </h:panelGroup>	            <h:inputHidden />
			    <x:message for="code" styleClass="fieldError" />
			</h:panelGrid>
			

  

			<h:panelGrid columns="2" cellspacing="0" cellpadding="0" styleClass="sectionTable" columnClasses="colTitle,colValue">
				<h:outputLabel for="needTransInfo" styleClass="outputlabel" value="#{text['truleInstance.needTransInfo']}" />
	           <h:panelGroup>
		         <f:verbatim><span class="notw"></span></f:verbatim>
			        <h:selectBooleanCheckbox id="needTransInfo" value="#{truleInstanceForm.truleInstance.needTransInfo}"  readonly="false"  tabindex="7">
                    </h:selectBooleanCheckbox>
                               </h:panelGroup>	            <h:inputHidden />
			    <x:message for="needTransInfo" styleClass="fieldError" />
			</h:panelGrid>
			

  			</h:panelGrid>


			<h:panelGrid columns="2" cellspacing="0" cellpadding="0" styleClass="sectionTable" columnClasses="rowTable3,rowTable3" headerClass="mainHeader" footerClass="mainFooter">
				<h:outputText value="" />
  

				<h:outputText value="" />
  			</h:panelGrid>


			<h:panelGrid columns="2" cellspacing="0" cellpadding="0" styleClass="sectionTable" columnClasses="rowTable3,rowTable3" headerClass="mainHeader" footerClass="mainFooter">
			<h:panelGrid columns="2" cellspacing="0" cellpadding="0" styleClass="sectionTable" columnClasses="colTitle,colValue">
				<h:outputLabel for="supportTrace" styleClass="outputlabel" value="#{text['truleInstance.supportTrace']}" />
	           <h:panelGroup>
		         <f:verbatim><span class="notw"></span></f:verbatim>
			        <h:selectBooleanCheckbox id="supportTrace" value="#{truleInstanceForm.truleInstance.supportTrace}"  readonly="false"  tabindex="8">
                    </h:selectBooleanCheckbox>
                               </h:panelGroup>	            <h:inputHidden />
			    <x:message for="supportTrace" styleClass="fieldError" />
			</h:panelGrid>
			

  

			<h:panelGrid columns="2" cellspacing="0" cellpadding="0" styleClass="sectionTable" columnClasses="colTitle,colValue">
				<h:outputLabel for="type" styleClass="outputlabel" value="#{text['truleInstance.type']}" />
	           <h:panelGroup>
		         <f:verbatim><span class="notw"></span></f:verbatim>
	<h:panelGroup>
				          <h:selectOneMenu id="type" value="#{truleInstanceForm.truleInstance.type}"  readonly="false"  tabindex="9"  style="width:86%">
                            <f:selectItem itemLabel="#{text['truleInstance.type.0']}" itemValue="0"/>
                            <f:selectItem itemLabel="#{text['truleInstance.type.1']}" itemValue="1"/>
				          </h:selectOneMenu >	
                       </h:panelGroup>

                               </h:panelGroup>	            <h:inputHidden />
			    <x:message for="type" styleClass="fieldError" />
			</h:panelGrid>
			

  			</h:panelGrid>
		</h:panelGrid>
		</h:panelGrid>
	<input type="hidden" name="tdClospan" value="2">
	</h:form>
	<s:validatorScript functionName="validateTruleInstanceForm" />
<%@ include file="../calculator.jsp"%>
</f:view>
</body>