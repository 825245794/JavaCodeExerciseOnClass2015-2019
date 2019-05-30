package observer;

import java.util.Observable;
import java.util.Observer;

public class JingDongObserver implements Observer {

	@Override
	public void update(Observable o, Object arg) {
		// TODO Auto-generated method stub
		System.out.println("Product " + arg + " has send to JingDong");
	}

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		ProductList p = ProductList.getInstance();
		JingDongObserver jd = new JingDongObserver();
		p.addObserver(jd);
		p.addProduct("Iphone");
	}

}
