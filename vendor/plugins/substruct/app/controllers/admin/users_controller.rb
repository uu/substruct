class Admin::UsersController < Admin::BaseController
  
  # GETs should be safe (see http://www.w3.org/2001/tag/doc/whenToUseGet.html)
  verify :method => :post, :only => [ :destroy, :create, :update ],
         :redirect_to => { :action => :list }

  #============================================================================
  # ACTIONS THAT HAVE TO DO WITH ADMIN USERS
  #============================================================================

  def index
    list
    render :action => 'list'
  end
  def list
    @title = t(:admin_users)
    @users = User.find(:all)
  end

  def new
		@title = "Creating New User"
    @user = User.new(params[:user])
		@roles = Role.find(:all, :order => 'name ASC')
    if request.post? and @user.save
      flash[:notice] = t(:user_was_succ_created)
      redirect_to :action => 'list'
    end      
  end

  def edit
		@title = t(:editing_user)
    @user = User.find(params[:id])
    @user.attributes = params["user"]
		
		@roles = Role.find(:all, :order => 'name ASC')
		logger.info("[PARAMS] #{params.inspect}")
		
		# Update user
    if request.post? and @user.save
      flash[:notice] = t(:user_was_succ_updated)
      redirect_to :action => 'list'
    end
    @user.password = @user.password_confirmation =  ''
  end

  def destroy
		if (User.count == 1) then
			flash[:notice] = t(:error_deleting_user1)
			flash[:notice] << t(:error_deleting_user2)
			redirect_to :action => 'list' and return
		elsif (session[:user].to_i == params[:id].to_i)
		  flash[:notice] = t(:error_deleting_user3)
		  redirect_to :action => 'list' and return
		else
		  User.find(params[:id]).destroy
      redirect_to :action => 'list'
		end
  end
  
  #============================================================================
  # ACTIONS THAT HAVE TO DO WITH CUSTOMERS
  #============================================================================
  
  # Lists customers in the system.
  def customers
    @title = t(:customers)
    @customers = OrderUser.paginate(
      :include => ['orders'],
      :order => "last_name ASC, first_name ASC",
      :page => params[:page],
      :per_page => 30
    )    
  end
  
  # Downloads a list of customers as a CSV file.
  # Good for exporting to mailing lists, etc.
  #
  def download_customers_csv
    require 'fastercsv'
    @customers = OrderUser.find(
      :all
    )
    csv_string = FasterCSV.generate do |csv|
      # Do header generation 1st
      csv << [
        "FirstName", "LastName", "EmailAddress"
      ]
      for c in @customers
        csv << [c.first_name, c.last_name, c.email_address]
      end
    end

    directory = File.join(RAILS_ROOT, "public/system/customers")
    file_name = Time.now.strftime("Customer_list-%m_%d_%Y_%H-%M")
    file = "#{file_name}.csv"
    save_to = "#{directory}/#{file}"

    # make sure we have the directory to write these files to
    if Dir[directory].empty?
      FileUtils.mkdir_p(directory)
    end    

    # write the file
    File.open(save_to, "w") { |f| f.write(csv_string)  }

    send_file(save_to, :type => "text/csv")
  end
  
end
