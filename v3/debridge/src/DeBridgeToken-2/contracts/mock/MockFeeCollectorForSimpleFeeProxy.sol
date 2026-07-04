// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

import "../periphery/SimpleFeeProxy.sol";

contract MockFeeCollectorForSimpleFeeProxy {
    function withdrawFees(
        SimpleFeeProxy _simpleFeeProxy,
        address[] calldata _tokens
    ) external {
        _simpleFeeProxy.withdrawFees(_tokens);
    }
}