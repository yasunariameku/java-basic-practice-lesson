package util;

/**
 * メソッドをまとめたParamUtilクラス
 */
public class ParamUtil {

    /**
     * ポイント計算
     */
	public static int getPoint (int amount) {
		int price = (int) ((int) amount * 0.01);   
		return  price;
	};


    /**
     * ポイント計算(ランクあり)
     */
	public static double getPoint (int amount, double rank) {
		double price = amount *  rank;
		return price;
	};


    /**
     * 引数に指定した文字列がnull、または空文字かを判定
     */
	public static boolean isNullOrEmpty(String str) {
        // todo:引数の値がnull、または空文字の場合は、true
        // それ以外の場合は、falseを返すように処理を修正する
    	if (str == null || str.isEmpty()) {
    		return true;
    	}else {
    		return false;
    	}
    }

}
