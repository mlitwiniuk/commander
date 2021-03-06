require_dependency 'commander/application_controller'

module Commander
  class UploadedFilesController < ApplicationController
    before_action :set_uploaded_file, only: [:show, :edit, :update, :destroy]

    # GET /uploaded_files
    def index
      @uploaded_files = UploadedFile.all
    end

    # GET /uploaded_files/1
    def show
    end

    # GET /uploaded_files/new
    def new
      @uploaded_file = UploadedFile.new
    end

    # GET /uploaded_files/1/edit
    def edit
    end

    # POST /uploaded_files
    def create
      @uploaded_file = UploadedFile.new(uploaded_file_params)

      if @uploaded_file.save
        redirect_to @uploaded_file, notice: 'Uploaded file was successfully created.'
      else
        render :new
      end
    end

    # PATCH/PUT /uploaded_files/1
    def update
      if @uploaded_file.update(uploaded_file_params)
        redirect_to @uploaded_file, notice: 'Uploaded file was successfully updated.'
      else
        render :edit
      end
    end

    # DELETE /uploaded_files/1
    def destroy
      @uploaded_file.destroy
      redirect_to uploaded_files_url, notice: 'Uploaded file was successfully destroyed.'
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_uploaded_file
        @uploaded_file = UploadedFile.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def uploaded_file_params
        params.require(:uploaded_file).permit(:file)
      end
  end
end
