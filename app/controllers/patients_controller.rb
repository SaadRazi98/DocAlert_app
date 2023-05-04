class PatientsController < ApplicationController
  
  def index
    @patients = Patient.all
    render :index
  end

  def create
    @patient = Patient.create(
      doctor_id: params[:doctor_id],
      age: params[:age],
      medical_category: params[:medical_category],
      patient_name: params[:patient_name],
      descripition: params[:descripition],
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
      doctor_id: params[:doctor_id] || @patient.doctor_id,
      age: params[:age] || @patient.age,
      medical_category: params[:medical_category]|| @patient.medical_category,
      patient_name: params[:patient_name] || @patient.patient_name,
      descripition: params[:descripition] || @patient.descripition,
    )
    render :show
  end

  def destroy
    @patient = Patient.find_by(id: params[:id])
    @patient.destroy
    render json: { message: "Patient file was successfully deleted" }
  end


end
