class Twofer {
    String twofer(String name) {
        String you = (name != null) ? name : "you";

        return "One for " + you + ", one for me.";
    }
}
