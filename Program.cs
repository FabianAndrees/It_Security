using System;
using System.Collections.Generic;

namespace TestProj
{
    class Program{
        const string Correct = "Correct";
        
        static void Main(string[] args){
            HelloWorld_Public();
            var calc = new IntegerStackCalculator();
            calc.Push(3);
            calc.Push(3);
            calc.Add();
            
            var result = calc.Pop();
            if (result == 6){
                Console.WriteLine(Correct);
            }else{
                Console.WriteLine();
            }
        }

        private static void HelloWorld(){
            Console.WriteLine("Hello World!");
        }

        public static void HelloWorld_Public(){
            HelloWorld();
        }
    }
}