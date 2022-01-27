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

* contained[+] = FoodAllergyVS-cont
* contained[+] = FoodAllergyVerificationStatusVS-cont
* contained[+] = FoodAllergyClinicalStatusVS-cont


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
* insert Question(,recordedDate,When was it reported,date,false)
* insert Question(,recorder,Who recorded the allergy,string,false)
* insert Question(,asserter,Who asserted the allergy,string,false)
* insert Question(,reactions,Substance that the person is allergic to,group,false)

* insert Question(item[=].,manifestation,Manifestation,string,false)
//  * certitude 0..1 CodeableConcept "How certain we are that the cause of the reaction was the allergen indicated" "How certain we are that the cause of the reaction was the allergen indicated"
//  * exposure 0..1 CodeableConcept "The exposure route to the substance" "The exposure route to the substance"
* insert Question(item[=].,note,Note,string,false)









