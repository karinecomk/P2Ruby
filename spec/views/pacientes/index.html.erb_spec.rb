require 'rails_helper'

RSpec.describe "pacientes/index", :type => :view do
  before(:each) do
    assign(:pacientes, [
      Paciente.create!(),
      Paciente.create!()
    ])
  end

  it "renders a list of pacientes" do
    render
  end
end
