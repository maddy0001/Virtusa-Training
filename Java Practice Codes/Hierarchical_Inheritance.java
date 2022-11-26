class Hierarchial_Inheritance {
    void Roar() {
        System.out.println("Roaring...");
    }
}

class Lion extends Hierarchial_Inheritance {
    void Play() {
        System.out.println("Playing...");
    }
}

class Cub extends Hierarchial_Inheritance {
    void Sleep() {
        System.out.println("Sleeping...");
    }
}

class TestInheritance3 {
    public static void main(String args[]) {
        Cub c = new Cub();
        c.Sleep();
        c.Roar();
        // c.Play();//C.T.Error
    }
}