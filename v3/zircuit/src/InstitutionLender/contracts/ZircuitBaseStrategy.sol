// SPDX-License-Identifier: AGPL-3.0
pragma solidity >=0.8.18;

import { BaseHooks } from "./periphery/Bases/Hooks/BaseHooks.sol";
/**
 * @title Zircuit Base Strategy
 * @author Zircuit Labs
 * @notice
 *  This contract extends the BaseStrategy to provide a common
 *  base for all strategies in the Zircuit ecosystem. It includes both
 *  Yearn health checks and permissioning and statistical tracking features
 *  needed by the vaults.
 */
abstract contract ZircuitBaseStrategy is BaseHooks {
    /*//////////////////////////////////////////////////////////////
                            STATE
    //////////////////////////////////////////////////////////////*/

    mapping(address => bool) public isAllowed;
    bool public whitelistEnabled;

    event WhitelistUpdated(address indexed user, bool allowed);
    event WhitelistEnabled(bool enabled);

    /*//////////////////////////////////////////////////////////////
                            CONSTRUCTOR
    //////////////////////////////////////////////////////////////*/
    constructor(address _asset, string memory _name) BaseHooks(_asset, _name) {
        whitelistEnabled = true;
    }

    /*//////////////////////////////////////////////////////////////
                            MANAGEMENT
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice Allows a user to deposit into the strategy.
     * @dev Can only be called by the management role.
     * @param user The address of the user to allow.
     */
    function allow(address user) external onlyManagement {
        isAllowed[user] = true;
        emit WhitelistUpdated(user, true);
    }

    /**
     * @notice Denies a user from depositing into the strategy.
     * @dev Can only be called by the management role.
     * @param user The address of the user to deny.
     */
    function deny(address user) external onlyManagement {
        isAllowed[user] = false;
        emit WhitelistUpdated(user, false);
    }

    /**
     * @notice Enables or disables the whitelist for deposits.
     * @dev Can only be called by the management role.
     * @param _enabled The new status for the whitelist.
     */
    function setWhitelistEnabled(bool _enabled) external onlyManagement {
        whitelistEnabled = _enabled;
        emit WhitelistEnabled(_enabled);
    }

    /*//////////////////////////////////////////////////////////////
                    OVERRIDDEN PUBLIC FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice Gets the max amount of `asset` that an address can deposit.
     * @dev Overrides the BaseStrategy function to enforce a whitelist.
     * Only whitelisted users can deposit.
     * @param _owner The address that is depositing into the strategy.
     * @return The available amount the `_owner` can deposit in terms of `asset`.
     */
    function availableDepositLimit(
        address _owner
    ) public view virtual override returns (uint256) {
        if (!whitelistEnabled || isAllowed[_owner]) {
            return super.availableDepositLimit(_owner);
        }

        return 0;
    }
}
