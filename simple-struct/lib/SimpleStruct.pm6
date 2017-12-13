use v6;

use NativeCall;

unit package SimpleStruct:ver<0.0.1>:auth<github:manchicken>;

class OneStringAndOneInt32 is repr("CStruct") {
  has Str $.oneString;
  has int32 $.oneInt32;

  submethod TWEAK {
    $!oneString := Str.new;
    $!oneInt32 = 0;
  }

  sub init_struct(OneStringAndOneInt32 is rw, Str, int32) is native('simplestruct') { * }
  method init(:$inOneString, :$inOneInt) {
    say "I have «$inOneString» and «$inOneInt».";
    init_struct(self, $inOneString, $inOneInt);
  }

  sub string_from_struct(OneStringAndOneInt32)
    returns Str
    is native('simplestruct')
    { * }
  method string_from_struct(-->Str) {
    return string_from_struct(self)
  }

  sub int32_from_struct(OneStringAndOneInt32)
    returns int32
    is native('simplestruct')
    { * }
  method int32_from_struct(-->Int) {
    return int32_from_struct(self)
  }

  sub update_string_for_struct(OneStringAndOneInt32, Str)
    is native('simplestruct')
    { * }
  method update_string_for_struct(:$str) {
    update_string_for_struct(self, $str);
  }
}
