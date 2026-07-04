// SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

import {IBurner} from "src/interfaces/IBurner.sol";
import {AccessControl} from "@openzeppelin/access/AccessControl.sol";
import {IERC20} from "@openzeppelin/interfaces/IERC20.sol";

/// @notice A Burner Contract
/// @dev This contract does nothing but burns token
///     - Token transfers into this contract can only then be transferred to the dead address
///     - Only the DAO owner / the default amdin can call the burn function
///     - The burner contract is not upgradeable
contract Burner is IBurner, AccessControl {
    bytes32 internal constant DAO_ROLE_PREFIX = keccak256("DAO_ROLE_");
    address internal constant DEAD_ADDRESS = address(0x000000000000000000000000000000000000dEaD);

    constructor(address initAdmin) {
        _setupRole(DEFAULT_ADMIN_ROLE, initAdmin);
    }

    /// @inheritdoc IBurner
    function burn(address token) external {
        // the msg.sender must either have the default admin role or the DAO role of the token
        require(
            hasRole(DEFAULT_ADMIN_ROLE, msg.sender) || hasRole(_daoRole(token), msg.sender), "Burner: not authorized"
        );

        // burn all the balance of the token
        IERC20(token).transfer(DEAD_ADDRESS, IERC20(token).balanceOf(address(this)));

        emit Burn(token, IERC20(token).balanceOf(address(this)), msg.sender);
    }

    /// @inheritdoc IBurner
    function isDAO(address token, address addr) external view returns (bool) {
        return hasRole(_daoRole(token), addr);
    }

    /// @dev The dao role is the keccak25 hash of (DAO_ROLE_PREFIX + token)
    function _daoRole(address token) internal pure returns (bytes32) {
        return keccak256(abi.encode(DAO_ROLE_PREFIX, token));
    }
}
