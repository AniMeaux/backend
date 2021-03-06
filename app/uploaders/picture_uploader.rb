class PictureUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave

  process :convert => 'png'
  process :tags => ['picture']

  version :standard do
    process :resize_to_fill => [100, 150, :north]
  end

  version :active_admin do
    resize_to_fit(200, 180)
  end

  version :thumbnail do
    resize_to_fit(50, 50)
  end
end
