using System;
using System.Net;

class Program
{
    static void Main()
    {
        if (CheckInternetConnection())
        {
            Console.WriteLine("Internet is available.");
        }
        else
        {
            Console.WriteLine("No internet connection. Please connect to the internet.");
        }
    }

    static bool CheckInternetConnection()
    {
        try
        {
            using (var client = new WebClient())
            using (client.OpenRead("http://www.google.com"))
            {
                return true;
            }
        }
        catch
        {
            return false;
        }
    }
}
