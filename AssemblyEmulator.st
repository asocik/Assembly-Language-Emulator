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
<body>This class is used to simulate the Simple Assembly Language (SAL).</body>
</comment>

<methods>
<class-id>ALE class</class-id> <category>interface specs</category>

<body package="CS474" selector="windowSpec">windowSpec	"Tools.UIPainter new openOnClass: self andSelector: #windowSpec"	&lt;resource: #canvas&gt;	^#(#{UI.FullSpec} 		#window: 		#(#{UI.WindowSpec} 			#label: 'Assembly Language Emulator' 			#bounds: #(#{Graphics.Rectangle} 1049 490 1905 989 ) ) 		#component: 		#(#{UI.SpecCollection} 			#collection: #(				#(#{UI.ActionButtonSpec} 					#layout: #(#{Graphics.Rectangle} 16 455 135 471 ) 					#name: #SaveButton 					#model: #save 					#label: 'Save Code' 					#defaultable: true ) 				#(#{UI.ActionButtonSpec} 					#layout: #(#{Graphics.Rectangle} 157 455 276 471 ) 					#name: #ExecuteOneLine 					#model: #ExecuteOneLine 					#label: 'Execute One Line' 					#defaultable: true ) 				#(#{UI.ActionButtonSpec} 					#layout: #(#{Graphics.Rectangle} 298 455 417 471 ) 					#name: #ExecuteProgram 					#model: #ExecuteProgram 					#label: 'Execute Program' 					#defaultable: true ) 				#(#{UI.TextEditorSpec} 					#layout: #(#{Graphics.Rectangle} 24 12 425 437 ) 					#name: #TextEditor 					#colors: 					#(#{UI.LookPreferences} 						#setBackgroundColor: #(#{Graphics.ColorValue} 6553 6553 6553 ) ) 					#model: #textEditor 					#tabRequiresControl: true ) 				#(#{UI.DividerSpec} 					#layout: #(#{Graphics.Rectangle} 441 -21 445 501 ) 					#name: #Divider1 					#orientation: #vertical ) 				#(#{UI.LabelSpec} 					#layout: #(#{Core.Point} 565 20 ) 					#name: #RegisterALabel 					#label: 'Register A:' ) 				#(#{UI.LabelSpec} 					#layout: #(#{Core.Point} 566 50 ) 					#name: #RegisterBLabel 					#label: 'Register B:' ) 				#(#{UI.LabelSpec} 					#layout: #(#{Core.Point} 526 82 ) 					#name: #ProgramCounterLabel 					#label: 'Program Counter:' ) 				#(#{UI.LabelSpec} 					#layout: #(#{Core.Point} 537 114 ) 					#name: #ZeroBitLabel 					#label: 'Zero-Result Bit:' ) 				#(#{UI.LabelSpec} 					#layout: #(#{Core.Point} 553 146 ) 					#name: #OverflowBitLabel 					#label: 'Overflow Bit:' ) 				#(#{UI.InputFieldSpec} 					#layout: #(#{Graphics.Rectangle} 636 18 736 40 ) 					#name: #RegAInputField 					#model: #regA 					#isReadOnly: true 					#type: #number ) 				#(#{UI.InputFieldSpec} 					#layout: #(#{Graphics.Rectangle} 636 48 736 70 ) 					#name: #RegBInputField 					#model: #regB 					#isReadOnly: true 					#type: #number ) 				#(#{UI.InputFieldSpec} 					#layout: #(#{Graphics.Rectangle} 636 80 736 102 ) 					#name: #PCInputField 					#model: #programCounter 					#isReadOnly: true 					#type: #number ) 				#(#{UI.InputFieldSpec} 					#layout: #(#{Graphics.Rectangle} 636 112 736 134 ) 					#name: #ZBInputField 					#model: #ZBInputField 					#isReadOnly: true 					#type: #number ) 				#(#{UI.InputFieldSpec} 					#layout: #(#{Graphics.Rectangle} 636 144 736 166 ) 					#name: #OBInputField 					#model: #OBInputField 					#isReadOnly: true 					#type: #number ) 				#(#{UI.LabelSpec} 					#layout: #(#{Core.Point} 694 189 ) 					#name: #ProgramMemoryLabel 					#label: 'Program Memory:' ) 				#(#{UI.LabelSpec} 					#layout: #(#{Core.Point} 502 189 ) 					#name: #DataMemoryLabel 					#label: 'Data Memory:' ) 				#(#{UI.DividerSpec} 					#layout: #(#{Graphics.Rectangle} 441 182 890 186 ) 					#name: #Divider2 ) 				#(#{UI.SequenceViewSpec} 					#layout: #(#{Graphics.Rectangle} 455.496 217 630.496 446 ) 					#name: #dataMemory 					#colors: 					#(#{UI.LookPreferences} 						#setBackgroundColor: #(#{Graphics.ColorValue} 6553 6553 6553 ) ) 					#model: #dataMemory 					#useModifierKeys: true 					#selectionType: #highlight ) 				#(#{UI.SequenceViewSpec} 					#layout: #(#{Graphics.Rectangle} 658.52 217 833.52 446 ) 					#name: #ProgramMemory 					#colors: 					#(#{UI.LookPreferences} 						#setBackgroundColor: #(#{Graphics.ColorValue} 6553 6553 6553 ) ) 					#model: #programMemory 					#useModifierKeys: true 					#selectionType: #highlight ) 				#(#{UI.LabelSpec} 					#layout: #(#{Core.Point} 104 477 ) 					#name: #Label1 					#label: 'Note that saving will reset all values' ) ) ) )</body>
</methods>


<methods>
<class-id>ALE</class-id> <category>aspects</category>

<body package="CS474" selector="programMemory">programMemory	"This method was generated by UIDefiner.  Any edits made here	may be lost whenever methods are automatically defined.  The	initialization provided below may have been preempted by an	initialize method."	^programMemory isNil		ifTrue:			[programMemory := SelectionInList new]		ifFalse:			[programMemory]</body>

<body package="CS474" selector="RegBInputField">RegBInputField	"This method was generated by UIDefiner.  Any edits made here	may be lost whenever methods are automatically defined.  The	initialization provided below may have been preempted by an	initialize method."	^RegBInputField isNil		ifTrue:			[RegBInputField := 0 asValue]		ifFalse:			[RegBInputField]</body>

<body package="CS474" selector="PCInputField">PCInputField	"This method was generated by UIDefiner.  Any edits made here	may be lost whenever methods are automatically defined.  The	initialization provided below may have been preempted by an	initialize method."	^PCInputField isNil		ifTrue:			[PCInputField := 0 asValue]		ifFalse:			[PCInputField]</body>

<body package="CS474" selector="ZBInputField">ZBInputField	"This method was generated by UIDefiner.  Any edits made here	may be lost whenever methods are automatically defined.  The	initialization provided below may have been preempted by an	initialize method."	^ZBInputField isNil		ifTrue:			[ZBInputField := 0 asValue]		ifFalse:			[ZBInputField]</body>

<body package="CS474" selector="textEditor">textEditor	"This method was generated by UIDefiner.  Any edits made here	may be lost whenever methods are automatically defined.  The	initialization provided below may have been preempted by an	initialize method."	^textEditor isNil		ifTrue:			[textEditor := String new asValue]		ifFalse:			[textEditor]</body>

<body package="CS474" selector="regA">regA	"This method was generated by UIDefiner.  Any edits made here	may be lost whenever methods are automatically defined.  The	initialization provided below may have been preempted by an	initialize method."	^regA isNil		ifTrue:			[regA := 0 asValue]		ifFalse:			[regA]</body>

<body package="CS474" selector="dataMemory">dataMemory	"This method was generated by UIDefiner.  Any edits made here	may be lost whenever methods are automatically defined.  The	initialization provided below may have been preempted by an	initialize method."	^dataMemory isNil		ifTrue:			[dataMemory := SelectionInList new]		ifFalse:			[dataMemory]</body>

<body package="CS474" selector="RegAInputField">RegAInputField	"This method was generated by UIDefiner.  Any edits made here	may be lost whenever methods are automatically defined.  The	initialization provided below may have been preempted by an	initialize method."	^RegAInputField isNil		ifTrue:			[RegAInputField := 0 asValue]		ifFalse:			[RegAInputField]</body>

<body package="CS474" selector="programCounter">programCounter	"This method was generated by UIDefiner.  Any edits made here	may be lost whenever methods are automatically defined.  The	initialization provided below may have been preempted by an	initialize method."	^programCounter isNil		ifTrue:			[programCounter := 0 asValue]		ifFalse:			[programCounter]</body>

<body package="CS474" selector="regB">regB	"This method was generated by UIDefiner.  Any edits made here	may be lost whenever methods are automatically defined.  The	initialization provided below may have been preempted by an	initialize method."	^regB isNil		ifTrue:			[regB := 0 asValue]		ifFalse:			[regB]</body>

<body package="CS474" selector="OBInputField">OBInputField	"This method was generated by UIDefiner.  Any edits made here	may be lost whenever methods are automatically defined.  The	initialization provided below may have been preempted by an	initialize method."	^OBInputField isNil		ifTrue:			[OBInputField := 0 asValue]		ifFalse:			[OBInputField]</body>
</methods>

<methods>
<class-id>ALE</class-id> <category>actions</category>

<body package="CS474" selector="ExecuteProgram">ExecuteProgram	"Event handler for executing the entire program - just loops through all instructions"		| length |	self resetHLT.	length := (self programMemory list) size.	1 to:  length do: [ :i | 		self ExecuteOneLine. 		(self getHLT = 1) ifTrue: [ ^self textEditor value: (self textEditor value),(String with: Character cr), 		'Halted execution' ].	]</body>

<body package="CS474" selector="save">save	"The save method will read in the program and store all instructions in the program memory"	| text lines dmem |	text := self textEditor value.	"Check to see if there was no text in the text editor"	(text = '') ifTrue:[^(self textEditor value: 'empty')].		"Break up text by lines and store them into an ordered collection"	lines := text tokensBasedOn: Character cr.	"Program memory has a max of 256 entries - make sure lines are below max"	((lines size) &lt; 257) ifFalse: [ 		^self textEditor value: text,(String with: Character cr), 'Error: Exceeded max of 256 lines.' 	].		"Save it in program memory and update the UI"	self programMemory list: lines.	"Reset all register values "	self regA value: 0.	self regB value: 0.	self programCounter value: 0.	self ZBInputField value: 0.	self OBInputField value: 0.	"Initialize the data memory"	dmem := OrderedCollection new.	1 to: 64 do: [ :i | dmem add: 0].	self dataMemory list: dmem.</body>

<body package="CS474" selector="ExecuteOneLine">ExecuteOneLine	"Event handler for executing one line of code"	| line command param size execute |	"First time around increment PC by 1"	((self programCounter value) = 0) ifTrue: [ 		self programCounter value: self programCounter value + 1.].	"Make sure that PC stays within range"	((self programCounter value) asNumber &gt;= 257) ifTrue: [ 		^self textEditor value: (self textEditor value),							(String with: Character cr), 							'Program Counter has reached max value' ].		"Make sure PC is within range of the program memory"	((self programCounter value) asNumber &gt; (self programMemory list) size) ifTrue: [ 		^self textEditor value: (self textEditor value),						(String with: Character cr), 						'No line to execute' ].		"Assuming that all commands are valid and there is no extra whitespace"	line := (self programMemory list) at: (self programCounter value).	"Get line from program memory"	size := line size.	command := line asString.	command := (line allButLast: (size-3)) asString.	"Get the substring of the first three chracters"	execute := SAL new.	"Handles all assembly instructions"	"Get the parameter for the command"	(command = 'ST ') 		ifTrue: [			param:= (line allButFirst: 3) asString.				(execute ST: param into: self).		]		ifFalse: [param:= (line allButFirst: 4) asString].		"Call the appropriate method based on what the command was"	(command = 'LDA') ifTrue: [ (execute LDA:param into: self) ].	(command = 'LDB') ifTrue: [ (execute LDB:param into: self) ].	(command = 'LDI') ifTrue: [ (execute LDI:param into: self) ].	(command = 'XCH') ifTrue: [ (execute XCH: self) ].	(command = 'JMP') ifTrue: [ (execute JMP:param into: self) ].	(command = 'JZS') ifTrue: [ (execute JZS:param into: self) ].	(command = 'JVS') ifTrue: [ (execute JVS:param into: self) ].	(command = 'ADD') ifTrue: [ (execute ADD: self) ].	(command = 'HLT') ifTrue: [ self setHLT ].		"Move to next instruction"	self programCounter value: self programCounter value + 1.</body>
</methods>

<methods>
<class-id>ALE</class-id> <category>HLT Flag</category>

<body package="CS474" selector="setHLT">setHLT	"There was a HTL in the program (instruction to end execution) so set the flag"	hltset := 1.</body>

<body package="CS474" selector="getHLT">getHLT	"Getter for HLT flag"	^hltset</body>

<body package="CS474" selector="resetHLT">resetHLT	"Reset to default value"	hltset := 0.</body>
</methods>


<methods>
<class-id>SAL</class-id> <category>Jump</category>

<body package="CS474" selector="JZS:into:">JZS: value into: obj	"Transfers control to instruction at address number if the zero-result bit is set."		((obj ZBInputField value) asNumber = 1) ifTrue: [ self JMP: value into: obj ].</body>

<body package="CS474" selector="JVS:into:">JVS: value into: obj	"Transfers control to instruction at address number if the zero-result bit is set."		((obj OBInputField value) asNumber = 1) ifTrue: [ self JMP: value into: obj ].</body>

<body package="CS474" selector="JMP:into:">JMP: value into: obj	"Transfers control to instruction at address number in program memory."		"Assuming perfect input so no checking if in range"	"Need the -1 to counter the +1 at the end of executing one line"	obj programCounter value: (value asNumber) - 1.</body>
</methods>

<methods>
<class-id>SAL</class-id> <category>Load</category>

<body package="CS474" selector="XCH:">XCH: obj	"Exchanges the content registers A and B."	| temp |	temp := obj regA value.	obj regA value: (obj regB value).	obj regB value: temp.</body>

<body package="CS474" selector="LDB:into:">LDB: value into: obj	"Loads byte at data memory address number into register B"	| dmem index val |	dmem := obj dataMemory list.		"Get the list"	index := (value asNumber) + 1.	"Account for off by 1"	"Not necessary, assuming perfect input"	(index &gt; 63) ifTrue: [ ^obj textEditor value: (obj textEditor value),(String with: Character cr), 		'Error: Out of bounds in data memory' ].	val := dmem at: index.				"Get the value from data memory"	obj regB value: val.				"Put the value into register B"</body>

<body package="CS474" selector="ST:into:">ST:  value into: obj	"Stores content of register A into data memory at address value"	| dmem index |	dmem := obj dataMemory list.			"Get the list"	index := (value asNumber) + 1.		"Account for off by 1"	"Not necessary, assuming perfect input"	(index &gt; 63) ifTrue: [ ^obj textEditor value: (obj textEditor value),(String with: Character cr), 		'Error: Out of bounds in data memory' ].	dmem at: index put: (obj regA value).	"Save register A in index location"	obj dataMemory list: dmem.			"Update the UI"</body>

<body package="CS474" selector="LDA:into:">LDA: value into: obj	"Loads byte at data memory address number into register A"	| dmem index val |	dmem := obj dataMemory list.		"Get the list"	index := (value asNumber) + 1.	"Account for off by 1"		"Not necessary, assuming perfect input"	(index &gt; 63) ifTrue: [ ^obj textEditor value: (obj textEditor value),(String with: Character cr), 		'Error: Out of bounds in data memory' ].	val := dmem at: index.				"Get the value from data memory"	obj regA value: val.				"Put the value into register A"</body>

<body package="CS474" selector="LDIB:into:">LDIB: value into: obj	"Loads the value into register B - the value must be in range of 16-bit 2's complement numbers"	"This method is used for testing only"		(value asNumber &lt;= 32767) ifTrue: [		(value asNumber &gt;= -32768) ifTrue: 		[obj regB value: (value asNumber).].	].</body>

<body package="CS474" selector="LDI:into:">LDI: value into: obj	"Loads the value into register A - the value must be in range of 16-bit 2's complement numbers"		(value asNumber &lt;= 32767) ifTrue: [		(value asNumber &gt;= -32768) ifTrue: 		[obj regA value: (value asNumber).].	].</body>
</methods>

<methods>
<class-id>SAL</class-id> <category>Add</category>

<body package="CS474" selector="ADD:">ADD: obj	"Adds the content of registers A and B. The sum is stored in A. The overflow and zero-result bits are set or cleared as needed."	| sum |	sum := (obj regA value) + (obj regB value).	"If the result of the sim is zero then set the zero bit"	(sum = 0) ifTrue:[ 		obj ZBInputField value: 1.		^(obj regA value: sum).	].		"Sum was not zero so make sure zero bit is off"	obj ZBInputField value: 0.	"Check if there were any overflows and adjust the number as necessary"	(sum asNumber &gt; 32767) ifTrue: [		obj OBInputField value: 1.		sum := (sum asNumber) - 32768.		^(obj regA value: sum).	].	(sum asNumber &lt; -32768) ifTrue: [		obj OBInputField value: 1.		sum := (sum asNumber) + 32767.		^(obj regA value: sum).	].	"Overflow was not caused so make sure that overflow bit is zero"		obj OBInputField value: 0.	"Set the sum into register A"	obj regA value: sum.</body>
</methods>

<methods>
<class-id>SAL</class-id> <category>initialize-release</category>

<body package="CS474" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	^self</body>
</methods>



</st-source>
