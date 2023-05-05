class DoctorNotesController < ApplicationController
  def index
    @doctor_notes = DoctorNote.all
    render :index
  end

  def create
    @doctor_notes = Doctor_note.create(
      doctor_name: params[:doctor_name],
      comment: params[:comment],
      patient_id: params[:patient_id],
      doctor_id: params[:doctor_id],
    )
    render :show
  end
  
  def show
    @doctor_note = doctor_note.find_by(id: params[:id])
    render :show
  end

  def update
    @doctor_note = Doctor_note.find_by(id: params[:id])
    @doctor_note.update(
      doctor_name: params[:doctor_name]|| @doctor_name.doctor_name,
      comment: params[:comment] || @doctor_name.comment,
      patient_id: params[:patient_id]|| @doctor_name.patient_id,
      doctor_id: params[:doctor_id] || @doctor_name.doctor_id,
    )
    render :show
  end

  def destroy
    @doctor_note = doctor_notes.find_by(id: params[:id])
    @doctor_note.destroy
    render json: { message: "doctor note file was successfully deleted" }
  end
end
