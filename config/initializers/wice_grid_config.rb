if defined?(Wice::Defaults)

  # Style of the view helper.
  # +false+ is a usual view helper.
  # +true+ will allow to embed erb content in column (cell) definitions.
  Wice::Defaults::ERB_MODE = false


  # Default number of rows to show per page.
  Wice::Defaults::PER_PAGE = 10

  # Default order direction
  Wice::Defaults::ORDER_DIRECTION = 'asc'

  # Default name for a grid. A grid name is the basis for a lot of
  # names including parameter names, DOM IDs, etc
  # The shorter the name is the shorter the request URI will be.
  Wice::Defaults::GRID_NAME = 'grid'


  Wice::Defaults::SHOW_HIDE_FILTER_ICON = 'icons/grid/page_white_find.png'

  Wice::Defaults::SHOW_FILTER_TOOLTIP = 'Показать фильтры'
  Wice::Defaults::HIDE_FILTER_TOOLTIP = 'Спрятать фильтры'
  Wice::Defaults::CSV_EXPORT_TOOLTIP  = 'Экспорт в CSV'

  # Icon to trigger filtering.
  Wice::Defaults::FILTER_ICON = 'icons/grid/table_refresh.png'

  # Icon to reset the filter.
  Wice::Defaults::RESET_ICON = "icons/grid/table.png"

  # Icon to reset the filter.
  Wice::Defaults::TOGGLE_MULTI_SELECT_ICON = "/images/icons/grid/expand.png"

  # CSV Export icon.
  Wice::Defaults::CSV_EXPORT_ICON = "/images/icons/grid/page_white_excel.png"


  Wice::Defaults::FILTER_TOOLTIP = "Отфильтровать"
  Wice::Defaults::RESET_FILTER_TOOLTIP = "Сброс"

  # The label of the first option of a custom dropdown list meaning 'All items'
  Wice::Defaults::CUSTOM_FILTER_ALL_LABEL = '--'

  Wice::Defaults::BOOLEAN_FILTER_TRUE_LABEL  = 'Да'
  Wice::Defaults::BOOLEAN_FILTER_FALSE_LABEL = 'Нет'


  # Show the upper pagination panel by default or not
  Wice::Defaults::SHOW_UPPER_PAGINATION_PANEL = false

  # Enabling CSV export by default
  Wice::Defaults::ENABLE_EXPORT_TO_CSV = false


  # The strategy when to show the filter.
  # * <tt>:when_filtered</tt> - when the table is the result of filtering
  # * <tt>:always</tt>        - show the filter always
  # * <tt>:no</tt>            - never show the filter
  Wice::Defaults::SHOW_FILTER = :when_filtered
  
  # SQL operator used for matching strings in string filters.
  Wice::Defaults::STRING_MATCHING_OPERATOR = 'LIKE'
  # STRING_MATCHING_OPERATOR = 'ILIKE' # Use this for Postgresql case-insensitive matching.

  # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
  #                                will_paginate                              #

  Wice::Defaults::PREVIOUS_LABEL = '«'
  Wice::Defaults::NEXT_LABEL     = '»'

  # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
  #                              Advanced Filters                             #

  # The title of the checkox to turn on negation
  Wice::Defaults::NEGATION_IN_STRING_FILTERS = true

  # The title of the checkox to turn on negation
  Wice::Defaults::NEGATION_CHECKBOX_TITLE = 'Исключая'


  # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
  #                              Showing All Queries                          #
  
  # Enable or disable showing all queries (non-paginated table)
  Wice::Defaults::ALLOW_SHOWING_ALL_QUERIES = true
  
  # If number of all queries is more than this value, the user will be given a warning message
  Wice::Defaults::START_SHOWING_WARNING_FROM = 100
  
  # link to switch to "ahow all records"
  Wice::Defaults::SHOW_ALL_RECORDS_LABEL = 'показать всё'

  # tooltip for the link to switch to "ahow all records"
  Wice::Defaults::SHOW_ALL_RECORDS_TOOLTIP = 'Показать все записи'
  
  # Warning message shown when the user wants to switch to all-records mode
  Wice::Defaults::ALL_QUERIES_WARNING = 'Вы уверены, что хотите отобразить все записи?'

  # link to paginated view
  Wice::Defaults::SWITCH_BACK_TO_PAGINATED_MODE_LABEL = "вернуться к постраничной разбивке"
  
  # tooltip for the link to paginated view
  Wice::Defaults::SWITCH_BACK_TO_PAGINATED_MODE_TOOLTIP = "Вернуться к виду с постраничной разбивкой"

  # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
  #                               Saving Queries                              #
  
  # Icon to delete a saved query
  Wice::Defaults::DELETE_QUERY_ICON = 'icons/grid/delete.png'    
  
  # ActiveRecord model to store queries. Read the documentation for details
  # QUERY_STORE_MODEL = 'WiceGridSerializedQuery'
  Wice::Defaults::QUERY_STORE_MODEL = 'SavedQuery'
  
  Wice::Defaults::SAVED_QUERY_PANEL_TITLE = 'Saved Queries'
  Wice::Defaults::SAVE_QUERY_BUTTON_LABEL = 'Save the state of filters'
  
  Wice::Defaults::SAVED_QUERY_DELETION_CONFIRMATION = 'Are you sure?'
  Wice::Defaults::SAVED_QUERY_DELETION_LINK_TITLE   = 'Delete query'
  Wice::Defaults::SAVED_QUERY_LINK_TITLE            = 'Load query'
  
  Wice::Defaults::VALIDATES_UNIQUENESS_ERROR = "A query with this name already exists"
  Wice::Defaults::VALIDATES_PRESENCE_ERROR   = "Please sumbit the name of the custom query"

  Wice::Defaults::QUERY_DELETED_MESSAGE = "Saved query deleted."
  Wice::Defaults::QUERY_SAVED_MESSAGE   = "Query saved."

  # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
  #            Here go settings related to the calendar helpers               #

  # The default style of the date and datetime helper
  # * <tt>:calendar</tt> - JS calendar
  # * <tt>:standard</tt> - standard Rails date and datetime helpers
  Wice::Defaults::HELPER_STYLE = :calendar

  # Format of the datetime displayed.
  # If you change the format, make sure to check if +DATETIME_PARSER+ can still parse this string.
  Wice::Defaults::DATETIME_FORMAT = "%d-%m-%Y %H:%M"

  # Format of the date displayed.
  # If you change the format, make sure to check if +DATE_PARSER+ can still parse this string.
  Wice::Defaults::DATE_FORMAT     =  "%d-%m-%Y"

  # With Calendar helpers enabled the parameter sent is the string displayed. This lambda will be given a date string in the
  # format defined by +DATETIME_FORMAT+ and must generate a DateTime object.
  # In many cases <tt>DateTime.parse</tt> is enough, for instance,  <tt>%Y-%m-%d</tt>. If you change the format, make sure to check this code
  # and modify it if needed.
  Wice::Defaults::DATETIME_PARSER = lambda{|datetime_string| DateTime.parse(datetime_string) }

  # With Calendar helpers enabled the parameter sent is the string displayed. This lambda will be given a date string in the
  # format defined by +DATETIME+ and must generate a Date object.
  # In many cases <tt>Date.parse</tt> is enough, for instance,  <tt>%Y-%m-%d</tt>. If you change the format, make sure to check this code
  # and modify it if needed.
  Wice::Defaults::DATE_PARSER = lambda{|datetime_string| Date.parse(datetime_string) }

  # Icon to popup the calendar.
  Wice::Defaults::CALENDAR_ICON = "/images/icons/grid/calendar_view_month.png"

  # Title of the icon clicking on which will show the calendar to set the FROM date.
  Wice::Defaults::DATE_SELECTOR_TOOLTIP_FROM = 'От'
  # Title of the icon clicking on which will show the calendar to set the TO date.
  Wice::Defaults::DATE_SELECTOR_TOOLTIP_TO = 'До'

  # Title of the date string.
  Wice::Defaults::DATE_STRING_TOOLTIP = 'Щелкните для удаления'
end
