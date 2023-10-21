<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ attribute name="borderSize" type="Integer" %>
<%@ attribute name="width" type="Integer" %>
<%@ attribute name="borderColor" type="String" %>

<div>
    <jsp:doBody />
</div>

<style>
    div {
        word-wrap: break-word;
        border:${borderSize}px solid ${borderColor};
        width: ${width}px;
        margin-top: 10px;
        padding-left: 5px;
        padding-right: 5px;
    }
</style>
