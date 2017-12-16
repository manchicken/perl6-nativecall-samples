use v6;

use NativeCall;

unit package SimpleStruct:ver<0.0.1>:auth<github:manchicken>;

class AStringAndAnInt is repr("CStruct") {
  has Str $.a_string;
  has int32 $.an_int32;

  submethod TWEAK {
    $!a_string := Str.new;
    $!an_int32 = 0;
  }

  sub init_struct(AStringAndAnInt is rw, Str, int32) is native('simplestruct') { * }
  method init(:$a_string, :$an_int) {
    say "I have «$a_string» and «$an_int».";
    init_struct(self, $a_string, $an_int);
  }

  sub string_from_struct(AStringAndAnInt)
    returns Str
    is native('simplestruct')
    { * }
  method string_from_struct(-->Str) {
    return string_from_struct(self)
  }

  sub int32_from_struct(AStringAndAnInt)
    returns int32
    is native('simplestruct')
    { * }
  method int32_from_struct(-->Int) {
    return int32_from_struct(self)
  }

  sub update_string_for_struct(AStringAndAnInt, Str)
    is native('simplestruct')
    { * }
  method update_string_for_struct(:$str) {
    update_string_for_struct(self, $str);
  }
}
