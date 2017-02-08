=begin
Rails.application.config.react.jsx_transform_options = {
  blacklist: ['spec.functionName', 'validation.react', 'strict'], # default options
  optional: [],  # pass extra babel options
  whitelist: ["useStrict"] # even more options
}
=end