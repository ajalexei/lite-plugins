-- mod-version:2 -- lite-xl 2.0
local syntax = require "core.syntax"

syntax.add {
  files = "%.odin$",
  comment = "//",
  patterns = {
    { pattern = "//.-\n",                 type = "comment"  },
    { pattern = { "/%*", "%*/" },         type = "comment"  },
    { pattern = { '"', '"', '\\' },       type = "string"   },
    { pattern = { "'", "'", '\\' },       type = "string"   },
    { pattern = { "`", "`" },             type = "string"   },
    { pattern = "0b[01_]+",               type = "number"   },
    { pattern = "0o[0-7_]+",              type = "number"   },
    { pattern = "0[dz][%d_]+",            type = "number"   },
    { pattern = "0x[%da-fA-F_]+",         type = "number"   },
    { pattern = "-?%d+[%d%._e]*i?",       type = "number"   },
    { pattern = "[<>~=+-*/]=",            type = "operator" },
    { pattern = "[%+%-=/%*%^%%<>!~|&:]",  type = "operator" },
    { pattern = "%$[%a_][%w_]*",          type = "operator" },
    { pattern = "[%a_][%w_]*%f[(]",       type = "function" },
    { pattern = "[#@][%a_][%w_]*",        type = "keyword2" },
    { pattern = "[#@]%b()",               type = "keyword2" },
    { pattern = "[%a_][%w_]*",            type = "symbol"   },
  },
  symbols = {
    -- Keywords
    ["package"]     = "keyword",
    ["import"]      = "keyword",
    ["foreign"]     = "keyword",
    ["when"]        = "keyword",
    ["if"]          = "keyword",
    ["else"]        = "keyword",
    ["for"]         = "keyword",
    ["defer"]       = "keyword",
    ["return"]      = "keyword",
    ["switch"]      = "keyword",
    ["case"]        = "keyword",
    ["in"]          = "keyword",
    ["not_in"]      = "keyword",
    ["do"]          = "keyword",
    ["break"]       = "keyword",
    ["continue"]    = "keyword",
    ["fallthrough"] = "keyword",
    ["proc"]        = "keyword",
    ["struct"]      = "keyword",
    ["union"]       = "keyword",
    ["enum"]        = "keyword",
    ["bit_set"]     = "keyword",
    ["map"]         = "keyword",
    ["dynamic"]     = "keyword",
    ["using"]       = "keyword",
    ["inline"]      = "keyword",
    ["no_inline"]   = "keyword",
    ["context"]     = "keyword",
    ["distinct"]    = "keyword",
    ["opaque"]      = "keyword",
    ["macro"]       = "keyword", -- Reserved, not yet used
    ["const"]       = "keyword", -- Reserved, not yet used
    -- Builtin procedures and directives
    ["cast"]        = "keyword2",
    ["auto_cast"]   = "keyword2",
    ["transmute"]   = "keyword2",
    ["len"]         = "keyword2",
    ["cap"]         = "keyword2",
    ["size_of"]     = "keyword2",
    ["align_of"]    = "keyword2",
    ["offset_of"]   = "keyword2",
    ["typeid_of"]   = "keyword2",
    ["type_of"]     = "keyword2",
    ["type_info_of"]   = "keyword2",
    ["type_info_base"] = "keyword2",
    ["swizzle"]     = "keyword2",
    ["complex"]     = "keyword2",
    ["real"]        = "keyword2",
    ["imag"]        = "keyword2",
    ["conj"]        = "keyword2",
    ["min"]         = "keyword2",
    ["max"]         = "keyword2",
    ["abs"]         = "keyword2",
    ["clamp"]       = "keyword2",
    ["assert"]      = "keyword2",
    -- Types
    ["rawptr"]      = "keyword2",
    ["typeid"]      = "keyword2",
    ["any"]         = "keyword2",
    ["string"]      = "keyword2",
    ["cstring"]     = "keyword2",
    ["int"]         = "keyword2",
    ["uint"]        = "keyword2",
    ["uintptr"]     = "keyword2",
    ["rune"]        = "keyword2",
    ["byte"]        = "keyword2",
    ["u8"]          = "keyword2",
    ["u16"]         = "keyword2",
    ["u32"]         = "keyword2",
    ["u64"]         = "keyword2",
    ["u128"]        = "keyword2",
    ["i8"]          = "keyword2",
    ["i16"]         = "keyword2",
    ["i32"]         = "keyword2",
    ["i64"]         = "keyword2",
    ["i128"]        = "keyword2",
    ["f16"]         = "keyword2",
    ["f32"]         = "keyword2",
    ["f64"]         = "keyword2",
    ["u16le"]       = "keyword2",
    ["u32le"]       = "keyword2",
    ["u64le"]       = "keyword2",
    ["u128le"]      = "keyword2",
    ["i16le"]       = "keyword2",
    ["i32le"]       = "keyword2",
    ["i64le"]       = "keyword2",
    ["i128le"]      = "keyword2",
    ["u16be"]       = "keyword2",
    ["u32be"]       = "keyword2",
    ["u64be"]       = "keyword2",
    ["u128be"]      = "keyword2",
    ["i16be"]       = "keyword2",
    ["i32be"]       = "keyword2",
    ["i64be"]       = "keyword2",
    ["i128be"]      = "keyword2",
    ["complex32"]   = "keyword2",
    ["complex64"]   = "keyword2",
    ["complex128"]  = "keyword2",
    ["quaternion128"]  = "keyword2",
    ["quaternion256"]  = "keyword2",
    ["bool"]        = "keyword2",
    ["b8"]          = "keyword2",
    ["b32"]         = "keyword2",
    ["b64"]         = "keyword2",
    ["b128"]        = "keyword2",
    -- Literals
    ["true"]        = "literal",
    ["false"]       = "literal",
    ["nil"]         = "literal",
  }
}
