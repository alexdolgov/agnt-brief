// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {Pausable} from "openzeppelin-contracts/contracts/utils/Pausable.sol";
import {Owned} from "./utils/Owned.sol";
import {ReentrancyGuard} from "./utils/ReentrancyGuard.sol";
import {IMintReserve} from "./interfaces/IMintReserve.sol";

/// @title FarmBase
/// @notice Shared logic for the 3 final ACT farms:
///   - 4 fixed-tier lock durations (30 / 90 / 180 / 360 days, in BSC blocks)
///   - Per-stake reward is reserved upfront with [[MintReserve]] (3B cap enforced)
///   - HARD LOCK: principal & reward can only be retrieved at or after maturity
///   - At maturity, `claim(id)` runs subclass `_returnPrincipal` then mints reward
///     via MintReserve.mintAndCredit (also credits buyBalance on v4 hook)
///   - "All rewards delivered as ACT v4" → handled by MintReserve.mintAndCredit
abstract contract FarmBase is Owned, Pausable, ReentrancyGuard {
    enum Tier { D30, D90, D180, D360 }

    /// @notice Lock durations per tier, in SECONDS (wall-clock via block.timestamp).
    /// Time-based — not block-based — so locks are unaffected by BSC block-time
    /// changes (e.g. the Fermi hardfork dropping block time to ~0.45s).
    uint64 internal constant DURATION_30D  = 30 days;   // 2,592,000
    uint64 internal constant DURATION_90D  = 90 days;   // 7,776,000
    uint64 internal constant DURATION_180D = 180 days;  // 15,552,000
    uint64 internal constant DURATION_360D = 360 days;  // 31,104,000

    struct StakeRecord {
        address owner;
        uint128 principal;       // pool-specific units (ACT amount for V.2/V.4; USDT*2 for LP)
        uint128 reward;          // pre-computed ACT reward at stake time
        uint64  startTime;       // block.timestamp at stake
        uint64  maturityTime;    // startTime + tierDuration(tier)
        Tier    tier;
        bool    claimed;
    }

    IMintReserve public immutable mintReserve;

    uint256 public nextStakeId = 1;
    mapping(uint256 => StakeRecord) public stakes;
    mapping(address => uint256[]) public userStakeIds;

    event Staked(address indexed user, uint256 indexed id, Tier tier, uint256 principal, uint256 reward, uint64 maturityTime);
    event Claimed(address indexed user, uint256 indexed id, uint256 principal, uint256 reward);

    error NotStakeOwner();
    error AlreadyClaimed();
    error NotMature(uint64 currentTime, uint64 maturityTime);
    error InvalidPrincipal();

    constructor(IMintReserve _mintReserve) Owned(msg.sender) {
        mintReserve = _mintReserve;
    }

    // ============ Tier helpers ============

    /// @notice APR (in basis points) earned over the full lock for `tier`, defined per pool.
    function tierBps(Tier tier) public view virtual returns (uint16);

    function tierDuration(Tier tier) public pure returns (uint64) {
        if (tier == Tier.D30)  return DURATION_30D;
        if (tier == Tier.D90)  return DURATION_90D;
        if (tier == Tier.D180) return DURATION_180D;
        return DURATION_360D;
    }

    /// @notice Total reward for `principal` at the given tier's APR over the full lock.
    function computeReward(uint256 principal, Tier tier) public view returns (uint256) {
        return (principal * tierBps(tier)) / 10_000;
    }

    // ============ Core stake / claim ============

    /// @dev Subclasses call this from their stake entrypoints AFTER transferring in the
    ///      principal (ERC20 or NFT). `principal` is the value used for reward computation
    ///      in pool-specific units.
    function _recordStake(address user, uint256 principal, Tier tier) internal returns (uint256 id) {
        if (principal == 0) revert InvalidPrincipal();
        if (principal > type(uint128).max) revert InvalidPrincipal();

        uint256 reward = computeReward(principal, tier);
        // Reserve against the global 3B cap. Reverts if the projection would breach.
        mintReserve.reserve(reward);

        id = nextStakeId++;
        stakes[id] = StakeRecord({
            owner: user,
            principal: uint128(principal),
            reward: uint128(reward),
            startTime: uint64(block.timestamp),
            maturityTime: uint64(block.timestamp) + tierDuration(tier),
            tier: tier,
            claimed: false
        });
        userStakeIds[user].push(id);

        emit Staked(user, id, tier, principal, reward, stakes[id].maturityTime);
    }

    /// @notice Claim principal + reward at or after maturity. Hard lock — no early exit.
    function claim(uint256 id) external nonReentrant whenNotPaused {
        StakeRecord storage s = stakes[id];
        if (s.owner != msg.sender) revert NotStakeOwner();
        if (s.claimed) revert AlreadyClaimed();
        if (block.timestamp < s.maturityTime) revert NotMature(uint64(block.timestamp), s.maturityTime);

        s.claimed = true;

        // Subclass: return the principal (ACT transfer / NFT transfer / etc.) and
        // run pool-specific buyBalance side-effects (V.2 360D transform; V.4 restore).
        _returnPrincipal(id);

        // Mint the promised reward + credit buyBalance via MintReserve.
        if (s.reward > 0) {
            mintReserve.mintAndCredit(s.owner, s.reward);
        }

        emit Claimed(s.owner, id, s.principal, s.reward);
    }

    /// @dev Pool-specific principal return. V.2 returns ACT (+ 30% buyBalance for 360D);
    ///      V.4 returns ACT + restores buyBalance; LP returns the NFT.
    function _returnPrincipal(uint256 stakeId) internal virtual;

    // ============ Admin ============

    /// @notice Pause new stakes. Existing stakes can still claim at maturity.
    function pause() external onlyOwner { _pause(); }
    function unpause() external onlyOwner { _unpause(); }

    // ============ Views ============

    function getUserStakeIds(address user) external view returns (uint256[] memory) {
        return userStakeIds[user];
    }
}
