

@@pagination_options = {
      :class          => 'pagination',
      :previous_label => '&laquo; Previous',
      :next_label     => 'Next ',
      :inner_window   => 4, # links around the current page
      :outer_window   => 1, # links around beginning and end
      :separator      => ' ', # single space is friendly to spiders and non-graphic browsers
      :param_name     => :page,
      :params         => nil,
      :renderer       => 'WillPaginate::LinkRenderer',
      :page_links     => true,
      :container      => true
    }
WillPaginate::ViewHelpers.pagination_options[:previous_label] = '&lt;'
WillPaginate::ViewHelpers.pagination_options[:next_label] = '&gt;'

