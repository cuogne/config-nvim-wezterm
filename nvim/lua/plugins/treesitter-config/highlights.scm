; Highlight phần sau dấu chấm (field_identifier)
(field_expression
  field: (field_identifier) @field_after_dot
)
; Highlight tên lớp
(class_specifier
  name: (type_identifier) @type 
)

; Highlight tên hàm
(function_declarator
  declarator: (identifier) @function
)

; Highlight biến
(field_identifier) @variable
(identifier) @variable

