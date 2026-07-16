// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.29;

interface ISpendManager {

    /// @notice A spend permission for an external entity to be able to spend an account's tokens.
    struct SpendPermission {
        /// @dev Smart account this spend permission is valid for.
        address account;
        /// @dev Entity that can spend `account`'s tokens.
        address spender;
        /// @dev Token address (ERC-7528 native token or ERC-20 contract).
        address token;
        /// @dev Maximum allowed value to spend within each `period`.
        uint160 allowance;
        /// @dev Time duration for resetting used `allowance` on a recurring basis (seconds).
        uint48 period;
        /// @dev Timestamp this spend permission is valid starting at (inclusive, unix seconds).
        uint48 start;
        /// @dev Timestamp this spend permission is valid until (exclusive, unix seconds).
        uint48 end;
        /// @dev Arbitrary data to differentiate unique spend permissions with otherwise identical fields.
        uint256 salt;
        /// @dev Arbitrary data to attach to a spend permission which may be consumed by the `spender`.
        bytes extraData;
    }

    function spend(SpendPermission memory spendPermission, uint160 value) external;
}
