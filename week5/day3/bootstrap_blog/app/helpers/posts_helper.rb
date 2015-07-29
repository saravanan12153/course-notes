module PostsHelper

  def header_block(headline = "The Awsome Blog", subhead = "Rails Engineering, Summar '15")
      render :partial => "header", :locals => {:hed => headline, :subhed => subhead}
  end

end
