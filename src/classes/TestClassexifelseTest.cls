@isTest
public class TestClassexifelseTest {
    private static testmethod void testAMethod1(){
	TestClassexifelse mc = new TestClassexifelse();

	// Mimic that variable being set by the page
	mc.var = 1;

	mc.aMethod();

	//System.assert(...); // Assert that the operations in the first branch worked
}
    private static testmethod void testAMethod2(){
	TestClassexifelse mc = new TestClassexifelse();

	// Mimic that variable being set by the page
	mc.var = 2;

	mc.aMethod();

	//System.assert(...); // Assert that the operations in the first branch worked
}

}