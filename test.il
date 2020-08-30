// Metadata version: v4.0.30319
.assembly extern mscorlib
{
  .publickeytoken = (B7 7A 5C 56 19 34 E0 89 )                         // .z\V.4..
  .ver 4:0:0:0
}
.assembly extern System
{
  .publickeytoken = (B7 7A 5C 56 19 34 E0 89 )                         // .z\V.4..
  .ver 4:0:0:0
}
.assembly Program
{
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilationRelaxationsAttribute::.ctor(int32) = ( 01 00 08 00 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Runtime.CompilerServices.RuntimeCompatibilityAttribute::.ctor() = ( 01 00 01 00 54 02 16 57 72 61 70 4E 6F 6E 45 78   // ....T..WrapNonEx
                                                                                                             63 65 70 74 69 6F 6E 54 68 72 6F 77 73 01 )       // ceptionThrows.

  // --- The following custom attribute is added automatically, do not uncomment -------
  //  .custom instance void [mscorlib]System.Diagnostics.DebuggableAttribute::.ctor(valuetype [mscorlib]System.Diagnostics.DebuggableAttribute/DebuggingModes) = ( 01 00 02 00 00 00 00 00 ) 

  .hash algorithm 0x00008004
  .ver 0:0:0:0
}
.module Program.exe
// MVID: {9091AF3D-E9E6-49D2-817F-4FA92725BDED}
.imagebase 0x00400000
.file alignment 0x00000200
.stackreserve 0x00100000
.subsystem 0x0003       // WINDOWS_CUI
.corflags 0x00000001    //  ILONLY
// Image base: 0x058C0000


// =============== CLASS MEMBERS DECLARATION ===================

.class private auto ansi beforefieldinit TestProj.Program
       extends [mscorlib]System.Object
{
  .field private static literal string Correct = "Correct"
  .method private hidebysig static void  Main(string[] args) cil managed
  {
    .entrypoint
    // Code size       60 (0x3c)
    .maxstack  8
    IL_0000:  call       void TestProj.Program::HelloWorld_Public()
    IL_0005:  newobj     instance void TestProj.IntegerStackCalculator::.ctor()
    IL_000a:  dup
    IL_000b:  ldc.i4.3
    IL_000c:  callvirt   instance void TestProj.IntegerStackCalculator::Push(int32)
    IL_0011:  dup
    IL_0012:  ldc.i4.3
    IL_0013:  callvirt   instance void TestProj.IntegerStackCalculator::Push(int32)
    IL_0018:  dup
    IL_0019:  callvirt   instance void TestProj.IntegerStackCalculator::Add()
    IL_001e:  callvirt   instance int32 TestProj.IntegerStackCalculator::Pop()
    IL_0023:  ldc.i4.6
    IL_0024:  bne.un.s   IL_0031

    IL_0026:  ldstr      "Correct"
    IL_002b:  call       void [mscorlib]System.Console::WriteLine(string)
    IL_0030:  ret

    IL_0031:  ldstr      "Incorrect"
    IL_0036:  call       void [mscorlib]System.Console::WriteLine(string)
    IL_003b:  ret
  } // end of method Program::Main

  .method private hidebysig static void  HelloWorld() cil managed
  {
    // Code size       11 (0xb)
    .maxstack  8
	IL_0000: ldstr "Hello World!"
	IL_0005: call void [mscorlib]System.Console::WriteLine(string)
	IL_000a: ret
  } // end of method Program::HelloWorld

  .method public hidebysig static void  HelloWorld_Public() cil managed
  {
    // Code size       6 (0x6)
    .maxstack  8
    IL_0000:  call       void TestProj.Program::HelloWorld()
    IL_0005:  ret
  } // end of method Program::HelloWorld_Public

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0006:  ret
  } // end of method Program::.ctor

} // end of class TestProj.Program

.class interface private abstract auto ansi TestProj.IStackCalculator`1<T>
{
  .method public hidebysig newslot abstract virtual 
          instance !T  Pop() cil managed
  {
  } // end of method IStackCalculator`1::Pop

  .method public hidebysig newslot abstract virtual 
          instance void  Push(!T element) cil managed
  {
  } // end of method IStackCalculator`1::Push

  .method public hidebysig newslot abstract virtual 
          instance void  Add() cil managed
  {
  } // end of method IStackCalculator`1::Add

  .method public hidebysig newslot abstract virtual 
          instance void  Divide() cil managed
  {
  } // end of method IStackCalculator`1::Divide

  .method public hidebysig newslot abstract virtual 
          instance void  Subtract() cil managed
  {
  } // end of method IStackCalculator`1::Subtract

  .method public hidebysig newslot abstract virtual 
          instance void  Multiply() cil managed
  {
  } // end of method IStackCalculator`1::Multiply

} // end of class TestProj.IStackCalculator`1

.class public auto ansi beforefieldinit TestProj.IntegerStackCalculator
       extends [mscorlib]System.Object
       implements class TestProj.IStackCalculator`1<int32>
{
  .class auto ansi serializable sealed nested private beforefieldinit '<>c'
         extends [mscorlib]System.Object
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public static initonly class TestProj.IntegerStackCalculator/'<>c' '<>9'
    .field public static class [mscorlib]System.Func`3<int32,int32,int32> '<>9__3_0'
    .field public static class [mscorlib]System.Func`3<int32,int32,int32> '<>9__4_0'
    .field public static class [mscorlib]System.Func`3<int32,int32,int32> '<>9__5_0'
    .field public static class [mscorlib]System.Func`3<int32,int32,int32> '<>9__6_0'
    .method private hidebysig specialname rtspecialname static 
            void  .cctor() cil managed
    {
      // Code size       11 (0xb)
      .maxstack  8
      IL_0000:  newobj     instance void TestProj.IntegerStackCalculator/'<>c'::.ctor()
      IL_0005:  stsfld     class TestProj.IntegerStackCalculator/'<>c' TestProj.IntegerStackCalculator/'<>c'::'<>9'
      IL_000a:  ret
    } // end of method '<>c'::.cctor

    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // Code size       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c'::.ctor

    .method assembly hidebysig instance int32 
            '<Add>b__3_0'(int32 a,
                          int32 b) cil managed
    {
      // Code size       4 (0x4)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  ldarg.2
      IL_0002:  add
      IL_0003:  ret
    } // end of method '<>c'::'<Add>b__3_0'

    .method assembly hidebysig instance int32 
            '<Divide>b__4_0'(int32 a,
                             int32 b) cil managed
    {
      // Code size       4 (0x4)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  ldarg.2
      IL_0002:  div
      IL_0003:  ret
    } // end of method '<>c'::'<Divide>b__4_0'

    .method assembly hidebysig instance int32 
            '<Subtract>b__5_0'(int32 a,
                               int32 b) cil managed
    {
      // Code size       4 (0x4)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  ldarg.2
      IL_0002:  sub
      IL_0003:  ret
    } // end of method '<>c'::'<Subtract>b__5_0'

    .method assembly hidebysig instance int32 
            '<Multiply>b__6_0'(int32 a,
                               int32 b) cil managed
    {
      // Code size       4 (0x4)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  ldarg.2
      IL_0002:  mul
      IL_0003:  ret
    } // end of method '<>c'::'<Multiply>b__6_0'

  } // end of class '<>c'

  .field private initonly class [System]System.Collections.Generic.Stack`1<int32> _stack
  .method public hidebysig newslot virtual final 
          instance int32  Pop() cil managed
  {
    // Code size       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System]System.Collections.Generic.Stack`1<int32> TestProj.IntegerStackCalculator::_stack
    IL_0006:  callvirt   instance !0 class [System]System.Collections.Generic.Stack`1<int32>::Pop()
    IL_000b:  ldarg.0
    IL_000c:  call instance string TestProj.IntegerStackCalculator::ToString()
    IL_0011:  call void [mscorlib]System.Console::WriteLine(string)
    IL_0017:  ret
  } // end of method IntegerStackCalculator::Pop

  .method public hidebysig newslot virtual final 
          instance void  Push(int32 element) cil managed
  {
    // Code size       13 (0xd)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System]System.Collections.Generic.Stack`1<int32> TestProj.IntegerStackCalculator::_stack
    IL_0006:  ldarg.1
    IL_0007:  callvirt   instance void class [System]System.Collections.Generic.Stack`1<int32>::Push(!0)
    IL_000c:  ret
  } // end of method IntegerStackCalculator::Push

  .method public hidebysig newslot virtual final 
          instance void  Add() cil managed
  {
    // Code size       38 (0x26)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldsfld     class [mscorlib]System.Func`3<int32,int32,int32> TestProj.IntegerStackCalculator/'<>c'::'<>9__3_0'
    IL_0006:  dup
    IL_0007:  brtrue.s   IL_0020

    IL_0009:  pop
    IL_000a:  ldsfld     class TestProj.IntegerStackCalculator/'<>c' TestProj.IntegerStackCalculator/'<>c'::'<>9'
    IL_000f:  ldftn      instance int32 TestProj.IntegerStackCalculator/'<>c'::'<Add>b__3_0'(int32,
                                                                                             int32)
    IL_0015:  newobj     instance void class [mscorlib]System.Func`3<int32,int32,int32>::.ctor(object,
                                                                                               native int)
    IL_001a:  dup
    IL_001b:  stsfld     class [mscorlib]System.Func`3<int32,int32,int32> TestProj.IntegerStackCalculator/'<>c'::'<>9__3_0'
    IL_0020:  call       instance void TestProj.IntegerStackCalculator::Operate(class [mscorlib]System.Func`3<int32,int32,int32>)
    IL_0025:  ret
  } // end of method IntegerStackCalculator::Add

  .method public hidebysig newslot virtual final 
          instance void  Divide() cil managed
  {
    // Code size       38 (0x26)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldsfld     class [mscorlib]System.Func`3<int32,int32,int32> TestProj.IntegerStackCalculator/'<>c'::'<>9__4_0'
    IL_0006:  dup
    IL_0007:  brtrue.s   IL_0020

    IL_0009:  pop
    IL_000a:  ldsfld     class TestProj.IntegerStackCalculator/'<>c' TestProj.IntegerStackCalculator/'<>c'::'<>9'
    IL_000f:  ldftn      instance int32 TestProj.IntegerStackCalculator/'<>c'::'<Divide>b__4_0'(int32,
                                                                                                int32)
    IL_0015:  newobj     instance void class [mscorlib]System.Func`3<int32,int32,int32>::.ctor(object,
                                                                                               native int)
    IL_001a:  dup
    IL_001b:  stsfld     class [mscorlib]System.Func`3<int32,int32,int32> TestProj.IntegerStackCalculator/'<>c'::'<>9__4_0'
    IL_0020:  call       instance void TestProj.IntegerStackCalculator::Operate(class [mscorlib]System.Func`3<int32,int32,int32>)
    IL_0025:  ret
  } // end of method IntegerStackCalculator::Divide

  .method public hidebysig newslot virtual final 
          instance void  Subtract() cil managed
  {
    // Code size       38 (0x26)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldsfld     class [mscorlib]System.Func`3<int32,int32,int32> TestProj.IntegerStackCalculator/'<>c'::'<>9__5_0'
    IL_0006:  dup
    IL_0007:  brtrue.s   IL_0020

    IL_0009:  pop
    IL_000a:  ldsfld     class TestProj.IntegerStackCalculator/'<>c' TestProj.IntegerStackCalculator/'<>c'::'<>9'
    IL_000f:  ldftn      instance int32 TestProj.IntegerStackCalculator/'<>c'::'<Subtract>b__5_0'(int32,
                                                                                                  int32)
    IL_0015:  newobj     instance void class [mscorlib]System.Func`3<int32,int32,int32>::.ctor(object,
                                                                                               native int)
    IL_001a:  dup
    IL_001b:  stsfld     class [mscorlib]System.Func`3<int32,int32,int32> TestProj.IntegerStackCalculator/'<>c'::'<>9__5_0'
    IL_0020:  call       instance void TestProj.IntegerStackCalculator::Operate(class [mscorlib]System.Func`3<int32,int32,int32>)
    IL_0025:  ret
  } // end of method IntegerStackCalculator::Subtract

  .method public hidebysig newslot virtual final 
          instance void  Multiply() cil managed
  {
    // Code size       38 (0x26)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldsfld     class [mscorlib]System.Func`3<int32,int32,int32> TestProj.IntegerStackCalculator/'<>c'::'<>9__6_0'
    IL_0006:  dup
    IL_0007:  brtrue.s   IL_0020

    IL_0009:  pop
    IL_000a:  ldsfld     class TestProj.IntegerStackCalculator/'<>c' TestProj.IntegerStackCalculator/'<>c'::'<>9'
    IL_000f:  ldftn      instance int32 TestProj.IntegerStackCalculator/'<>c'::'<Multiply>b__6_0'(int32,
                                                                                                  int32)
    IL_0015:  newobj     instance void class [mscorlib]System.Func`3<int32,int32,int32>::.ctor(object,
                                                                                               native int)
    IL_001a:  dup
    IL_001b:  stsfld     class [mscorlib]System.Func`3<int32,int32,int32> TestProj.IntegerStackCalculator/'<>c'::'<>9__6_0'
    IL_0020:  call       instance void TestProj.IntegerStackCalculator::Operate(class [mscorlib]System.Func`3<int32,int32,int32>)
    IL_0025:  ret
  } // end of method IntegerStackCalculator::Multiply

  .method private hidebysig instance void 
          Operate(class [mscorlib]System.Func`3<int32,int32,int32> op) cil managed
  {
    // Code size       40 (0x28)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System]System.Collections.Generic.Stack`1<int32> TestProj.IntegerStackCalculator::_stack
    IL_0006:  ldarg.1
    IL_0007:  ldarg.0
    IL_0008:  ldfld      class [System]System.Collections.Generic.Stack`1<int32> TestProj.IntegerStackCalculator::_stack
    IL_000d:  callvirt   instance !0 class [System]System.Collections.Generic.Stack`1<int32>::Pop()
    IL_0012:  ldarg.0
    IL_0013:  ldfld      class [System]System.Collections.Generic.Stack`1<int32> TestProj.IntegerStackCalculator::_stack
    IL_0018:  callvirt   instance !0 class [System]System.Collections.Generic.Stack`1<int32>::Pop()
    IL_001d:  callvirt   instance !2 class [mscorlib]System.Func`3<int32,int32,int32>::Invoke(!0,
                                                                                              !1)
    IL_0022:  callvirt   instance void class [System]System.Collections.Generic.Stack`1<int32>::Push(!0)
    IL_0027:  ret
  } // end of method IntegerStackCalculator::Operate

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       18 (0x12)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void class [System]System.Collections.Generic.Stack`1<int32>::.ctor()
    IL_0006:  stfld      class [System]System.Collections.Generic.Stack`1<int32> TestProj.IntegerStackCalculator::_stack
    IL_000b:  ldarg.0
    IL_000c:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0011:  ret
  } // end of method IntegerStackCalculator::.ctor

} // end of class TestProj.IntegerStackCalculator


// =============================================================

// *********** DISASSEMBLY COMPLETE ***********************
// Warnung: Win32-Ressourcendatei "test.res" wurde erstellt.
