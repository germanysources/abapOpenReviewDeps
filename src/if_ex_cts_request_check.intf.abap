*"* components of interface IF_EX_CTS_REQUEST_CHECK
interface IF_EX_CTS_REQUEST_CHECK
  public .


  methods CHECK_BEFORE_CREATION
    importing
      !TYPE type TRFUNCTION
      !TOOL_FLAG type CHAR1 default ' '
    changing
      !TEXT type AS4TEXT
      !ATTRIBUTES type SCTS_ATTRS
    exceptions
      CANCEL .
  methods CHECK_BEFORE_RELEASE
    importing
      !REQUEST type TRKORR optional
      !TYPE type TRFUNCTION optional
      !OWNER type TR_AS4USER optional
      !OBJECTS type TR_OBJECTS optional
      !KEYS type TR_KEYS optional
      !KEYS_STR type E071K_STRTYP optional
      !DIALOG type TRBOOLEAN optional
      !TARSYSTEM type TR_TARGET optional
      !ADT type TRBOOLEAN optional
    changing
      !TEXT type AS4TEXT optional
      !ATTRIBUTES type TRATTRIBUTES optional
    exceptions
      CANCEL .
  methods CHECK_BEFORE_CHANGING_OWNER
    importing
      !REQUEST type TRKORR
      !TYPE type TRFUNCTION
      !OLD_OWNER type TR_AS4USER
      !NEW_OWNER type TR_AS4USER
    exceptions
      CANCEL .
  methods CHECK_BEFORE_ADD_OBJECTS
    importing
      !REQUEST type TRKORR optional
      !TYPE type TRFUNCTION optional
      !OWNER type TR_AS4USER optional
      !OBJECTS type TR_OBJECTS optional
      !KEYS type TR_KEYS optional
      !DIALOG type TRBOOLEAN optional
      !IS_GTABKEY type GTABKEY optional
    changing
      !TEXT type AS4TEXT optional
      !ATTRIBUTES type TRATTRIBUTES optional
    exceptions
      CANCEL .
  methods CHECK_BEFORE_RELEASE_SLIN
    importing
      !REQUEST type TRKORR optional
      !TYPE type TRFUNCTION optional
      !OWNER type TR_AS4USER optional
      !OBJECTS type TR_OBJECTS optional
      !KEYS type TR_KEYS optional
      !KEYS_STR type E071K_STRTYP optional
      !DIALOG type TRBOOLEAN optional
    changing
      !TEXT type AS4TEXT optional
      !ATTRIBUTES type TRATTRIBUTES optional
      !LV_CURRENT type C optional
      !LV_ERROR_TYPE type TRWBO_CHARFLAG optional
    exceptions
      CANCEL .
endinterface.
