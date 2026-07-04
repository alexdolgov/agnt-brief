// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

import "@openzeppelin/contracts/access/AccessControl.sol";
import "./interfaces/IMintableBurnable.sol";

/// @title ElevatedMinterBurner
/// @notice ElevatedMinterBurner is a periphery contract for minting and burning tokens and executing arbitrary calls.
contract MinterBurner is IMintableBurnable,AccessControl {
    IMintableBurnable public immutable token;

    bytes32 public constant MINTER_ROLE = keccak256("MINTER_ROLE");

    constructor(IMintableBurnable token_) {
        token = token_;
        _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
    }

    function burn(address from, uint256 amount) external override onlyRole (MINTER_ROLE) returns (bool) {
        return token.burn(from, amount);
    }

    function mint(address to, uint256 amount) external override onlyRole (MINTER_ROLE) returns (bool) {
        return token.mint(to, amount);
    }

}