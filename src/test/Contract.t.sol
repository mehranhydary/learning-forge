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
    // For the test to work, it must contain the name test (if it was just called example, 
    // forge test will not run it)
    
    function testExample() public {
        // assertEq can be found in ds-test/test.sol
        assertEq(a, 10);
    }

    // If I want to create a test that will fail, I can do this (add Fail to the function name)
    function testFailExample() public {
        assertEq(a, 9); // This shows up as a pass
    }
}
