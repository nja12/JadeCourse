/* JADE COMMAND FILE NAME C:\Users\nick\projects\Jade-Course\FirstSchema.jcf */
jadeVersionNumber "18.0.01";
schemaDefinition
FirstSchema subschemaOf RootSchema completeDefinition, patchVersioningEnabled = false;
		setModifiedTimeStamp "nick" "18.0.01" 2021:09:08:16:23:14.397;
importedPackageDefinitions
constantDefinitions
localeDefinitions
	5129 "English (New Zealand)" schemaDefaultLocale;
		setModifiedTimeStamp "nick" "18.0.01" 2021:09:08:16:23:14.366;
libraryDefinitions
typeHeaders
	FirstSchema subclassOf RootSchemaApp transient, sharedTransientAllowed, transientAllowed, subclassSharedTransientAllowed, subclassTransientAllowed, highestOrdinal = 1, number = 2048;
	GFirstSchema subclassOf RootSchemaGlobal transient, sharedTransientAllowed, transientAllowed, subclassSharedTransientAllowed, subclassTransientAllowed, number = 2049;
	SFirstSchema subclassOf RootSchemaSession transient, sharedTransientAllowed, transientAllowed, subclassSharedTransientAllowed, subclassTransientAllowed, number = 2050;
 
interfaceDefs
membershipDefinitions
 
typeDefinitions
	Object completeDefinition
	(
	)
	Application completeDefinition
	(
	)
	RootSchemaApp completeDefinition
	(
	)
	FirstSchema completeDefinition
	(
		setModifiedTimeStamp "nick" "18.0.01" 2021:09:08:16:23:14.397;
	attributeDefinitions
		num:                           Integer number = 1, ordinal = 1;
		setModifiedTimeStamp "nick" "18.0.01" 2021:09:16:16:10:44.096;
	)
	Global completeDefinition
	(
	)
	RootSchemaGlobal completeDefinition
	(
	)
	GFirstSchema completeDefinition
	(
		setModifiedTimeStamp "nick" "18.0.01" 2021:09:08:16:23:14.397;
	)
	JadeScript completeDefinition
	(
 
	jadeMethodDefinitions
		appMethods() number = 1014;
		setModifiedTimeStamp "nick" "18.0.01" 2021:09:16:15:16:30.897;
		breakAndContinue() number = 1008;
		setModifiedTimeStamp "nick" "18.0.01" 2021:09:16:14:16:09.646;
		christmas() number = 1019;
		setModifiedTimeStamp "nick" "18.0.01" 2021:09:16:18:02:20.012;
		constructMessage(
			phrase: String; 
			count: Integer): String number = 1010;
		setModifiedTimeStamp "nick" "18.0.01" 2021:09:16:14:30:34.349;
		diamond() number = 1007;
		setModifiedTimeStamp "nick" "18.0.01" 2021:09:13:22:57:34.188;
		displayYourName() number = 1002;
		setModifiedTimeStamp "nick" "18.0.01" 2021:09:08:16:49:46.909;
		epilogAndException() number = 1004;
		setModifiedTimeStamp "nick" "18.0.01" 2021:09:08:16:57:27.930;
		helloWorld() number = 1001;
		setModifiedTimeStamp "nick" "18.0.01" 2021:09:08:16:44:09.762;
		infiniteLoop() number = 1009;
		setModifiedTimeStamp "nick" "18.0.01" 2021:09:16:14:24:27.068;
		loopWithForeach() number = 1005;
		setModifiedTimeStamp "nick" "18.0.01" 2021:09:08:17:11:39.889;
		loopWithWhile() number = 1006;
		setModifiedTimeStamp "nick" "18.0.01" 2021:09:08:17:14:56.772;
		parsing() number = 1018;
		setModifiedTimeStamp "nick" "18.0.01" 2021:09:16:17:59:05.395;
		remembering() number = 1015;
		setModifiedTimeStamp "nick" "18.0.01" 2021:09:16:16:14:30.917;
		returnAndEpilog() number = 1003;
		setModifiedTimeStamp "nick" "18.0.01" 2021:09:08:16:55:07.436;
		rounding() number = 1016;
		setModifiedTimeStamp "nick" "18.0.01" 2021:09:16:17:13:48.964;
		start() number = 1011;
		setModifiedTimeStamp "nick" "18.0.01" 2021:09:16:14:36:14.475;
		testTax() number = 1017;
		setModifiedTimeStamp "nick" "18.0.01" 2021:09:16:17:29:58.047;
		threeHellos() number = 1012;
		setModifiedTimeStamp "nick" "18.0.01" 2021:09:16:14:46:31.810;
		threeWorlds(
			inputStr: String input; 
			outputStr: String output; 
			ioStr: String io) number = 1013;
		setModifiedTimeStamp "nick" "18.0.01" 2021:09:16:14:52:37.719;
	)
	WebSession completeDefinition
	(
	)
	RootSchemaSession completeDefinition
	(
		setModifiedTimeStamp "<unknown>" "6.1.00" 20031119 2003:12:01:13:54:02.270;
	)
	SFirstSchema completeDefinition
	(
		setModifiedTimeStamp "nick" "18.0.01" 2021:09:08:16:23:14.397;
	)
	Decimal completeDefinition
	(
 
	jadeMethodDefinitions
		withTax(): Decimal number = 1001;
		setModifiedTimeStamp "nick" "18.0.01" 2021:09:16:17:34:03.916;
	)
 
 
inverseDefinitions
databaseDefinitions
FirstSchemaDb
	(
		setModifiedTimeStamp "nick" "18.0.01" 2021:09:08:16:23:14.397;
	databaseFileDefinitions
		"firstschema" number=51;
		setModifiedTimeStamp "nick" "18.0.01" 2021:09:08:16:23:14.397;
	defaultFileDefinition "firstschema";
	classMapDefinitions
		SFirstSchema in "_environ";
		FirstSchema in "_usergui";
		GFirstSchema in "firstschema";
	)
schemaViewDefinitions
exportedPackageDefinitions
typeSources
	JadeScript (
	jadeMethodSources
appMethods
{
appMethods();

	//copy text to clipboard before pressing f9
vars

begin
	app.clearWriteWindow();
	write app.copyStringFromClipboard();
	app.msgBox("Do you want to cotinue?", "Question", MsgBox_Yes_No);
	write "The method will attend to other events for 10 seconds" ;
	app.doWindowEvents(10000);
	write app.clock();
	write app.dbPath();
	write app.random(100);
	write app.userName();
end;

}

breakAndContinue
{
breakAndContinue();

vars
	name: String;
	i : Integer;

begin
	read name;
	while i < 10 do
		i := i + 1;
		if i = 3 then
			continue;
		elseif i = 8 then
			break;
		endif;
		write i.String & " " & name;
	endwhile;
end;

}

christmas
{
christmas();

vars
	today, xmas: Date;
begin
	xmas := "25 December 2021".Date;
	write xmas - today;
end;

}

constructMessage
{
constructMessage(phrase: String; count: Integer): String;

vars
	str: String;
	i : Integer;
begin
	foreach i in 1 to count do
		str := str & phrase;
	endforeach;
	return str;
end;

}

diamond
{
diamond();

vars
	i : Integer;
	j : Integer;
	k : Integer;
	s : String;

begin
	foreach i in 1 to 5 do
		s := " ";
		foreach j in 1 to 5 -i do
			s  := s & " ";
		endforeach;
			s := s & "*";
		foreach k in 2 to i do
			s := s & "**";
		endforeach;
		write s;
	endforeach;
	
	foreach i in 4 to 1 step -1 do
		s := " ";
		foreach j in 1 to 5 -i do
			s := s & " ";
		endforeach;
			s := s & "*";
		foreach k in 2 to i do 
			s := s & "**";
		endforeach;
		write s;
	endforeach;
end;

}

displayYourName
{
displayYourName();

vars
	name: String;

begin
	read name;
	write "Your name is: " & name;
end;

}

epilogAndException
{
epilogAndException();

vars

begin
	write "this line is displayed";
	write 42/0;
	write "Exception prevents getting to this line";
epilog
	write "epilog instuctions are ALWAYS executed";
end;

}

helloWorld
{
helloWorld();

vars

begin
	write "Hello World";
end;

}

infiniteLoop
{
infiniteLoop();

vars

begin
	while true do
	endwhile;
end;

}

loopWithForeach
{
loopWithForeach();

vars
	name: String;
	i:    Integer;
begin
	read name;
	foreach i in 1 to 10 do
		write i.String & " " & name;
	endforeach;
end;

}

loopWithWhile
{
loopWithWhile();

vars
	name: String;
	i : Integer;
begin
	read name;
	while i < 10 do
		i := i + 1;
		write i.String & " " & name;
	endwhile;
end;

}

parsing
{
parsing();

vars
	str, first, last, address: String;
begin
	// copy of the firstlone for the customers.txt file
	str := "Baynton        Barbara                  Jerusalem                ";
	//use the substring operator str[n:m] to complete this method
	first := str[1:7];
	last := str[16:7];
	address := str[41:9];
	write first & " " & last & " from " &address;
end;

}

remembering
{
remembering();

vars

begin
	// Storing a value in app
	app.num := 42;
	// Recalling that value
	write app.num;
end;

}

returnAndEpilog
{
returnAndEpilog();

vars

begin
	write "this line is displayed";
	return;
	write "Return isntruction prevent getting to this line";
epilog
	write "epilog instructions are AlWAYS executed";
end;

}

rounding
{
rounding();

vars
	dec: Decimal[6, 2];
begin
	read dec;
	dec.roundedTo(2);
	write dec;
end;

}

start
{
start();

vars
	str: String;
	i: Integer;
begin
	read str;
	read i;
	write self.constructMessage(str, i);
end;

}

testTax
{
testTax();

vars
	dec: Decimal[12, 2];
begin
	read dec;
	write dec.withTax();
end;

}

threeHellos
{
threeHellos();

vars
	str1, str2, str3: String;
begin
	str1 := "Hello";
	str2 := "Hello";
	str3 := "Hello";
	self.threeWorlds(str1, str2, str3);
	write str1;
	write str2;
	write str3;
end;

}

threeWorlds
{
threeWorlds(inputStr: String input; outputStr: String output; ioStr: String io);

vars

begin
	//inputStr := inputStr & " World";
	outputStr := outputStr & " World";
	ioStr := ioStr & " World";
end;

}

	)
	Decimal (
	jadeMethodSources
withTax
{
withTax(): Decimal;

begin
	return self + self * 0.15;
end;

}

	)
