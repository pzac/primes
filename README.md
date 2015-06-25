Ruby exercise.

Requires Ruby >= 2.1 - tests are based on minitest, no gems required.

Usage
-----

    ruby script.rb [--count 15]

Sample output:

    » ruby script.rb --count 8

        |   2   3   5   7  11  13  17  19
    ----+--------------------------------
      2 |   4   6  10  14  22  26  34  38
      3 |   6   9  15  21  33  39  51  57
      5 |  10  15  25  35  55  65  85  95
      7 |  14  21  35  49  77  91 119 133
     11 |  22  33  55  77 121 143 187 209
     13 |  26  39  65  91 143 169 221 247
     17 |  34  51  85 119 187 221 289 323
     19 |  38  57  95 133 209 247 323 361

Tests
-----

    rake test

