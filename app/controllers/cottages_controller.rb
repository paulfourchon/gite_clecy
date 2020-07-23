class CottagesController < ApplicationController
  def index
    @cottages = Cottage.geocoded

    @markers = @cottages.map do |cottage|
      {
        lat: cottage.latitude,
        lng: cottage.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { cottage: cottage }),
        image_url: helpers.asset_url('DC')
      }
    end
  end

  def show
    @cottage = Cottage.find(params[:id])
  end

  private

  def article_params
  params.require(:article).permit(:name, :address, photos: [])
  end
end
