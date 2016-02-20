module Commander
  class FileUploader < CarrierWave::Uploader::Base
    # Choose what kind of storage to use for this uploader:
    storage :file
    # storage :fog

    def store_dir
      "commander/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
    end
  end
end
