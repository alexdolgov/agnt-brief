// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

abstract contract FeeM {
    /// @dev Register my contract on Sonic FeeM
    function registerMe() internal {
        (bool _success, ) = address(0xDC2B0D2Dd2b7759D97D50db4eabDC36973110830)
            .call(abi.encodeWithSignature("selfRegister(uint256)", 28));
        require(_success, "FeeM registration failed");
    }
}
