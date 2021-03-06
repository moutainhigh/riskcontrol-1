<%@ include file="/common/taglibs.jsp"%>
<%@ page language="java" pageEncoding="UTF-8" contentType="text/html;charset=UTF-8" %>
<%@page import="javax.faces.context.FacesContext"%>
<%@page import="cn.com.brilliance.begen.common.BeGenHistory"%>
<%@ page import="cn.com.brilliance.begen.common.webapp.action.ResultPage" %>
<%
String basePath = request.getContextPath();
javax.faces.context.FacesContext.getCurrentInstance().getViewRoot().setLocale(cn.com.brilliance.begen.common.bundle.ResourceBundle.getLocale(request));

%>
<head>
<link rel="stylesheet" type="text/css" media="all" href="<%=basePath%>/styles/config.css" />
<link rel="stylesheet" type="text/css" href="<%=basePath%>/styles/right.css" />

<script type="text/javascript" src="<%=basePath%>/scripts/prototype.js"></script> 
<script type="text/javascript" src="<%=basePath%>/scripts/effects.js"></script>
<script type="text/javascript" src="<%=basePath%>/scripts/global.js"></script>
<script type="text/javascript" src="<%=basePath%>/scripts/common.js"></script>

<script type="text/javascript" src="<%=basePath%>/scripts/behaviour.js"></script>
<script type="text/javascript" src="<%=basePath%>/scripts/getclass.js"></script>
<script type="text/javascript" src="<%=basePath%>/scripts/calculator.js"></script>
<script language=javascript src="<%=basePath%>/scripts/getreset.js"></script>
</head>
<body onload="loadTruleGroups();loadHidInfo();getDateObj()">

<jsp:include flush="true" page="../common/infobar.jsp"></jsp:include>
<f:view>
<script language=javascript>

var imagePath = "<%=basePath%>/images" ;
var scriptPath = "<%=basePath%>/scripts" ;

try{
	parent.historyIframe.addHistory('/t_rule_group/t_rule_group_List.faces?<%=FacesContext.getCurrentInstance().getApplication().createValueBinding("#{truleGroupList.historyUrlParameter}").getValue(FacesContext.getCurrentInstance())%>',"<fmt:message key="truleGroup.t_rule_group_List.heading" />","2")
}catch(e){}
</script>
	<f:loadBundle var="text" basename="ApplicationResources" />
	<t:saveState value="#{truleGroupList.truleGroup}" />
	<t:saveState value="#{truleGroupList.queryFields}" />
	<t:saveState id="truleGroups" value="#{truleGroupList.truleGroups}" />
	    <a4j:jsFunction name="deleteTruleGroup" action="#{truleGroupList.delete}"  reRender="truleGroupPanel,truleGroups" oncomplete="rowIndexVarOfTruleGroup = -1">
	</a4j:jsFunction>
	<a4j:jsFunction name="addTruleGroup" action="#{truleGroupList.add}">
		<a4j:actionparam name="param1" assignTo="#{actionParameter.successAction}"  />  
	</a4j:jsFunction>	
	<h:form id="truleGroupList"  >
	<a4j:jsFunction name="loadTruleGroups" action="#{truleGroupList.initTruleGroups}" reRender="truleGroupPanel,truleGroups" />
<script>
		var rowIndexVarOfTruleGroup = -1;
</script>

<br>
		<div class="mytab1">
    	    <ul class="myTabBar1">
    	      <li class="Selected"><a href="#"><h:outputText value="#{text['truleGroup.t_rule_group_List.heading']}" /></a></li>
    	    </ul>
    	</div>



	<h:panelGrid  id="truleGroupPanel" columns="1" cellspacing="0" cellpadding="0" styleClass="mainTable" >	
		
		<h:panelGrid columns="1" cellspacing="1" cellpadding="2" styleClass="titleTable" columnClasses="titleTdClass" >
			<h:panelGroup>
        			<f:verbatim><ul id="tool_r"></f:verbatim>

<f:verbatim><li></f:verbatim>
	<h:panelGroup >
			<h:commandLink action="#{truleGroupList.edit}"  onclick="if(rowIndexVarOfTruleGroup == -1){alert('#{text['button.selected.confirm']}');return false}" >				   
				<f:verbatim><span class="linkEditImg"></span></f:verbatim><h:outputText styleClass="buttonText" value="#{text['actionlistrec.t_rule_group.2c90834916d142fa0116d3025cd70142']}" />
				<t:updateActionListener property="#{actionParameter.successAction}" value="t_rule_group/t_rule_group_EditForm" />
			</h:commandLink>							
	</h:panelGroup>
<f:verbatim></li></f:verbatim>

<f:verbatim><li></f:verbatim>
	<h:panelGroup >
			<h:commandLink action="#{truleGroupList.view}" onclick="if(rowIndexVarOfTruleGroup == -1){alert('#{text['button.selected.confirm']}');return false}" >				   
				<f:verbatim><span class="linkViewImg"></span></f:verbatim><h:outputText styleClass="buttonText" value="#{text['actionlistrec.t_rule_group.2c90834916d142fa0116d3025ce60143']}" />
				<t:updateActionListener property="#{actionParameter.successAction}" value="t_rule_group/t_rule_group_ViewForm" />
			</h:commandLink>	
	</h:panelGroup>
<f:verbatim></li></f:verbatim>

<f:verbatim><li></f:verbatim>
	<h:panelGroup >
			 <h:commandLink  onclick="if(rowIndexVarOfTruleGroup == -1){alert('#{text['button.selected.confirm']}')}else if(confirm('#{text['button.confirm.delete']}')){deleteTruleGroup();}return false" >
				<f:verbatim><span class="linkDelImg"></span></f:verbatim><h:outputText styleClass="buttonText" value="#{text['actionlistrec.t_rule_group.2c90834916d142fa0116d3025d060144']}" />
			</h:commandLink>	
	</h:panelGroup>
<f:verbatim></li></f:verbatim>
       
	<f:verbatim><li></f:verbatim>
		<h:commandLink action="#{truleGroupList.add}"  >
			<f:verbatim><span class="linkAddImg"></span></f:verbatim><h:outputText styleClass="buttonText" value="#{text['actionlistform.t_rule_group.2c90834916d142fa0116d3025cb70141']}" />
			<t:updateActionListener property="#{actionParameter.successAction}" value="url:../t_rule_group/t_rule_group_EditForm.faces" />
		</h:commandLink>
	<f:verbatim></li></f:verbatim>
	
	            <f:verbatim></ul></f:verbatim>
    			</h:panelGroup>
    		</h:panelGrid>
			<h:inputHidden id="truleGroupRowIndex" value="#{truleGroupList.rowIndex}"></h:inputHidden>
			<t:dataTable id="truleGroupDataTable" var="truleGroup"
				value="#{truleGroupList.truleGroups}" rowClasses="rowsClass,rowsClass2" rowIndexVar="rowIndexVar" 
				sortColumn="#{truleGroupList.sortColumn}"
				sortAscending="#{truleGroupList.ascending}"
				binding="#{truleGroupList.dataTable}" headerClass="listTableHead" styleClass="listTableDetail" columnClasses="listTableTd" rowOnClick="rowIndexVarOfTruleGroup='#{rowIndexVar}';document.getElementById('truleGroupList:truleGroupRowIndex').value='#{rowIndexVar}';" onclick="hightlightRows(this);">				
				<t:column styleClass="listTableArrow">
						<h:graphicImage style="visibility:hidden;" url="../images/leftFrame_show.gif" />
				</t:column>		
				<t:column>
					<f:facet name="header">
						<t:commandSortHeader columnName="belongToInst" arrow="true">		                
							<h:outputText value="#{text['truleGroup.belongToInst']}" />
						</t:commandSortHeader>	
				</f:facet>
				<h:outputLink id="belongToInst_link" value="../t_organize_info/t_organize_info_ViewForm.faces?_key=#{truleGroup.belongToInst}">
				  <h:outputText id="belongToInst" value="#{truleGroup.belongToInstOfTorganizeInfo.name}"/>
				</h:outputLink>	
				</t:column>
				
				<t:column>
					<f:facet name="header">
						<t:commandSortHeader columnName="description" arrow="true">		                
							<h:outputText value="#{text['truleGroup.description']}" />
						</t:commandSortHeader>	
				</f:facet>
				<h:outputText id="description" value="#{truleGroup.description}" />
				</t:column>
				
				<t:column>
					<f:facet name="header">
						<t:commandSortHeader columnName="enable" arrow="true">		                
							<h:outputText value="#{text['truleGroup.enable']}" />
						</t:commandSortHeader>	
				</f:facet>
				<h:selectBooleanCheckbox id="enable" value="#{truleGroup.enable}"  disabled="true"/>
				</t:column>
				
			</t:dataTable>

		</h:panelGrid>

	</h:form>
</f:view>
</body>