class Admin::BaseController < ApplicationController
  layout 'admin'
  before_filter :ssl_required
  
	# Check permissions for everything on the admin side.
  before_filter :login_required,
								:except => [:login]
  before_filter :check_authorization, 
								:except => [:login, :index]

  uses_tiny_mce :options => { 
                                :theme => 'advanced',
                                :theme_advanced_resizing => true,
                                :theme_advanced_resize_horizontal => true,
                                :theme_advanced_toolbar_location => 'top',
                                :theme_advanced_toolbar_align => 'left',
                                :plugins => %w{ fullscreen paste searchreplace safari contextmenu style preview},
                                :theme_advanced_buttons1 => 'fullscreen,preview,|,bold,italic,underline,strikethrough,|,justifyleft,justifycenter,justifyright,justifyfull,|,formatselect,fontselect,fontsizeselect',
                                :theme_advanced_buttons2 => 'cut,copy,paste,pastetext,pasteword,|,search,replace,|,bullist,numlist,|,outdent,indent,blockquote,|,undo,redo,|,link,unlink,anchor,cleanup,code,|,insertdate,inserttime,|,forecolor,backcolor,charmap,|,sub,sup',
                                :theme_advanced_buttons3 => ''
                                                                

                            }

#include TinyMCEActions
end
