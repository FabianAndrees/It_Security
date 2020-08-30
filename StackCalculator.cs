using System;
using System.Collections.Generic;

namespace TestProj
{
    interface IStackCalculator<T>{
        T Pop();
        void Push(T element);
        void Add();
        void Divide();
        void Subtract();
        void Multiply();
    }

    public class IntegerStackCalculator : IStackCalculator<int>{
        private readonly Stack<int> _stack = new Stack<int>();

        public int Pop(){
            return _stack.Pop();
        }

        public void Push(int element){
            _stack.Push(element);
        }

        public void Add(){
            Operate((a, b) => a + b);
        }

        public void Divide(){
            Operate((a, b) => a / b);
        }

        public void Subtract(){
            Operate((a, b) => a - b);
        }

        public void Multiply(){
            Operate((a, b) => a * b);
        }

        private void Operate(Func<int, int, int> op){
            _stack.Push(op(_stack.Pop(), _stack.Pop()));
        }
    }
}