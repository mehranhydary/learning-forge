// SPDX-License-Identifier: Unlicense
pragma solidity 0.8.10;

// Forge will help me learn how to write tests in Solidity

// DS Test gives my test contract access to testing functions and events (from ds-test/test.sol).
// An example of this is the assertTrue function being used in DSTest. There's other types of assert
// functions available as well.

import "ds-test/test.sol";

contract ContractTest is DSTest {
    // This is a special fucntion that will be called before any tests are run
    uint a;
    
    function setUp() public {
        a = 10;
    }
    // Each test you create will be a function
    function testExample() public {
        // assertEq can be found in ds-test/test.sol
        assertEq(a, 10);
    }
}
