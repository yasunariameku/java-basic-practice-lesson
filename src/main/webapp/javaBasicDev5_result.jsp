<%@ page import="util.ParamUtil"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>

  <!-- ※下記のコメントを参考に、必要に応じて処理を変更してください  -->
<%
// 入力値を取得
    request.setCharacterEncoding("UTF-8");
	String product1 = request.getParameter("product1");
	String product2 = request.getParameter("product2");
	String _amount1 = request.getParameter("amount1");
	String _amount2 = request.getParameter("amount2");
	String _rank = request.getParameter("rank");

    int amount1 = 0;
    int amount2 = 0;
    
	// 数値に変換
	if ( _amount1.isEmpty()) {
		amount1 = 0;
	} else {
		amount1 = Integer.parseInt(_amount1); //金額に変換
	}
	
	if ( _amount2.equals("amount2")) {
		amount2 = 0;
	} else {
		amount2 = Integer.parseInt(_amount2); //金額に変換
	}

	
	// ポイントを定義
	double rank = 0;
	
	
	switch (_rank) {
	case "1":
		rank = 0.02;
		break;
	case "2":
		rank = 0.03;
		break;
	}


	// メソッドを呼んでポイントを取得
	int point1Result = 0;
	int point2Result = 0;
	
	if (rank == 0) {
		point1Result =  ParamUtil.getPoint(amount1);
		point2Result =  ParamUtil.getPoint(amount2);
		
	} else if (rank == 0.02 || rank == 0.03) {
		point1Result = (int) ParamUtil.getPoint(amount1, rank);
		point2Result = (int) ParamUtil.getPoint(amount2, rank);
	}

%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Java基礎_演習問題5(発展)</title>
<style>
.right {
  text-align: right;
}
</style>
</head>
<body>
  <h1>Java基礎 - 演習問題5(発展)</h1>

  <h2>計算結果</h2>

  <table border="1">
    <tr>
      <th>商品</th>
      <th>金額</th>
      <th>ポイント</th>
    </tr>
    <tr>
      <td><%= product1 %></td>
      <td class="right"><%= amount1 %></td>
      <td class="right"><%= point1Result %></td>
    </tr>
    <tr>
      <td><%= product2 %></td>
      <td class="right"><%= amount2 %></td>
      <td class="right"><%= point2Result %></td>
    </tr>
  </table>

  <a href="javaBasicDev5_input.jsp">戻る</a>
</body>
</html>