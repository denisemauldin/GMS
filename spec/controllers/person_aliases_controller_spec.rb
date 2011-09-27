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

describe PersonAliasesController do

  # This should return the minimal set of attributes required to create a valid
  # PersonAlias. As you add validations to PersonAlias, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end

  describe "GET index" do
    it "assigns all person_aliases as @person_aliases" do
      person_alias = PersonAlias.create! valid_attributes
      get :index
      assigns(:person_aliases).should eq([person_alias])
    end
  end

  describe "GET show" do
    it "assigns the requested person_alias as @person_alias" do
      person_alias = PersonAlias.create! valid_attributes
      get :show, :id => person_alias.id.to_s
      assigns(:person_alias).should eq(person_alias)
    end
  end

  describe "GET new" do
    it "assigns a new person_alias as @person_alias" do
      get :new
      assigns(:person_alias).should be_a_new(PersonAlias)
    end
  end

  describe "GET edit" do
    it "assigns the requested person_alias as @person_alias" do
      person_alias = PersonAlias.create! valid_attributes
      get :edit, :id => person_alias.id.to_s
      assigns(:person_alias).should eq(person_alias)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new PersonAlias" do
        expect {
          post :create, :person_alias => valid_attributes
        }.to change(PersonAlias, :count).by(1)
      end

      it "assigns a newly created person_alias as @person_alias" do
        post :create, :person_alias => valid_attributes
        assigns(:person_alias).should be_a(PersonAlias)
        assigns(:person_alias).should be_persisted
      end

      it "redirects to the created person_alias" do
        post :create, :person_alias => valid_attributes
        response.should redirect_to(PersonAlias.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved person_alias as @person_alias" do
        # Trigger the behavior that occurs when invalid params are submitted
        PersonAlias.any_instance.stub(:save).and_return(false)
        post :create, :person_alias => {}
        assigns(:person_alias).should be_a_new(PersonAlias)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        PersonAlias.any_instance.stub(:save).and_return(false)
        post :create, :person_alias => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested person_alias" do
        person_alias = PersonAlias.create! valid_attributes
        # Assuming there are no other person_aliases in the database, this
        # specifies that the PersonAlias created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        PersonAlias.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => person_alias.id, :person_alias => {'these' => 'params'}
      end

      it "assigns the requested person_alias as @person_alias" do
        person_alias = PersonAlias.create! valid_attributes
        put :update, :id => person_alias.id, :person_alias => valid_attributes
        assigns(:person_alias).should eq(person_alias)
      end

      it "redirects to the person_alias" do
        person_alias = PersonAlias.create! valid_attributes
        put :update, :id => person_alias.id, :person_alias => valid_attributes
        response.should redirect_to(person_alias)
      end
    end

    describe "with invalid params" do
      it "assigns the person_alias as @person_alias" do
        person_alias = PersonAlias.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        PersonAlias.any_instance.stub(:save).and_return(false)
        put :update, :id => person_alias.id.to_s, :person_alias => {}
        assigns(:person_alias).should eq(person_alias)
      end

      it "re-renders the 'edit' template" do
        person_alias = PersonAlias.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        PersonAlias.any_instance.stub(:save).and_return(false)
        put :update, :id => person_alias.id.to_s, :person_alias => {}
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested person_alias" do
      person_alias = PersonAlias.create! valid_attributes
      expect {
        delete :destroy, :id => person_alias.id.to_s
      }.to change(PersonAlias, :count).by(-1)
    end

    it "redirects to the person_aliases list" do
      person_alias = PersonAlias.create! valid_attributes
      delete :destroy, :id => person_alias.id.to_s
      response.should redirect_to(person_aliases_url)
    end
  end

end
