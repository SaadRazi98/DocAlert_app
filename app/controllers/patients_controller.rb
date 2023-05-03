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
    @patient = Patient.find_by(id: params[:id])
    render :show
  end

  def update
    @patient = Patient.find_by(id: params[:id])
    @patient.update(
      patient_id: params[:patient_id] || @patient.patient_id,
      doctor_id: params[:doctor_id] || @patient.doctor_id,
      age: params[:age] || @patient.age,
      medical_category: params[:medical_category]|| @patient.medical_category,
      patient_name: params[:patient_name] || @patient.patient_name,
    )
    render :show
  end

  


end
