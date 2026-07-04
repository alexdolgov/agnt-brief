// SPDX-License-Identifier: BUSL-1.1
// Last deployed from commit: 9de6af25d8d8bff9c6c6733fb9d195ff59f6c4a2;
pragma solidity 0.8.17;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";

/**
 * @title PrimeBuybackDistributor
 * @notice Distributes PRIME tokens bought back from the open market to a fixed set of
 *         recipients in proportion to per-recipient weights. Supports an arbitrary number
 *         of owner-triggered top-ups; each top-up is split pro-rata across all recipients
 *         and is flushed to them via owner-only batched push distributions.
 */
contract PrimeBuybackDistributor is Ownable, ReentrancyGuard {
    using SafeERC20 for IERC20;

    /// @dev 1e18 fixed-point scale for the cumulative-per-weight accumulator.
    uint256 private constant PRECISION = 1e18;

    /// @notice PRIME token this distributor pays out in.
    IERC20 public immutable primeToken;

    /// @notice Sum of every recipient's weight. Enforced at finalization.
    uint256 public immutable totalWeight;

    /// @notice Ordered list of recipients (enables batched iteration).
    address[] public recipients;

    /// @notice Per-recipient weight. 0 means "not a recipient".
    mapping(address => uint256) public weight;

    /// @notice Cumulative PRIME already pushed to each recipient.
    mapping(address => uint256) public paidOut;

    /// @notice Cumulative PRIME credited per unit of weight, scaled by PRECISION.
    uint256 public cumulativePerWeight;

    /// @notice Cumulative PRIME registered via `registerTopUp`.
    uint256 public totalRegistered;

    /// @notice Cumulative PRIME pushed out via `distribute`/`distributeAll`.
    uint256 public totalDistributed;

    /// @notice Running sum of weights added via `addRecipients`; must equal `totalWeight` at finalize.
    uint256 public loadedWeightSum;

    /// @notice Flipped true by `finalizeInitialization`. Locks init, unlocks distribution.
    bool public initialized;

    /// Errors

    /// @dev Invalid / zero address argument.
    error InvalidAddress();

    /// @dev Array length mismatch between recipients and weights.
    error InputLengthMismatch();

    /// @dev Zero weight not permitted.
    error ZeroWeight();

    /// @dev Recipient has already been added.
    error DuplicateRecipient(address recipient);

    /// @dev Initialization already finalized.
    error AlreadyInitialized();

    /// @dev Operation requires `initialized == true`.
    error NotInitialized();

    /// @dev `loadedWeightSum` does not match `totalWeight` at finalize.
    error TotalWeightMismatch(uint256 got, uint256 expected);

    /// @dev Attempting to finalize with no recipients loaded.
    error NoRecipients();

    /// @dev Zero amount argument.
    error ZeroAmount();

    /// @dev Top-up amount is below 1 wei per weight — would not advance the index.
    error TopUpTooSmall();

    /// @dev Contract PRIME balance is below what this operation requires.
    error InsufficientBalance(uint256 have, uint256 need);

    /// @dev `start > end` or `end > recipients.length`.
    error InvalidRange();

    /// Events

    event RecipientAdded(address indexed user, uint256 weight);

    event InitializationFinalized(uint256 recipientCount, uint256 totalWeight);

    event TopUpRegistered(
        uint256 amount,
        uint256 perWeightDelta,
        uint256 cumulativePerWeight
    );

    event Distributed(address indexed user, uint256 amount);

    event RecipientSkipped(address indexed user, uint256 skippedAmount);

    event TokenRescued(address indexed token, address indexed to, uint256 amount);

    /// Constructor

    constructor(address primeToken_, uint256 totalWeight_, address owner_) {
        if (primeToken_ == address(0)) revert InvalidAddress();
        if (owner_ == address(0)) revert InvalidAddress();
        if (totalWeight_ == 0) revert ZeroWeight();

        primeToken = IERC20(primeToken_);
        totalWeight = totalWeight_;
        _transferOwnership(owner_);
    }

    /// Initialization

    /**
     * @notice Add a batch of recipients with their weights. Callable any number of times
     *         before `finalizeInitialization`. Rejects zero addresses, zero weights, and
     *         duplicate recipients.
     */
    function addRecipients(
        address[] calldata addrs,
        uint256[] calldata weights
    ) external onlyOwner {
        if (initialized) revert AlreadyInitialized();
        uint256 n = addrs.length;
        if (n != weights.length) revert InputLengthMismatch();

        uint256 added;
        for (uint256 i; i != n; ++i) {
            address a = addrs[i];
            uint256 w = weights[i];
            if (a == address(0)) revert InvalidAddress();
            if (w == 0) revert ZeroWeight();
            if (weight[a] != 0) revert DuplicateRecipient(a);

            weight[a] = w;
            recipients.push(a);
            added += w;
            emit RecipientAdded(a, w);
        }
        loadedWeightSum += added;
    }

    /**
     * @notice Finalize initialization. Reverts if no recipients were loaded or if the
     *         running weight sum does not match the immutable `totalWeight` set at
     *         construction time.
     */
    function finalizeInitialization() external onlyOwner {
        if (initialized) revert AlreadyInitialized();
        if (recipients.length == 0) revert NoRecipients();
        if (loadedWeightSum != totalWeight) {
            revert TotalWeightMismatch(loadedWeightSum, totalWeight);
        }
        initialized = true;
        emit InitializationFinalized(recipients.length, totalWeight);
    }

    /// Top-up

    /**
     * @notice Register an incoming PRIME top-up. The owner MUST transfer `amount` of
     *         PRIME to this contract before calling this function; otherwise the balance
     *         check below will revert. Advances the cumulative-per-weight index so that
     *         every recipient's pending entitlement grows pro-rata.
     */
    function registerTopUp(uint256 amount) external onlyOwner {
        if (!initialized) revert NotInitialized();
        if (amount == 0) revert ZeroAmount();

        uint256 bal = primeToken.balanceOf(address(this));
        uint256 owed = totalRegistered - totalDistributed;
        uint256 need = owed + amount;
        if (bal < need) revert InsufficientBalance(bal, need);

        uint256 delta = (amount * PRECISION) / totalWeight;
        if (delta == 0) revert TopUpTooSmall();

        cumulativePerWeight += delta;
        totalRegistered += amount;

        emit TopUpRegistered(amount, delta, cumulativePerWeight);
    }

    /// Distribution

    /**
     * @notice Push each recipient in [start, end) their pending PRIME. No-ops (zero
     *         pending) are skipped silently. `start == end` is a no-op.
     */
    function distribute(uint256 start, uint256 end) external onlyOwner nonReentrant {
        _distribute(start, end);
    }

    /**
     * @notice Push every recipient their pending PRIME in a single transaction. Will
     *         run out of gas for large recipient sets; use `distribute(start, end)` in
     *         windows instead in production.
     */
    function distributeAll() external onlyOwner nonReentrant {
        _distribute(0, recipients.length);
    }

    /**
     * @notice Zero out a recipient's pending entitlement without transferring — an
     *         escape hatch for recipients that cannot receive PRIME (e.g. a contract
     *         whose `transfer` hook reverts). The un-transferred amount stays as
     *         contract dust and is recoverable via `rescueToken`.
     */
    function forceZeroPending(address user) external onlyOwner nonReentrant {
        if (!initialized) revert NotInitialized();
        if (weight[user] == 0) revert InvalidAddress();

        uint256 entitled = (weight[user] * cumulativePerWeight) / PRECISION;
        uint256 skipped = entitled - paidOut[user];
        paidOut[user] = entitled;

        emit RecipientSkipped(user, skipped);
    }

    /// Rescue

    /**
     * @notice Owner sweep of any ERC20 held by this contract. Use at end-of-programme
     *         to collect accumulated rounding dust, or to recover accidentally-sent
     *         tokens.
     */
    function rescueToken(
        address token,
        address to,
        uint256 amount
    ) external onlyOwner nonReentrant {
        if (token == address(0)) revert InvalidAddress();
        if (to == address(0)) revert InvalidAddress();

        IERC20(token).safeTransfer(to, amount);
        emit TokenRescued(token, to, amount);
    }

    /// Views

    function recipientsLength() external view returns (uint256) {
        return recipients.length;
    }

    function entitledOf(address user) public view returns (uint256) {
        return (weight[user] * cumulativePerWeight) / PRECISION;
    }

    function pendingOf(address user) external view returns (uint256) {
        uint256 entitled = entitledOf(user);
        uint256 claimed = paidOut[user];
        return entitled > claimed ? entitled - claimed : 0;
    }

    function recipientsSlice(
        uint256 start,
        uint256 end
    ) external view returns (address[] memory out) {
        uint256 n = recipients.length;
        if (end > n) end = n;
        if (start >= end) return new address[](0);
        out = new address[](end - start);
        for (uint256 i; i != out.length; ++i) {
            out[i] = recipients[start + i];
        }
    }

    /// Internal

    function _distribute(uint256 start, uint256 end) internal {
        if (!initialized) revert NotInitialized();
        uint256 n = recipients.length;
        if (start > end || end > n) revert InvalidRange();
        if (start == end) return;

        uint256 idx = cumulativePerWeight;
        uint256 batchTotal;

        for (uint256 i = start; i != end; ++i) {
            address user = recipients[i];
            uint256 entitled = (weight[user] * idx) / PRECISION;
            uint256 claimed = paidOut[user];
            if (entitled > claimed) {
                uint256 owed = entitled - claimed;
                paidOut[user] = entitled;
                batchTotal += owed;
                primeToken.safeTransfer(user, owed);
                emit Distributed(user, owed);
            }
        }

        if (batchTotal != 0) {
            totalDistributed += batchTotal;
        }
    }
}
