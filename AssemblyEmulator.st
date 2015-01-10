<?xml version="1.0"?>

<st-source>
<time-stamp>From VisualWorks® Personal Use Edition, 7.10.1 of February 6, 2014 on October 29, 2014 at 7:53:01 PM</time-stamp>


<component-created>
<name>CS474</name> <type>package</type>
</component-created><!-- Package CS474* -->


<component-property>
<name>CS474</name> <type>package</type>
<property>comment</property> <value>'This package contains all of the code for CS 474 Project 2 - Assembly Language Emulator
'</value>
</component-property>

<class>
<name>ALE</name>
<environment>Smalltalk</environment>
<super>UI.ApplicationModel</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>RegAInputField textEditor OBInputField PCInputField ZBInputField RegBInputField dataMemoryUI programMemoryUI regB regA dataMemory programMemory programCounter hltset </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>CS474</package>
</attributes>
</class>

<comment>
<class-id>ALE</class-id>
<body>The Assembly Language Emulator (ALE) class is used to create the user interface of the wigilt. </body>
</comment>

<class>
<name>SAL</name>
<environment>Smalltalk</environment>
<super>ALE</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>CS474</package>
</attributes>
</class>

<comment>
<class-id>SAL</class-id>
<body>This class is used to simulate the Simple Assembly Language (SAL).
</comment>

<methods>
<class-id>ALE class</class-id> <category>interface specs</category>

<body package="CS474" selector="windowSpec">windowSpec
</methods>


<methods>
<class-id>ALE</class-id> <category>aspects</category>

<body package="CS474" selector="programMemory">programMemory

<body package="CS474" selector="RegBInputField">RegBInputField

<body package="CS474" selector="PCInputField">PCInputField

<body package="CS474" selector="ZBInputField">ZBInputField

<body package="CS474" selector="textEditor">textEditor

<body package="CS474" selector="regA">regA

<body package="CS474" selector="dataMemory">dataMemory

<body package="CS474" selector="RegAInputField">RegAInputField

<body package="CS474" selector="programCounter">programCounter

<body package="CS474" selector="regB">regB

<body package="CS474" selector="OBInputField">OBInputField
</methods>

<methods>
<class-id>ALE</class-id> <category>actions</category>

<body package="CS474" selector="ExecuteProgram">ExecuteProgram

<body package="CS474" selector="save">save

<body package="CS474" selector="ExecuteOneLine">
</methods>

<methods>
<class-id>ALE</class-id> <category>HLT Flag</category>

<body package="CS474" selector="setHLT">setHLT

<body package="CS474" selector="getHLT">getHLT

<body package="CS474" selector="resetHLT">resetHLT
</methods>


<methods>
<class-id>SAL</class-id> <category>Jump</category>

<body package="CS474" selector="JZS:into:">JZS: value into: obj

<body package="CS474" selector="JVS:into:">JVS: value into: obj

<body package="CS474" selector="JMP:into:">JMP: value into: obj
</methods>

<methods>
<class-id>SAL</class-id> <category>Load</category>

<body package="CS474" selector="XCH:">XCH: obj

<body package="CS474" selector="LDB:into:">LDB: value into: obj

<body package="CS474" selector="ST:into:">ST:  value into: obj

<body package="CS474" selector="LDA:into:">LDA: value into: obj

<body package="CS474" selector="LDIB:into:">LDIB: value into: obj

<body package="CS474" selector="LDI:into:">LDI: value into: obj
</methods>

<methods>
<class-id>SAL</class-id> <category>Add</category>

<body package="CS474" selector="ADD:">ADD: obj
</methods>

<methods>
<class-id>SAL</class-id> <category>initialize-release</category>

<body package="CS474" selector="initialize">initialize
</methods>



</st-source>