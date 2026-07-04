// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.24;

interface IL1GatewayRouter {
    function depositERC20(address _token, address _to, uint256 _amount, uint256 _gasLimit) external payable;
}
