use v6;
use Test;
plan 1;

use lib 'lib';

use SimpleStruct;

subtest {
  plan 6;

  my $one = SimpleStruct::AStringAndAnInt.new();
  $one.init(:a_string('some-string'), :an_int(857789789));
  is $one.a_string, 'some-string', 'Make sure we got the string...';
  is $one.an_int, 857789789, 'Make sure we got the integer...';
  is $one.string_from_struct(), 'some-string', 'Make sure that we got the string from C...';
  is $one.int32_from_struct(), 857789789, 'Make sure that we got the int from C...';

  $one.update_string_for_struct(:str('updated-now'));
  is $one.a_string, 'updated-now', 'Make sure that we got the updated string from properties...';
  is $one.string_from_struct(), 'updated-now', 'Make sure that we got the updated string from C...';
}

done-testing;
