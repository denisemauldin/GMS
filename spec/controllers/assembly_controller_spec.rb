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

describe AssembliesController do

  describe "GET index" do
    it "assigns all assemblies as @assemblies" do
      assembly = create(:assembly)
      get :index
      assigns(:assemblies).should eq([assembly])
    end
  end

  describe "GET show" do
    it "assigns the requested assembly as @assembly" do
      assembly = create(:assembly)
      get :show, :id => assembly.id.to_s
      assigns(:assembly).should eq(assembly)
    end
  end

  describe "GET new" do
    it "assigns a new assembly as @assembly" do
      get :new
      assigns(:assembly).should be_a_new(Assembly)
    end
  end

  describe "GET edit" do
    it "assigns the requested assembly as @assembly" do
      assembly = create(:assembly)
      get :edit, :id => assembly.id.to_s
      assigns(:assembly).should eq(assembly)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Assembly" do
        expect {
          post :create, :assembly => build(:assembly).attributes
        }.to change(Assembly, :count).by(1)
      end

      it "assigns a newly created assembly as @assembly" do
        post :create, :assembly => build(:assembly).attributes
        assigns(:assembly).should be_a(Assembly)
        assigns(:assembly).should be_persisted
      end

      it "redirects to the created assembly" do
        post :create, :assembly => build(:assembly).attributes 
        response.should redirect_to(Assembly.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved assembly as @assembly" do
        # Trigger the behavior that occurs when invalid params are submitted
        Assembly.any_instance.stub(:save).and_return(false)
        post :create, :assembly => {}
        assigns(:assembly).should be_a_new(Assembly)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Assembly.any_instance.stub(:save).and_return(false)
        post :create, :assembly => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested assembly" do
        assembly = create(:assembly)
        # Assuming there are no other assemblies in the database, this
        # specifies that the Assembly created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Assembly.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => assembly.id, :assembly => {'these' => 'params'}
      end

      it "assigns the requested assembly as @assembly" do
        assembly = create(:assembly)
        put :update, :id => assembly.id, :assembly => build(:assembly).attributes
        assigns(:assembly).should eq(assembly)
      end

      it "redirects to the assembly" do
        assembly = create(:assembly)
        put :update, :id => assembly.id, :assembly => build(:assembly).attributes
        response.should redirect_to(assembly)
      end
    end

    describe "with invalid params" do
      it "assigns the assembly as @assembly" do
        assembly = create(:assembly)
        # Trigger the behavior that occurs when invalid params are submitted
        Assembly.any_instance.stub(:save).and_return(false)
        put :update, :id => assembly.id.to_s, :assembly => {}
        assigns(:assembly).should eq(assembly)
      end

      it "re-renders the 'edit' template" do
        assembly = create(:assembly)
        # Trigger the behavior that occurs when invalid params are submitted
        Assembly.any_instance.stub(:save).and_return(false)
        put :update, :id => assembly.id.to_s, :assembly => {}
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested assembly" do
      assembly = create(:assembly)
      expect {
        delete :destroy, :id => assembly.id.to_s
      }.to change(Assembly, :count).by(-1)
    end

    it "redirects to the assemblies list" do
      assembly = create(:assembly)
      delete :destroy, :id => assembly.id.to_s
      response.should redirect_to(assemblies_url)
    end
  end

end
