// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

// IERC20 from the legacy nested OZ (so it matches the SafeTransfer library
// the other farms use). AccessControl + Pausable come from the freshly-installed
// OZ v5 — these have no ABI / metadata impact on the already-deployed farms.
import {IERC20} from "openzeppelin-contracts/contracts/token/ERC20/IERC20.sol";
import {Pausable} from "@openzeppelin/contracts/utils/Pausable.sol";
import {AccessControl} from "@openzeppelin/contracts/access/AccessControl.sol";
import {SafeTransfer} from "./utils/SafeTransfer.sol";
import {ReentrancyGuard} from "./utils/ReentrancyGuard.sol";
import {IMintReserve} from "./interfaces/IMintReserve.sol";

/// @title SwapToFarm
/// @notice "Swap-to-Farm" campaign — an operator (backend, triggered after a
///         custodial deposit is confirmed) stakes ACT on behalf of a user into
///         a V.4-style farm.
///
/// Why this exists:
///   Users deposit any supported token (USDT/BNB/BUSD/…) to a custodial vault
///   address. The backend converts the deposit to an equivalent ACT amount at
///   spot rate and stakes it into this contract for the user. The user does
///   not have to touch ACT themselves before staking — the operator runs the
///   whole flow.
///
/// Transfer trace (Admin → User → SwapToFarm):
///   stakeTo(user, amount, tier) performs TWO `safeTransferFrom` calls atomically:
///     1. ACT: operator → user
///     2. ACT: user → SwapToFarm
///   That way the user's wallet shows the ACT arriving and being spent in the
///   same on-chain trace — auditable, no off-chain assumptions. Both operator
///   AND user must `approve(SwapToFarm, amount)` beforehand.
///
/// Rewards: identical to FarmV4Primary tier APR (60 / 250 / 700 / 2400 bps for
/// 30/90/180/360 days), but with two differences from V.4:
///   - NO buyBalance check on stake (the user-given ACT was just delivered by
///     the operator; it isn't v4-tracked yet).
///   - ON CLAIM: principal AND reward are credited to the user's buyBalance,
///     so the entire returned amount is sellable as v4 ACT.
///
/// Access:
///   DEFAULT_ADMIN_ROLE → grant/revoke roles, pause/unpause.
///   OPERATOR_ROLE      → call stakeTo.
contract SwapToFarm is AccessControl, Pausable, ReentrancyGuard {
    using SafeTransfer for IERC20;

    /// @notice The role that may call stakeTo. Granted to the backend operator EOA
    /// (or any address that the AWS-KMS-backed signer derives to).
    bytes32 public constant OPERATOR_ROLE = keccak256("OPERATOR_ROLE");

    enum Tier { D30, D90, D180, D360 }

    uint64 internal constant DURATION_30D  = 30 days;
    uint64 internal constant DURATION_90D  = 90 days;
    uint64 internal constant DURATION_180D = 180 days;
    uint64 internal constant DURATION_360D = 360 days;

    struct StakeRecord {
        address owner;       // the user (NOT the operator)
        uint128 principal;   // ACT staked on the user's behalf
        uint128 reward;      // pre-computed ACT reward at stake time
        uint64  startTime;
        uint64  maturityTime;
        Tier    tier;
        bool    claimed;
    }

    IMintReserve public immutable mintReserve;
    IERC20 public immutable act;

    uint256 public nextStakeId = 1;
    mapping(uint256 => StakeRecord) public stakes;
    mapping(address => uint256[]) public userStakeIds;

    event Staked(address indexed user, address indexed operator, uint256 indexed id, Tier tier, uint256 principal, uint256 reward, uint64 maturityTime);
    event Claimed(address indexed user, uint256 indexed id, uint256 principal, uint256 reward);

    error NotStakeOwner();
    error AlreadyClaimed();
    error NotMature(uint64 currentTime, uint64 maturityTime);
    error InvalidPrincipal();
    error ZeroAddress();

    constructor(IMintReserve _mintReserve, IERC20 _act, address admin) {
        if (admin == address(0)) revert ZeroAddress();
        mintReserve = _mintReserve;
        act = _act;
        _grantRole(DEFAULT_ADMIN_ROLE, admin);
    }

    // ============ Tier helpers ============

    function tierDuration(Tier tier) public pure returns (uint64) {
        if (tier == Tier.D30)  return DURATION_30D;
        if (tier == Tier.D90)  return DURATION_90D;
        if (tier == Tier.D180) return DURATION_180D;
        return DURATION_360D;
    }

    /// @notice Same APR table as FarmV4Primary.
    function tierBps(Tier tier) public pure returns (uint16) {
        if (tier == Tier.D30)  return 60;     // 0.60%
        if (tier == Tier.D90)  return 250;    // 2.50%
        if (tier == Tier.D180) return 700;    // 7.00%
        return 2400;                          // 24.00%
    }

    function computeReward(uint256 principal, Tier tier) public pure returns (uint256) {
        return (principal * tierBps(tier)) / 10_000;
    }

    // ============ Operator entrypoint ============

    /// @notice Stake `amount` ACT for `user` at `tier`. ATOMIC two-step transfer:
    ///   - act.transferFrom(msg.sender, user, amount)   // operator → user
    ///   - act.transferFrom(user, address(this), amount) // user → farm
    /// Both the operator AND the user must have previously called
    /// `act.approve(SwapToFarm, amount)`. No buyBalance check on stake; the
    /// user's buyBalance is credited at claim time (see `claim`).
    function stakeTo(address user, uint256 amount, Tier tier)
        external
        onlyRole(OPERATOR_ROLE)
        whenNotPaused
        nonReentrant
        returns (uint256 id)
    {
        if (user == address(0)) revert ZeroAddress();
        if (amount == 0 || amount > type(uint128).max) revert InvalidPrincipal();

        // Leg 1: operator's ACT → user. Operator must have approved this contract.
        act.safeTransferFrom(msg.sender, user, amount);
        // Leg 2: user's ACT → this contract. User must have approved this contract.
        act.safeTransferFrom(user, address(this), amount);

        uint256 reward = computeReward(amount, tier);
        // Reserve the reward against the 3B cap — same MintReserve as the other farms.
        mintReserve.reserve(reward);

        id = nextStakeId++;
        stakes[id] = StakeRecord({
            owner: user,
            principal: uint128(amount),
            reward: uint128(reward),
            startTime: uint64(block.timestamp),
            maturityTime: uint64(block.timestamp) + tierDuration(tier),
            tier: tier,
            claimed: false
        });
        userStakeIds[user].push(id);

        emit Staked(user, msg.sender, id, tier, amount, reward, stakes[id].maturityTime);
    }

    // ============ User claim ============

    /// @notice Claim principal + reward at maturity. Hard lock — no early exit.
    /// On claim, BOTH principal and reward are credited to the user's v4 buyBalance,
    /// so the entire returned amount is sellable as v4 ACT.
    function claim(uint256 id) external nonReentrant whenNotPaused {
        StakeRecord storage s = stakes[id];
        if (s.owner != msg.sender) revert NotStakeOwner();
        if (s.claimed) revert AlreadyClaimed();
        if (block.timestamp < s.maturityTime) revert NotMature(uint64(block.timestamp), s.maturityTime);

        s.claimed = true;

        // 1) Return principal in ACT and tag it as v4-sellable.
        act.safeTransfer(s.owner, s.principal);
        mintReserve.creditBuyBalance(s.owner, s.principal);

        // 2) Mint the reward AND credit it as v4 buyBalance (atomic, same as V.4).
        if (s.reward > 0) {
            mintReserve.mintAndCredit(s.owner, s.reward);
        }

        emit Claimed(s.owner, id, s.principal, s.reward);
    }

    // ============ Admin ============

    function pause() external onlyRole(DEFAULT_ADMIN_ROLE) { _pause(); }
    function unpause() external onlyRole(DEFAULT_ADMIN_ROLE) { _unpause(); }

    // ============ Views ============

    function getUserStakeIds(address user) external view returns (uint256[] memory) {
        return userStakeIds[user];
    }
}
