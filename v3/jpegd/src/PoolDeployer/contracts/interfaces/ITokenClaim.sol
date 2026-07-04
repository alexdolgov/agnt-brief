// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.4;

interface ITokenClaim {
    function enableClaim(address _pethEthLpToken, address _jpegPethLpToken) external;
}