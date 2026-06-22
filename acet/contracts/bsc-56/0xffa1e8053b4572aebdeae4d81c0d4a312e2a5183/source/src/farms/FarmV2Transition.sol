// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {IERC20} from "openzeppelin-contracts/contracts/token/ERC20/IERC20.sol";
import {SafeTransfer} from "./utils/SafeTransfer.sol";
import {FarmBase} from "./FarmBase.sol";
import {IMintReserve} from "./interfaces/IMintReserve.sol";

/// @title FarmV2Transition
/// @notice "Pool V.2" — stake ACT (untracked buyBalance, i.e. "v2 ACT"), earn ACT v4.
///
/// Rules:
///  - No buyBalance check or deduction on stake (any ACT works).
///  - At maturity: principal returned in full. Reward minted as v4 (buyBalance credited).
///  - 360-Day tier ONLY: additionally credits 30% of the original principal as buyBalance
///    (the "V.2 → V.4 Transform"). This is reclassification, not a new mint.
contract FarmV2Transition is FarmBase {
    using SafeTransfer for IERC20;

    IERC20 public immutable act;

    /// @notice 30% of principal becomes v4 on the 360D tier.
    uint16 public constant TRANSFORM_BPS_360D = 3000;

    constructor(IMintReserve _mintReserve, IERC20 _act) FarmBase(_mintReserve) {
        act = _act;
    }

    function tierBps(Tier tier) public pure override returns (uint16) {
        if (tier == Tier.D30)  return 30;     // 0.30%
        if (tier == Tier.D90)  return 120;    // 1.20%
        if (tier == Tier.D180) return 350;    // 3.50%
        return 1200;                          // 12.00%
    }

    /// @notice Stake `amount` ACT for `tier`. Caller must approve this contract first.
    function stake(uint256 amount, Tier tier) external whenNotPaused returns (uint256 id) {
        act.safeTransferFrom(msg.sender, address(this), amount);
        id = _recordStake(msg.sender, amount, tier);
    }

    function _returnPrincipal(uint256 stakeId) internal override {
        StakeRecord storage s = stakes[stakeId];
        act.safeTransfer(s.owner, s.principal);

        // V.2 → V.4 Transform (360D only): credit 30% of principal as buyBalance on the v4 hook.
        // No new mint — the ACT we just transferred is the same token; we're only reclassifying
        // its sellability on the v4 pool.
        if (s.tier == Tier.D360) {
            uint256 transformAmount = (uint256(s.principal) * TRANSFORM_BPS_360D) / 10_000;
            mintReserve.creditBuyBalance(s.owner, transformAmount);
        }
    }
}
