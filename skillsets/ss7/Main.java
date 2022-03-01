class main 
{
    public static void main(String args[])
    {
        Methods.getRequirements();

        int[] userArray = Methods.createArray();

        Methods.generatePsuedoRandomNumbers(userArray);
    }
}