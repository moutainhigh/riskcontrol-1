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
<body onload="loadTruleInstanceGroups();loadHidInfo();getDateObj()">

<jsp:include flush="true" page="../common/infobar.jsp"></jsp:include>
<f:view>
<script language=javascript>

var imagePath = "<%=basePath%>/images" ;
var scriptPath = "<%=basePath%>/scripts" ;

try{
	parent.historyIframe.addHistory('/t_rule_instance_group/t_rule_instance_group_List.faces?<%=FacesContext.getCurrentInstance().getApplication().createValueBinding("#{truleInstanceGroupList.historyUrlParameter}").getValue(FacesContext.getCurrentInstance())%>',"<fmt:message key="truleInstanceGroup.t_rule_instance_group_List.heading" />","2")
}catch(e){}
</script>
	<f:loadBundle var="text" basename="ApplicationResources" />
	<t:saveState value="#{truleInstanceGroupList.truleInstanceGroup}" />
	<t:saveState value="#{truleInstanceGroupList.queryFields}" />
	<t:saveState id="truleInstanceGroups" value="#{truleInstanceGroupList.truleInstanceGroups}" />
	    <a4j:jsFunction name="deleteTruleInstanceGroup" action="#{truleInstanceGroupList.delete}"  reRender="truleInstanceGroupPanel,truleInstanceGroups" oncomplete="rowIndexVarOfTruleInstanceGroup = -1">
	</a4j:jsFunction>
	<a4j:jsFunction name="addTruleInstanceGroup" action="#{truleInstanceGroupList.add}">
		<a4j:actionparam name="param1" assignTo="#{actionParameter.successAction}"  />  
	</a4j:jsFunction>	
	<h:form id="truleInstanceGroupList"  >
	<a4j:jsFunction name="loadTruleInstanceGroups" action="#{truleInstanceGroupList.initTruleInstanceGroups}" reRender="truleInstanceGroupPanel,truleInstanceGroups" />
<script>
		var rowIndexVarOfTruleInstanceGroup = -1;
</script>

<br>
		<div class="mytab1">
    	    <ul class="myTabBar1">
    	      <li class="Selected"><a href="#"><h:outputText value="#{text['truleInstanceGroup.t_rule_instance_group_List.heading']}" /></a></li>
    	    </ul>
    	</div>



	<h:panelGrid  id="truleInstanceGroupPanel" columns="1" cellspacing="0" cellpadding="0" styleClass="mainTable" >	
		
		<h:panelGrid columns="1" cellspacing="1" cellpadding="2" styleClass="titleTable" columnClasses="titleTdClass" >
			<h:panelGroup>
        			<f:verbatim><ul id="tool_r"></f:verbatim>

<f:verbatim><li></f:verbatim>
	<h:panelGroup >
			<h:commandLink action="#{truleInstanceGroupList.edit}"  onclick="if(rowIndexVarOfTruleInstanceGroup == -1){alert('#{text['button.selected.confirm']}');return false}" >				   
				<f:verbatim><span class="linkEditImg"></span></f:verbatim><h:outputText styleClass="buttonText" value="#{text['actionlistrec.t_rule_instance_group.2c90834916d142fa0116d3247c110295']}" />
				<t:updateActionListener property="#{actionParameter.successAction}" value="t_rule_instance_group/t_rule_instance_group_EditForm" />
			</h:commandLink>							
	</h:panelGroup>
<f:verbatim></li></f:verbatim>

<f:verbatim><li></f:verbatim>
	<h:panelGroup >
			<h:commandLink action="#{truleInstanceGroupList.view}" onclick="if(rowIndexVarOfTruleInstanceGroup == -1){alert('#{text['button.selected.confirm']}');return false}" >				   
				<f:verbatim><span class="linkViewImg"></span></f:verbatim><h:outputText styleClass="buttonText" value="#{text['actionlistrec.t_rule_instance_group.2c90834916d142fa0116d3247c310296']}" />
				<t:updateActionListener property="#{actionParameter.successAction}" value="t_rule_instance_group/t_rule_instance_group_ViewForm" />
			</h:commandLink>	
	</h:panelGroup>
<f:verbatim></li></f:verbatim>

<f:verbatim><li></f:verbatim>
	<h:panelGroup >
			 <h:commandLink  onclick="if(rowIndexVarOfTruleInstanceGroup == -1){alert('#{text['button.selected.confirm']}')}else if(confirm('#{text['button.confirm.delete']}')){deleteTruleInstanceGroup();}return false" >
				<f:verbatim><span class="linkDelImg"></span></f:verbatim><h:outputText styleClass="buttonText" value="#{text['actionlistrec.t_rule_instance_group.2c90834916d142fa0116d3247c400297']}" />
			</h:commandLink>	
	</h:panelGroup>
<f:verbatim></li></f:verbatim>
       
	<f:verbatim><li></f:verbatim>
		<h:commandLink action="#{truleInstanceGroupList.add}"  >
			<f:verbatim><span class="linkAddImg"></span></f:verbatim><h:outputText styleClass="buttonText" value="#{text['actionlistform.t_rule_instance_group.2c90834916d142fa0116d3247bf20294']}" />
			<t:updateActionListener property="#{actionParameter.successAction}" value="url:../t_rule_instance_group/t_rule_instance_group_EditForm.faces" />
		</h:commandLink>
	<f:verbatim></li></f:verbatim>
	
	            <f:verbatim></ul></f:verbatim>
    			</h:panelGroup>
    		</h:panelGrid>
			<h:inputHidden id="truleInstanceGroupRowIndex" value="#{truleInstanceGroupList.rowIndex}"></h:inputHidden>
			<t:dataTable id="truleInstanceGroupDataTable" var="truleInstanceGroup"
				value="#{truleInstanceGroupList.truleInstanceGroups}" rowClasses="rowsClass,rowsClass2" rowIndexVar="rowIndexVar" 
				sortColumn="#{truleInstanceGroupList.sortColumn}"
				sortAscending="#{truleInstanceGroupList.ascending}"
				binding="#{truleInstanceGroupList.dataTable}" headerClass="listTableHead" styleClass="listTableDetail" columnClasses="listTableTd" rowOnClick="rowIndexVarOfTruleInstanceGroup='#{rowIndexVar}';document.getElementById('truleInstanceGroupList:truleInstanceGroupRowIndex').value='#{rowIndexVar}';" onclick="hightlightRows(this);">				
				<t:column styleClass="listTableArrow">
						<h:graphicImage style="visibility:hidden;" url="../images/leftFrame_show.gif" />
				</t:column>		
				<t:column>
					<f:facet name="header">
						<t:commandSortHeader columnName="ruleGroupId" arrow="true">		                
							<h:outputText value="#{text['truleInstanceGroup.ruleGroupId']}" />
						</t:commandSortHeader>	
				</f:facet>
				<h:outputLink id="ruleGroupId_link" value="../t_rule_group/t_rule_group_ViewForm.faces?_key=#{truleInstanceGroup.ruleGroupId}">
				  <h:outputText id="ruleGroupId" value="#{truleInstanceGroup.ruleGroupIdOfTruleGroup.id}"/>
				</h:outputLink>	
				</t:column>
				
				<t:column>
					<f:facet name="header">
						<t:commandSortHeader columnName="ruleInstanceId" arrow="true">		                
							<h:outputText value="#{text['truleInstanceGroup.ruleInstanceId']}" />
						</t:commandSortHeader>	
				</f:facet>
				<h:outputLink id="ruleInstanceId_link" value="../t_rule_instance/t_rule_instance_ViewForm.faces?_key=#{truleInstanceGroup.ruleInstanceId}">
				  <h:outputText id="ruleInstanceId" value="#{truleInstanceGroup.ruleInstanceIdOfTruleInstance.id}"/>
				</h:outputLink>	
				</t:column>
				
			</t:dataTable>

		</h:panelGrid>

	</h:form>
</f:view>
</body>