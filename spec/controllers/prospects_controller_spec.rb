require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe ProspectsController do

  # This should return the minimal set of attributes required to create a valid
  # Prospect. As you add validations to Prospect, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    { "nome_contato" => "Nome Contato Test",
      "nome_empressa" => "Nome Empressa Test",
      "telefone_empressa" => "(11) 4234-4312",
      "telefone_celular" => "(11) 5234-4312",
      "endereco" => "Rua Test 1243"
    }
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # ProspectsController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all prospects as @prospects" do
      prospect = Prospect.create! valid_attributes
      get :index, {}, valid_session
      assigns(:prospects).should eq([prospect])
    end
  end

  describe "GET show" do
    it "assigns the requested prospect as @prospect" do
      prospect = Prospect.create! valid_attributes
      get :show, {:id => prospect.to_param}, valid_session
      assigns(:prospect).should eq(prospect)
    end
  end

  describe "GET new" do
    it "assigns a new prospect as @prospect" do
      get :new, {}, valid_session
      assigns(:prospect).should be_a_new(Prospect)
    end
  end

  describe "GET edit" do
    it "assigns the requested prospect as @prospect" do
      prospect = Prospect.create! valid_attributes
      get :edit, {:id => prospect.to_param}, valid_session
      assigns(:prospect).should eq(prospect)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Prospect" do
        expect {
          post :create, {:prospect => valid_attributes}, valid_session
        }.to change(Prospect, :count).by(1)
      end

      it "assigns a newly created prospect as @prospect" do
        post :create, {:prospect => valid_attributes}, valid_session
        assigns(:prospect).should be_a(Prospect)
        assigns(:prospect).should be_persisted
      end

      it "redirects to the created prospect" do
        post :create, {:prospect => valid_attributes}, valid_session
        response.should redirect_to(Prospect.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved prospect as @prospect" do
        # Trigger the behavior that occurs when invalid params are submitted
        Prospect.any_instance.stub(:save).and_return(false)
        post :create, {:prospect => { "nome_contato" => "invalid value" }}, valid_session
        assigns(:prospect).should be_a_new(Prospect)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Prospect.any_instance.stub(:save).and_return(false)
        post :create, {:prospect => { "nome_contato" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested prospect" do
        prospect = Prospect.create! valid_attributes
        # Assuming there are no other prospects in the database, this
        # specifies that the Prospect created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Prospect.any_instance.should_receive(:update_attributes).with({ "nome_contato" => "MyString" })
        put :update, {:id => prospect.to_param, :prospect => { "nome_contato" => "MyString" }}, valid_session
      end

      it "assigns the requested prospect as @prospect" do
        prospect = Prospect.create! valid_attributes
        put :update, {:id => prospect.to_param, :prospect => valid_attributes}, valid_session
        assigns(:prospect).should eq(prospect)
      end

      it "redirects to the prospect" do
        prospect = Prospect.create! valid_attributes
        put :update, {:id => prospect.to_param, :prospect => valid_attributes}, valid_session
        response.should redirect_to(prospect)
      end
    end

    describe "with invalid params" do
      it "assigns the prospect as @prospect" do
        prospect = Prospect.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Prospect.any_instance.stub(:save).and_return(false)
        put :update, {:id => prospect.to_param, :prospect => { "nome_contato" => "invalid value" }}, valid_session
        assigns(:prospect).should eq(prospect)
      end

      it "re-renders the 'edit' template" do
        prospect = Prospect.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Prospect.any_instance.stub(:save).and_return(false)
        put :update, {:id => prospect.to_param, :prospect => { "nome_contato" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested prospect" do
      prospect = Prospect.create! valid_attributes
      expect {
        delete :destroy, {:id => prospect.to_param}, valid_session
      }.to change(Prospect, :count).by(-1)
    end

    it "redirects to the prospects list" do
      prospect = Prospect.create! valid_attributes
      delete :destroy, {:id => prospect.to_param}, valid_session
      response.should redirect_to(prospects_url)
    end
  end

end
