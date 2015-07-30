class Post < ActiveRecord::Base

  validates_presence_of :title

  belongs_to :author


  def body_length
    body.length
  end

  def time_to_last_edit
    minutes = ((updated_at - created_at)/60.0).round
    if minutes <= 60
      {:minutes => minutes}
    else
      hash = {}
      hash[:hours], hash[:minutes] = minutes.divmod(60)
      # division_arr = minutes.divmod(60)
      # hash[:hours] = division_arr[0]
      # hash[:minutes] = division_arr[1]
      hash
    end
  end

end
