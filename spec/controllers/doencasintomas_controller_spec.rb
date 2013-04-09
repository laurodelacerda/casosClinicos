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

describe DoencasintomasController do

  # This should return the minimal set of attributes required to create a valid
  # Doencasintoma. As you add validations to Doencasintoma, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    { "doenca" => "" }
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # DoencasintomasController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all doencasintomas as @doencasintomas" do
      doencasintoma = Doencasintoma.create! valid_attributes
      get :index, {}, valid_session
      assigns(:doencasintomas).should eq([doencasintoma])
    end
  end

  describe "GET show" do
    it "assigns the requested doencasintoma as @doencasintoma" do
      doencasintoma = Doencasintoma.create! valid_attributes
      get :show, {:id => doencasintoma.to_param}, valid_session
      assigns(:doencasintoma).should eq(doencasintoma)
    end
  end

  describe "GET new" do
    it "assigns a new doencasintoma as @doencasintoma" do
      get :new, {}, valid_session
      assigns(:doencasintoma).should be_a_new(Doencasintoma)
    end
  end

  describe "GET edit" do
    it "assigns the requested doencasintoma as @doencasintoma" do
      doencasintoma = Doencasintoma.create! valid_attributes
      get :edit, {:id => doencasintoma.to_param}, valid_session
      assigns(:doencasintoma).should eq(doencasintoma)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Doencasintoma" do
        expect {
          post :create, {:doencasintoma => valid_attributes}, valid_session
        }.to change(Doencasintoma, :count).by(1)
      end

      it "assigns a newly created doencasintoma as @doencasintoma" do
        post :create, {:doencasintoma => valid_attributes}, valid_session
        assigns(:doencasintoma).should be_a(Doencasintoma)
        assigns(:doencasintoma).should be_persisted
      end

      it "redirects to the created doencasintoma" do
        post :create, {:doencasintoma => valid_attributes}, valid_session
        response.should redirect_to(Doencasintoma.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved doencasintoma as @doencasintoma" do
        # Trigger the behavior that occurs when invalid params are submitted
        Doencasintoma.any_instance.stub(:save).and_return(false)
        post :create, {:doencasintoma => { "doenca" => "invalid value" }}, valid_session
        assigns(:doencasintoma).should be_a_new(Doencasintoma)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Doencasintoma.any_instance.stub(:save).and_return(false)
        post :create, {:doencasintoma => { "doenca" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested doencasintoma" do
        doencasintoma = Doencasintoma.create! valid_attributes
        # Assuming there are no other doencasintomas in the database, this
        # specifies that the Doencasintoma created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Doencasintoma.any_instance.should_receive(:update_attributes).with({ "doenca" => "" })
        put :update, {:id => doencasintoma.to_param, :doencasintoma => { "doenca" => "" }}, valid_session
      end

      it "assigns the requested doencasintoma as @doencasintoma" do
        doencasintoma = Doencasintoma.create! valid_attributes
        put :update, {:id => doencasintoma.to_param, :doencasintoma => valid_attributes}, valid_session
        assigns(:doencasintoma).should eq(doencasintoma)
      end

      it "redirects to the doencasintoma" do
        doencasintoma = Doencasintoma.create! valid_attributes
        put :update, {:id => doencasintoma.to_param, :doencasintoma => valid_attributes}, valid_session
        response.should redirect_to(doencasintoma)
      end
    end

    describe "with invalid params" do
      it "assigns the doencasintoma as @doencasintoma" do
        doencasintoma = Doencasintoma.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Doencasintoma.any_instance.stub(:save).and_return(false)
        put :update, {:id => doencasintoma.to_param, :doencasintoma => { "doenca" => "invalid value" }}, valid_session
        assigns(:doencasintoma).should eq(doencasintoma)
      end

      it "re-renders the 'edit' template" do
        doencasintoma = Doencasintoma.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Doencasintoma.any_instance.stub(:save).and_return(false)
        put :update, {:id => doencasintoma.to_param, :doencasintoma => { "doenca" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested doencasintoma" do
      doencasintoma = Doencasintoma.create! valid_attributes
      expect {
        delete :destroy, {:id => doencasintoma.to_param}, valid_session
      }.to change(Doencasintoma, :count).by(-1)
    end

    it "redirects to the doencasintomas list" do
      doencasintoma = Doencasintoma.create! valid_attributes
      delete :destroy, {:id => doencasintoma.to_param}, valid_session
      response.should redirect_to(doencasintomas_url)
    end
  end

end