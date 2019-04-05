class ExpensesController < ApplicationController
  def index
    if params[:concept].present? && params[:category_id].present?
      @expenses = Expense.where("concept like '%#{params[:concept]}%' AND category_id = '#{params[:category_id]}'")
    # elsif params[:category_id].present?
    #   @expenses = Expense.where("category_id = ?", params[:category_id])
    else
      @expenses = Expense.order("date DESC")
    end     

  end
end
