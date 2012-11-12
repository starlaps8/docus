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

describe HandbookFormAdmissionsController do

  # This should return the minimal set of attributes required to create a valid
  # HandbookFormAdmission. As you add validations to HandbookFormAdmission, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # HandbookFormAdmissionsController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all handbook_form_admissions as @handbook_form_admissions" do
      handbook_form_admission = HandbookFormAdmission.create! valid_attributes
      get :index, {}, valid_session
      assigns(:handbook_form_admissions).should eq([handbook_form_admission])
    end
  end

  describe "GET show" do
    it "assigns the requested handbook_form_admission as @handbook_form_admission" do
      handbook_form_admission = HandbookFormAdmission.create! valid_attributes
      get :show, {:id => handbook_form_admission.to_param}, valid_session
      assigns(:handbook_form_admission).should eq(handbook_form_admission)
    end
  end

  describe "GET new" do
    it "assigns a new handbook_form_admission as @handbook_form_admission" do
      get :new, {}, valid_session
      assigns(:handbook_form_admission).should be_a_new(HandbookFormAdmission)
    end
  end

  describe "GET edit" do
    it "assigns the requested handbook_form_admission as @handbook_form_admission" do
      handbook_form_admission = HandbookFormAdmission.create! valid_attributes
      get :edit, {:id => handbook_form_admission.to_param}, valid_session
      assigns(:handbook_form_admission).should eq(handbook_form_admission)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new HandbookFormAdmission" do
        expect {
          post :create, {:handbook_form_admission => valid_attributes}, valid_session
        }.to change(HandbookFormAdmission, :count).by(1)
      end

      it "assigns a newly created handbook_form_admission as @handbook_form_admission" do
        post :create, {:handbook_form_admission => valid_attributes}, valid_session
        assigns(:handbook_form_admission).should be_a(HandbookFormAdmission)
        assigns(:handbook_form_admission).should be_persisted
      end

      it "redirects to the created handbook_form_admission" do
        post :create, {:handbook_form_admission => valid_attributes}, valid_session
        response.should redirect_to(HandbookFormAdmission.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved handbook_form_admission as @handbook_form_admission" do
        # Trigger the behavior that occurs when invalid params are submitted
        HandbookFormAdmission.any_instance.stub(:save).and_return(false)
        post :create, {:handbook_form_admission => {}}, valid_session
        assigns(:handbook_form_admission).should be_a_new(HandbookFormAdmission)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        HandbookFormAdmission.any_instance.stub(:save).and_return(false)
        post :create, {:handbook_form_admission => {}}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested handbook_form_admission" do
        handbook_form_admission = HandbookFormAdmission.create! valid_attributes
        # Assuming there are no other handbook_form_admissions in the database, this
        # specifies that the HandbookFormAdmission created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        HandbookFormAdmission.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, {:id => handbook_form_admission.to_param, :handbook_form_admission => {'these' => 'params'}}, valid_session
      end

      it "assigns the requested handbook_form_admission as @handbook_form_admission" do
        handbook_form_admission = HandbookFormAdmission.create! valid_attributes
        put :update, {:id => handbook_form_admission.to_param, :handbook_form_admission => valid_attributes}, valid_session
        assigns(:handbook_form_admission).should eq(handbook_form_admission)
      end

      it "redirects to the handbook_form_admission" do
        handbook_form_admission = HandbookFormAdmission.create! valid_attributes
        put :update, {:id => handbook_form_admission.to_param, :handbook_form_admission => valid_attributes}, valid_session
        response.should redirect_to(handbook_form_admission)
      end
    end

    describe "with invalid params" do
      it "assigns the handbook_form_admission as @handbook_form_admission" do
        handbook_form_admission = HandbookFormAdmission.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        HandbookFormAdmission.any_instance.stub(:save).and_return(false)
        put :update, {:id => handbook_form_admission.to_param, :handbook_form_admission => {}}, valid_session
        assigns(:handbook_form_admission).should eq(handbook_form_admission)
      end

      it "re-renders the 'edit' template" do
        handbook_form_admission = HandbookFormAdmission.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        HandbookFormAdmission.any_instance.stub(:save).and_return(false)
        put :update, {:id => handbook_form_admission.to_param, :handbook_form_admission => {}}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested handbook_form_admission" do
      handbook_form_admission = HandbookFormAdmission.create! valid_attributes
      expect {
        delete :destroy, {:id => handbook_form_admission.to_param}, valid_session
      }.to change(HandbookFormAdmission, :count).by(-1)
    end

    it "redirects to the handbook_form_admissions list" do
      handbook_form_admission = HandbookFormAdmission.create! valid_attributes
      delete :destroy, {:id => handbook_form_admission.to_param}, valid_session
      response.should redirect_to(handbook_form_admissions_url)
    end
  end

end