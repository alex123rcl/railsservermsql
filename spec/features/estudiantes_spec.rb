require 'rails_helper'

RSpec.feature "Estudiantes", type: :feature do
  feature "User wants to create a new student successfully" do
    scenario "Create a new student account" do
      visit new_estudiante_path  
      fill_in "Nombre", with: "Alex" 
      fill_in "Apellido", with: "Caballero" 
      fill_in "Carrera", with: "Telemática"  
      fill_in "Carnet", with: "21-01270-0" 
      click_button "Create Estudiante"  
      expect(page).to have_text("Estudiante was successfully created") 
    end
  end
end

