
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
 String[] months = { "1月", "2月", "3月" }; 
 
 String sumTitle;
 sumTitle = "合計";
 
 String[] productClass = {"食品", "飲料"};

 int[][] amount = {
		 { 352000, 278000},
		 { 442000, 342600},
		 { 520000, 380500}
 };
 
 int sumProductAmountS = amount[0][0] + amount[1][0] + amount[2][0];
 int sumProductAmountI = amount[0][1] + amount[1][1] + amount[2][1];

 
 int [] sumProductAmount = {sumProductAmountS, sumProductAmountI};

 int [] sumMonthAmount = { amount[0][0] + amount[0][1], 
		                   amount[1][0] + amount[1][1], 
		                   amount[2][0] + amount[2][1]  };
 
 int total = sumProductAmount[0] + sumProductAmount[1];
 
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
table {
  border-collapse: collapse;
}

table th, table td {
  border: solid 1px black;
}
</style>
</head>
<body>
	<h1>Java基礎 - 演習問題2</h1>
	  <h2>売上一覧</h2>
	  <table>
	    <tr>
	      <th></th>
	      <th><% out.println(months[0]); %></th>
	      <th><% out.println(months[1]); %></th>
	      <th><% out.println(months[2]); %></th>
	      <th><% out.println(sumTitle); %></th>
	    </tr>
	    <tr>
	      <td><% out.println(productClass[0]); %></td>
	      <td><% out.println(amount[0][0]); %></td>
	      <td><% out.println(amount[1][0]); %></td>
	      <td><% out.println(amount[2][0]); %></td>
	      <td><% out.println(sumProductAmount[0]); %></td>
	    </tr>
	    <tr>
	      <td><% out.println(productClass[1]); %></td>
	      <td><% out.println(amount[0][1]); %></td>
	      <td><% out.println(amount[1][1]); %></td>
	      <td><% out.println(amount[2][1]); %></td>
	      <td><% out.println(sumProductAmount[1]); %></td>
	    </tr>
	    <tr>
	      <td><% out.println(sumTitle); %></td>
	      <td><% out.println(sumMonthAmount[0]); %></td>
	      <td><% out.println(sumMonthAmount[1]);%></td>
	      <td><% out.println(sumMonthAmount[2]); %></td>
	      <td><% out.println(total); %></td>
	    </tr>
	  </table>
</body>
</html>