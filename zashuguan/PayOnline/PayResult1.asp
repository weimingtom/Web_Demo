<!--#include file="../Start.asp"-->
<!--#include file="../Include/PowerEasy.MD5.asp"-->
<!--#include file="UpdateOrder.asp"-->
<%
'**************************************************************
' Software name: PowerEasy SiteWeaver
' Web: http://www.powereasy.net
' Copyright (C) 2005－2009 佛山市动易网络科技有限公司 版权所有
'**************************************************************

%>
<HTML>
<HEAD>
<TITLE>在线支付结果</TITLE>
</HEAD>
<BODY style="font-size:9pt;">
<%
Const IsMessageShow = True
Const PlatformID = 1  '网银在线
Call CheckPlatformID(PlatformID)
Dim v_mid, v_oid, v_pmode, v_pstatus, v_pstring, v_amount, v_md5, v_date, v_moneytype
Dim md5string

v_mid = AccountsID
v_oid = Trim(Request("v_oid"))       '支付定单号
v_md5 = Trim(Request("v_md5str"))       '数字签名
v_amount = Trim(Request("v_amount"))       '支付金额
v_pstatus = Trim(Request("v_pstatus"))       '支付状态
v_moneytype = Trim(Request("v_moneytype"))   '支付币种
v_pmode = Trim(Request("v_pmode"))       '支付银行
v_pstring = Trim(Request("v_pstring"))       '支付结果说明

md5string = MD5(v_oid & v_pstatus & v_amount & v_moneytype & MD5Key, 32)
        
If UCase(v_md5) = UCase(md5string) And v_pstatus = "20" Then
    Response.Write "<br>恭喜你！在线支付成功！<br><br>"
    Call UpdateOrder(v_oid, v_amount, v_pstring, v_pmode, 3, True, True)
Else
    Response.Write "在线支付失败！"
End If
Call CloseConn
%>
</BODY>
</HTML>
