class ImageInput < SimpleForm::Inputs::Base
  def input(wrapper_options)
    merged_input_options = merge_wrapper_options(input_html_options, wrapper_options)

    merged_input_options.store :accept, "image/*"
    merged_input_options.store :capture, "camera"

    "#{@builder.file_field(attribute_name, merged_input_options)}".html_safe
  end
end