class ContactsController < ApplicationController

    def new
    end

    def create
        
        @contact = Contact.new(contact_params)
        
        if  @contact.valid?                         # Если форма валидна, сохраняем в БД
            @contact.save
        else
            render action: 'new'                    # Если не в условии возвращаем страницу new
        end
    
    end

    private
    
    def contact_params
        params.require(:contact).permit(:email, :message)
    end

end
