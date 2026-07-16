// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

import {AccessControlEnumerable} from "@openzeppelin/contracts/access/AccessControlEnumerable.sol";
import {Pausable} from "@openzeppelin/contracts/security/Pausable.sol";
import {ReentrancyGuard} from "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

import {ISymmStaking} from "./interfaces/ISymmStaking.sol";

/**
 * @title PayDence
 * @notice Non-upgradable linear vesting contract for token-denominated payments.
 *
 *         - Any address granted SENDER_ROLE can create irrevocable vesting flows for
 *           any recipient, with any ERC20 token, with any (startTime, endTime) range.
 *         - The full flow amount is escrowed into this contract at creation time, so
 *           recipients are guaranteed funds exist.
 *         - A recipient may hold an arbitrary number of concurrent flows (distinct flowIds).
 *         - Recipients batch-claim by passing a list of their flowIds. Each flow vests
 *           linearly: claimable = amount * (min(now, end) - start) / (end - start), minus
 *           what has already been claimed.
 *         - If the contract was deployed with a SYMM token + SymmStaking address and the
 *           recipient passes `autoStakeSymm = true` at claim time, any SYMM claims are
 *           forwarded directly into the staking contract with the recipient as the stake
 *           beneficiary (via SymmStaking.deposit(amount, receiver)). Non-SYMM claims in
 *           the same batch are transferred normally.
 */
contract PayDence is AccessControlEnumerable, Pausable, ReentrancyGuard {
    using SafeERC20 for IERC20;

    //--------------------------------------------------------------------------
    // Roles
    //--------------------------------------------------------------------------

    bytes32 public constant SENDER_ROLE = keccak256("SENDER_ROLE");
    bytes32 public constant PAUSER_ROLE = keccak256("PAUSER_ROLE");
    bytes32 public constant UNPAUSER_ROLE = keccak256("UNPAUSER_ROLE");

    //--------------------------------------------------------------------------
    // Hardcoded config
    //--------------------------------------------------------------------------

    /// @notice SYMM token address — hardcoded, non-upgradable.
    address public constant SYMM = 0x800822d361335b4d5F352Dac293cA4128b5B605f;

    /// @notice SymmStaking contract address — hardcoded, non-upgradable.
    address public constant SYMM_STAKING =
        0x573310A15f3dc4828994819bc67AB6B1596AC90c;

    //--------------------------------------------------------------------------
    // Types
    //--------------------------------------------------------------------------

    struct Flow {
        address token;
        address recipient;
        address sender;
        uint256 amount;
        uint256 claimed;
        uint256 startTime;
        uint256 endTime;
    }

    /// @notice Convenience wrapper returned by `getFlows` — carries both the stored Flow
    ///         fields and the currently-claimable amount for efficient UI batch queries.
    struct FlowView {
        uint256 flowId;
        address token;
        address recipient;
        address sender;
        uint256 amount;
        uint256 claimed;
        uint256 claimable;
        uint256 startTime;
        uint256 endTime;
    }

    //--------------------------------------------------------------------------
    // State
    //--------------------------------------------------------------------------

    uint256 public nextFlowId;
    mapping(uint256 => Flow) internal _flows;
    mapping(address => uint256[]) private _recipientFlowIds;

    /// @notice Total amount currently escrowed per token across all non-fully-claimed flows.
    /// @dev Used by `rescue` to guarantee recipient funds can never be swept.
    mapping(address => uint256) public totalEscrowed;

    //--------------------------------------------------------------------------
    // Errors
    //--------------------------------------------------------------------------

    error ZeroAddress();
    error ZeroAmount();
    error InvalidTimeRange();
    error ArrayLengthMismatch();
    error FlowNotFound(uint256 flowId);
    error NotRecipient(uint256 flowId);
    error InsufficientRescuableBalance(
        address token,
        uint256 available,
        uint256 requested
    );
    /// @notice Thrown if the token transferred less than the requested amount (fee-on-transfer
    ///         or rebasing tokens). The contract requires exact-amount transfers because the
    ///         stored flow amount is the authoritative record used for claims and escrow accounting.
    error TokenTransferAmountMismatch(
        address token,
        uint256 expected,
        uint256 received
    );

    //--------------------------------------------------------------------------
    // Events
    //--------------------------------------------------------------------------

    event FlowAdded(
        uint256 indexed flowId,
        address indexed recipient,
        address indexed sender,
        address token,
        uint256 amount,
        uint256 startTime,
        uint256 endTime
    );

    event Claimed(
        uint256 indexed flowId,
        address indexed recipient,
        address indexed token,
        uint256 amount,
        bool autoStaked
    );

    event Rescued(address indexed token, address indexed to, uint256 amount);

    //--------------------------------------------------------------------------
    // Constructor
    //--------------------------------------------------------------------------

    /**
     * @param admin Address to receive DEFAULT_ADMIN_ROLE plus all operator roles.
     *              The admin can manage role grants (including adding SENDERs) and
     *              pause/unpause the contract.
     *
     *              SYMM and SYMM_STAKING are hardcoded as `constant` above and cannot be
     *              overridden at deploy time.
     */
    constructor(address admin) {
        if (admin == address(0)) revert ZeroAddress();

        _grantRole(DEFAULT_ADMIN_ROLE, admin);
        _grantRole(SENDER_ROLE, admin);
        _grantRole(PAUSER_ROLE, admin);
        _grantRole(UNPAUSER_ROLE, admin);
    }

    //--------------------------------------------------------------------------
    // Views
    //--------------------------------------------------------------------------

    /// @notice Returns the full flow struct by id.
    function flows(uint256 flowId) external view returns (Flow memory) {
        return _flows[flowId];
    }

    /// @notice Total amount that has been unlocked (whether or not already claimed).
    function unlockedOf(uint256 flowId) public view returns (uint256) {
        return _unlocked(_flows[flowId]);
    }

    /// @notice Amount currently claimable by the flow's recipient.
    function claimable(uint256 flowId) public view returns (uint256) {
        Flow storage p = _flows[flowId];
        if (p.amount == 0) return 0;
        return _unlocked(p) - p.claimed;
    }

    /// @notice Amount still locked (not yet unlocked by the vesting curve).
    function lockedOf(uint256 flowId) external view returns (uint256) {
        Flow storage p = _flows[flowId];
        if (p.amount == 0) return 0;
        return p.amount - _unlocked(p);
    }

    /// @notice Number of flows ever created for `recipient`.
    function recipientFlowCount(
        address recipient
    ) external view returns (uint256) {
        return _recipientFlowIds[recipient].length;
    }

    /// @notice Returns a paginated slice of flow ids for `recipient`, in creation order.
    function getRecipientFlowIds(
        address recipient,
        uint256 offset,
        uint256 limit
    ) external view returns (uint256[] memory out) {
        return _sliceIds(_recipientFlowIds[recipient], offset, limit);
    }

    /// @notice Returns a paginated slice of flows for `recipient`, in creation order.
    function getRecipientFlows(
        address recipient,
        uint256 offset,
        uint256 limit
    ) external view returns (FlowView[] memory out) {
        return _sliceFlowViews(_recipientFlowIds[recipient], offset, limit);
    }

    /// @notice Efficient batch view for UIs. Returns flow data plus live `claimable` for each id.
    ///         Non-existent ids are returned as a FlowView with `amount == 0` (caller filters).
    function getFlows(
        uint256[] calldata flowIds
    ) external view returns (FlowView[] memory out) {
        uint256 n = flowIds.length;
        out = new FlowView[](n);
        for (uint256 i = 0; i < n; ) {
            out[i] = _flowView(flowIds[i]);
            unchecked {
                ++i;
            }
        }
    }

    function _sliceIds(
        uint256[] storage ids,
        uint256 offset,
        uint256 limit
    ) internal view returns (uint256[] memory out) {
        (uint256 start, uint256 end) = _bounds(ids.length, offset, limit);
        out = new uint256[](end - start);
        for (uint256 i = start; i < end; ) {
            out[i - start] = ids[i];
            unchecked {
                ++i;
            }
        }
    }

    function _sliceFlowViews(
        uint256[] storage ids,
        uint256 offset,
        uint256 limit
    ) internal view returns (FlowView[] memory out) {
        (uint256 start, uint256 end) = _bounds(ids.length, offset, limit);
        out = new FlowView[](end - start);
        for (uint256 i = start; i < end; ) {
            out[i - start] = _flowView(ids[i]);
            unchecked {
                ++i;
            }
        }
    }

    function _bounds(
        uint256 length,
        uint256 offset,
        uint256 limit
    ) internal pure returns (uint256 start, uint256 end) {
        if (offset >= length || limit == 0) return (length, length);
        start = offset;
        end = offset + limit;
        if (end < offset || end > length) end = length;
    }

    function _flowView(uint256 flowId) internal view returns (FlowView memory) {
        Flow storage p = _flows[flowId];
        uint256 unlocked = _unlocked(p);
        return
            FlowView({
                flowId: flowId,
                token: p.token,
                recipient: p.recipient,
                sender: p.sender,
                amount: p.amount,
                claimed: p.claimed,
                claimable: unlocked > p.claimed ? unlocked - p.claimed : 0,
                startTime: p.startTime,
                endTime: p.endTime
            });
    }

    function _unlocked(Flow storage p) internal view returns (uint256) {
        if (p.amount == 0) return 0;
        uint256 ts = block.timestamp;
        if (ts <= p.startTime) return 0;
        if (ts >= p.endTime) return p.amount;
        return (p.amount * (ts - p.startTime)) / (p.endTime - p.startTime);
    }

    //--------------------------------------------------------------------------
    // Mutative — Sender
    //--------------------------------------------------------------------------

    /**
     * @notice Create a new linear vesting flow for `recipient`. Pulls `amount` of `token`
     *         from the caller (who must have approved this contract) into escrow.
     * @return flowId The id of the newly created flow.
     */
    function addFlow(
        address recipient,
        address token,
        uint256 amount,
        uint256 startTime,
        uint256 endTime
    )
        external
        onlyRole(SENDER_ROLE)
        whenNotPaused
        nonReentrant
        returns (uint256 flowId)
    {
        flowId = _addFlow(recipient, token, amount, startTime, endTime);
    }

    /**
     * @notice Create many flows in a single transaction. All arrays must have equal length.
     *         Each flow is created independently and pulls its own `amount` of its `token`
     *         from the caller; the caller must have approved this contract for each token's
     *         cumulative sum across the batch.
     */
    function addFlows(
        address[] calldata recipients,
        address[] calldata tokens,
        uint256[] calldata amounts,
        uint256[] calldata startTimes,
        uint256[] calldata endTimes
    )
        external
        onlyRole(SENDER_ROLE)
        whenNotPaused
        nonReentrant
        returns (uint256[] memory flowIds)
    {
        uint256 n = recipients.length;
        if (
            tokens.length != n ||
            amounts.length != n ||
            startTimes.length != n ||
            endTimes.length != n
        ) {
            revert ArrayLengthMismatch();
        }
        flowIds = new uint256[](n);
        for (uint256 i = 0; i < n; ) {
            flowIds[i] = _addFlow(
                recipients[i],
                tokens[i],
                amounts[i],
                startTimes[i],
                endTimes[i]
            );
            unchecked {
                ++i;
            }
        }
    }

    function _addFlow(
        address recipient,
        address token,
        uint256 amount,
        uint256 startTime,
        uint256 endTime
    ) internal returns (uint256 flowId) {
        if (recipient == address(0) || token == address(0)) revert ZeroAddress();
        if (amount == 0) revert ZeroAmount();
        if (endTime <= startTime) revert InvalidTimeRange();

        flowId = nextFlowId;
        unchecked {
            nextFlowId = flowId + 1;
        }

        _flows[flowId] = Flow({
            token: token,
            recipient: recipient,
            sender: msg.sender,
            amount: amount,
            claimed: 0,
            startTime: startTime,
            endTime: endTime
        });
        _recipientFlowIds[recipient].push(flowId);
        totalEscrowed[token] += amount;

        // Fee-on-transfer / rebasing protection: the flow's stored `amount` is the
        // authoritative record used for the vesting curve and escrow accounting, so
        // the contract must actually receive exactly `amount`. If the token siphons a
        // fee or otherwise delivers less, we revert rather than silently over-promise
        // to the recipient.
        uint256 balBefore = IERC20(token).balanceOf(address(this));
        IERC20(token).safeTransferFrom(msg.sender, address(this), amount);
        uint256 received = IERC20(token).balanceOf(address(this)) - balBefore;
        if (received != amount)
            revert TokenTransferAmountMismatch(token, amount, received);

        emit FlowAdded(
            flowId,
            recipient,
            msg.sender,
            token,
            amount,
            startTime,
            endTime
        );
    }

    //--------------------------------------------------------------------------
    // Mutative — Recipient
    //--------------------------------------------------------------------------

    /**
     * @notice Claim all currently-vested tokens across the given flows. Caller must be
     *         the recipient of every flow in the list.
     * @dev Flows in the list that have nothing claimable right now are skipped silently
     *      (no event, no state change). This keeps batch claims robust against partial
     *      progress: the caller is not forced to pre-filter.
     *
     *      If `autoStakeSymm` is true, any flow in the list whose token is SYMM will be
     *      forwarded into `SYMM_STAKING.deposit(amount, msg.sender)` instead of being
     *      transferred to the recipient. Non-SYMM flows in the same batch are always
     *      transferred to the recipient.
     *
     * @param flowIds Flow ids to claim. Must all be owned by `msg.sender`.
     * @param autoStakeSymm If true, SYMM claims are auto-staked on behalf of the recipient.
     */
    function claim(
        uint256[] calldata flowIds,
        bool autoStakeSymm
    ) external whenNotPaused nonReentrant {
        uint256 n = flowIds.length;
        for (uint256 i = 0; i < n; ) {
            _claim(flowIds[i], autoStakeSymm);
            unchecked {
                ++i;
            }
        }
    }

    function _claim(uint256 flowId, bool autoStakeSymm) internal {
        Flow storage p = _flows[flowId];
        if (p.amount == 0) revert FlowNotFound(flowId);
        if (p.recipient != msg.sender) revert NotRecipient(flowId);

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

        emit Claimed(flowId, msg.sender, p.token, amt, staked);
    }

    //--------------------------------------------------------------------------
    // Admin
    //--------------------------------------------------------------------------

    /**
     * @notice Admin rescue for non-flow tokens. Can only transfer the portion of the
     *         contract's balance that is NOT owed to recipients via `totalEscrowed[token]`.
     *         Intended for tokens accidentally sent to the contract or for reclaiming
     *         residual dust once all flows of a token are fully claimed.
     */
    function rescue(
        address token,
        uint256 amount,
        address to
    ) external onlyRole(DEFAULT_ADMIN_ROLE) nonReentrant {
        if (to == address(0) || token == address(0)) revert ZeroAddress();
        uint256 bal = IERC20(token).balanceOf(address(this));
        uint256 escrowed = totalEscrowed[token];
        uint256 available = bal > escrowed ? bal - escrowed : 0;
        if (amount > available)
            revert InsufficientRescuableBalance(token, available, amount);
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
