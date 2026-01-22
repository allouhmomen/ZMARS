extend view entity C_SalesOrderManage with

{
          @Consumption.valueHelpDefinition: [ { entity: { name: 'I_CustomerConditionGroupVH',
                                                          element: 'CustomerConditionGroup' } } ]
          @ObjectModel.filter.transformedBy: 'ABAP:ZMARS_CL_VE_CUSCONDGROUP'
          @ObjectModel.text.element: [ 'ZCusCondGroupTxt1' ]
          @ObjectModel.virtualElement: true
          @ObjectModel.virtualElementCalculatedBy: 'ABAP:ZMARS_CL_VE_CUSCONDGROUP'
  virtual ZCusCondGroup1: kdkg1,

          @Consumption.valueHelpDefinition: [ { entity: { name: 'I_CustomerConditionGroupVH',
                                                          element: 'CustomerConditionGroup' } } ]
          @ObjectModel.filter.transformedBy: 'ABAP:ZMARS_CL_VE_CUSCONDGROUP'
          @ObjectModel.text.element: [ 'ZCusCondGroupTxt2' ]
          @ObjectModel.virtualElement: true
          @ObjectModel.virtualElementCalculatedBy: 'ABAP:ZMARS_CL_VE_CUSCONDGROUP'
  virtual ZCusCondGroup2: kdkg2,

          @Consumption.valueHelpDefinition: [ { entity: { name: 'I_CustomerConditionGroupVH',
                                                          element: 'CustomerConditionGroup' } } ]
          @ObjectModel.filter.transformedBy: 'ABAP:ZMARS_CL_VE_CUSCONDGROUP'
          @ObjectModel.text.element: [ 'ZCusCondGroupTxt3' ]
          @ObjectModel.virtualElement: true
          @ObjectModel.virtualElementCalculatedBy: 'ABAP:ZMARS_CL_VE_CUSCONDGROUP'
  virtual ZCusCondGroup3: kdkg3,

          @ObjectModel.virtualElement: true
          @ObjectModel.virtualElementCalculatedBy: 'ABAP:ZMARS_CL_VE_CUSCONDGROUP'
  virtual ZCusCondGroupTxt1: vtext,

          @ObjectModel.virtualElement: true
          @ObjectModel.virtualElementCalculatedBy: 'ABAP:ZMARS_CL_VE_CUSCONDGROUP'
  virtual ZCusCondGroupTxt2: vtext,

          @ObjectModel.virtualElement: true
          @ObjectModel.virtualElementCalculatedBy: 'ABAP:ZMARS_CL_VE_CUSCONDGROUP'
  virtual ZCusCondGroupTxt3: vtext
}
