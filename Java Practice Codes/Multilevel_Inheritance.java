class Multilevel_Inheritance {
    void Play() {
        System.out.println("Playing...");
    }
}

class Dog extends Multilevel_Inheritance {
    void Roar() {
        System.out.println("Roaring...");
    }
}

class BabyCub extends Dog {
    void Sleep() {
        System.out.println("Sleeping...");
    }
}

class TestInheritance2 {
    public static void main(String args[]) {
        BabyCub d = new BabyCub();
        d.Sleep();
        d.Roar();
        d.Play();
    }
}