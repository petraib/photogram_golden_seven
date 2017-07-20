class PicturesController <ApplicationController
    def create_row
       render("pic_templates/create_row.html.erb") 
    end
    
    def destroy_row
       render("pic_templates/destroy_row.html.erb") 
    end
    
    def edit_form
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
       render("pic_templates/update_row.html.erb") 
    end
    
    
end
