// This is a simple example of a FSH file.
// This file can be renamed, and additional FSH files can be added.
// SUSHI will look for definitions in any file using the .fsh ending.

Profile: MyBodyStructure
Parent: DomainResource
Description: "An example profile of the BodyStructure resource."


Instance: BodyStructureExample
InstanceOf: MyBodyStructure
Description: "An example of a BodyStructure ."
// * status = #active
// * subject.display = "Jane Doe"
// * subject.reference = "Patient/jane-doe"
