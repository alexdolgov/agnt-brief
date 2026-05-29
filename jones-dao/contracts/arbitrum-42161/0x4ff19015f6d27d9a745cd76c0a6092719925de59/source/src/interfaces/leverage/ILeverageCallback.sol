// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

interface ILeverageCallback {
    function enforceAction(uint8 _action) external;

    function depositCallback(uint256 _jGM) external;

    function withdrawalCallback(uint256 _usdc) external;
}
