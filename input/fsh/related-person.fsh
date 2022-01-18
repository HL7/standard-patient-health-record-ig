// This is a simple example of a FSH file.
// This file can be renamed, and additional FSH files can be added.
// SUSHI will look for definitions in any file using the .fsh ending.

Profile: MyRelatedPerson
Parent: RelatedPerson
Description: "An example profile of the RelatedPerson resource."

Instance: RelatedPersonExample
InstanceOf: MyRelatedPerson
Description: "An example of a RelatedPerson ."
* patient.display = "Jane Doe"
* patient.reference = "Patient/jane-doe"