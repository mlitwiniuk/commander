require 'spec_helper'

module Commander
  RSpec.describe UploadedFilesController, type: :controller do

    let(:valid_attributes) {
      FactoryGirl.attributes_for(:uploaded_file)
    }

    let(:invalid_attributes) {
      {}
    }

    let(:valid_session) { {} }

    describe "GET #index" do
      it "assigns all uploaded_files as @uploaded_files" do
        uploaded_file = UploadedFile.create! valid_attributes
        get :index, {}, valid_session
        expect(assigns(:uploaded_files)).to eq([uploaded_file])
      end
    end

    describe "GET #show" do
      it "assigns the requested uploaded_file as @uploaded_file" do
        uploaded_file = UploadedFile.create! valid_attributes
        get :show, {:id => uploaded_file.to_param}, valid_session
        expect(assigns(:uploaded_file)).to eq(uploaded_file)
      end
    end

    describe "GET #new" do
      it "assigns a new uploaded_file as @uploaded_file" do
        get :new, {}, valid_session
        expect(assigns(:uploaded_file)).to be_a_new(UploadedFile)
      end
    end

    describe "GET #edit" do
      it "assigns the requested uploaded_file as @uploaded_file" do
        uploaded_file = UploadedFile.create! valid_attributes
        get :edit, {:id => uploaded_file.to_param}, valid_session
        expect(assigns(:uploaded_file)).to eq(uploaded_file)
      end
    end

    describe "POST #create" do
      context "with valid params" do
        it "creates a new UploadedFile" do
          expect {
            post :create, {:uploaded_file => valid_attributes}, valid_session
          }.to change(UploadedFile, :count).by(1)
        end

        it "assigns a newly created uploaded_file as @uploaded_file" do
          post :create, {:uploaded_file => valid_attributes}, valid_session
          expect(assigns(:uploaded_file)).to be_a(UploadedFile)
          expect(assigns(:uploaded_file)).to be_persisted
        end

        it "redirects to the created uploaded_file" do
          post :create, {:uploaded_file => valid_attributes}, valid_session
          expect(response).to redirect_to(UploadedFile.last)
        end
      end

      context "with invalid params" do
        it "assigns a newly created but unsaved uploaded_file as @uploaded_file" do
          post :create, {:uploaded_file => invalid_attributes}, valid_session
          expect(assigns(:uploaded_file)).to be_a_new(UploadedFile)
        end

        it "re-renders the 'new' template" do
          post :create, {:uploaded_file => invalid_attributes}, valid_session
          expect(response).to render_template("new")
        end
      end
    end

    describe "PUT #update" do
      context "with valid params" do
        let(:new_attributes) {
          skip("Add a hash of attributes valid for your model")
        }

        it "updates the requested uploaded_file" do
          uploaded_file = UploadedFile.create! valid_attributes
          put :update, {:id => uploaded_file.to_param, :uploaded_file => new_attributes}, valid_session
          uploaded_file.reload
          skip("Add assertions for updated state")
        end

        it "assigns the requested uploaded_file as @uploaded_file" do
          uploaded_file = UploadedFile.create! valid_attributes
          put :update, {:id => uploaded_file.to_param, :uploaded_file => valid_attributes}, valid_session
          expect(assigns(:uploaded_file)).to eq(uploaded_file)
        end

        it "redirects to the uploaded_file" do
          uploaded_file = UploadedFile.create! valid_attributes
          put :update, {:id => uploaded_file.to_param, :uploaded_file => valid_attributes}, valid_session
          expect(response).to redirect_to(uploaded_file)
        end
      end

      context "with invalid params" do
        it "assigns the uploaded_file as @uploaded_file" do
          uploaded_file = UploadedFile.create! valid_attributes
          put :update, {:id => uploaded_file.to_param, :uploaded_file => invalid_attributes}, valid_session
          expect(assigns(:uploaded_file)).to eq(uploaded_file)
        end

        it "re-renders the 'edit' template" do
          uploaded_file = UploadedFile.create! valid_attributes
          put :update, {:id => uploaded_file.to_param, :uploaded_file => invalid_attributes}, valid_session
          expect(response).to render_template("edit")
        end
      end
    end

    describe "DELETE #destroy" do
      it "destroys the requested uploaded_file" do
        uploaded_file = UploadedFile.create! valid_attributes
        expect {
          delete :destroy, {:id => uploaded_file.to_param}, valid_session
        }.to change(UploadedFile, :count).by(-1)
      end

      it "redirects to the uploaded_files list" do
        uploaded_file = UploadedFile.create! valid_attributes
        delete :destroy, {:id => uploaded_file.to_param}, valid_session
        expect(response).to redirect_to(uploaded_files_url)
      end
    end

  end
end
