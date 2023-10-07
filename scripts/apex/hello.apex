// Delete all action plan template versions
List<action_plan_template_version__c> versions = [select id,action_plan_template__c,activation_datetime__c,inactivation_datetime__c,status__c,version__c from action_plan_template_version__c];
delete versions;