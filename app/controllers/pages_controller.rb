class PagesController < ApplicationController
  layout 'admin', only: :admin
  def my_quiz
    @quiz = current_user.year_groups.highest.quizzes.last
    current_user.quizzes << @quiz

  end

  def admin
  end

  def about
  end

  def contact
  end
end
