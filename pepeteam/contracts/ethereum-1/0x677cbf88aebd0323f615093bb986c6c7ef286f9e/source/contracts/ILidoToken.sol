// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

interface ILidoToken {
    function submit(address _referral) external payable returns (uint256);

    function approve(address spender_, uint256 amount_) external returns (bool);
}
