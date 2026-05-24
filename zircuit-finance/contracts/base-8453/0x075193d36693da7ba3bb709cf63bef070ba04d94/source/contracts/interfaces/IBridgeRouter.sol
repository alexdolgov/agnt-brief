// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

interface IBridgeRouter {
    function bridge(
        address token,
        uint256 amount,
        uint256 destChainId,
        bytes32 _destAddress,
        bytes calldata extraData
    ) external;
}
