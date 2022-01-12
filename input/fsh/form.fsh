Logical: FoodAllergyModel
Parent: Element
Title: "Food Allergy Logical Model"
Description:    "Food Allergy information model"

* patient 1..1 Reference "The person that has the allergy" "The person that has the allergy"
* allergen 1..1 CodeableConcept "The substance that the person is allergic to" "The substance - from a lst of substances - that the person is allergic to. It is possible to use free text but for the products indicated, a code must be used"
* clinicalStatus 1..1 CodeableConcept "The status of the allergy - if it is active or resolved" "The status of the allergy - if it is active or resolved"
* verificationStatus 1..1 CodeableConcept "The verification status of the allergy - if it is confirmed or suspected or refuted" "The verification status of the allergy - if it is confirmed or suspected or refuted"
* recordedDate 0..1 dateTime "When the allergy was reported" "When the allergy was reported"
* recorder 0..1 Reference "Who recorded the allergy" "Who recorded the allergy"
* asserter 0..1 Reference "Who asserted the allergy" " who asserted or provided the allergy information e.g. the patient, a relative, a care giver..."
* reactions 0..1 BackboneElement "known past reactions to the allergen" "known past reactions to the allergen"
  * manifestation 0..1 CodeableConcept "How the reaction manifested itself"  "How the reaction manifested itself, e.g. rash, breathing difficulty..."
  * certitude 0..1 CodeableConcept "How certain we are that the cause of the reaction was the allergen indicated" "How certain we are that the cause of the reaction was the allergen indicated"
  * exposure 0..1 CodeableConcept "The exposure route to the substance" "The exposure route to the substance"
  * note 0..1 string "Additional text note about the allergic reaction" "Additional text note about the allergic reaction"


Alias:   SCT = http://snomed.info/sct

RuleSet: Question(context, linkId, text, type, repeats)
* {context}item[+].linkId = "{linkId}"
* {context}item[=].text = "{text}"
* {context}item[=].type = #{type}
* {context}item[=].repeats = {repeats}


Instance: hiv-case-report-questionnaire
//InstanceOf: sdc-questionnaire-extract
InstanceOf: Questionnaire
Description: "HIV Case Report Form"
Title: "HIV Case Report Form"
Usage: #definition

* title = "Food Allergy self-report"
* description = "Food Allergy self-report"


* name = "FoodAllergyQuestionnaire"
* version = "2022"
* status = #draft
* subjectType = #Patient
* language = #en
* status = #draft

* url = "http://openhie.org/fhir/food-allergy/Questionnaire/food-allergy-questionnaire"


//* insert Question(,title,HIV case report,display,false)
* item[+].linkId = "title"
* item[=].text = "Food Allergy report"
* item[=].type = #display
//* insert Question(,instructions,Reporting instructions: Monthly - applicable to each patient during the reporting period,display,false)
* item[+].linkId = "instructions"
* item[=].text = "Reporting instructions: Please report any allergy or allergic reaction"
* item[=].type = #display



* insert Question(,patient,Patient ID,string,false)
* insert Question(,allergen,Substance that the person is allergic to,choice,false)
* item[=].answerValueSet = Canonical(vs-food-allergy)
* insert Question(,clinicalStatus,Status of the allergy - active or resolved,choice,false)
* item[=].answerValueSet = Canonical(vs-food-allergy-clinstatus)
* insert Question(,verificationStatus,Verification status of the allergy - confirmed or suspected or refuted,choice,false)
* item[=].answerValueSet = Canonical(vs-food-allergy-verifstatus)
* insert Question(,recordedDate,When reported,date,false)
* insert Question(,recorder,Who recorded the allergy,string,false)
* insert Question(,asserter,Who asserted the allergy,string,false)
* insert Question(,reactions,Substance that the person is allergic to,group,false)

* insert Question(item[=].,manifestation,Manifestation,string,false)
//  * certitude 0..1 CodeableConcept "How certain we are that the cause of the reaction was the allergen indicated" "How certain we are that the cause of the reaction was the allergen indicated"
//  * exposure 0..1 CodeableConcept "The exposure route to the substance" "The exposure route to the substance"
* insert Question(item[=].,note,Note,string,false)









