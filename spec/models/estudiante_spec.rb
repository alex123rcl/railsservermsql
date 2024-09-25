require 'rails_helper'

RSpec.describe Estudiante, type: :model do
  context "nombre" do
    it { should validate_presence_of :nombre }
    it { should validate_length_of(:nombre).is_at_most(15) }
    it { should_not allow_value("123123").for(:nombre) }
    it { should allow_value("abcd").for(:nombre) }
  end

  context "apellido" do
    it { should validate_presence_of :apellido }
    it { should validate_length_of(:apellido).is_at_most(15) }
    it { should_not allow_value("123123").for(:apellido) }
    it { should allow_value("abcd").for(:apellido) }
  end

  context "carrera" do
    it { should validate_presence_of :carrera }
    it { should validate_length_of(:carrera).is_at_most(15) }
    it { should_not allow_value("123123").for(:carrera) }
    it { should allow_value("abcd").for(:carrera) }
  end

  context "carnet" do
    it { should validate_presence_of :carnet }
    it { should_not allow_value("abcd").for(:carnet) }
    it { should_not allow_value("abcde!@#").for(:carnet) }
    it { should_not allow_value("12345678901").for(:carnet) }
    it { should allow_value("12-34567-8").for(:carnet) }

  end
end
