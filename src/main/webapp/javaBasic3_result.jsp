<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%
    // ※必要な処理を実装してください

    // 入力値取得
    //文字列の統一
    request.setCharacterEncoding("UTF-8");

	//入力値の取得
	String name = request.getParameter("name"); //名前の入力値を取得
	
	
	String age = request.getParameter("age"); //年齢の入力値を取得
	int defAge = 0;
	if (age.isEmpty()) {
		age = "0";
	}
	int ageInt = Integer.parseInt(age);
	

	
	String bloodType = request.getParameter("bloodType"); //血液型の入力値を取得
	
	/* 年齢をif文で条件分岐させたい→年齢を数値型に変換したい,
	互換性のない型同士をどうやって変換するのか */

    // ロボットからの返信用メッセージ作成
    /* if (iage > 20) {
		out.println("私よりも" + (iage - 20) + "歳年上ですね！");
	} else if (iage < 20) {
		out.println("私よりも" + (20 - iage) + "歳年下ですね！");
	} else {
		out.println("私と同い年ですね！");
	}; */
    
    
    
    

%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Java基礎_演習問題3</title>
</head>
<body>
  <h1>Java基礎 - 演習問題3</h1>

  <h2>ロボットからの返信</h2>
  <div>
    <!-- 必要に応じて処理を変更してください  -->

    <p>こんにちは、<%
    if (name == "") {
    	out.println("名無しさん！");
    } else if (name == "ロボット") {
    	out.println( name + "さん！私と同じ名前ですね！");
    } else {
    	out.println(name);
    }
    %></p>
    
    <p><%
    if (ageInt > 20) {
		out.println("私よりも" + (ageInt - 20) + "歳年上ですね！");
	} else if (ageInt < 20) {
		out.println("私よりも" + (20 - ageInt) + "歳年下ですね！");
	} else {
		out.println("私と同い年ですね！");
	}
	%></p>
	
    <p><%
    switch (bloodType) {
	case "typeA":
	    out.println("私もA型です!");
	    break;
	case "typeB":
	    out.println("B型の人と話すのは初めてです。");
	    break;
	case "typeAB":
	    out.println("私の母がAB型です。");
	    break;
	case "typeO":
	    out.println("私の父がO型です");
	    break;
	}
    %></p>
  </div>
  <a href="javaBasic3_input.jsp">戻る</a>
</body>
</html>