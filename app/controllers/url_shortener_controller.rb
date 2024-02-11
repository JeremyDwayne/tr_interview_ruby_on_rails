class UrlShortenerController < ApplicationController
  def home
  end

  def show
    url = ShortUrl.where(short_code: params['short_code']).first

    redirect_to url.url, status: 301
  end

  def convert
    url = request.base_url + '/' + ShortUrl.create(url_params).short_code
    render plain: "#{params[:url]} has been converted to #{url}"
  end

  private
  
  def url_params
    params.permit(:url)
  end

end
