// This is a simple example of a FSH file.
// This file can be renamed, and additional FSH files can be added.
// SUSHI will look for definitions in any file using the .fsh ending.
Profile: MyConsent
Parent: Consent
Description: "An example profile of the Consent resource."

Instance: ConsentExample
InstanceOf: MyConsent
Description: "An example of a Consent ."
* status = #active
* scope = http://terminology.hl7.org/CodeSystem/consentscope#patient-privacy "Patient Privacy"
* category = https://www.hl7.org/fhir/valueset-consent-category.html#acd "Advanced Directive"