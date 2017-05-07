class Place < ApplicationRecord
   mount_uploader :image, ImageUploader
    validates_processing_of :image
    validate :image_size_validation
     
    # The module is for the mount_uploader which is required for the files and allows for input validation 
     
    private
      def image_size_validation
        errors[:image] << "should be less than 500KB" if image.size > 0.5.megabytes
      end
end
