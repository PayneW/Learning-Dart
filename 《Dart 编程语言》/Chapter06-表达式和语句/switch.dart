// library switch.dart

// instruction 指令，指示，说明
class Instruction {
  String code;
  Instruction(this.code);
}

// literal 文字的，字面的
class LiteralInstruction extends Instruction {
  num constantValue;
  LiteralInstruction(this.constantValue): super('constant');
}

main(){
  // operand 操作数，运算对象
//  List<num> operandStack = new List<num>();
//  for (Instruction instruction in instructions) {
//    switch(instruction.code) {
//      case 'plus':
//        operandStack.add(operandStack.removeLast() + operandStack.removeLast());
//        break;
//      case 'minus':
//        operandStack.add(operandStack.removeLast() - operandStack.removeLast());
//        break;
//      case 'constant':
//        LiteralInstruction litInst = instruction;
//        operandStack.add(litInst.constantValue);
//        break;
//    }
//  }
//  // assert 断言
//  assert(operandStack.length == 1);
//  num result = operandStack.last;
}