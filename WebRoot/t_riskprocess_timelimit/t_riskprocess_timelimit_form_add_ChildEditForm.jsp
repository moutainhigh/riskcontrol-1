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
<body onload="loadTriskprocessTimelimit();getDateObj();">
<center>
<input type="hidden" name="checkcontent" id="checkcontent">
<jsp:include flush="true" page="../common/infobar.jsp"></jsp:include>
<f:view>

	<f:loadBundle var="text" basename="ApplicationResources" />
	<t:saveState value="#{triskprocessTimelimitForm.triskprocessTimelimitPrimaryKey}" />
	<t:saveState value="#{triskprocessTimelimitForm.triskprocessTimelimit}" />

	<h:form id="triskprocessTimelimitForm" style="width:96%;">
	<div class="mytab1">
	    <ul class="myTabBar1">
	      <li class="Selected"><a href="#"><h:outputText value="#{text['triskprocessTimelimit.t_riskprocess_timelimit_form_add_EditForm.heading']}" /></a></li>
	    </ul>
	</div>
	<a4j:jsFunction name="loadTriskprocessTimelimit" action="#{triskprocessTimelimitForm.loadTriskprocessTimelimit}" reRender="triskprocessTimelimitForm" oncomplete="loadDateSelect()"></a4j:jsFunction>
    	<f:verbatim><div class="mytab1">
    	    <ul class="myTabBar1">
    	      <li class="Selected"><a href="#"></f:verbatim><h:outputText value="#{text['triskprocessTimelimit.t_riskprocess_timelimit_form_add_EditForm.heading']}" /><f:verbatim></a></li>
    	    </ul>
    	</div>
		</f:verbatim>
		<h:panelGrid columns="1" cellspacing="0" cellpadding="0" styleClass="mainTable">
			<h:panelGrid columns="1" cellspacing="0" cellpadding="0" styleClass="titleTable" columnClasses="titleTdClass" >
    			<h:panelGroup>
        			<f:verbatim><ul id="tool_r"></f:verbatim>?


		     <f:verbatim><li></f:verbatim>
		      <h:commandLink action="#{triskprocessTimelimitForm.popSave}" tabindex="1"  onclick="  if(!validateTriskprocessTimelimitForm(document.getElementById('triskprocessTimelimitForm')))return; ">
					<f:verbatim><span class="linkSaveImg"></span></f:verbatim><h:outputText styleClass="buttonText" value="#{text['actionedit.t_riskprocess_timelimit_form_add.2c908349171a86da01171aa172880060']}"/>
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
				<h:outputText value="#{text['section.t_riskprocess_timelimit_form_add.2c908349171a86da01171aa38b370067']}" />
			</f:facet>	


			<h:panelGrid columns="2" cellspacing="0" cellpadding="0" styleClass="sectionTable" columnClasses="rowTable3,rowTable3" headerClass="mainHeader" footerClass="mainFooter">
			<h:panelGrid columns="2" cellspacing="0" cellpadding="0" styleClass="sectionTable" columnClasses="colTitle,colValue">
				<h:outputLabel for="belongToInst" styleClass="outputlabel" value="#{text['triskprocessTimelimit.belongToInst']}" />
				<h:panelGroup>
	           <h:panelGroup>
	             <f:verbatim><span class="mustw"></span></f:verbatim>

	
                	<h:selectOneMenu id="belongToInst" value="#{triskprocessTimelimitForm.triskprocessTimelimit.belongToInst}"  style="width:'86%'" >
					        <s:commonsValidator type="required" arg="#{text['triskprocessTimelimit.belongToInst']}" client="true" server="false" />
						  <f:selectItems value="#{selectItems.torganizeInfoItems}"/>
					</h:selectOneMenu>	
                   </h:panelGroup>						
                               </h:panelGroup>	            <h:inputHidden />
			    <x:message for="belongToInst" styleClass="fieldError" />
			</h:panelGrid>
			

  

			<h:panelGrid columns="2" cellspacing="0" cellpadding="0" styleClass="sectionTable" columnClasses="colTitle,colValue">
				<h:outputLabel for="warnLevel" styleClass="outputlabel" value="#{text['triskprocessTimelimit.warnLevel']}" />
	           <h:panelGroup>
	             <f:verbatim><span class="mustw"></span></f:verbatim>
	<h:panelGroup>
				          <h:selectOneMenu id="warnLevel" value="#{triskprocessTimelimitForm.triskprocessTimelimit.warnLevel}"  readonly="false"  tabindex="3"  style="width:86%">
					        <s:commonsValidator type="required" arg="#{text['triskprocessTimelimit.warnLevel']}" client="true" server="false" />
                            <f:selectItem itemLabel="#{text['triskprocessTimelimit.warnLevel.ddd']}" itemValue="ddd"/>
				          </h:selectOneMenu >	
                       </h:panelGroup>

                               </h:panelGroup>	            <h:inputHidden />
			    <x:message for="warnLevel" styleClass="fieldError" />
			</h:panelGrid>
			

  			</h:panelGrid>


			<h:panelGrid columns="2" cellspacing="0" cellpadding="0" styleClass="sectionTable" columnClasses="rowTable3,rowTable3" headerClass="mainHeader" footerClass="mainFooter">
			<h:panelGrid columns="2" cellspacing="0" cellpadding="0" styleClass="sectionTable" columnClasses="colTitle,colValue">
				<h:outputLabel for="timeLimit" styleClass="outputlabel" value="#{text['triskprocessTimelimit.timeLimit']}" />
	           <h:panelGroup>
	             <f:verbatim><span class="mustw"></span></f:verbatim>
                   <h:panelGroup>


		               <h:inputText id="timeLimit" value="#{triskprocessTimelimitForm.triskprocessTimelimit.timeLimit}" style="width:'86%'" tabindex="4"   maxlength="40"  styleClass="edit_input" >

				           <s:commonsValidator type="required" arg="#{text['triskprocessTimelimit.timeLimit']}" client="true" server="false" />
				        </h:inputText>
                      </h:panelGroup>


                               </h:panelGroup>	            <h:inputHidden />
			    <x:message for="timeLimit" styleClass="fieldError" />
			</h:panelGrid>
			

  

				<h:outputText value="" />
  			</h:panelGrid>
		</h:panelGrid>

		</h:panelGrid>
	<input type="hidden" name="tdClospan" value="2">
	</h:form>
	<s:validatorScript functionName="validateTriskprocessTimelimitForm" />	
<%@ include file="../calculator.jsp"%>
</f:view>
</center>
</body>