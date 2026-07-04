// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.0;

/**
 * @title CommonTypes
 * @dev Input parameters for not having "Stack too deep"
 * @author Altitude Labs
 **/

library CommonTypes {
    /// @notice struct for the supply and borrow position of a user
    struct UserPosition {
        uint256 supplyIndex;
        uint256 supplyBalance;
        uint256 borrowIndex;
        uint256 borrowBalance;
    }

    /// @notice struct for different commit types, where commitType 0 is harvest and 1 is liquidation
    struct CommitType {
        uint256 commitType;
        uint256 index;
    }
}
