<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>

<%
    // ※必要な処理を実装してください

    // 入力値取得
    String strNum1 = request.getParameter("num1"); 
	String strNum2 = request.getParameter("num2"); 
	String sign = request.getParameter("operator");
	
	
	
    // 表示するメッセージ用の変数
	//int num1 = Integer.parseInt(strNum1);
	//int num2 = Integer.parseInt(strNum2);
	
	

    // メッセージ作成

%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Java基礎_演習問題3(発展)</title>
<style>
.number {
    width: 80px;
}
</style>
</head>
<body>

  <h1>Java基礎 - 演習問題3(発展)</h1>
  <h2>四則演算</h2>

  <p>
    <!-- メッセージの表示  -->
    
    <%
    if (strNum1 == null && strNum2 == null) {
    	out.println("数値を入力してください");
    	
    } else {
    	 if (strNum1 == "" && strNum2 == "") {
    		 out.println("数値が両方とも未入力です");
    		 
    	 } else if (strNum1 == "" || strNum2 == "") {
    		 out.println("いずれか数値が未入力です");
    		 
	     } else {
	    	 int num1 = Integer.parseInt(strNum1);
	    	 int num2 = Integer.parseInt(strNum2);
	    	
	    	 switch (sign) {
	    		 case "add":
	    			out.println(num1 + "+" + num2 + "=" + (num1 + num2));
	    		    break;
	    		 case "sub":
	    			out.println(num1 + "-" + num2 + "=" + (num1 - num2));
	    		    break;
	    		 case "mul":
	    			out.println(num1 + "*" + num2 + "=" + (num1 * num2));
	    		    break;
	    		 case "div":
	    			out.println(num1 + "/" + num2 + "=" + (num1 / num2));
	    		    break;
	    	 }
	     }
	    	//out.println(num1 + "+" + num2 + "=" + (num1 + num2));
    }
		
	
	//}else if (strNum1.isEmpty() || strNum2.isEmpty()) {
	//	out.println("数値を入力してください");
	//	
	//}else {
	//	int num1 = Integer.parseInt(strNum1);
	//	int num2 = Integer.parseInt(strNum2);
		
	//	switch (sign) {
	//	case "add":
	//	    out.println("num1 + num2 = ;" + (num1 + num2));
	//	    break;
	//	case "sub":
	//		out.println("num1 - num2 = ;" + (num1 - num2));
	//	    break;
	//	case "mul":
	//		out.println("num1 * num2 = ;" + (num1 * num2));
	//	    break;
	//	case "div":
	//		out.println("num1 / num2 = ;" + (num1 / num2));
	//	    break;
	//	}
	
	
    %>

  </p>

  <form action="javaBasicDev3.jsp" method="post">
    <input type="number" min="1" max="999999" class="number" name="num1">
    <select name="operator">
      <option value="add">＋</option>
      <option value="sub">ー</option>
      <option value="mul">×</option>
      <option value="div">÷</option>
    </select> 
    <input type="number" min="1" max="999999" class="number" name="num2">
    <button type="submit">計算</button>
  </form>
</body>
</html>