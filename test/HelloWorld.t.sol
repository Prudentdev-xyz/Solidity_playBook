// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test} from "forge-std/Test.sol";
import {HelloWorld} from "../src/HelloWorld.sol";

contract HelloWorldTest is Test {
    HelloWorld public helloWorld;

    function setUp() public {
        helloWorld = new HelloWorld();
        (helloWorld.greet(), "Hello World");
    }

    function test_Increment() public {
        helloWorld.increment();
        assertEq(helloWorld.number(), 1);
    }

    function testFuzz_SetNumber(uint256 x) public {
        helloWorld.setNumber(x);
        assertEq(helloWorld.number(), x);
    }
}
