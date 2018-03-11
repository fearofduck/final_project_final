class ForecastsController < ApplicationController
  def index
    @q = Forecast.ransack(params[:q])
    @forecasts = @q.result(:distinct => true).includes(:user, :ds53_ct, :comments).page(params[:page]).per(10)

    render("forecasts/index.html.erb")
  end

  def show
    @comment = Comment.new
    @forecast = Forecast.find(params[:id])

    render("forecasts/show.html.erb")
  end

  def new
    @forecast = Forecast.new

    render("forecasts/new.html.erb")
  end

  def create
    @forecast = Forecast.new

    @forecast.ds53_growth = params[:ds53_growth]
    @forecast.ds40_growth = params[:ds40_growth]
    @forecast.ds53_ct_id = params[:ds53_ct_id]
    @forecast.user_id = params[:user_id]
    @forecast.itl_in_53 = params[:itl_in_53]
    @forecast.dc_in_conv = params[:dc_in_conv]
    @forecast.non_ttx_adds = params[:non_ttx_adds]
    @forecast.name = params[:name]
    @forecast.cars_required = params[:cars_required]
    @forecast.cars_req_greater_0 = params[:cars_req_greater_0]
    @forecast.ds53_idle = params[:ds53_idle]

    save_status = @forecast.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/forecasts/new", "/create_forecast"
        redirect_to("/forecasts")
      else
        redirect_back(:fallback_location => "/", :notice => "Forecast created successfully.")
      end
    else
      render("forecasts/new.html.erb")
    end
  end

  def edit
    @forecast = Forecast.find(params[:id])

    render("forecasts/edit.html.erb")
  end

  def update
    @forecast = Forecast.find(params[:id])

    @forecast.ds53_growth = params[:ds53_growth]
    @forecast.ds40_growth = params[:ds40_growth]
    @forecast.ds53_ct_id = params[:ds53_ct_id]
    @forecast.user_id = params[:user_id]
    @forecast.itl_in_53 = params[:itl_in_53]
    @forecast.dc_in_conv = params[:dc_in_conv]
    @forecast.non_ttx_adds = params[:non_ttx_adds]
    @forecast.name = params[:name]
    @forecast.cars_required = params[:cars_required]
    @forecast.cars_req_greater_0 = params[:cars_req_greater_0]
    @forecast.ds53_idle = params[:ds53_idle]

    save_status = @forecast.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/forecasts/#{@forecast.id}/edit", "/update_forecast"
        redirect_to("/forecasts/#{@forecast.id}", :notice => "Forecast updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Forecast updated successfully.")
      end
    else
      render("forecasts/edit.html.erb")
    end
  end

  def destroy
    @forecast = Forecast.find(params[:id])

    @forecast.destroy

    if URI(request.referer).path == "/forecasts/#{@forecast.id}"
      redirect_to("/", :notice => "Forecast deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Forecast deleted.")
    end
  end
end
