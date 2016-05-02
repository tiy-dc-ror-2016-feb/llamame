class PhoneNumbersController < ApplicationController
  before_action :set_phone_number, only: [:show, :edit, :update, :destroy]

  # GET /phone_numbers
  # GET /phone_numbers.json
  def index
    @phone_numberable = Person.find(params[:person_id])
    @phone_numbers = @phone_numberable.phone_numbers

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @phone_numbers }
    end
  end

  # GET /phone_numbers/1
  # GET /phone_numbers/1.json
  def show
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @phone_number }
    end
  end

  # GET /phone_numbers/new
  def new
    @phone_numberable = Person.find(params[:person_id])
    @phone_number = PhoneNumber.new
  end

  # GET /phone_numbers/1/edit
  def edit
  end

  # POST /phone_numbers
  # POST /phone_numbers.json
  def create
    @phone_numberable = Person.find(params[:person_id])
    @phone_number = @phone_numberable.phone_numbers.build(phone_number_params)

    respond_to do |format|
      if @phone_number.save
        format.html { redirect_to @phone_numberable }
        format.json { render json: @phone_number, status: :created }
      else
        format.html { render action: 'new' }
        format.json { render json: @phone_number.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /phone_numbers/1
  # PATCH/PUT /phone_numbers/1.json
  def update
    respond_to do |format|
      if @phone_number.update(phone_number_params)
        format.html { redirect_to @phone_number, notice: 'Phone number was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @phone_number.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /phone_numbers/1
  # DELETE /phone_numbers/1.json
  def destroy
    @phone_number.destroy
    respond_to do |format|
      format.html { redirect_to phone_numbers_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_phone_number
      @phone_number = PhoneNumber.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def phone_number_params
      params.require(:phone_number).permit(:number, :number_type, :phone_numberable_id, :phone_numberable_type)
    end
end
