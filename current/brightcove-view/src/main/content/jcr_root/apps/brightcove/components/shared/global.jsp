<%--

    Adobe CQ5 Brightcove Connector

    Copyright (C) 2015 Coresecure Inc.

        Authors:    Alessandro Bonfatti
                    Yan Kisen

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>.

--%>

<%@ page import="com.day.cq.i18n.I18n" %>
<%@ page import="com.day.cq.wcm.api.WCMMode" %>
<%@ page import="java.util.ResourceBundle" %>

<%@include file="/libs/foundation/global.jsp" %>
<%
    // Localization

    final ResourceBundle resourceBundle = slingRequest.getResourceBundle(null);
    I18n i18n = new I18n(resourceBundle);

    // WCMMode

    WCMMode currentWCMMode = WCMMode.fromRequest(request);

    boolean isEditMode = (currentWCMMode == WCMMode.EDIT);
    boolean isDesignMode = (currentWCMMode == WCMMode.DESIGN);
    boolean isEditOrDesignMode = (isEditMode || isDesignMode);


    //Update Page Context
    pageContext.setAttribute("isEditMode", isEditMode);
    pageContext.setAttribute("isDesignMode", isEditMode);
    pageContext.setAttribute("isEditOrDesignMode", isEditOrDesignMode);
%>