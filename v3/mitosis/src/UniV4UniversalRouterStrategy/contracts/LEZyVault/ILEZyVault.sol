// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.27;

import {
    IERC4626Upgradeable
} from "@openzeppelin-upgrades/contracts/interfaces/IERC4626Upgradeable.sol";
import { IRoleManager } from "../Permissions/IRoleManager.sol";

/**
 * @title ILEZyVault
 * @author Renzo Protocol
 * @notice Interface for the LEZyVault contract
 * @dev Extends ERC4626 standard with additional functionality for managing shares and assets
 */
interface ILEZyVault is IERC4626Upgradeable {
    /**
     * @notice Burns shares and updates the total assets accordingly
     * @dev This function should only be called by authorized contracts (e.g., WithdrawQueue)
     * @param _shares The amount of shares to burn
     * @param _assets The amount of assets to deduct from total assets
     */
    function burnSharesAndUpdateAssets(uint256 _shares, uint256 _assets) external;

    /**
     * @notice Returns the RoleManager contract address
     * @return The RoleManager contract instance used for access control
     */
    function roleManager() external returns (IRoleManager);

    /**
     * @notice Mints shares to the receiver
     * @dev Only callable by MINTER role
     * @param _shares The amount of shares to mint
     * @param receiver The address that will receive the minted shares
     */
    function mintShares(uint256 _shares, address receiver) external;
}
