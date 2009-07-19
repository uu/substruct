class Admin::PromotionsController < Admin::BaseController

  def index
    list
    render :action => 'list'
  end

  def list
    @title = t(:promotion_list)
    @promotions = Promotion.find(:all, :order => 'code ASC')
  end

  def new
    @title = t(:create_new_promotion)
    @promotion = Promotion.new
  end

  def create
    @title = t(:create_new_promotion)
    @promotion = Promotion.new(params[:promotion])
    if @promotion.save
      flash[:notice] = t(:promotion_was_succ_created)
      redirect_to :action => 'list'
    else
      render :action => 'new'
    end
  end

  def edit
    @title = t(:editing_promotion)
    @promotion = Promotion.find(params[:id])
  end

  def update
    @promotion = Promotion.find(params[:id])
    if @promotion.update_attributes(params[:promotion])
      flash[:notice] = t(:promotion_was_succ_updated)
      redirect_to :action => 'list'
    else
      render :action => 'edit'
    end
  end

  def destroy
    Promotion.find(params[:id]).destroy
    redirect_to :action => 'list'
  end
  
  # Shows all orders for a particular promotion
  #
  def show_orders
    @promotion = Promotion.find(params[:id])
    @title = t(:orders_for) + " " + @promotion.code
    @orders = Order.paginate(
      :order => 'created_on DESC',
      :conditions => ["promotion_id = ?", @promotion.id],
      :page => params[:page],
      :per_page => 30
    )
  end

end
