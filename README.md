# Assembly-experiment
汇编程序设计实验

## **第一次上机实验题目**

### 1、 熟悉汇编语言实验环境

学习汇编语言编译、链接、执行等操作（masm、link、debug）。

### 2、 算术指令程序设计。

编写完整程序，实现

Z = ( ( W – X ) / 5 * Y ) / 2

其中X, Y, Z, W均为8位带符号数。

### 3、 寄存器使用程序设计。

编写完整程序，要求把BL中的数除以CL中的数，并把其商乘以2，最后结果存入DX寄存器中。

## **第二次上机实验题目**

### **1、**   **循环程序设计**

数据段中已定义了一个长度为n（n>=16）的字数组M，试编写一程序求出M中绝对值最大的数，把它放在数据段的M+2n单元中，并将该数的偏移地址存放在M+2(n+1)单元中。要求：

（1）把自己学号每2位一组，分别定义前5个字的初始值。例如，某同学的学号为2195012345，则数组M的前5个字的定义为：21H， 95H, 01H, 23H, 45H, 剩余的字根据程序调试需要进行初始化。

### **2、**   **分支程序设计**

设计一个程序，在数据段用自己的学号定义一个字符串，字符串长度大于20，对该字符串中字符0~9字符出现的次数进行计数，计数结果存放在以COUNT为首地址的数组中，并将出现次数最多的字符和出现次数显示出来。要求：

（1）该字符串的前10个字符必须为自己的学号，例如某同学的学号为2195012345，则该字符串的定义为 '2195012345xxxxxxxxxxxxxxxx'，字符串中的x根据程序调试需要进行初始化；

（2）如果字符9出现的次数为5次，且是出现次数最多的字符，则在程序结束时输出： 9，5。若有多个次数相同的字符，则输出字符最大的哪个。

## **第三次上机实验题目**

### **1、**   **子程序设计**

设有10个学生的成绩分别是76,69,84,90,73,88,99,63,100和80分。试编制一个子程序统计60~69分，70~79分，80~89分，90~99分和100分的人数并分别存放到S6, S7, S8, S9和S10单元中。

数据段中至少需要定义以下内容：

（1） ID db ‘2186123456’ (说明：以学号2186123456为例，此处应更换为自己的学号)

（2） array db ...  (存放10个学生的成绩)

（3） 定义S6，S7，S8，S9，S10的内存单元

### **2、**   **高级汇编语言技术**

试使用条件汇编和重复汇编编写一段程序，完成以下功能：根据给定名为X的字符串长度汇编以下指令，如果X的长度为n，当n<=5时，汇编n次；当n>5时，汇编6次。

ADD  AX, AX

数据段中至少需要定义以下内容：

（1） ID db ‘2186123456’ (说明：以学号2186123456为例，此处应更换为自己的学号)

（2） X  是一个目标字符串，根据下面的测试场景需求进行定义；

（3） 从这里定义自己认为必要的变量

测试场景要求：

（1） X 是一个 空字符串

（2） X 是一个长度为5 的字符串，例如：'abcde'  ; 学号的后5位

（3） X 是一个长度为10的字符串，例如：'2186123456'   ; 完整的学号

（4） 测试时，只能改变数据段中X的定义内容（通过注释符号），其它数据段、代码段中的内容必须保持不变。

## **第四次上机实验题目**

### **1、**   **中断子程序设计**

编写程序，使类型1CH的中断向量指向中断处理程序COUNT，COUNT统计1CH中断次数并存入字变量单元NUM中。程序启动后等待用户输入，输入字符Q后退出，并将NUM值用十六进制形式显示出来。例如NUM的内容为1234h，则在屏幕上显示1234h。

数据段中至少需要定义以下内容：

（1） ID db ‘2196123456’ (说明：以学号2196123456为例，此处应更换为自己的学号)

（2） 定义中断次数NUM的内存单元

### **2、**   BIOS和DOS中断

编写一个程序，接收从键盘输入的10个十进制数字（你的学号），输入回车符则停止输入，然后将这些数字加密后（用XLAT指令变换）存入内存缓冲区BUFFER。加密表为：

输入数字：  0，1，2，3，4，5，6，7，8，9

密码数字：  7，5，9，1，3，6，8，0，2，4

数据段中至少需要定义以下内容：

（1） ID db '2196123456' (说明：以学号2196123456为例)

（2） BUFFER db 10 dup (?)
