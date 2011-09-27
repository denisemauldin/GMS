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

describe AssaysController do

  # This should return the minimal set of attributes required to create a valid
  # Assay. As you add validations to Assay, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end

  describe "GET index" do
    it "assigns all assays as @assays" do
      assay = Assay.create! valid_attributes
      get :index
      assigns(:assays).should eq([assay])
    end
  end

  describe "GET show" do
    it "assigns the requested assay as @assay" do
      assay = Assay.create! valid_attributes
      get :show, :id => assay.id.to_s
      assigns(:assay).should eq(assay)
    end
  end

  describe "GET new" do
    it "assigns a new assay as @assay" do
      get :new
      assigns(:assay).should be_a_new(Assay)
    end
  end

  describe "GET edit" do
    it "assigns the requested assay as @assay" do
      assay = Assay.create! valid_attributes
      get :edit, :id => assay.id.to_s
      assigns(:assay).should eq(assay)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Assay" do
        expect {
          post :create, :assay => valid_attributes
        }.to change(Assay, :count).by(1)
      end

      it "assigns a newly created assay as @assay" do
        post :create, :assay => valid_attributes
        assigns(:assay).should be_a(Assay)
        assigns(:assay).should be_persisted
      end

      it "redirects to the created assay" do
        post :create, :assay => valid_attributes
        response.should redirect_to(Assay.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved assay as @assay" do
        # Trigger the behavior that occurs when invalid params are submitted
        Assay.any_instance.stub(:save).and_return(false)
        post :create, :assay => {}
        assigns(:assay).should be_a_new(Assay)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Assay.any_instance.stub(:save).and_return(false)
        post :create, :assay => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested assay" do
        assay = Assay.create! valid_attributes
        # Assuming there are no other assays in the database, this
        # specifies that the Assay created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Assay.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => assay.id, :assay => {'these' => 'params'}
      end

      it "assigns the requested assay as @assay" do
        assay = Assay.create! valid_attributes
        put :update, :id => assay.id, :assay => valid_attributes
        assigns(:assay).should eq(assay)
      end

      it "redirects to the assay" do
        assay = Assay.create! valid_attributes
        put :update, :id => assay.id, :assay => valid_attributes
        response.should redirect_to(assay)
      end
    end

    describe "with invalid params" do
      it "assigns the assay as @assay" do
        assay = Assay.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Assay.any_instance.stub(:save).and_return(false)
        put :update, :id => assay.id.to_s, :assay => {}
        assigns(:assay).should eq(assay)
      end

      it "re-renders the 'edit' template" do
        assay = Assay.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Assay.any_instance.stub(:save).and_return(false)
        put :update, :id => assay.id.to_s, :assay => {}
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested assay" do
      assay = Assay.create! valid_attributes
      expect {
        delete :destroy, :id => assay.id.to_s
      }.to change(Assay, :count).by(-1)
    end

    it "redirects to the assays list" do
      assay = Assay.create! valid_attributes
      delete :destroy, :id => assay.id.to_s
      response.should redirect_to(assays_url)
    end
  end

end
