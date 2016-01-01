module ProductsHelper

  def embed(youtube_url)
    youtube_id = youtube_url.split("=").last
    content_tag(:iframe, nil, src: "//www.youtube.com/embed/#{youtube_id}")
  end

end



#http://www.benfranklinlabs.com/where-to-put-rails-modules/

