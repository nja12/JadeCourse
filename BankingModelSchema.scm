/* JADE COMMAND FILE NAME C:\Users\nick\projects\Jade-Course\BankingModelSchema.jcf */
jadeVersionNumber "18.0.01";
schemaDefinition
BankingModelSchema subschemaOf RootSchema completeDefinition, patchVersioningEnabled = false;
		setModifiedTimeStamp "nick" "18.0.01" 2021:09:19:23:19:35.100;
importedPackageDefinitions
constantDefinitions
localeDefinitions
	5129 "English (New Zealand)" schemaDefaultLocale;
		setModifiedTimeStamp "nick" "18.0.01" 2021:09:19:23:19:35.079;
libraryDefinitions
typeHeaders
	BankingModelSchema subclassOf RootSchemaApp transient, sharedTransientAllowed, transientAllowed, subclassSharedTransientAllowed, subclassTransientAllowed, number = 2051;
	Customer subclassOf Object highestOrdinal = 4, number = 2054;
	GBankingModelSchema subclassOf RootSchemaGlobal transient, sharedTransientAllowed, transientAllowed, subclassSharedTransientAllowed, subclassTransientAllowed, number = 2052;
	SBankingModelSchema subclassOf RootSchemaSession transient, sharedTransientAllowed, transientAllowed, subclassSharedTransientAllowed, subclassTransientAllowed, number = 2053;
 
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
	BankingModelSchema completeDefinition
	(
		setModifiedTimeStamp "nick" "18.0.01" 2021:09:19:23:19:35.099;
	)
	Customer completeDefinition
	(
		setModifiedTimeStamp "nick" "18.0.01" 2021:09:19:23:29:30.567;
	attributeDefinitions
		address:                       String[26] readonly, number = 3, ordinal = 3;
		setModifiedTimeStamp "nick" "18.0.01" 2021:09:19:23:47:48.090;
		firstName:                     String[26] readonly, number = 1, ordinal = 1;
		setModifiedTimeStamp "nick" "18.0.01" 2021:09:19:23:46:08.871;
		lastName:                      String[16] readonly, number = 2, ordinal = 2;
		setModifiedTimeStamp "nick" "18.0.01" 2021:09:19:23:47:11.766;
		number:                        Integer readonly, number = 4, ordinal = 4;
		setModifiedTimeStamp "nick" "18.0.01" 2021:09:19:23:48:08.134;
 
	jadeMethodDefinitions
		create(
			addr: String; 
			first: String; 
			last: String) updating, number = 1001;
		setModifiedTimeStamp "nick" "18.0.01" 2021:09:19:23:54:32.651;
	)
	Global completeDefinition
	(
	)
	RootSchemaGlobal completeDefinition
	(
	)
	GBankingModelSchema completeDefinition
	(
		setModifiedTimeStamp "nick" "18.0.01" 2021:09:19:23:19:35.099;
	)
	JadeScript completeDefinition
	(
 
	jadeMethodDefinitions
		createCustomer() number = 1001;
		setModifiedTimeStamp "nick" "18.0.01" 2021:09:20:00:31:15.807;
		removeTestData() number = 1002;
		setModifiedTimeStamp "nick" "18.0.01" 2021:09:20:00:47:10.262;
	)
	WebSession completeDefinition
	(
	)
	RootSchemaSession completeDefinition
	(
		setModifiedTimeStamp "<unknown>" "6.1.00" 20031119 2003:12:01:13:54:02.270;
	)
	SBankingModelSchema completeDefinition
	(
		setModifiedTimeStamp "nick" "18.0.01" 2021:09:19:23:19:35.100;
	)
 
inverseDefinitions
databaseDefinitions
BankingModelSchemaDb
	(
		setModifiedTimeStamp "nick" "18.0.01" 2021:09:19:23:19:35.100;
	databaseFileDefinitions
		"cheque" number=53;
		setModifiedTimeStamp "nick" "18.0.01" 2021:09:19:23:23:56.218;
		"customer" number=54;
		setModifiedTimeStamp "nick" "18.0.01" 2021:09:19:23:24:24.373;
		"savings" number=55;
		setModifiedTimeStamp "nick" "18.0.01" 2021:09:19:23:24:40.639;
		"bankingmodelschema" number=52;
		setModifiedTimeStamp "nick" "18.0.01" 2021:09:19:23:19:35.100;
	defaultFileDefinition "bankingmodelschema";
	classMapDefinitions
		SBankingModelSchema in "_environ";
		BankingModelSchema in "_usergui";
		GBankingModelSchema in "bankingmodelschema";
		Customer in "bankingmodelschema";
	)
schemaViewDefinitions
exportedPackageDefinitions
typeSources
	Customer (
	jadeMethodSources
create
{
create(addr, first, last: String) updating;

vars
	
begin
	self.address := addr.trimBlanks();
	self.firstName := first.trimBlanks();
	self.lastName := last.trimBlanks();
end;

}

	)
	JadeScript (
	jadeMethodSources
createCustomer
{
createCustomer();

vars
	cust: Customer;
begin
	app.initialize;
	beginTransaction;
	cust := create Customer("Gotham City", "Bruce", "Wayne") persistent;
	cust := create Customer("Smallville", "Clark", "Kent") persistent;
	commitTransaction;
end;

}

removeTestData
{
removeTestData();

vars

begin
	beginTransaction;
	Customer.instances.purge();
	commitTransaction;
end;

}

	)
