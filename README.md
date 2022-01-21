
![System Verilog](https://user-images.githubusercontent.com/64604283/150481105-b3ab6fa7-f2b6-4047-aede-f914b23bdb9a.png)
# System-Verilog Practice 

*Want to learn System Verilog but don't know where to start ?* <br>
Here is the complete System Verilog BootCamp for you. 
This repository contains System Verilog practice code from basic to advance. 
## Compiler Setup
* **[EDA Playground](https://www.edaplayground.com/)** is free web application that allows users to edit, simulate, synthesize, and share their HDL code.
* Select `SystemVerilog/Verilog` under `Testbench + Design` tab
* Leave the default settings for `OVM/UVM` and `Other Libraries`
* Under `Tools and Simulators` select `Synopsys VCS 2020.03` (If you wish to simulate it in some other simulator, then you can choose that in drop down list box)
* `design.sv` is to design the actual logic circuit. `testbench.sv` is to test the design that we have done in `design.sv`
* Click `Run` button to Run the code.

![eda_playground](https://user-images.githubusercontent.com/64604283/150481628-d8cfef31-cd28-4ff4-81e1-b0dfdfcd0ea0.png)

## Topics
* [Data Types](https://github.com/Suntrakanesh/System-Verilog/tree/main/Data%20Types)
* [Control Flow](https://github.com/Suntrakanesh/System-Verilog/tree/main/control_flow)
* [Processes](https://github.com/Suntrakanesh/System-Verilog/tree/main/processes/fork_join)
* [Communication](https://github.com/Suntrakanesh/System-Verilog/tree/main/communication)
* [Interface](https://github.com/Suntrakanesh/System-Verilog/tree/main/Interface)
* [Class](https://github.com/Suntrakanesh/System-Verilog/tree/main/Class)
* [Constraints](https://github.com/Suntrakanesh/System-Verilog/tree/main/constraits)
* [MISC](https://github.com/Suntrakanesh/System-Verilog/tree/main/Misc)
* [Functional Coverage](https://github.com/Suntrakanesh/System-Verilog/tree/main/functional%20coverage)
* [Assertion](https://github.com/Suntrakanesh/System-Verilog/tree/main/Assertion)


## Syllabus

<details>
<summary>Data Types</summary>
  
  + New Data types: logic, bit, Signed integers, byte
  + Strings
  + Enumeration
  + Arrays
  + Packed, Unpacked, Dynamic and, Associative Arrays
  + Array Manipulation Methods
  + Queues
  + Structures
  + User-defined Data Types
  
 </details>

<details>
<summary>Control Flow</summary>
  
  + Loops
      + while/do-while loop
      + foreach loop
      + for loop
      + forever loop
      + repeat loop
  + break, continue
  + if-else-if
  + case
  + Blocking & Non-blocking Statements
  + Events
  + Functions
  + Tasks
  
</details>

<details>
<summary>Processes</summary>
  
  + SystemVerilog Threads
      + fork join
      + fork join_any
      + fork join_none
  + Disable fork join
  + Wait fork
  
</details>

<details>
<summary>Communication</summary>
  
  + Interprocess Communication
  + Semaphores
  + Mailboxes
  
</details>

<details>
<summary>Interface</summary>
  
  + Interfaces, Interface bundles
  + Modports
  + Clocking Blocks
  
</details>

<details>
<summary>Class</summary>
  
  + Class, Class Handles and Objects
  + Constructors
  + this pointer
  + super keyword
  + typedef forward decl.
  + Inheritance
  + Polymorphism
  + Virtual Methods
  + Static Variables/Functions
  + Shallow/Deep Copy
  + Parameterized Classes
  + extern keyword
  + Abstract Class/Pure Methods
  + Randomization
  
</details>

<details>
<summary>Constraints</summary>
  
  + Random variables
  + Constraint blocks
  + Array Randomization
  + Common Constraints
  + inside constraint
  + Implication Constraint
  + foreach Constraint
  + solve before Constraint
  + Static Constraints
  + Practical Constraint Examples
  + Bus Protocol Constraints
  + Randomization Methods
  + In-line Constraints
  + Soft Constraints
  + Disable Constraints
  + Disable Randomization
  + Random Weighted Case
  
</details>

<details>
<summary>Misc Constructs</summary>
  
  + Program Block
  + Dynamic Casting
  + Packages
  + Commandline Input
  + File Operations
  + Scope Resolution Operator
  
</details>

<details>
<summary>Functional Coverage</summary>
  
  + Functional Coverage
  + Covergroup & Coverpoint, Coverpoint bins
  
</details>
