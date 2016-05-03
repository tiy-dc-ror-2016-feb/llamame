class PeopleController < ApplicationController
  before_action :set_person, only: [:show, :edit, :update, :destroy]

  # GET /people
  # GET /people.json
  def index
    @people = Person.page(params[:page]).per(params[:per])

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @people }
    end
  end

  # GET /people/1
  # GET /people/1.json
  def show
    @interactions = @person.interactions.order(created_at: :desc)

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @person }
    end
  end

  # GET /people/new
  def new
    @person = Person.new
    @person.emails.build
    @person.phone_numbers.build
    @person.addresses.build
  end

  # GET /people/1/edit
  def edit
    @person = Person.find(params["id"])
    @person.emails.build if @person.emails.empty?
    @person.phone_numbers.build if @person.phone_numbers.empty?
    @person.addresses.build if @person.addresses.empty?
  end

  # POST /people
  # POST /people.json
  def create
    @person = Person.new(person_params)

    respond_to do |format|
      if @person.save
        format.html { redirect_to @person, notice: 'Person was successfully created.' }
        format.json { render json: @person, status: :created }
      else
        format.html { render action: 'new' }
        format.json { render json: @person.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /people/1
  # PATCH/PUT /people/1.json
  def update
    picture = params[:person][:profile_picture]
    File.write("public/person_pictures/#{@person.id}.jpg", picture.read.force_encoding("utf-8"))

    respond_to do |format|
      if @person.update(person_params)
        format.html { redirect_to @person, notice: 'Person was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @person.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /people/1
  # DELETE /people/1.json
  def destroy
    @person.destroy
    respond_to do |format|
      format.html { redirect_to people_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_person
      @person = Person.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def person_params
      params.require(:person).permit(:first_name, :last_name, :company_id, emails_attributes: [:email], phone_numbers_attributes: [:number, :number_type], addresses_attributes: [:address_1, :address_2, :address_3, :city, :state, :zip_code, :country])
    end
end
