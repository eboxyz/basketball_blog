module ApplicationHelper
  # this method will embed the code from the partial
  def youtube_video(youtube_url)
    render :partial => 'shared/video', :locals => { :youtube_url => youtube_url }
  end
end

