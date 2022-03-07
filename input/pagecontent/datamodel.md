### Data Model

At the core of the Standard Personal Health Record is a standard data model describing the health history of an individual (the Person).  Loosely speaking, this data model contains all data that relevant to a patient's health, whether it be generated by clinicians in a hospital inpatient setting or specialist clinic or nursing home, or by the patient via gym fitness apps, nutrition tracking apps, and so forth.  

At a very high level, we broadly organize the SPHR data model into three categories - Id, Ego, SuperEgo - according to basic psychoanalytic theory.  

#### Physiology Resources (Id)

The physiology model is the portion of the SPHR that contains data about structures and processes that are actually occuring within the patient's physical body.  Such things may include vital signs, laboratory biomarkers, an allergic response, a broken arm, an immunization, a radiology report, a genetic sequence, or post-operative notes recorded after a surgery.  The data contained in these data schemas are not the actual metabolic or anatomic processes happening in a human body, but they are cognitive representations of those processes (and therefore loosely analogous with the Id).

A standard personal healthrecord MUST implement the following resources (defined in the Argonaut IG) at a bare minimum.

- [AllergyIntolerance](https://www.hl7.org/fhir/allergyintolerance.html)
- [Condition](https://www.hl7.org/fhir/condition.html)
- [DiagnosticReport](https://www.hl7.org/fhir/diagnosticreport.html)
- [FamilyMemberHistory](https://www.hl7.org/fhir/familymemberhistory.html)
- [Immunization](https://www.hl7.org/fhir/immunization.html)
- [Medication](https://www.hl7.org/fhir/medication.html)
- [MedicationStatement](https://www.hl7.org/fhir/medicationstatement.html)
- [Patient](https://www.hl7.org/fhir/patient.html)
- [Observation](https://www.hl7.org/fhir/observation.html)
- [Procedure](https://www.hl7.org/fhir/procedure.html)

A standard personal healthrecord SHOULD implement the following resources to be considered comprehensive:

- [BodyStructure](https://www.hl7.org/fhir/bodystructure.html)
- [ImagingStudy](https://www.hl7.org/fhir/imagingstudy.html)
- [Media](https://www.hl7.org/fhir/media.html)
- [MolecularSequence](https://www.hl7.org/fhir/molecularsequence.html)
- [Specimen](https://www.hl7.org/fhir/specimen.html)

#### Social and Behavioral Resources (SuperEgo)

The patient also exists within a social context, wherein family members, clinicians, and other careteam members all play.  This social context includes social determinants of health, environmental factors, and many external factors that contribute to a patient's health.  

A complete standard personal healthrecord SHOULD implement the following resources that will be used by other systems to describe other actors participating in caregiving activities.  

- [CarePlan](https://www.hl7.org/fhir/careplan.html)
- [CareTeam](https://www.hl7.org/fhir/careteam.html)
- [Communication](https://www.hl7.org/fhir/communication.html)
- [Goal](https://www.hl7.org/fhir/goal.html)
- [Practitioner](https://www.hl7.org/fhir/practitioner.html)
- [RelatedPerson](https://www.hl7.org/fhir/relatedperson.html)


#### Administrative Resources (Ego)

Besides modeling the internal physiology (Id) and the social context (Super Ego) of the patient, the standard personal health record also tracks a number of administrative/legal resources (Ego).  These administrative resources require a certain amount of executive decision making and require the patient (or an authoried delagate) to fill out forms, answer questions, consent to services, manage devies, schedule appointments, and such.  These resources are not about what is happening within the patient's body, or the social context the patient exists in, but rather, reflect the choices that the patient makes and the administrative/legal context of the patient.  

A standard personal healthrecord MUST implement the following for it to accept records from other SPHR systems:

- [Bundle](https://www.hl7.org/fhir/bundle.html)
- [Consent](https://www.hl7.org/fhir/consent.html)
- [DocumentReference](https://www.hl7.org/fhir/diagnosticresource.html)
- [Provenance](https://www.hl7.org/fhir/provenance.html)
- [Questionnaire](https://www.hl7.org/fhir/questionnaire.html)
- [QuestionnaireResponse](https://www.hl7.org/fhir/questionnaireresponse.html)

A standard personal healthrecord SHOULD also implement the following resources so it can participate in common workflows that SPHRs are expected to be able to support:

- [Appointment](https://www.hl7.org/fhir/appointment.html)
- [Binary](https://www.hl7.org/fhir/binary.html)
- [Contract](https://www.hl7.org/fhir/contract.html)
- [Device](https://www.hl7.org/fhir/device.html)
- [Schedule](https://www.hl7.org/fhir/schedule.html)
- [Slot](https://www.hl7.org/fhir/slot.html)
- [Task](https://www.hl7.org/fhir/task.html)


### Logical Models

This implementation guide describes a number of novel logical models which address gaps in the FHIR API.  The following models should be considered as potential candidates for moving into the core FHIR spec in R5 or R6.  

- [HealthReceipt]()
- [SocialMedia]()
- [Environmental]()
- [VitalSigns]()
- [NutrientIntake]()
- [NutrientOuttake]()