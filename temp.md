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

## Lecture #2 | Part 1 (25/04/2026)

### Underlying Operational Characteristics of CMOS
* **n-type** $\rightarrow$ Bad at pulling up
* **p-type** $\rightarrow$ Bad at pulling down
* **Reason:** goes down to physics.

| type | Good at passing |
| :---: | :---: |
| **n** | 0 |
| **p** | 1 |

> $\rightarrow$ **Note:** Series combination of MOS increases latency!

### Power Consumption

**[Energy consumption]** $\rightarrow$ $Power \times Time$ ($P \times T$)

**1. [Dynamic]** Power used to charge capacitance while switching.
* Formula: $C \times V^2 \times f$
* Where: $C \rightarrow$ capacitance, $V \rightarrow$ voltage, $f \rightarrow$ frequency
* > *Note: capacitance $\propto$ wire length*

**2. [Static]** Power used while idle (not switching).
* Formula: $V \times I_{leakage}$

### MOORE'S Law
* Number (#) of transistors increases, keeping area constant, as time goes on, implying costs of transistors decreases.

### How we build Logic Circuits?

**Specifications:**
* **[Function spec]** $\rightarrow$ Input/Output relation
* **[Timing spec]** $\rightarrow$ latency

**General Flow:**
Inputs $\rightarrow$ **[Logic Circuit]** (functional spec + timing spec) $\rightarrow$ Outputs

**Types of Logic:**
* **type 1: [Combinational logic]** $\rightarrow$ memoryless
* **type 2: [Sequential logic]** $\rightarrow$ Has memory

### Boolean Algebra: Duality
* AND $\xleftrightarrow{\text{Dual}}$ OR
* 1 $\xleftrightarrow{\text{Dual}}$ 0
* *Note: Literal and complement won't change!*

### De Morgan's Law:
* $\overline{(X+Y+Z+\dots)} = \overline{X} \cdot \overline{Y} \cdot \overline{Z} \dots$
* $\overline{(X \cdot Y \cdot Z \dots)} = \overline{X} + \overline{Y} + \overline{Z} + \dots$
* $\rightarrow$ *Helpful in keeping Gates of choice in design.*

### Function Representation
* $\downarrow$ **SOP (sum of products)** $\rightarrow$ Sum of **[Min terms]** $\xrightarrow{eval}$ 1 terms
* $\downarrow$ **POS (product of sum)** $\rightarrow$ Product of **[Max terms]** $\xrightarrow{eval}$ 0 terms
