class StudentsController < ApplicationController
  before_action :set_student, only: [:attend, :show, :edit, :update, :destroy]

  # GET /students
  def index
    @students = Student.all
  end

  # GET /students/{:id}
  def show; end

  # GET /students/new
  def new
    @student = Student.new
  end

  # GET /students/{:id}/attend
  def attend
    @categories = Category.order(:name)
    @selected_category = params[:category_id]
    puts @selected_category
  end

  def find_courses
    @courses = Course.find(params[:category_id])
  end

  # GET /students/{:id}/edit
  def edit; end

  # POST /students
  def create
    @student = Student.new(student_params)

    if @student.save
      redirect_to @student, notice: 'Student was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /students/{:id}
  def update
    if @student.update(student_params)
      redirect_to @student, notice: 'Student was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /students/{:id}
  def destroy
    @student.destroy
    redirect_to students_url, notice: 'Student was successfully destroyed.'
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_student
    @student = Student.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def student_params
    params.require(:student).permit(:first_name, :last_name)
  end
end
