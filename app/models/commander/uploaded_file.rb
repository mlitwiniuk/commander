module Commander
  class UploadedFile < ActiveRecord::Base
    mount_uploader :file, FileUploader

    ## VALIDATIONS
    validates :file, presence: true

    def to_s
      file
    end
  end
end
