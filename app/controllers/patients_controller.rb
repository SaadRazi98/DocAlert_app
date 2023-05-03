class PatientsController < ApplicationController
  
  def index
    @patients = Patient.all
    render :index
  end

  def create
    @patient = Patientpatient.create(
      patient_id: params[:patient_id],
      doctor_id: params[:doctor_id],
      age: params[:age],
      medical_category: params[:medical_category],
      patient_name: params[:patient_name],
    )
    render :show
  end
  
  def show
    @patients = Patient.find_by(id: params[:id])
    render :show
  end
  

end
