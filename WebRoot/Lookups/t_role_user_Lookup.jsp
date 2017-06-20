<%@ page language="java" pageEncoding="UTF-8" contentType="text/html;charset=UTF-8" %>
<%
String basePath = request.getContextPath();
javax.faces.context.FacesContext.getCurrentInstance().getViewRoot().setLocale(cn.com.brilliance.begen.common.bundle.ResourceBundle.getLocale(request));
%>
<%@ include file="/common/taglibs.jsp"%>
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
</head>
<body onload="loadTroleUsers();loadHidInfo();getDateObj()">
<input type="hidden" id="imagePath" value="<%=basePath%>/images">
<input type="hidden" id="scriptPath" value="<%=basePath%>/scripts">


<f:view>
	<f:loadBundle var="text" basename="ApplicationResources" />
	<t:saveState value="#{troleUserList.queryFields}" />
	<t:saveState id="troleUsers" value="#{troleUserList.troleUsers}" />
	
	<br>
		<div class="mytab1">
    	    <ul class="myTabBar1">
    	      <li class="Selected"><a href="#"><h:outputText value="#{text['troleUser.t_role_user_List.heading']}" /></a></li>
    	    </ul>
    	</div>
	<h:form id="troleUserList">
       <a4j:jsFunction name="loadTroleUsers" action="#{troleUserList.initTroleUsers}" reRender="troleUserList,troleUsers" oncomplete="checkLookupS()" />		
		<h:panelGrid  columns="1" cellspacing="0" cellpadding="0" styleClass="mainTable">
			
		<h:panelGrid columns="1" cellspacing="1" cellpadding="2" styleClass="titleTable" columnClasses="titleTdClass" >
			<h:panelGroup>
        			<f:verbatim><ul id="tool_r"></f:verbatim>
					<f:verbatim><li></f:verbatim>	
					<h:commandLink onclick="window.close()">
					<f:verbatim><span class="linkClearImg"></span></f:verbatim><h:outputText styleClass="buttonText" value="#{text['button.cancel']}" />
					</h:commandLink>	
					<f:verbatim></li></f:verbatim>	
			</h:panelGroup>
		 </h:panelGrid>
			<t:dataTable id="troleUserDataTable" var="troleUser"
				value="#{troleUserList.troleUsers}" rowClasses="rowsClass,rowsClass2"
				sortColumn="#{troleUserList.sortColumn}"
				sortAscending="#{troleUserList.ascending}"
				preserveDataModel="true"
				preserveSort="true"
				binding="#{troleUserList.dataTable}" headerClass="listTableHead" styleClass="listTableDetail" columnClasses="listTableTd"
			>				
				<t:column>

					<h:selectBooleanCheckbox id = "select_checkbox" value="" 
						rendered="#{lookupParameter.multiSelect eq 'true'}" />
					<h:inputHidden id="id" value="#{troleUser.id}" />
					<h:inputHidden id="roleId" value="#{troleUser.roleId}" />
					<h:inputHidden id="userId" value="#{troleUser.userId}" />
				</t:column>
				<t:column>
					<f:facet name="header">
						<h:outputText value="#{text['troleUser.roleId']}" />
					</f:facet>
				<h:outputLink onclick="returnLookupValue('#{troleUser.id}','#{troleUser.id}')">					
						<h:outputText value="#{troleUser.roleId}"  styleClass="linkLookUp" />
				</h:outputLink>		
				</t:column>
				<t:column>
					<f:facet name="header">
						<h:outputText value="#{text['troleUser.userId']}" />
					</f:facet>
				<be:outputText id="userId1" value="#{troleUser.userId}">
                   <f:selectItems value="#{selectItems.tuserInfoItems}"/>
				</be:outputText>
				</t:column>
			</t:dataTable>
		
		</h:panelGrid>
	</h:form>
	<input type=hidden id="hid" value='<%=request.getParameter("_value")%>' />
</f:view>
</body>