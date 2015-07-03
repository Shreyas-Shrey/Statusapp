class BlogController < ApplicationController
  $list =nil
  def viewstatus


   if current_user === nil
   	"userauth/login"
   else

   end
   
  end

 
  def updatestatus


  end


  def savestatus
  	 respond_to do |format|

  	 	Status.create(:user_id => current_user.id, :message => params[:status].to_s)
  	 	$list = Status.where("user_id=?",current_user.id)
  	 	redirect_to root_path
  	 	return
  	 	#redirect_to :action => 'viewstatus'
  	 	 #format.json{render :json => 'success', :status => 200}
  	 	 
  	 end

  end 
end
