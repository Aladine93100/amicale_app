class HeadshotDemoController < ApplicationController

  helper :headshot
  def index
  end

  def headshot_params
  	params.require(:headshot).permit(
  		:description,
  		:image_content_type,
  		:image_file_name,
  		:image_file_size,
  		:image_updated_at)
  end
end
