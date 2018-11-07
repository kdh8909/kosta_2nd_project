package controller.standby;

import controller.util.Propertiez.Controllers;

public class UnitTest {

	public static void main(String[] args) {
		Controllers[] conts= Controllers.values();
	    for(Controllers cont: conts){
	    	System.out.println(cont.getController());
	    }
	}
}
