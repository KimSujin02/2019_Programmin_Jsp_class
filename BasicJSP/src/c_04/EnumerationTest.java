package c_04;

import java.util.*;

public class EnumerationTest {

	public static void main(String[] args) {
		Vector list = new Vector();
		list.addElement(new Integer(10));
		list.addElement(new Double(3.14));
		list.addElement(new String("java"));
		list.addElement(new Date());
		Enumeration e = list.elements();
		while(e.hasMoreElements()) {
			System.out.println("e의 요소 :" + e.nextElement());
	}
	}

}
