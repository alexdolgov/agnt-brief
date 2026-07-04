// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;

import "./IWETH.sol";

interface IRouter {
    error CallToNonContract(address target);

    function externalCall(
        address _token,
        uint256 _amount,
        address _receiveSide,
        bytes calldata _calldata,
        uint256 _offset
    ) external;

    function transferNative(IWETH token, address to, uint256 amount) external;
}