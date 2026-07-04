// SPDX-License-Identifier: agpl-3.0
pragma solidity 0.8.20;

import {SafeERC20, IERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {VestingWallet} from "@openzeppelin/contracts/finance/VestingWallet.sol";

/// @notice A 'VestingWallet' that restricts calls to 'release()' function
///         to only the owner (= beneficiary) of the wallet.
/// @dev The owner should be specific 'Executor'.
contract RubiconRewardsVestingWallet is VestingWallet {
    constructor(
        address beneficiary,
        uint64 startTimestamp,
        uint64 durationSeconds
    ) VestingWallet(beneficiary, startTimestamp, durationSeconds) {}

    /// @dev Overrides 'release' function, so it can be called
    ///      only by the owner-beneficiary.
    function release(address token) public override onlyOwner {
        super.release(token);
    }
}
