@EndUserText.label: 'Change Custromer Condition Groups'

@ObjectModel.supportedCapabilities: [ #DATA_STRUCTURE ]

@VDM.usage.type: [ #ACTION_PARAMETER_STRUCTURE ]

define root abstract entity ZMARS_P_SALEDOCCHANGECCG

{
  @Consumption.valueHelpDefinition: [ { entity: { name: 'I_CustomerConditionGroupVH', element: 'CustomerConditionGroup' } } ]
  @EndUserText.label: 'Customer Condition Group 1'
  @UI.defaultValue: #('ELEMENT_OF_REFERENCED_ENTITY:ZCusCondGroup1')
  CustomerConditionGroup1 : kdkg1;

  @Consumption.valueHelpDefinition: [ { entity: { name: 'I_CustomerConditionGroupVH', element: 'CustomerConditionGroup' } } ]
  @EndUserText.label: 'Customer Condition Group 2'
  @UI.defaultValue: #('ELEMENT_OF_REFERENCED_ENTITY:ZCusCondGroup2')
  CustomerConditionGroup2 : kdkg2;

  @Consumption.valueHelpDefinition: [ { entity: { name: 'I_CustomerConditionGroupVH', element: 'CustomerConditionGroup' } } ]
  @EndUserText.label: 'Customer Condition Group 3'
  @UI.defaultValue: #('ELEMENT_OF_REFERENCED_ENTITY:ZCusCondGroup3')
  CustomerConditionGroup3 : kdkg3;
}
