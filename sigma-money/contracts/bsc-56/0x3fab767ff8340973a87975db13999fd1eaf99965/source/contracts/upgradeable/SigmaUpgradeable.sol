// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import {UUPSUpgradeable} from "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import {Initializable} from "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";

/**
 * @title SigmaUpgradeable
 * @notice Base contract for all upgradeable contracts in the Sigma protocol
 * @dev Implements UUPS proxy pattern with AccessHub-based authorization
 * 
 * Requirements:
 * - 1.1: Uses OpenZeppelin's UUPS proxy pattern for contract upgrades
 * - 1.3: Only authorized addresses (accessHub) can execute upgrades
 * - 16.1, 16.2: Only timelock/accessHub contracts can execute upgrade operations
 * - 17.4: Uses storage gap to reserve space for future upgrades
 */
abstract contract SigmaUpgradeable is Initializable, UUPSUpgradeable {
    /// @notice AccessHub address for permission control
    address public accessHub;

    /// @notice Error thrown when caller is not authorized
    error NOT_AUTHORIZED(address caller);

    /// @notice Only allows AccessHub to call
    modifier onlyAccessHub() {
        if (msg.sender != accessHub) {
            revert NOT_AUTHORIZED(msg.sender);
        }
        _;
    }

    /**
     * @notice Authorizes upgrade to a new implementation
     * @dev Only AccessHub can authorize upgrades
     * @param newImplementation Address of the new implementation contract
     * 
     * Requirements:
     * - 1.3: Only authorized addresses can execute upgrades
     * - 16.1, 16.2: Only timelock/accessHub can execute upgrade operations
     */
    function _authorizeUpgrade(address newImplementation) internal override onlyAccessHub {}

    /// @notice Storage gap to reserve space for future upgrades
    /// @dev Requirement 17.4: Uses storage gap to reserve future upgrade space
    uint256[50] private __gap;
}
