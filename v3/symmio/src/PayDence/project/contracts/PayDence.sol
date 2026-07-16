// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

import { AccessControlEnumerable } from "@openzeppelin/contracts/access/AccessControlEnumerable.sol";
import { Pausable } from "@openzeppelin/contracts/security/Pausable.sol";
import { ReentrancyGuard } from "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

import { ISymmStaking } from "./interfaces/ISymmStaking.sol";

/**
 * @title PayDence
 * @notice Non-upgradable linear vesting contract for token-denominated payments.
 *
 *         - Any address granted PAYER_ROLE can create irrevocable vesting plans for
 *           any receiver, with any ERC20 token, with any (startTime, endTime) range.
 *         - The full plan amount is escrowed into this contract at creation time, so
 *           receivers are guaranteed funds exist.
 *         - A receiver may hold an arbitrary number of concurrent plans (distinct planIds).
 *         - Receivers batch-claim by passing a list of their planIds. Each plan vests
 *           linearly: claimable = amount * (min(now, end) - start) / (end - start), minus
 *           what has already been claimed.
 *         - If the contract was deployed with a SYMM token + SymmStaking address and the
 *           receiver passes `autoStakeSymm = true` at claim time, any SYMM claims are
 *           forwarded directly into the staking contract with the receiver as the stake
 *           beneficiary (via SymmStaking.deposit(amount, receiver)). Non-SYMM claims in
 *           the same batch are transferred normally.
 */
contract PayDence is AccessControlEnumerable, Pausable, ReentrancyGuard {
	using SafeERC20 for IERC20;

	//--------------------------------------------------------------------------
	// Roles
	//--------------------------------------------------------------------------

	bytes32 public constant PAYER_ROLE = keccak256("PAYER_ROLE");
	bytes32 public constant PAUSER_ROLE = keccak256("PAUSER_ROLE");
	bytes32 public constant UNPAUSER_ROLE = keccak256("UNPAUSER_ROLE");

	//--------------------------------------------------------------------------
	// Hardcoded config
	//--------------------------------------------------------------------------

	/// @notice SYMM token address — hardcoded, non-upgradable.
	address public constant SYMM = 0x800822d361335b4d5F352Dac293cA4128b5B605f;

	/// @notice SymmStaking contract address — hardcoded, non-upgradable.
	address public constant SYMM_STAKING = 0x573310A15f3dc4828994819bc67AB6B1596AC90c;

	//--------------------------------------------------------------------------
	// Types
	//--------------------------------------------------------------------------

	struct Plan {
		address token;
		address receiver;
		address payer;
		uint256 amount;
		uint256 claimed;
		uint256 startTime;
		uint256 endTime;
	}

	/// @notice Convenience wrapper returned by `getPlans` — carries both the stored Plan
	///         fields and the currently-claimable amount for efficient UI batch queries.
	struct PlanView {
		uint256 planId;
		address token;
		address receiver;
		address payer;
		uint256 amount;
		uint256 claimed;
		uint256 claimable;
		uint256 startTime;
		uint256 endTime;
	}

	//--------------------------------------------------------------------------
	// State
	//--------------------------------------------------------------------------

	uint256 public nextPlanId;
	mapping(uint256 => Plan) internal _plans;

	/// @notice Total amount currently escrowed per token across all non-fully-claimed plans.
	/// @dev Used by `rescue` to guarantee receiver funds can never be swept.
	mapping(address => uint256) public totalEscrowed;

	//--------------------------------------------------------------------------
	// Errors
	//--------------------------------------------------------------------------

	error ZeroAddress();
	error ZeroAmount();
	error InvalidTimeRange();
	error ArrayLengthMismatch();
	error PlanNotFound(uint256 planId);
	error NotReceiver(uint256 planId);
	error InsufficientRescuableBalance(address token, uint256 available, uint256 requested);
	/// @notice Thrown if the token transferred less than the requested amount (fee-on-transfer
	///         or rebasing tokens). The contract requires exact-amount transfers because the
	///         stored plan amount is the authoritative record used for claims and escrow accounting.
	error TokenTransferAmountMismatch(address token, uint256 expected, uint256 received);

	//--------------------------------------------------------------------------
	// Events
	//--------------------------------------------------------------------------

	event PlanAdded(
		uint256 indexed planId,
		address indexed receiver,
		address indexed payer,
		address token,
		uint256 amount,
		uint256 startTime,
		uint256 endTime
	);

	event Claimed(uint256 indexed planId, address indexed receiver, address indexed token, uint256 amount, bool autoStaked);

	event Rescued(address indexed token, address indexed to, uint256 amount);

	//--------------------------------------------------------------------------
	// Constructor
	//--------------------------------------------------------------------------

	/**
	 * @param admin Address to receive DEFAULT_ADMIN_ROLE plus all operator roles.
	 *              The admin can manage role grants (including adding PAYERs) and
	 *              pause/unpause the contract.
	 *
	 *              SYMM and SYMM_STAKING are hardcoded as `constant` above and cannot be
	 *              overridden at deploy time.
	 */
	constructor(address admin) {
		if (admin == address(0)) revert ZeroAddress();

		_grantRole(DEFAULT_ADMIN_ROLE, admin);
		_grantRole(PAYER_ROLE, admin);
		_grantRole(PAUSER_ROLE, admin);
		_grantRole(UNPAUSER_ROLE, admin);
	}

	//--------------------------------------------------------------------------
	// Views
	//--------------------------------------------------------------------------

	/// @notice Returns the full plan struct by id.
	function plans(uint256 planId) external view returns (Plan memory) {
		return _plans[planId];
	}

	/// @notice Total amount that has been unlocked (whether or not already claimed).
	function unlockedOf(uint256 planId) public view returns (uint256) {
		return _unlocked(_plans[planId]);
	}

	/// @notice Amount currently claimable by the plan's receiver.
	function claimable(uint256 planId) public view returns (uint256) {
		Plan storage p = _plans[planId];
		if (p.amount == 0) return 0;
		return _unlocked(p) - p.claimed;
	}

	/// @notice Amount still locked (not yet unlocked by the vesting curve).
	function lockedOf(uint256 planId) external view returns (uint256) {
		Plan storage p = _plans[planId];
		if (p.amount == 0) return 0;
		return p.amount - _unlocked(p);
	}

	/// @notice Efficient batch view for UIs. Returns plan data plus live `claimable` for each id.
	///         Non-existent ids are returned as a PlanView with `amount == 0` (caller filters).
	function getPlans(uint256[] calldata planIds) external view returns (PlanView[] memory out) {
		uint256 n = planIds.length;
		out = new PlanView[](n);
		for (uint256 i = 0; i < n; ) {
			uint256 id = planIds[i];
			Plan storage p = _plans[id];
			uint256 unlocked = _unlocked(p);
			out[i] = PlanView({
				planId: id,
				token: p.token,
				receiver: p.receiver,
				payer: p.payer,
				amount: p.amount,
				claimed: p.claimed,
				claimable: unlocked > p.claimed ? unlocked - p.claimed : 0,
				startTime: p.startTime,
				endTime: p.endTime
			});
			unchecked {
				++i;
			}
		}
	}

	function _unlocked(Plan storage p) internal view returns (uint256) {
		if (p.amount == 0) return 0;
		uint256 ts = block.timestamp;
		if (ts <= p.startTime) return 0;
		if (ts >= p.endTime) return p.amount;
		return (p.amount * (ts - p.startTime)) / (p.endTime - p.startTime);
	}

	//--------------------------------------------------------------------------
	// Mutative — Payer
	//--------------------------------------------------------------------------

	/**
	 * @notice Create a new linear vesting plan for `receiver`. Pulls `amount` of `token`
	 *         from the caller (who must have approved this contract) into escrow.
	 * @return planId The id of the newly created plan.
	 */
	function addPlan(
		address receiver,
		address token,
		uint256 amount,
		uint256 startTime,
		uint256 endTime
	) external onlyRole(PAYER_ROLE) whenNotPaused nonReentrant returns (uint256 planId) {
		planId = _addPlan(receiver, token, amount, startTime, endTime);
	}

	/**
	 * @notice Create many plans in a single transaction. All arrays must have equal length.
	 *         Each plan is created independently and pulls its own `amount` of its `token`
	 *         from the caller; the caller must have approved this contract for each token's
	 *         cumulative sum across the batch.
	 */
	function addPlans(
		address[] calldata receivers,
		address[] calldata tokens,
		uint256[] calldata amounts,
		uint256[] calldata startTimes,
		uint256[] calldata endTimes
	) external onlyRole(PAYER_ROLE) whenNotPaused nonReentrant returns (uint256[] memory planIds) {
		uint256 n = receivers.length;
		if (tokens.length != n || amounts.length != n || startTimes.length != n || endTimes.length != n) {
			revert ArrayLengthMismatch();
		}
		planIds = new uint256[](n);
		for (uint256 i = 0; i < n; ) {
			planIds[i] = _addPlan(receivers[i], tokens[i], amounts[i], startTimes[i], endTimes[i]);
			unchecked {
				++i;
			}
		}
	}

	function _addPlan(
		address receiver,
		address token,
		uint256 amount,
		uint256 startTime,
		uint256 endTime
	) internal returns (uint256 planId) {
		if (receiver == address(0) || token == address(0)) revert ZeroAddress();
		if (amount == 0) revert ZeroAmount();
		if (endTime <= startTime) revert InvalidTimeRange();

		planId = nextPlanId;
		unchecked {
			nextPlanId = planId + 1;
		}

		_plans[planId] = Plan({
			token: token,
			receiver: receiver,
			payer: msg.sender,
			amount: amount,
			claimed: 0,
			startTime: startTime,
			endTime: endTime
		});
		totalEscrowed[token] += amount;

		// Fee-on-transfer / rebasing protection: the plan's stored `amount` is the
		// authoritative record used for the vesting curve and escrow accounting, so
		// the contract must actually receive exactly `amount`. If the token siphons a
		// fee or otherwise delivers less, we revert rather than silently over-promise
		// to the receiver.
		uint256 balBefore = IERC20(token).balanceOf(address(this));
		IERC20(token).safeTransferFrom(msg.sender, address(this), amount);
		uint256 received = IERC20(token).balanceOf(address(this)) - balBefore;
		if (received != amount) revert TokenTransferAmountMismatch(token, amount, received);

		emit PlanAdded(planId, receiver, msg.sender, token, amount, startTime, endTime);
	}

	//--------------------------------------------------------------------------
	// Mutative — Receiver
	//--------------------------------------------------------------------------

	/**
	 * @notice Claim all currently-vested tokens across the given plans. Caller must be
	 *         the receiver of every plan in the list.
	 * @dev Plans in the list that have nothing claimable right now are skipped silently
	 *      (no event, no state change). This keeps batch claims robust against partial
	 *      progress: the caller is not forced to pre-filter.
	 *
	 *      If `autoStakeSymm` is true, any plan in the list whose token is SYMM will be
	 *      forwarded into `SYMM_STAKING.deposit(amount, msg.sender)` instead of being
	 *      transferred to the receiver. Non-SYMM plans in the same batch are always
	 *      transferred to the receiver.
	 *
	 * @param planIds Plan ids to claim. Must all be owned by `msg.sender`.
	 * @param autoStakeSymm If true, SYMM claims are auto-staked on behalf of the receiver.
	 */
	function claim(uint256[] calldata planIds, bool autoStakeSymm) external whenNotPaused nonReentrant {
		uint256 n = planIds.length;
		for (uint256 i = 0; i < n; ) {
			_claim(planIds[i], autoStakeSymm);
			unchecked {
				++i;
			}
		}
	}

	function _claim(uint256 planId, bool autoStakeSymm) internal {
		Plan storage p = _plans[planId];
		if (p.amount == 0) revert PlanNotFound(planId);
		if (p.receiver != msg.sender) revert NotReceiver(planId);

		uint256 amt = _unlocked(p) - p.claimed;
		if (amt == 0) return;

		p.claimed += amt;
		totalEscrowed[p.token] -= amt;

		bool staked = false;
		if (autoStakeSymm && p.token == SYMM) {
			// forceApprove handles tokens (like USDT) that require allowance reset;
			// SYMM itself doesn't need it, but this keeps the pattern safe and uniform.
			IERC20(SYMM).forceApprove(SYMM_STAKING, amt);
			ISymmStaking(SYMM_STAKING).deposit(amt, msg.sender);
			staked = true;
		} else {
			IERC20(p.token).safeTransfer(msg.sender, amt);
		}

		emit Claimed(planId, msg.sender, p.token, amt, staked);
	}

	//--------------------------------------------------------------------------
	// Admin
	//--------------------------------------------------------------------------

	/**
	 * @notice Admin rescue for non-plan tokens. Can only transfer the portion of the
	 *         contract's balance that is NOT owed to receivers via `totalEscrowed[token]`.
	 *         Intended for tokens accidentally sent to the contract or for reclaiming
	 *         residual dust once all plans of a token are fully claimed.
	 */
	function rescue(address token, uint256 amount, address to) external onlyRole(DEFAULT_ADMIN_ROLE) nonReentrant {
		if (to == address(0) || token == address(0)) revert ZeroAddress();
		uint256 bal = IERC20(token).balanceOf(address(this));
		uint256 escrowed = totalEscrowed[token];
		uint256 available = bal > escrowed ? bal - escrowed : 0;
		if (amount > available) revert InsufficientRescuableBalance(token, available, amount);
		IERC20(token).safeTransfer(to, amount);
		emit Rescued(token, to, amount);
	}

	function pause() external onlyRole(PAUSER_ROLE) {
		_pause();
	}

	function unpause() external onlyRole(UNPAUSER_ROLE) {
		_unpause();
	}
}
