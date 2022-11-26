class Method_overloading {
    static int add(int a, int b) {
        return a + b;
    }

    static int add(int a, int b, int c) {
        return a + b + c;
    }
}

class TestOverloading1 {
    public static void main(String[] args) {
        System.out.println(Method_overloading.add(99, 69));
        System.out.println(Method_overloading.add(69, 09, 69));
    }
}
