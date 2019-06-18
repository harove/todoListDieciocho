class UsertodosController < ApplicationController
   before_action :authenticate_user!
   
   def show
      @usertodos = Usertodo.where({todo_id: params[:id], completed: true})
   end


   def index
   
      @usertodos = Usertodo.where({
         user_id: current_user.id
      })

      @usertodos_completed = @usertodos.pluck(:completed).count(true)

   end


   def update
      usertodo = Usertodo.find(params[:id])

      if usertodo.completed

         usertodo.update({
            completed: false,
         })
      
      else

         usertodo.update({
            completed: true,
         })
      end
      usertodo.save
      redirect_to usertodos_path
   end   

   
end





