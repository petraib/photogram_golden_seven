class PicturesController <ApplicationController
    def create_row
      
       p = Photo.new()
       p.source = params[:the_source]
       p.caption =  params[:the_caption]
       
       p.save
       
       #render("pic_templates/create_row.html.erb") 
       redirect_to("/photos")
    end
    
    def destroy_row
      
      
      Photo.destroy(params[:toast_id])
      render("pic_templates/destroy_row.html.erb") 
    end
    
    def edit_form
      
      @photo = Photo.find(params[:an_id])
      
      render("pic_templates/edit_form.html.erb") 
    end
    
    def index
      
       @all_photos = Photo.all.order(:created_at => :desc)
       render("pic_templates/index.html.erb") 
    end
    
    def new_form
       render("pic_templates/new_form.html.erb") 
    end
    
    def show
      
      @pic = Photo.find(params["the_id"].to_i)
      render("pic_templates/show.html.erb") 

    end
    
    def update_row
      
       p = Photo.find(params[:some_id])
       p.source = params[:the_source]
       p.caption =  params[:the_caption]
       
       p.save
       render("pic_templates/update_row.html.erb") 
    end
    
    
end
