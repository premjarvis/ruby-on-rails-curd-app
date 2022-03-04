class EmployeesController < ApplicationController
  def show
    @employee = Employee.find(params[:id])
  end

  def index
    @employees = Employee.all
  end

  def new
    @employee = Employee.new
  end

  def edit
    @employee = Employee.find(params[:id])
  end
  # def create_user
  #   puts "Hello"
  # end
  def create
    # Display the data in console
    # render plain: @employee.inspect

    @employee = Employee.new(params.require(:employee).permit(:fName, :lName, :dob, :gender, :email, :mobile, :address, :country, :salary,
            :socialAccount ))

    if @employee.save
      flash[:notice] = "Employee was created Successfully...."
      redirect_to employee_path(@employee)   # Or redirect_to @employee
    else
      render 'employees/new'
    end

  end

  def update
    @employee = Employee.find(params[:id])
    if @employee.update(params.require(:employee).permit(:fName, :lName, :dob, :gender, :email, :mobile, :address, :country, :salary, :socialAccount))
      flash[:notice] = "Employee was updated Successfully...."
      redirect_to employee_path(@employee)
    else
      render 'employees/edit'
    end
  end

  def destroy
    @employee = Employee.find(params[:id])
    @employee.destroy
    redirect_to employees_path
  end

end