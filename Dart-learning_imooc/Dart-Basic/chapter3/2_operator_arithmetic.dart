/**
 * - **arithmetic /ə'rɪθmətɪk/ ~~~n.算术，计算**
 *   + --> arithmetic had never been her strong point. 计算从来不是他的强项。
 * */

void main() {
    int a = 10;
    int b = 2;

    /** 递增和递减运算符:  */
    print(++a);
    // 后置递增和递减与前置递增和递减有一个非常重要的区别，即:
    // 递增和递减操作是在包含它们的语句被求值之后才执行的。
    print(a++);
}