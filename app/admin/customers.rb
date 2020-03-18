ActiveAdmin.register Customer do
   permit_params :fullName, :phoneNumber, :emailAddress, :notes, :image

  form do |f|
    f.semantic_errors
    f.inputs
    f.inputs do
      f.input :image, as: :file
    end
    f.actions
  end
end
