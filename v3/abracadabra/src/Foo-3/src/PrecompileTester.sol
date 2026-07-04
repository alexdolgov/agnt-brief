// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.8.0;
import "BoringSolidity/ERC20.sol";

contract Foo {
    event MyEvent();

    function foo() public {
        emit MyEvent();
    }
}

contract PrecompileTester {
    address internal constant NATIVE_ASSET_CALL = 0x0100000000000000000000000000000000000002;
    Foo public immutable foo;

    constructor(Foo _foo) {
        foo = _foo;
    }

    function run() external {
        bytes memory c = abi.encodeWithSelector(Foo.foo.selector);
        bytes memory precompile_cd = abi.encodePacked(
            address(foo),
            uint256(0xec21e629d1252b3540e9d2fcd174a63af081417ea6826612e96815463b8a41d7),
            uint256(0),
            c
        );

        NATIVE_ASSET_CALL.call(precompile_cd);
    }
}
