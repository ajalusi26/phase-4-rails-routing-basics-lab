class StudentsController < ApplicationController
    def index
        render json: Student.all
    end

    def grades
        render json: Student.order('grade DESC')
    end

    def highest_grade
        top_grade =  Student.maximum('grade')
        render json: Student.where('grade = ?', top_grade)
    end
end
