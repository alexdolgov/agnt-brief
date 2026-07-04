// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {IERC20} from "openzeppelin-contracts/contracts/token/ERC20/IERC20.sol";
import {SafeTransfer} from "./utils/SafeTransfer.sol";
import {FarmBase} from "./FarmBase.sol";
import {IMintReserve} from "./interfaces/IMintReserve.sol";
import {IHookAccessControl} from "./interfaces/IHookAccessControl.sol";

/// @title FarmV4Primary
/// @notice "Pool V.4" — stake "v4 ACT" (buyBalance-tracked), earn more ACT v4.
///
/// Rules:
///  - On stake: user must have `userBuyBalance >= amount` on the v4 hook. The farm
///    transfers in `amount` ACT AND debits the user's buyBalance by `amount`
///    (so they cannot also sell those tokens on v4 during the lock).
///  - On claim (at maturity): farm transfers ACT principal back AND restores the
///    user's buyBalance by `amount`. Reward is minted as v4 (buyBalance credited).
///
/// Net effect: a V.4 staker's effective v4-sellable position is preserved across
/// the lock, plus their reward — no double-counting.
contract FarmV4Primary is FarmBase {
    using SafeTransfer for IERC20;

    IERC20 public immutable act;
    IHookAccessControl public immutable hookAccess;

    error InsufficientV4Balance(uint256 have, uint256 want);

    constructor(IMintReserve _mintReserve, IERC20 _act, IHookAccessControl _hookAccess) FarmBase(_mintReserve) {
        act = _act;
        hookAccess = _hookAccess;
    }

    function tierBps(Tier tier) public pure override returns (uint16) {
        if (tier == Tier.D30)  return 60;     // 0.60%
        if (tier == Tier.D90)  return 250;    // 2.50%
        if (tier == Tier.D180) return 700;    // 7.00%
        return 2400;                          // 24.00%
    }

    /// @notice Stake `amount` "v4 ACT" for `tier`. Requires v4 buyBalance >= amount.
    /// Caller must approve this contract for `amount` ACT first.
    function stake(uint256 amount, Tier tier) external whenNotPaused returns (uint256 id) {
        uint256 v4Balance = hookAccess.getUserBuyBalance(msg.sender);
        if (v4Balance < amount) revert InsufficientV4Balance(v4Balance, amount);

        act.safeTransferFrom(msg.sender, address(this), amount);
        // Debit the user's v4 buyBalance for the staked amount — they can't sell what's locked.
        mintReserve.debitBuyBalance(msg.sender, amount);

        id = _recordStake(msg.sender, amount, tier);
    }

    function _returnPrincipal(uint256 stakeId) internal override {
        StakeRecord storage s = stakes[stakeId];
        act.safeTransfer(s.owner, s.principal);
        // Restore v4 sellability for the principal the user is getting back.
        mintReserve.creditBuyBalance(s.owner, s.principal);
    }
}
