// SPDX-License-Identifier: Unlicense
pragma solidity 0.8.10;

// Forge will help me learn how to write tests in Solidity

// DS Test gives my test contract access to testing functions and events (from ds-test/test.sol).
// An example of this is the assertTrue function being used in DSTest. There's other types of assert
// functions available as well.

import "ds-test/test.sol";

// Import your contract(s)
import "../Contract.sol";

// Adding a dummy contract to id how the prank cheatcode is used
contract Foo {
  function bar() external {
    require(msg.sender == address(1), "Wrong caller");
  }
}

interface Vm { 
  function prank(address) external;
}

contract ContractTest is DSTest {
  // Address being passed in hahs of address(bytes20(uint160(uint256(keccak256('hevm cheat code')))))
  Vm vm = Vm(0x7109709ECfa91a80626fF3989D68f67F5b1DD12D);
  Foo foo;

  
  function setUp() public {
    foo = new Foo();
  }

  function testBar() public {
    // We can use vm.prank to set the address of msg.sender
    vm.prank(address(1));
    foo.bar();
  }

}
