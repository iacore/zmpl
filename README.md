# Zmpl

_Zmpl_ is a templating language for [Zig](https://ziglang) :lizard:

* Use _Zig_ code directly in templates for control flow.
* Simple and intuitive DSL for building _JSON_-compatible data objects.
* Compiles to _Zig_ code for syntax and type validation.

```zig
# src/templates/example.zmpl

if (std.mem.eql(u8, "zmpl is simple", "zmpl" ++ " is " ++ "simple")) {
  <div>Email: {.user.email}</div>
  <div>Token: {.auth.token}</div>
}
```

```zig
const zmpl = @import("zmpl");
const manifest = @import("templates/manifest.zig"); // Auto-generated by Zmpl.

test "readme example" {
    var data = zmpl.Data.init(allocator);
    defer data.deinit();

    var body = try data.object();
    var user = try data.object();
    var auth = try data.object();

    try user.add("email", data.string("user@example.com"));
    try auth.add("token", data.string("abc123-456-def"));

    try body.add("user", user.*);
    try body.add("auth", auth.*);

    const output = try manifest.templates.example.render(&data);
    defer allocator.free(output);

    try std.testing.expectEqualStrings(
        \\  <div>Email: user@example.com</div>
        \\  <div>Token: abc123-456-def</div>
        \\
    , output);
}
```

## License

[MIT](LICENSE)
