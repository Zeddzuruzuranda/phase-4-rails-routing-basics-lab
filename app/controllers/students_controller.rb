class StudentsController < ApplicationController
    def index
        @students = students.all
        render "index"
    end
    def grades
        @students = Student.order(grade:  :desc)
        render json: @students
    end

    def highest_grades
        @highest_grades = Students.order(grade: :desc).first
        render json: student
    end
end
