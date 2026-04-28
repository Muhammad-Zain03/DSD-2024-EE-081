# Digital Design & Computer Architecture (DD&CA)

## Week #0 | Lecture #1 (24/04/2026)
*Time: 11:10 - 12:42*

### How Computer Solves Problems?
*By making electrons play as per the requirement :)*

**Path:**
Problem $\rightarrow$ Algo $\rightarrow$ Prog/Language $\rightarrow$ System Software $\rightarrow$ **SW/HW Interface** (ISA - Instruction Set Architecture) $\rightarrow$ **Micro-Architecture** (Implementation of ISA (flexible)) $\rightarrow$ Logic $\rightarrow$ Device $\rightarrow$ Electron

### Computer
* Computation
* Communication
* Memory/Storage

### System Types Comparison

| General Purpose System | Special Purpose System |
| :--- | :--- |
| $\rightarrow$ Flexible | $\rightarrow$ Not flexible |
| $\rightarrow$ Easier to handle | $\rightarrow$ Difficult to handle |
| $\rightarrow$ Not best for performance and efficiency | $\rightarrow$ Efficient for application |
| *e.g., CPU* | *e.g., ASICs* |

---

### Transistors
*Used for making logic gates.*

**MOS Transistor:** Used as a switch here!
* **n-type:** * $G = 3V$ (High) $\rightarrow$ Switch closed
    * Open the other way
    * Good at pulling **down**
* **p-type:**
    * $G = 0V$ (Low) $\rightarrow$ Switch closed
    * Open the other way
    * Good at pulling **up**

---

### Logic Gates
$nMOS + pMOS = CMOS$

$\rightarrow$ *We will be making gates using CMOS.*
* **e.g.** AND Gate, NAND Gate, NOT Gate

#### Generally (CMOS Design):
* **Inputs** feed into both networks.
* **p-MOS Pull-up Network:** Pulls the output up to high voltage.
* **n-MOS Pull-down Network:** Pulls the output down to ground.

#### Transistor Rules:
* **Parallel:** ON if *one* transistor is ON.
* **Series:** ON if *all* transistors are ON.

#### e.g., CMOS NOT Gate
* **Equation:** $Y = \overline{A}$
* **Structure:** Input A goes to the gates of a top p-MOS (connected to 3V) and a bottom n-MOS (connected to 0V). The Output Y is drawn from the connection between the two transistors.

| IN (A) | OUT (Y) |
| :---: | :---: |
| 0V | 3V |
| 3V | 0V |
