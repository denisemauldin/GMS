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

describe AcquisitionsController do

  # This should return the minimal set of attributes required to create a valid
  # Acquisition. As you add validations to Acquisition, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end

  describe "GET index" do
    it "assigns all acquisitions as @acquisitions" do
      acquisition = Acquisition.create! valid_attributes
      get :index
      assigns(:acquisitions).should eq([acquisition])
    end
  end

  describe "GET show" do
    it "assigns the requested acquisition as @acquisition" do
      acquisition = Acquisition.create! valid_attributes
      get :show, :id => acquisition.id.to_s
      assigns(:acquisition).should eq(acquisition)
    end
  end

  describe "GET new" do
    it "assigns a new acquisition as @acquisition" do
      get :new
      assigns(:acquisition).should be_a_new(Acquisition)
    end
  end

  describe "GET edit" do
    it "assigns the requested acquisition as @acquisition" do
      acquisition = Acquisition.create! valid_attributes
      get :edit, :id => acquisition.id.to_s
      assigns(:acquisition).should eq(acquisition)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Acquisition" do
        expect {
          post :create, :acquisition => valid_attributes
        }.to change(Acquisition, :count).by(1)
      end

      it "assigns a newly created acquisition as @acquisition" do
        post :create, :acquisition => valid_attributes
        assigns(:acquisition).should be_a(Acquisition)
        assigns(:acquisition).should be_persisted
      end

      it "redirects to the created acquisition" do
        post :create, :acquisition => valid_attributes
        response.should redirect_to(Acquisition.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved acquisition as @acquisition" do
        # Trigger the behavior that occurs when invalid params are submitted
        Acquisition.any_instance.stub(:save).and_return(false)
        post :create, :acquisition => {}
        assigns(:acquisition).should be_a_new(Acquisition)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Acquisition.any_instance.stub(:save).and_return(false)
        post :create, :acquisition => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested acquisition" do
        acquisition = Acquisition.create! valid_attributes
        # Assuming there are no other acquisitions in the database, this
        # specifies that the Acquisition created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Acquisition.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => acquisition.id, :acquisition => {'these' => 'params'}
      end

      it "assigns the requested acquisition as @acquisition" do
        acquisition = Acquisition.create! valid_attributes
        put :update, :id => acquisition.id, :acquisition => valid_attributes
        assigns(:acquisition).should eq(acquisition)
      end

      it "redirects to the acquisition" do
        acquisition = Acquisition.create! valid_attributes
        put :update, :id => acquisition.id, :acquisition => valid_attributes
        response.should redirect_to(acquisition)
      end
    end

    describe "with invalid params" do
      it "assigns the acquisition as @acquisition" do
        acquisition = Acquisition.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Acquisition.any_instance.stub(:save).and_return(false)
        put :update, :id => acquisition.id.to_s, :acquisition => {}
        assigns(:acquisition).should eq(acquisition)
      end

      it "re-renders the 'edit' template" do
        acquisition = Acquisition.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Acquisition.any_instance.stub(:save).and_return(false)
        put :update, :id => acquisition.id.to_s, :acquisition => {}
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested acquisition" do
      acquisition = Acquisition.create! valid_attributes
      expect {
        delete :destroy, :id => acquisition.id.to_s
      }.to change(Acquisition, :count).by(-1)
    end

    it "redirects to the acquisitions list" do
      acquisition = Acquisition.create! valid_attributes
      delete :destroy, :id => acquisition.id.to_s
      response.should redirect_to(acquisitions_url)
    end
  end

end
