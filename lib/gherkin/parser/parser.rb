#
# DO NOT MODIFY!!!!
# This file is automatically generated by Racc 1.4.7
# from Racc grammer file "".
#

require 'racc/parser.rb'

  require_relative "lexer"
  require_relative "../ast"

module Gherkin
  class Parser < Racc::Parser

module_eval(<<'...end gherkin.y/module_eval...', 'gherkin.y', 97)

  def parse(input)
    @yydebug = true if ENV['DEBUG_RACC']
    scan_str(input)
  end
...end gherkin.y/module_eval...
##### State transition tables begin ###

racc_action_table = [
    14,     3,    11,    13,    14,    25,    14,    39,    11,    13,
    37,    30,    31,    32,    33,    34,    14,    14,    15,     3,
     7,    30,    31,    32,    33,    34,    14,    26,    23,     3,
    21,    30,    31,    32,    33,    34,    30,    31,    32,    33,
    34,    20,     3,     3,    41,    14,    42,     3,    18,    45,
     8,     3,    14,     3,    14,     3 ]

racc_action_check = [
    19,    12,     9,     9,    24,    12,    48,    24,     2,     2,
    19,    48,    48,    48,    48,    48,    40,     4,     4,     0,
     0,    40,    40,    40,    40,    40,    38,    15,    11,    18,
     8,    38,    38,    38,    38,    38,    17,    17,    17,    17,
    17,     7,     6,    28,    29,    35,    36,    37,     5,    39,
     1,    42,    43,    45,    47,    23 ]

racc_action_pointer = [
    17,    50,     3,   nil,    15,    44,    40,    29,    30,    -3,
   nil,    16,    -1,   nil,   nil,    15,   nil,    29,    27,    -2,
   nil,   nil,   nil,    53,     2,   nil,   nil,   nil,    41,    32,
   nil,   nil,   nil,   nil,   nil,    43,    34,    45,    24,    37,
    14,   nil,    49,    50,   nil,    51,   nil,    52,     4,   nil ]

racc_action_default = [
   -31,   -31,    -1,    -3,   -31,    -5,    -7,   -31,   -31,    -2,
   -25,   -31,   -31,   -29,    -4,   -31,    -6,   -31,   -31,    -8,
   -10,    50,   -26,   -31,   -31,   -30,   -11,   -14,   -16,   -31,
   -20,   -21,   -22,   -23,   -24,   -15,    -9,   -31,   -31,   -31,
   -17,   -19,   -31,   -12,   -27,   -31,   -18,   -13,   -31,   -28 ]

racc_goto_table = [
     4,    27,    10,    16,     5,     9,    19,     6,    36,    22,
    17,     2,    24,     1,   nil,   nil,   nil,   nil,    35,   nil,
   nil,   nil,    44,    38,    46,   nil,   nil,   nil,    40,   nil,
   nil,   nil,    49,   nil,   nil,   nil,   nil,    43,   nil,   nil,
   nil,   nil,    47,   nil,   nil,    48 ]

racc_goto_check = [
     4,    10,    13,     6,     5,     3,     4,     7,     8,    13,
     9,     2,     4,     1,   nil,   nil,   nil,   nil,     4,   nil,
   nil,   nil,    10,     4,    10,   nil,   nil,   nil,     4,   nil,
   nil,   nil,    10,   nil,   nil,   nil,   nil,     4,   nil,   nil,
   nil,   nil,     4,   nil,   nil,     4 ]

racc_goto_pointer = [
   nil,    13,    11,     3,     0,     4,    -2,     7,   -11,     5,
   -16,   nil,   nil,     0,   nil ]

racc_goto_default = [
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,    28,    29,   nil,    12 ]

racc_reduce_table = [
  0, 0, :racc_error,
  1, 14, :_reduce_1,
  2, 14, :_reduce_2,
  1, 17, :_reduce_none,
  2, 17, :_reduce_none,
  1, 15, :_reduce_5,
  2, 15, :_reduce_6,
  1, 18, :_reduce_7,
  2, 18, :_reduce_8,
  3, 18, :_reduce_9,
  2, 20, :_reduce_10,
  3, 20, :_reduce_11,
  2, 21, :_reduce_none,
  3, 21, :_reduce_none,
  2, 19, :_reduce_14,
  2, 22, :_reduce_15,
  1, 23, :_reduce_16,
  2, 23, :_reduce_17,
  3, 23, :_reduce_18,
  2, 24, :_reduce_19,
  1, 25, :_reduce_none,
  1, 25, :_reduce_none,
  1, 25, :_reduce_none,
  1, 25, :_reduce_none,
  1, 25, :_reduce_none,
  1, 16, :_reduce_25,
  2, 16, :_reduce_26,
  4, 26, :_reduce_27,
  6, 26, :_reduce_28,
  1, 27, :_reduce_29,
  2, 27, :_reduce_30 ]

racc_reduce_n = 31

racc_shift_n = 50

racc_token_table = {
  false => 0,
  :error => 1,
  :NEWLINE => 2,
  :FEATURE => 3,
  :BACKGROUND => 4,
  :SCENARIO => 5,
  :TAG => 6,
  :GIVEN => 7,
  :WHEN => 8,
  :THEN => 9,
  :AND => 10,
  :BUT => 11,
  :TEXT => 12 }

racc_nt_base = 13

racc_use_result_var = true

Racc_arg = [
  racc_action_table,
  racc_action_check,
  racc_action_default,
  racc_action_pointer,
  racc_goto_table,
  racc_goto_check,
  racc_goto_default,
  racc_goto_pointer,
  racc_nt_base,
  racc_reduce_table,
  racc_token_table,
  racc_shift_n,
  racc_reduce_n,
  racc_use_result_var ]

Racc_token_to_s_table = [
  "$end",
  "error",
  "NEWLINE",
  "FEATURE",
  "BACKGROUND",
  "SCENARIO",
  "TAG",
  "GIVEN",
  "WHEN",
  "THEN",
  "AND",
  "BUT",
  "TEXT",
  "$start",
  "Root",
  "Feature",
  "Scenarios",
  "Newline",
  "FeatureHeader",
  "Background",
  "FeatureName",
  "Description",
  "BackgroundHeader",
  "Steps",
  "Step",
  "Keyword",
  "Scenario",
  "Tags" ]

Racc_debug_parser = false

##### State transition tables end #####

# reduce 0 omitted

module_eval(<<'.,.,', 'gherkin.y', 14)
  def _reduce_1(val, _values, result)
     result = val[0]; 
    result
  end
.,.,

module_eval(<<'.,.,', 'gherkin.y', 17)
  def _reduce_2(val, _values, result)
     result = val[0]; result.scenarios = val[1] 
    result
  end
.,.,

# reduce 3 omitted

# reduce 4 omitted

module_eval(<<'.,.,', 'gherkin.y', 26)
  def _reduce_5(val, _values, result)
     result = val[0] 
    result
  end
.,.,

module_eval(<<'.,.,', 'gherkin.y', 28)
  def _reduce_6(val, _values, result)
     result = val[0]; result.background = val[1] 
    result
  end
.,.,

module_eval(<<'.,.,', 'gherkin.y', 32)
  def _reduce_7(val, _values, result)
     result = val[0] 
    result
  end
.,.,

module_eval(<<'.,.,', 'gherkin.y', 33)
  def _reduce_8(val, _values, result)
     result = val[0] 
    result
  end
.,.,

module_eval(<<'.,.,', 'gherkin.y', 35)
  def _reduce_9(val, _values, result)
     result = val[0] 
    result
  end
.,.,

module_eval(<<'.,.,', 'gherkin.y', 39)
  def _reduce_10(val, _values, result)
     result = AST::Feature.new(val[1]); result.pos(filename, lineno) 
    result
  end
.,.,

module_eval(<<'.,.,', 'gherkin.y', 40)
  def _reduce_11(val, _values, result)
     result = AST::Feature.new(val[2]); result.pos(filename, lineno) 
    result
  end
.,.,

# reduce 12 omitted

# reduce 13 omitted

module_eval(<<'.,.,', 'gherkin.y', 50)
  def _reduce_14(val, _values, result)
     result = val[0]; result.steps = val[1] 
    result
  end
.,.,

module_eval(<<'.,.,', 'gherkin.y', 54)
  def _reduce_15(val, _values, result)
     result = AST::Background.new; result.pos(filename, lineno) 
    result
  end
.,.,

module_eval(<<'.,.,', 'gherkin.y', 58)
  def _reduce_16(val, _values, result)
     result = [val[0]] 
    result
  end
.,.,

module_eval(<<'.,.,', 'gherkin.y', 59)
  def _reduce_17(val, _values, result)
     result = [val[0]] 
    result
  end
.,.,

module_eval(<<'.,.,', 'gherkin.y', 60)
  def _reduce_18(val, _values, result)
     val[2].unshift(val[0]); result = val[2] 
    result
  end
.,.,

module_eval(<<'.,.,', 'gherkin.y', 64)
  def _reduce_19(val, _values, result)
     result = AST::Step.new(val[1], val[0]); result.pos(filename, lineno) 
    result
  end
.,.,

# reduce 20 omitted

# reduce 21 omitted

# reduce 22 omitted

# reduce 23 omitted

# reduce 24 omitted

module_eval(<<'.,.,', 'gherkin.y', 72)
  def _reduce_25(val, _values, result)
     result = [val[0]] 
    result
  end
.,.,

module_eval(<<'.,.,', 'gherkin.y', 73)
  def _reduce_26(val, _values, result)
     result = val[0] << val[1] 
    result
  end
.,.,

module_eval(<<'.,.,', 'gherkin.y', 78)
  def _reduce_27(val, _values, result)
     result = AST::Scenario.new(val[1], val[3]); result.pos(filename, lineno - 1) 
    result
  end
.,.,

module_eval(<<'.,.,', 'gherkin.y', 81)
  def _reduce_28(val, _values, result)
     result = AST::Scenario.new(val[3], val[5], val[0]); result.pos(filename, lineno - 2) 
    result
  end
.,.,

module_eval(<<'.,.,', 'gherkin.y', 85)
  def _reduce_29(val, _values, result)
     result = [AST::Tag.new(val[0])] 
    result
  end
.,.,

module_eval(<<'.,.,', 'gherkin.y', 86)
  def _reduce_30(val, _values, result)
     result = val[0] << AST::Tag.new(val[1]) 
    result
  end
.,.,

def _reduce_none(val, _values, result)
  val[0]
end

  end   # class Parser
  end   # module Gherkin
