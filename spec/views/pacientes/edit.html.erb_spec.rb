require 'rails_helper'

RSpec.describe "pacientes/edit", :type => :view do
  before(:each) do
    @paciente = assign(:paciente, Paciente.create!())
  end

  it "renders the edit paciente form" do
    render

    assert_select "form[action=?][method=?]", paciente_path(@paciente), "post" do
    end
  end
end
