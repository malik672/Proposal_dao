// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/Counter.sol";

contract CounterTest is Test {
    uint256 number;
   

    Math public counter;
    function setUp() public {
       counter = new Math();
       counter.red(90);
       number = 42;
    }

    function testIncrement() public {
        assertEq(number, 42);
    }

    function testSender() public {
        vm.prank(address(0));
        counter.sender();
    }
}
  