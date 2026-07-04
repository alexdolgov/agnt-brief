// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import { IErrors } from "./IErrors.sol";
import { IERC4626 } from "@openzeppelin-contracts-5.1.0/interfaces/IERC4626.sol";

interface IStakedLBGT is IErrors, IERC4626 {
    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                           EVENTS                           */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    /// @notice Emitted when the exit fee is set.
    /// @dev Only the admin can set the exit fee.
    /// @param fee The exit fee in basis points (bps).
    event ExitFeeSet(uint16 fee);

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                          GETTERS                           */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    /**
     * @notice Returns the current exit fee rate in basis points (1/10000)
     * @dev This fee is applied when users redeem or withdraw staked LBGT
     * @return The exit fee rate, where 100 = 1% (maximum 10000)
     */
    function exitFee() external view returns (uint16);

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                     ADMIN FUNCTIONS                        */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    /// @notice Sets the exit fee for the staking contract
    /// @dev This function can only be called by accounts with ROLE_ADMIN permission
    /// @param _exitFee The new exit fee to be set, expressed in basis points (1/10000th). Must not exceed
    /// BASIS_POINT_SCALE (10000)
    function setExitFee(uint16 _exitFee) external;

    /// @notice Pause the vault.
    /// @dev Only the curator can pause the vault.
    function pause() external;

    /// @notice Unpause the vault.
    /// @dev Only the admin can unpause the vault.
    function unpause() external;
}
