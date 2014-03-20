class Filmy < ActiveRecord::Base
  mount_uploader :obrazki, ObrazkiUploader
end
