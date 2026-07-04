// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "../AdminUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/security/ReentrancyGuardUpgradeable.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

/**
 * @title LinearVestingRewards (claim-all, auto-prune)
 * @notice Owner creates linear-vesting ERC20 grants for users (each with its own start+duration).
 *         Users call `claim()` to receive ALL currently vested across all grants.
 *         Fully-claimed grants are removed (swap-pop), so we never traverse them again.
 */
contract LinearVestingRewards is AdminUpgradeable, ReentrancyGuardUpgradeable {
    using SafeERC20 for IERC20;

    struct Grant {
        uint128 amount;    // total granted
        uint128 claimed;   // claimed so far
        uint256  start;     // vest start timestamp (seconds)
        uint256  duration;  // linear vest duration in seconds (0 = instant)
    }

    IERC20 public rewardToken;

    // user => dynamic list of active (not-fully-claimed) grants
    mapping(address => Grant[]) private _grants;

    event RewardDeposited(address indexed user, uint256 indexed grantIndex, uint256 amount, uint256 start, uint256 duration);
    event RewardClaimed(address indexed user, uint256 amount);

    /**Ï
    * @notice Initialize the contract
     */
    function initialize(address token) external initializer {
        __AdminUpgradeable_init(msg.sender);
        __ReentrancyGuard_init();
        require(token != address(0), "token=0");
        rewardToken = IERC20(token);
    }


    // ------------------- Admin -------------------

    /// @notice Owner creates a new vesting grant for `user`.
    /// @dev Owner must approve this contract for `amount` first.
    /// @param start vest start timestamp (secs). Use block.timestamp for “start now”.
    /// @param duration linear vesting length in seconds. 0 means fully vested immediately.
    function depositReward(
        address user,
        uint256 amount,
        uint256 start,
        uint256 duration
    ) external onlyAdmin {
        require(user != address(0), "user=0");
        require(amount > 0, "amount=0");

        rewardToken.safeTransferFrom(msg.sender, address(this), amount);

        _grants[user].push(
            Grant({
                amount:  uint128(amount),
                claimed: 0,
                start:   start,
                duration: duration
            })
        );

        emit RewardDeposited(user, _grants[user].length - 1, amount, start, duration);
    }

    // ------------------- User: claim all vested -------------------

    /// @notice Claim ALL currently vested amounts across all your active grants.
    ///         Fully-claimed grants are removed (swap-pop). No parameters, no partials.
    function claim() external nonReentrant {
        address user = msg.sender;
        Grant[] storage gs = _grants[user];
        uint256 ts = block.timestamp;

        uint256 totalToClaim;
        uint256 i = 0;

        // single pass; swap-pop when a grant becomes fully claimed
        while (i < gs.length) {
            Grant storage g = gs[i];

            uint256 vested = _vestedOf(g, ts);
            if (vested > g.claimed) {
                uint256 add = vested - g.claimed;
                g.claimed = uint128(uint256(g.claimed) + add);
                totalToClaim += add;
            }

            if (g.claimed >= g.amount) {
                // remove by swap-pop (order not preserved)
                gs[i] = gs[gs.length - 1];
                gs.pop();
                // do NOT increment i; re-check the swapped-in element
            } else {
                unchecked { ++i; }
            }
        }

        require(totalToClaim > 0, "nothing vested");
        rewardToken.safeTransfer(user, totalToClaim);
        emit RewardClaimed(user, totalToClaim);
    }

    // ------------------- Views -------------------

    /// @notice Number of active (not yet fully claimed) grants for a user.
    function activeGrantCount(address user) external view returns (uint256) {
        return _grants[user].length;
    }

    /// @notice Read an active grant by its current index (indices change over time due to swap-pop).
    function getActiveGrant(address user, uint256 index) external view returns (Grant memory) {
        require(index < _grants[user].length, "index OOB");
        return _grants[user][index];
    }

    /// @notice Total claimable now for `user` across all active grants.
    function claimable(address user) external view returns (uint256) {
        return claimableAt(user, block.timestamp);
    }

    /// @notice Total claimable at arbitrary timestamp (for UIs/simulations).
    function claimableAt(address user, uint256 ts) public view returns (uint256) {
        Grant[] storage gs = _grants[user];
        uint256 sum;
        for (uint256 i = 0; i < gs.length; i++) {
            uint256 v = _vestedOf(gs[i], ts);
            if (v > gs[i].claimed) sum += (v - gs[i].claimed);
        }
        return sum;
    }

    // ------------------- Internals -------------------

    function _vestedOf(Grant memory g, uint256 ts) internal pure returns (uint256) {
        if (g.duration == 0) return g.amount;
        if (ts <= g.start)   return 0;
        uint256 elapsed = ts - g.start;
        if (elapsed >= g.duration) return g.amount;
        return (uint256(g.amount) * elapsed) / g.duration;
        // linear: pro-rata between start and start+duration
    }
}