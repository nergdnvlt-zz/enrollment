class AddressesController < ApplicationController
  def new
    @address = Address.new
    @student = Student.find(params[:student_id])
    @address.student_id = @student.id
  end

  def create
    @address = Address.new(address_params)
    @address.student_id = params[:student_id]
    @address.save
    redirect_to student_path(@address.student_id)
  end

  private

  def address_params
    params.require(:address).permit(:description, :street, :city, :state, :zip)
  end
end
