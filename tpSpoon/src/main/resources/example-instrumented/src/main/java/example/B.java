package example;


public class B  {


    public void mth1(int i) {
/**        System.out.println("B.mth1(int i)");
**/
		vv.spoon.logger.LogWriter.out("B.mth1(int i)" + " 1",false);

        C c = new C(i);
        int result = c.mth1();

/**        System.out.println("result = " + result);
**/
		vv.spoon.logger.LogWriter.out(("result = " + result) + " 1",false);
    }

    public void mth2() {
/**        System.out.println("B.mth2()");
**/
		vv.spoon.logger.LogWriter.out("B.mth2()" + " 1",false);
    }

}
