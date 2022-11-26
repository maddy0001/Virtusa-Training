class Single_Inheritance {
    void Play() {
        System.out.println("Playing...");
    }
}

class Lion extends Single_Inheritance {
    void Roar() {
        System.out.println("Roaring...");
    }
}

class TestInheritance {
    public static void main(String args[]) {
        Lion d = new Lion();
        d.Roar();
        d.Play();
    }
}