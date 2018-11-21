# Changelog

## Version 0.2.1

* Update doc

## Version 0.2.0

* Added the behaviour to ignore case_sensitive to string values, when "f", "false", "off".
* Added the alias `.to_b`, `.to_boolean` to the default `.to_bool`.

## Version 0.1.0

First version. Created the `to_bool` behaviour to the follow classes:

* String
* Integer
* Float
* Array
* Hash
* TrueClass
* FalseClass
* NilClass

False values: `[nil, false, 0, 0.0, "", "0", "f", "F", "false", "FALSE", "off", "OFF", [], {}]`
