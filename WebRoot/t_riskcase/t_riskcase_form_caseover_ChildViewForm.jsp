<%@page import="java.util.*"%> 
<%@page import="javax.faces.context.FacesContext"%>
<%@page import="cn.com.brilliance.begen.common.BeGenHistory"%>
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
<script>
var imagePath = "<%=basePath%>/images" ;
var scriptPath = "<%=basePath%>/scripts" ;
</script>
</head>
<body onload="loadTriskcase();loadHidInfo();">
<center>
<jsp:include flush="true" page="../common/infobar.jsp"></jsp:include>
<f:view>
<script language=javascript>
try{
	parent.historyIframe.addHistory('/t_riskcase/t_riskcase_form_caseover_ViewForm.faces?<%=FacesContext.getCurrentInstance().getApplication().createValueBinding("#{triskcaseForm.historyUrlParameter}").getValue(FacesContext.getCurrentInstance())%>','������(<%=FacesContext.getCurrentInstance().getApplication().createValueBinding("#{triskcaseForm.triskcase.id}").getValue(FacesContext.getCurrentInstance()) %>)',"1")
}catch(e){}
</script>
	<f:loadBundle var="text" basename="ApplicationResources" />
	<t:saveState value="#{triskcaseForm.triskcasePrimaryKey}" />
	<h:form id="triskcaseForm" style="width:96%">
    	<f:verbatim><div class="mytab1">
    	    <ul class="myTabBar1">
    	      <li class="Selected"><a href="#"></f:verbatim><h:outputText value="#{text['triskcase.t_riskcase_form_caseover_ViewForm.heading']}" /><f:verbatim></a></li>
    	    </ul>
    	</div></f:verbatim>
	<a4j:jsFunction name="loadTriskcase" action="#{triskcaseForm.loadTriskcase}" reRender="triskcaseForm"></a4j:jsFunction>		
		<h:inputHidden id="forId"/>	
		<h:panelGrid columns="1" cellspacing="0" cellpadding="0" styleClass="mainTable">
			<h:panelGrid columns="1" cellspacing="0" cellpadding="0" styleClass="titleTable" columnClasses="titleTdClass" >
    			<h:panelGroup>
        			<f:verbatim><ul id="tool_r"><li></f:verbatim>
					<h:commandLink   onclick="window.close()">
						<f:verbatim><span class="linkCancelImg"></span></f:verbatim><h:outputText styleClass="buttonText" value="#{text['button.cancel']}"/>
					</h:commandLink>						
					<f:verbatim></li></ul></f:verbatim>
				</h:panelGroup>
			</h:panelGrid>	
						
		<h:panelGrid columns="1" cellspacing="0" cellpadding="0" styleClass="sectionTable" headerClass="sectionHeader">
			<f:facet name="header">
				<h:outputText value="#{text['section.t_riskcase_form_caseover.2c90834917143e52011715cabeaf012f']}" />
			</f:facet>


			<h:panelGrid columns="2" cellspacing="0" cellpadding="0" styleClass="sectionTable" columnClasses="rowTable3,rowTable3" headerClass="mainHeader" footerClass="mainFooter">				
			<h:panelGrid columns="2" cellspacing="0" cellpadding="0" styleClass="sectionTable" columnClasses="colTitleView,colValueView">
				<h:outputLabel for="casefrom" styleClass="outputlabel" value="#{text['triskcase.casefrom']}" />
				<be:outputText id="casefrom" value="#{triskcaseForm.triskcase.casefrom}">					
                   <f:selectItem itemLabel="#{text['triskcase.casefrom.1']}" itemValue="1"/>
                   <f:selectItem itemLabel="#{text['triskcase.casefrom.2']}" itemValue="2"/>
                   <f:selectItem itemLabel="#{text['triskcase.casefrom.3']}" itemValue="3"/>
                   <f:selectItem itemLabel="#{text['triskcase.casefrom.4']}" itemValue="4"/>
                   <f:selectItem itemLabel="#{text['triskcase.casefrom.5']}" itemValue="5"/>
                   <f:selectItem itemLabel="#{text['triskcase.casefrom.6']}" itemValue="6"/>
				</be:outputText>				
	            <h:inputHidden />
			    <x:message for="casefrom" styleClass="fieldError" />
			</h:panelGrid>

  

			<h:panelGrid columns="2" cellspacing="0" cellpadding="0" styleClass="sectionTable" columnClasses="colTitleView,colValueView">
				<h:outputLabel for="otherno" styleClass="outputlabel" value="#{text['triskcase.otherno']}" />
				<h:outputText id="otherno" value="#{triskcaseForm.triskcase.otherno}" />
	            <h:inputHidden />
			    <x:message for="otherno" styleClass="fieldError" />
			</h:panelGrid>

  			</h:panelGrid>


			<h:panelGrid columns="2" cellspacing="0" cellpadding="0" styleClass="sectionTable" columnClasses="rowTable3,rowTable3" headerClass="mainHeader" footerClass="mainFooter">				
			<h:panelGrid columns="2" cellspacing="0" cellpadding="0" styleClass="sectionTable" columnClasses="colTitleView,colValueView">
				<h:outputLabel for="mchntId" styleClass="outputlabel" value="#{text['triskcase.mchntId']}" />
				<h:outputText id="mchntId" value="#{triskcaseForm.triskcase.mchntId}" />
	            <h:inputHidden />
			    <x:message for="mchntId" styleClass="fieldError" />
			</h:panelGrid>

  

			<h:panelGrid columns="2" cellspacing="0" cellpadding="0" styleClass="sectionTable" columnClasses="colTitleView,colValueView">
				<h:outputLabel for="mchntName" styleClass="outputlabel" value="#{text['triskcase.mchntName']}" />
				<h:outputText id="mchntName" value="#{triskcaseForm.triskcase.mchntName}" />
	            <h:inputHidden />
			    <x:message for="mchntName" styleClass="fieldError" />
			</h:panelGrid>

  			</h:panelGrid>


			<h:panelGrid columns="2" cellspacing="0" cellpadding="0" styleClass="sectionTable" columnClasses="rowTable3,rowTable3" headerClass="mainHeader" footerClass="mainFooter">				
			<h:panelGrid columns="2" cellspacing="0" cellpadding="0" styleClass="sectionTable" columnClasses="colTitleView,colValueView">
				<h:outputLabel for="transMcc" styleClass="outputlabel" value="#{text['triskcase.transMcc']}" />
				<h:outputText id="transMcc" value="#{triskcaseForm.triskcase.transMcc}" />
	            <h:inputHidden />
			    <x:message for="transMcc" styleClass="fieldError" />
			</h:panelGrid>

  

			<h:panelGrid columns="2" cellspacing="0" cellpadding="0" styleClass="sectionTable" columnClasses="colTitleView,colValueView">
				<h:outputLabel for="mchntMcc" styleClass="outputlabel" value="#{text['triskcase.mchntMcc']}" />
				<h:outputText id="mchntMcc" value="#{triskcaseForm.triskcase.mchntMcc}" />
	            <h:inputHidden />
			    <x:message for="mchntMcc" styleClass="fieldError" />
			</h:panelGrid>

  			</h:panelGrid>


			<h:panelGrid columns="2" cellspacing="0" cellpadding="0" styleClass="sectionTable" columnClasses="rowTable3,rowTable3" headerClass="mainHeader" footerClass="mainFooter">				
			<h:panelGrid columns="2" cellspacing="0" cellpadding="0" styleClass="sectionTable" columnClasses="colTitleView,colValueView">
				<h:outputLabel for="acquireInstName" styleClass="outputlabel" value="#{text['triskcase.acquireInstName']}" />
				<be:outputText id="acquireInstName" value="#{triskcaseForm.triskcase.acquireInstName}">					
                   <f:selectItems value="#{extSelectItems.belongToInstList}"/>
				</be:outputText>				
	            <h:inputHidden />
			    <x:message for="acquireInstName" styleClass="fieldError" />
			</h:panelGrid>

  

			<h:panelGrid columns="2" cellspacing="0" cellpadding="0" styleClass="sectionTable" columnClasses="colTitleView,colValueView">
				<h:outputLabel for="mchntCd" styleClass="outputlabel" value="#{text['triskcase.mchntCd']}" />
				<h:outputText id="mchntCd" value="#{triskcaseForm.triskcase.mchntCd}" />
	            <h:inputHidden />
			    <x:message for="mchntCd" styleClass="fieldError" />
			</h:panelGrid>

  			</h:panelGrid>


			<h:panelGrid columns="2" cellspacing="0" cellpadding="0" styleClass="sectionTable" columnClasses="rowTable3,rowTable3" headerClass="mainHeader" footerClass="mainFooter">				
			<h:panelGrid columns="2" cellspacing="0" cellpadding="0" styleClass="sectionTable" columnClasses="colTitleView,colValueView">
				<h:outputLabel for="relativeTransNum" styleClass="outputlabel" value="#{text['triskcase.relativeTransNum']}" />
				<h:outputText id="relativeTransNum" value="#{triskcaseForm.triskcase.relativeTransNum}" />
	            <h:inputHidden />
			    <x:message for="relativeTransNum" styleClass="fieldError" />
			</h:panelGrid>

  

			<h:panelGrid columns="2" cellspacing="0" cellpadding="0" styleClass="sectionTable" columnClasses="colTitleView,colValueView">
				<h:outputLabel for="relativeTransAmt" styleClass="outputlabel" value="#{text['triskcase.relativeTransAmt']}" />
				<h:outputText id="relativeTransAmt" value="#{triskcaseForm.triskcase.relativeTransAmt}" />
	            <h:inputHidden />
			    <x:message for="relativeTransAmt" styleClass="fieldError" />
			</h:panelGrid>

  			</h:panelGrid>


			<h:panelGrid columns="2" cellspacing="0" cellpadding="0" styleClass="sectionTable" columnClasses="rowTable3,rowTable3" headerClass="mainHeader" footerClass="mainFooter">				
			<h:panelGrid columns="2" cellspacing="0" cellpadding="0" styleClass="sectionTable" columnClasses="colTitleView,colValueView">
				<h:outputLabel for="belongToInst" styleClass="outputlabel" value="#{text['triskcase.belongToInst']}" />
				<be:outputText id="belongToInst" value="#{triskcaseForm.triskcase.belongToInst}">					
                   <f:selectItems value="#{extSelectItems.belongToInstList}"/>
				</be:outputText>				
	            <h:inputHidden />
			    <x:message for="belongToInst" styleClass="fieldError" />
			</h:panelGrid>

  

			<h:panelGrid columns="2" cellspacing="0" cellpadding="0" styleClass="sectionTable" columnClasses="colTitleView,colValueView">
				<h:outputLabel for="processLimit" styleClass="outputlabel" value="#{text['triskcase.processLimit']}" />
				<h:outputText id="processLimit" value="#{triskcaseForm.triskcase.processLimit}" >
					<f:convertDateTime pattern="yyyy-MM-dd" timeZone="GMT+8"/>
				</h:outputText>
	            <h:inputHidden />
			    <x:message for="processLimit" styleClass="fieldError" />
			</h:panelGrid>

  			</h:panelGrid>


			<h:panelGrid columns="2" cellspacing="0" cellpadding="0" styleClass="sectionTable" columnClasses="rowTable3,rowTable3" headerClass="mainHeader" footerClass="mainFooter">				
			<h:panelGrid columns="2" cellspacing="0" cellpadding="0" styleClass="sectionTable" columnClasses="colTitleView,colValueView">
				<h:outputLabel for="warnLevel" styleClass="outputlabel" value="#{text['triskcase.warnLevel']}" />
				<be:outputText id="warnLevel" value="#{triskcaseForm.triskcase.warnLevel}">					
                   <f:selectItem itemLabel="#{text['triskcase.warnLevel.0']}" itemValue="0"/>
                   <f:selectItem itemLabel="#{text['triskcase.warnLevel.1']}" itemValue="1"/>
                   <f:selectItem itemLabel="#{text['triskcase.warnLevel.2']}" itemValue="2"/>
                   <f:selectItem itemLabel="#{text['triskcase.warnLevel.3']}" itemValue="3"/>
				</be:outputText>				
	            <h:inputHidden />
			    <x:message for="warnLevel" styleClass="fieldError" />
			</h:panelGrid>

  

				<h:outputText value="" />
  			</h:panelGrid>


			<h:panelGrid columns="2" cellspacing="0" cellpadding="0" styleClass="sectionTable" columnClasses="rowTable1,rowTable5" headerClass="mainHeader" footerClass="mainFooter">				
			<h:panelGrid columns="2" cellspacing="0" cellpadding="0" styleClass="sectionTable" columnClasses="colTitleView,colValueView">
				<h:outputLabel for="triggerContent" styleClass="outputlabel" value="#{text['triskcase.triggerContent']}" />
			    <h:inputTextarea id="triggerContent" value="#{triskcaseForm.triskcase.triggerContent}" cols="20" rows="4" readonly="true" styleClass="viewTextarea"/>
	            <h:inputHidden />
			    <x:message for="triggerContent" styleClass="fieldError" />
			</h:panelGrid>

  			</h:panelGrid>


			<h:panelGrid columns="2" cellspacing="0" cellpadding="0" styleClass="sectionTable" columnClasses="rowTable1,rowTable5" headerClass="mainHeader" footerClass="mainFooter">				
			<h:panelGrid columns="2" cellspacing="0" cellpadding="0" styleClass="sectionTable" columnClasses="colTitleView,colValueView">
				<h:outputLabel for="riskContent" styleClass="outputlabel" value="#{text['triskcase.riskContent']}" />
			    <h:inputTextarea id="riskContent" value="#{triskcaseForm.triskcase.riskContent}" cols="20" rows="4" readonly="true" styleClass="viewTextarea"/>
	            <h:inputHidden />
			    <x:message for="riskContent" styleClass="fieldError" />
			</h:panelGrid>

  			</h:panelGrid>


			<h:panelGrid columns="2" cellspacing="0" cellpadding="0" styleClass="sectionTable" columnClasses="rowTable1,rowTable5" headerClass="mainHeader" footerClass="mainFooter">				
			<h:panelGrid columns="2" cellspacing="0" cellpadding="0" styleClass="sectionTable" columnClasses="colTitleView,colValueView">
				<h:outputLabel for="comments1" styleClass="outputlabel" value="#{text['triskcase.comments1']}" />
			    <h:inputTextarea id="comments1" value="#{triskcaseForm.triskcase.comments1}" cols="20" rows="4" readonly="true" styleClass="viewTextarea"/>
	            <h:inputHidden />
			    <x:message for="comments1" styleClass="fieldError" />
			</h:panelGrid>

  			</h:panelGrid>


			<h:panelGrid columns="2" cellspacing="0" cellpadding="0" styleClass="sectionTable" columnClasses="rowTable1,rowTable5" headerClass="mainHeader" footerClass="mainFooter">				
			<h:panelGrid columns="2" cellspacing="0" cellpadding="0" styleClass="sectionTable" columnClasses="colTitleView,colValueView">
				<h:outputLabel for="comments2" styleClass="outputlabel" value="#{text['triskcase.comments2']}" />
			    <h:inputTextarea id="comments2" value="#{triskcaseForm.triskcase.comments2}" cols="20" rows="4" readonly="true" styleClass="viewTextarea"/>
	            <h:inputHidden />
			    <x:message for="comments2" styleClass="fieldError" />
			</h:panelGrid>

  			</h:panelGrid>


			<h:panelGrid columns="2" cellspacing="0" cellpadding="0" styleClass="sectionTable" columnClasses="rowTable1,rowTable5" headerClass="mainHeader" footerClass="mainFooter">				
			<h:panelGrid columns="2" cellspacing="0" cellpadding="0" styleClass="sectionTable" columnClasses="colTitleView,colValueView">
				<h:outputLabel for="comments3" styleClass="outputlabel" value="#{text['triskcase.comments3']}" />
			    <h:inputTextarea id="comments3" value="#{triskcaseForm.triskcase.comments3}" cols="20" rows="4" readonly="true" styleClass="viewTextarea"/>
	            <h:inputHidden />
			    <x:message for="comments3" styleClass="fieldError" />
			</h:panelGrid>

  			</h:panelGrid>


			<h:panelGrid columns="2" cellspacing="0" cellpadding="0" styleClass="sectionTable" columnClasses="rowTable1,rowTable5" headerClass="mainHeader" footerClass="mainFooter">				
			<h:panelGrid columns="2" cellspacing="0" cellpadding="0" styleClass="sectionTable" columnClasses="colTitleView,colValueView">
				<h:outputLabel for="comments4" styleClass="outputlabel" value="#{text['triskcase.comments4']}" />
			    <h:inputTextarea id="comments4" value="#{triskcaseForm.triskcase.comments4}" cols="20" rows="4" readonly="true" styleClass="viewTextarea"/>
	            <h:inputHidden />
			    <x:message for="comments4" styleClass="fieldError" />
			</h:panelGrid>

  			</h:panelGrid>


			<h:panelGrid columns="2" cellspacing="0" cellpadding="0" styleClass="sectionTable" columnClasses="rowTable1,rowTable5" headerClass="mainHeader" footerClass="mainFooter">				
			<h:panelGrid columns="2" cellspacing="0" cellpadding="0" styleClass="sectionTable" columnClasses="colTitleView,colValueView">
				<h:outputLabel for="comments5" styleClass="outputlabel" value="#{text['triskcase.comments5']}" />
			    <h:inputTextarea id="comments5" value="#{triskcaseForm.triskcase.comments5}" cols="20" rows="4" readonly="true" styleClass="viewTextarea"/>
	            <h:inputHidden />
			    <x:message for="comments5" styleClass="fieldError" />
			</h:panelGrid>

  			</h:panelGrid>
		</h:panelGrid>

		</h:panelGrid>
	</h:form>
</f:view>
</center>
</body>	