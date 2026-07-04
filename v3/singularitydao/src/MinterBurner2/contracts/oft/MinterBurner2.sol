// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

import "@openzeppelin/contracts/access/AccessControl.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "./interfaces/IMintableBurnable2.sol";

/// @title ElevatedMinterBurner
/// @notice ElevatedMinterBurner is a periphery contract for minting and burning tokens and executing arbitrary calls.
contract MinterBurner2 is IMintableBurnable2,AccessControl {
    using SafeERC20 for IERC20;
    IMintableBurnable2 public immutable token;

    bytes32 public constant MINTER_ROLE = keccak256("MINTER_ROLE");

    constructor(IMintableBurnable2 token_) {
        token = token_;
        _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
    }

    function burnFrom(address from, uint256 amount) external override onlyRole (MINTER_ROLE)  {
        token.burnFrom(from, amount);
    }

    function mint(address to, uint256 amount) external override onlyRole (MINTER_ROLE)  {
        token.mint(to, amount);
    }

}