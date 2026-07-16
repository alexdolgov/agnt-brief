// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

import {IOFT} from "@layerzerolabs/oft-evm/contracts/interfaces/IOFT.sol";
import {IAccessControl} from "@openzeppelin/contracts/access/IAccessControl.sol";

/**
 * @title IJack Interface
 * @notice Interface for the Jack token contract which combines OFT (Omnichain Fungible Token)
 * capabilities with access control and treasury management.
 */
interface IJack is IOFT, IAccessControl {
    // =============================================================
    // Custom Errors
    // =============================================================

    /**
     * @notice Thrown when an address parameter is zero.
     */
    error ErrorZeroAddress();

    /**
     * @notice Thrown when the provided decimals are invalid.
     */
    error InvalidDecimals();

    /**
     * @notice Thrown when the operation is not permitted.
     */
    error ErrorNotPermitted();

    /**
     * @notice Thrown when attempting to recover Jack tokens.
     */
    error ErrorCannotRecoverToken();

    /**
     * @notice Thrown when role grant fails.
     */
    error ErrorRoleGrantFailed();

    /**
     * @notice Thrown when treasury deployment fails.
     */
    error ErrorTreasuryDeploymentFailed();

    /**
     * @notice Thrown when attempting to renounce ownership.
     */
    error ErrorRenounceOwnership();

    /**
     * @notice Thrown when attempting to renounce roles.
     */
    error ErrorRoleRenounceNotAllowed();

    /**
     * @notice Thrown when sending is not allowed.
     */
    error ErrorSendNotAllowed();

    // =============================================================
    // Events
    // =============================================================

    /**
     * @notice Emitted when the treasury is created during contract deployment.
     * @param treasury Address of the created treasury contract.
     * @param token Address of the Jack token contract.
     * @param admin Address of the treasury admin.
     */
    event TreasuryCreated(
        address indexed treasury,
        address indexed token,
        address indexed admin
    );

    /**
     * @notice Emitted when the bridge gateway toggled
     * @param _isAllowed indicates the status of the allowance.
     */
    event UpdateBridgeAllowed(bool indexed _isAllowed);

    /**
     * @notice Toggle's approval requirements on cross bridging
     * @param _isRequired indicates the targeted status of the bridging approval
     */
    event UpdateBridgeApproveRequirement(bool indexed _isRequired);

    /**
     * @notice Emitted when tokens are minted.
     * @param token Address of the token contract.
     * @param to Address receiving the minted tokens.
     * @param amount Amount of tokens minted.
     */
    event Minted(address indexed token, address indexed to, uint256 amount);

    // =============================================================
    // External Functions
    // =============================================================

    /**
     * @notice Gets the address of the treasury contract.
     * @return The address of the treasury contract.
     */
    function getTreasury() external view returns (address);
}
