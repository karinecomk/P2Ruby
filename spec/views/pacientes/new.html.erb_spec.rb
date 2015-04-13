require 'rails_helper'

RSpec.describe "pacientes/new", :type => :view do
  before(:each) do
    assign(:paciente, Paciente.new())
  end

  it "renders new paciente form" do
    render

    assert_select "form[action=?][method=?]", pacientes_path, "post" do
    end
  end
end
