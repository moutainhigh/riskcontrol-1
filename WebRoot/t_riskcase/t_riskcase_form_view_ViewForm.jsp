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
<body onload="loadChild();loadChildList()">
<script>

var imagePath = "<%=basePath%>/images" ;
var scriptPath = "<%=basePath%>/scripts" ;

var childScript = "loadTriskcaseAttachments();loadHidInfo()".split(";");
var scriptCount = 0;
function loadChild(){
	eval(childScript[scriptCount++]);
}
</script>

<jsp:include flush="true" page="../common/infobar.jsp"></jsp:include>
<f:view>
		<f:loadBundle var="text" basename="ApplicationResources" />
<script language=javascript>
try{
	parent.historyIframe.addHistory('/t_riskcase/t_riskcase_form_view_ViewForm.faces?<%=FacesContext.getCurrentInstance().getApplication().createValueBinding("#{triskcaseForm.historyUrlParameter}").getValue(FacesContext.getCurrentInstance())%>','<fmt:message key="triskcase.t_riskcase_form_view_ViewForm.heading" />(<%=FacesContext.getCurrentInstance().getApplication().createValueBinding("#{triskcaseForm.triskcase.id}").getValue(FacesContext.getCurrentInstance()) %>)',"1")
}catch(e){}
</script>

<div class="mytab1">
    <ul class="myTabBar1"  id="listUl">
<LI class="Selected"><a href="#"><h:outputText value="#{text['triskcase.t_riskcase_form_view_ViewForm.heading']}" /></a></LI>
</ul>
</div>
	<t:saveState value="#{triskcaseForm.triskcasePrimaryKey}" />
	<h:form id="triskcaseForm" >
		<h:inputHidden id="forId"/>
		<h:panelGrid columns="1" cellspacing="0" cellpadding="0" styleClass="mainTable">
			<h:panelGrid columns="1" cellspacing="0" cellpadding="0" styleClass="titleTable" columnClasses="titleTdClass" >
    			<h:panelGroup>
        			<f:verbatim><ul id="tool_r"></f:verbatim>
<f:verbatim><li></f:verbatim>
					<h:commandLink action="#{triskcaseForm.edit}">				
						<f:verbatim><span class="linkEditImg"></span></f:verbatim><h:outputText styleClass="buttonText" value="#{text['actionview.t_riskcase_form_view.2c90834916ad22cb0116ae0ee6190070']}" />
						<t:updateActionListener property="#{actionParameter.successAction}" value="url:../t_riskcase/t_riskcase_form_add_EditForm.faces?_key=#{triskcaseForm.triskcase.id}"/>
					</h:commandLink>	
<f:verbatim></li></f:verbatim>

<f:verbatim><li></f:verbatim>
					<h:commandLink onclick="window.open('../PrintViewServlet?riskcaseId=#{triskcaseForm.triskcase.id}','_self','');return false">				
						<f:verbatim><span class="linkEditImg"></span></f:verbatim><h:outputText styleClass="buttonText" value="打印预览" />
					</h:commandLink>	
<f:verbatim></li></f:verbatim>

<f:verbatim></ul></f:verbatim>
			</h:panelGroup>
		</h:panelGrid>
		
		<h:panelGrid columns="1" cellspacing="0" cellpadding="0" styleClass="sectionTable" headerClass="sectionHeader">
			<f:facet name="header">
				<h:outputText value="#{text['section.t_riskcase_form_view.2c908349171feac40117202913a4004f']}" />
			</f:facet>


			<h:panelGrid columns="2" cellspacing="0" cellpadding="0" styleClass="sectionTable" columnClasses="rowTable3,rowTable3" headerClass="mainHeader" footerClass="mainFooter">				
			<h:panelGrid columns="2" cellspacing="0" cellpadding="0" styleClass="sectionTable" columnClasses="colTitleView,colValueView">
				<h:outputLabel for="caseno" styleClass="outputlabel" value="#{text['triskcase.caseno']}" />
				<h:outputText id="caseno" value="#{triskcaseForm.triskcase.caseno}" />
	            <h:inputHidden />
			    <x:message for="caseno" styleClass="fieldError" />
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
				<h:outputLabel for="createdate" styleClass="outputlabel" value="#{text['triskcase.createdate']}" />
				<h:outputText id="createdate" value="#{triskcaseForm.triskcase.createdate}" >
					<f:convertDateTime pattern="yyyy-MM-dd" timeZone="GMT+8"/>
				</h:outputText>
	            <h:inputHidden />
			    <x:message for="createdate" styleClass="fieldError" />
			</h:panelGrid>

  

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

  			</h:panelGrid>
		</h:panelGrid>
		<h:panelGrid columns="1" cellspacing="0" cellpadding="0" styleClass="sectionTable" headerClass="sectionHeader">
			<f:facet name="header">
				<h:outputText value="#{text['section.t_riskcase_form_view.2c908349171feac40117202914300054']}" />
			</f:facet>


			<h:panelGrid columns="2" cellspacing="0" cellpadding="0" styleClass="sectionTable" columnClasses="rowTable3,rowTable3" headerClass="mainHeader" footerClass="mainFooter">				
			<h:panelGrid columns="2" cellspacing="0" cellpadding="0" styleClass="sectionTable" columnClasses="colTitleView,colValueView">
				<h:outputLabel for="mchntCd" styleClass="outputlabel" value="#{text['triskcase.mchntCd']}" />
				<h:outputText id="mchntCd" value="#{triskcaseForm.triskcase.mchntCd}" />
	            <h:inputHidden />
			    <x:message for="mchntCd" styleClass="fieldError" />
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
				<h:outputLabel for="mchntMcc" styleClass="outputlabel" value="#{text['triskcase.mchntMcc']}" />
				<be:outputText id="mchntMcc" value="#{triskcaseForm.triskcase.mchntMcc}" >
					<f:selectItems value="#{selectItems.tmccItems}"/>
				</be:outputText>
	            <h:inputHidden />
			    <x:message for="mchntMcc" styleClass="fieldError" />
			</h:panelGrid>

  

			<h:panelGrid columns="2" cellspacing="0" cellpadding="0" styleClass="sectionTable" columnClasses="colTitleView,colValueView">
				<h:outputLabel for="status" styleClass="outputlabel" value="#{text['triskcase.status']}" />
				<be:outputText id="status" value="#{triskcaseForm.triskcase.status}">					
                   <f:selectItem itemLabel="#{text['triskcase.status.0']}" itemValue="0"/>
                   <f:selectItem itemLabel="#{text['triskcase.status.1']}" itemValue="1"/>
                   <f:selectItem itemLabel="#{text['triskcase.status.2']}" itemValue="2"/>
                   <f:selectItem itemLabel="#{text['triskcase.status.3']}" itemValue="3"/>
                   <f:selectItem itemLabel="#{text['triskcase.status.4']}" itemValue="4"/>
                   <f:selectItem itemLabel="#{text['triskcase.status.5']}" itemValue="5"/>
				</be:outputText>				
	            <h:inputHidden />
			    <x:message for="status" styleClass="fieldError" />
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
				<h:outputLabel for="relativeTransAmt" styleClass="outputlabel" value="#{text['triskcase.relativeTransAmt']}(元)" />
				<h:outputText id="relativeTransAmt" value="#{triskcaseForm.triskcase.addRelativeAmt}" >
					<f:convertNumber  minFractionDigits="2" />
				</h:outputText>
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
				<h:outputLabel for="acquireInstName" styleClass="outputlabel" value="#{text['triskcase.acquireInstName']}" />
				<be:outputText id="acquireInstName" value="#{triskcaseForm.triskcase.acquireInstName}">					
                   <f:selectItems value="#{extSelectItems.belongToInstList}"/>
				</be:outputText>				
	            <h:inputHidden />
			    <x:message for="acquireInstName" styleClass="fieldError" />
			</h:panelGrid>

  

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

  			</h:panelGrid>


			<h:panelGrid columns="2" cellspacing="0" cellpadding="0" styleClass="sectionTable" columnClasses="rowTable1,rowTable5" headerClass="mainHeader" footerClass="mainFooter">				
			<h:panelGrid columns="2" cellspacing="0" cellpadding="0" styleClass="sectionTable" columnClasses="colTitleView,colValueView">
				<h:outputLabel for="triggerContent" styleClass="outputlabel" value="#{text['triskcase.triggerContent']}" />
			    <h:outputText id="triggerContent" value="#{triskcaseForm.triskcase.triggerContent}" styleClass="viewTextarea"/>
	            <h:inputHidden />
			    <x:message for="triggerContent" styleClass="fieldError" />
			</h:panelGrid>

  			</h:panelGrid>


			<h:panelGrid columns="2" cellspacing="0" cellpadding="0" styleClass="sectionTable" columnClasses="rowTable1,rowTable5" headerClass="mainHeader" footerClass="mainFooter">				
			<h:panelGrid columns="2" cellspacing="0" cellpadding="0" styleClass="sectionTable" columnClasses="colTitleView,colValueView">
				<h:outputLabel for="riskContent" styleClass="outputlabel" value="#{text['triskcase.riskContent']}" />
			    <h:outputText id="riskContent" value="#{triskcaseForm.triskcase.riskContent}" styleClass="viewTextarea"/>
	            <h:inputHidden />
			    <x:message for="riskContent" styleClass="fieldError" />
			</h:panelGrid>

  			</h:panelGrid>


			<h:panelGrid columns="2" cellspacing="0" cellpadding="0" styleClass="sectionTable" columnClasses="rowTable1,rowTable5" headerClass="mainHeader" footerClass="mainFooter">				
			<h:panelGrid columns="2" cellspacing="0" cellpadding="0" styleClass="sectionTable" columnClasses="colTitleView,colValueView">
				<h:outputLabel for="comments1" styleClass="outputlabel" value="#{text['triskcase.comments1']}" />
			    <h:outputText id="comments1" value="#{triskcaseForm.triskcase.comments1}" styleClass="viewTextarea"/>
	            <h:inputHidden />
			    <x:message for="comments1" styleClass="fieldError" />
			</h:panelGrid>

  			</h:panelGrid>


			<h:panelGrid columns="2" cellspacing="0" cellpadding="0" styleClass="sectionTable" columnClasses="rowTable1,rowTable5" headerClass="mainHeader" footerClass="mainFooter">				
			<h:panelGrid columns="2" cellspacing="0" cellpadding="0" styleClass="sectionTable" columnClasses="colTitleView,colValueView">
				<h:outputLabel for="comments2" styleClass="outputlabel" value="#{text['triskcase.comments2']}" />
			    <h:outputText id="comments2" value="#{triskcaseForm.triskcase.comments2}" styleClass="viewTextarea"/>
	            <h:inputHidden />
			    <x:message for="comments2" styleClass="fieldError" />
			</h:panelGrid>

  			</h:panelGrid>


			<h:panelGrid columns="2" cellspacing="0" cellpadding="0" styleClass="sectionTable" columnClasses="rowTable1,rowTable5" headerClass="mainHeader" footerClass="mainFooter">				
			<h:panelGrid columns="2" cellspacing="0" cellpadding="0" styleClass="sectionTable" columnClasses="colTitleView,colValueView">
				<h:outputLabel for="comments3" styleClass="outputlabel" value="#{text['triskcase.comments3']}" />
			    <h:outputText id="comments3" value="#{triskcaseForm.triskcase.comments3}" styleClass="viewTextarea"/>
	            <h:inputHidden />
			    <x:message for="comments3" styleClass="fieldError" />
			</h:panelGrid>

  			</h:panelGrid>


			<h:panelGrid columns="2" cellspacing="0" cellpadding="0" styleClass="sectionTable" columnClasses="rowTable1,rowTable5" headerClass="mainHeader" footerClass="mainFooter">				
			<h:panelGrid columns="2" cellspacing="0" cellpadding="0" styleClass="sectionTable" columnClasses="colTitleView,colValueView">
				<h:outputLabel for="comments4" styleClass="outputlabel" value="#{text['triskcase.comments4']}" />
			    <h:outputText id="comments4" value="#{triskcaseForm.triskcase.comments4}" styleClass="viewTextarea"/>
	            <h:inputHidden />
			    <x:message for="comments4" styleClass="fieldError" />
			</h:panelGrid>

  			</h:panelGrid>


			<h:panelGrid columns="2" cellspacing="0" cellpadding="0" styleClass="sectionTable" columnClasses="rowTable1,rowTable5" headerClass="mainHeader" footerClass="mainFooter">				
			<h:panelGrid columns="2" cellspacing="0" cellpadding="0" styleClass="sectionTable" columnClasses="colTitleView,colValueView">
				<h:outputLabel for="comments5" styleClass="outputlabel" value="#{text['triskcase.comments5']}" />
			    <h:outputText id="comments5" value="#{triskcaseForm.triskcase.comments5}" styleClass="viewTextarea"/>
	            <h:inputHidden />
			    <x:message for="comments5" styleClass="fieldError" />
			</h:panelGrid>

  			</h:panelGrid>
		</h:panelGrid>

		</h:panelGrid>
	</h:form>
<div class="mytab1">
<ul class="myTabBar1"  id="listUl">
<LI class="Selected"><a href="#"><h:outputText value="#{text['triskcaseAttachment.t_riskcase_attachment_add_List.heading']}" /></a></LI>
</ul>
</div>	
	
	<t:saveState value="#{triskcaseAttachmentList.triskcaseAttachment}" />
	<t:saveState id="triskcaseAttachments" value="#{triskcaseAttachmentList.triskcaseAttachments}" />
	    <a4j:jsFunction name="deleteTriskcaseAttachment" action="#{triskcaseAttachmentList.delete}"  reRender="triskcaseAttachmentPanel,triskcases" oncomplete="rowIndexVarOfTriskcase = -1">
	</a4j:jsFunction>
	<a4j:jsFunction name="addTriskcaseAttachment" action="#{triskcaseAttachmentList.add}">
		<a4j:actionparam name="param1" assignTo="#{actionParameter.successAction}"  />  
	</a4j:jsFunction>	
	<h:form id="triskcaseAttachmentList"  >
		<a4j:jsFunction name="loadTriskcaseAttachments" action="#{triskcaseForm.loadChildOfTriskcaseAttachment}"  reRender="triskcaseAttachmentPanel,triskcases" oncomplete="loadChild()"/>

<f:verbatim>				
<script>
		var rowIndexVarOfTriskcaseAttachment = -1;
</script>
</f:verbatim>
<h:panelGrid id="triskcaseAttachmentPanel" 	columns="1" cellspacing="0" cellpadding="0" styleClass="mainTable">
	<h:panelGrid columns="1" cellspacing="0" cellpadding="0" styleClass="titleTable" columnClasses="titleTdClass" >
		<h:panelGroup>
			<f:verbatim><ul class="button_bar"></f:verbatim>

<f:verbatim><li></f:verbatim>
				<h:commandLink action="#{triskcaseAttachmentList.edit}" onclick="if(rowIndexVarOfTriskcaseAttachment == -1){alert('#{text['button.selected.confirm']}');return false}" >				   
					<f:verbatim><span class="linkEditImg"></span></f:verbatim><h:outputText styleClass="buttonText" value="#{text['actionlistrec.t_riskcase_attachment_add_un.2c908349171feac4011720262d45002b']}"/>
					<t:updateActionListener property="#{actionParameter.successAction}" value="t_riskcase_attachment/t_riskcase_attachment_add_un_EditForm" />
				</h:commandLink>					
<f:verbatim></li></f:verbatim>

<f:verbatim><li></f:verbatim>
				<h:commandLink action="#{triskcaseAttachmentList.view}" onclick="if(rowIndexVarOfTriskcaseAttachment == -1){alert('#{text['button.selected.confirm']}');return false}" >				   
					<f:verbatim><span class="linkViewImg"></span></f:verbatim><h:outputText styleClass="buttonText" value="#{text['actionlistrec.t_riskcase_attachment_add_un.2c908349171feac4011720262d64002c']}"  />
					<t:updateActionListener property="#{actionParameter.successAction}" value="t_riskcase_attachment/t_riskcase_attachment_add_un_ViewForm" />
				</h:commandLink>					
<f:verbatim></li></f:verbatim>

<f:verbatim><li></f:verbatim>
				<h:commandLink onclick="if(rowIndexVarOfTriskcaseAttachment == -1){alert('#{text['button.selected.confirm']}')}else if(confirm('#{text['button.confirm.delete']}')){deleteTriskcaseAttachment();}return false;"  >
						<f:verbatim><span class="linkDelImg"></span></f:verbatim><h:outputText styleClass="buttonText" value="#{text['actionlistrec.t_riskcase_attachment_add_un.2c908349171feac4011720262d83002d']}" />
				</h:commandLink>
<f:verbatim></li></f:verbatim>

		<f:verbatim><li></f:verbatim>
					<h:commandLink action="#{triskcaseAttachmentList.add}" >
						<f:verbatim><span class="linkEditImg"></span></f:verbatim><h:outputText styleClass="buttonText" value="#{text['actionlistform.t_riskcase_attachment_add_un.2c908349171feac4011720262cf7002a']}" />
	                <t:updateActionListener property="#{actionParameter.successAction}" value="url:../t_riskcase_attachment/t_riskcase_attachment_add_un_EditForm.faces?caseno=#{triskcaseForm.triskcase.caseno}&riskcase_id=#{triskcaseForm.triskcase.id}"  />
					</h:commandLink>
		<f:verbatim></li></f:verbatim>
           <f:verbatim></ul></f:verbatim>
		</h:panelGroup>
	</h:panelGrid>
		
			<h:inputHidden id="triskcaseAttachmentRowIndex" value="#{triskcaseAttachmentList.rowIndex}"></h:inputHidden>
			<h:outputLabel rendered="#{empty triskcaseAttachmentList.triskcaseAttachments}" value="#{text['formlayout.data.null']}"  styleClass="listTableEmpty" />
			<t:dataTable rendered="#{!empty triskcaseAttachmentList.triskcaseAttachments}" id="triskcaseAttachmentDataTable" var="triskcaseAttachment"
				value="#{triskcaseAttachmentList.triskcaseAttachments}"  rowClasses="rowsClass,rowsClass2" rowIndexVar="rowIndexVar" rowOnClick="rowIndexVarOfTriskcaseAttachment='#{rowIndexVar}';document.getElementById('triskcaseAttachmentList:triskcaseAttachmentRowIndex').value='#{rowIndexVar}';" onclick="hightlightRows(this);"
				binding="#{triskcaseAttachmentList.dataTable}"  headerClass="listTableHead" styleClass="listTableDetail" columnClasses="listTableTd">
				<t:column styleClass="listTableArrow">
						<h:graphicImage style="visibility:hidden;" url="../images/leftFrame_show.gif" />
				</t:column>
								<t:column>
					<f:facet name="header">
						<h:outputText value="#{text['triskcaseAttachment.caseno']}" />
					</f:facet>
				<h:outputLink id="caseno_link" value="../t_riskcase/t_riskcase_ViewForm.faces?_key=#{triskcaseAttachment.caseno}">
				  <h:outputText id="caseno" value="#{triskcaseAttachment.caseno}"/>
				</h:outputLink>	
				</t:column>
				<t:column>
					<f:facet name="header">
						<h:outputText value="#{text['triskcaseAttachment.filename']}" />
					</f:facet>
				<h:outputLink value="../FileDownloadServlet" styleClass="listbtn" rendered="#{not empty triskcaseAttachment.filename}">
					<f:param name="fileLocation" value="t_riskcase_attachment/#{triskcaseAttachment.id}/filename"/>
					<f:param name="fileName" value="#{triskcaseAttachment.filename}"/>
					<h:outputText value="#{triskcaseAttachment.filename}"/>
				</h:outputLink>
				</t:column>
				
			</t:dataTable>

		</h:panelGrid>
	</h:form>
</f:view>
</body>	