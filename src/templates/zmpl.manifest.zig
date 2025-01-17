// Zmpl template manifest.
// This file is automatically generated at build time. Manual edits will be discarded.
// This file should _not_ be stored in version control.
pub const templates = struct {
  pub const example = @import(".example.zmpl.compiled.zig");
  pub const example_with_array_data_lookup = @import(".example_with_array_data_lookup.zmpl.compiled.zig");
  pub const example_with_root_array = @import(".example_with_root_array.zmpl.compiled.zig");
  pub const example_with_deep_nesting = @import(".example_with_deep_nesting.zmpl.compiled.zig");
  pub const example_with_nested_data_lookup = @import(".example_with_nested_data_lookup.zmpl.compiled.zig");
  pub const example_with_zig_literal = @import(".example_with_zig_literal.zmpl.compiled.zig");
  pub const example_with_string_literal = @import(".example_with_string_literal.zmpl.compiled.zig");
  pub const example_with_if_statement = @import(".example_with_if_statement.zmpl.compiled.zig");
  pub const example_with_slug = @import(".example_with_[slug].zmpl.compiled.zig");
  pub const example_with_local_variable_reference = @import(".example_with_local_variable_reference.zmpl.compiled.zig");
  pub const example_with_quotes = @import(".example_with_quotes.zmpl.compiled.zig");
  pub const example_with_iteration = @import(".example_with_iteration.zmpl.compiled.zig");
};
