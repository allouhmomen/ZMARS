CLASS zmars_clf_sochange DEFINITION
  PUBLIC
  FINAL
  CREATE PRIVATE .

  PUBLIC SECTION.

    CLASS-METHODS create_instance
      RETURNING
        VALUE(result) TYPE REF TO zmars_if_sochange .
  PROTECTED SECTION.
  PRIVATE SECTION.

    METHODS constructor .
ENDCLASS.



CLASS zmars_clf_sochange IMPLEMENTATION.


  METHOD constructor.

  ENDMETHOD.


  METHOD create_instance.
    result = NEW zmars_cl_sochange(  ).
  ENDMETHOD.
ENDCLASS.
