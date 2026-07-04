// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.28;

import {Ownable2Step, Ownable} from "@openzeppelin/contracts/access/Ownable2Step.sol";
import {ERC20, IERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {SafeCast} from "@openzeppelin/contracts/utils/math/SafeCast.sol";
import {Checkpoints} from "@openzeppelin/contracts/utils/structs/Checkpoints.sol";
import {ReentrancyGuard} from "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import {IBoostRegistry} from "src/interfaces/IBoostRegistry.sol";

/**
 * @title vlSDT
 * @notice Vote Locked SDT - replaces veSDT with flat voting power and 8-week unstake delay
 * @dev Non-transferable ERC20. Mints on stake, burns on unstake.
 *      totalSupply() always equals total voting power.
 *      Stores checkpoints for satellite contracts to query historical balances.
 *      Uses OpenZeppelin Checkpoints.Trace208 for audited checkpoint management.
 *
 *      Unstake request IDs:
 *      Encoded as (nonce << 160) | owner. To recover owner: address(uint160(id)).
 *      To recover nonce: uint96(id >> 160). Required for off-chain indexing and event parsing.
 *
 *      Early exit:
 *      Enabled only when penaltyConfig.penaltyReceiver != address(0).
 *      Penalty decays linearly: penaltyBps = maxPenaltyBps * remainingTime / totalDelay.
 *      Governance updates to maxPenaltyBps require PENALTY_UPDATE_DELAY before taking effect.
 *
 *      Operators:
 *      vlSDT is the single source of truth for operator authorization across all satellite contracts.
 *      Any contract in the vlSDT ecosystem can call isOperator() to gate privileged actions.
 *      Governance manages the operator set via setOperatorAuthorization().
 *
 *      Delegation:
 *      unstake() enforces amount + BOOST_REGISTRY.delegatedOut(user) <= balance.
 *      stake(), cancelUnstake(), and withdraw() are unaffected by delegation.
 */
contract vlSDT is ERC20, Ownable2Step, ReentrancyGuard {
    using Checkpoints for Checkpoints.Trace208;
    using SafeCast for uint256;

    ///////////////////////////////////////////////////////////////
    /// --- CONSTANTS
    ///////////////////////////////////////////////////////////////

    address public immutable SDT;
    address public immutable VE_SDT;
    address public immutable BOOST_REGISTRY;

    /// @notice Grace period before penalty updates take effect
    /// @dev Protects users from being front-run by governance penalty increases
    uint256 public constant PENALTY_UPDATE_DELAY = 7 days;

    ///////////////////////////////////////////////////////////////
    /// --- STRUCTS
    ///////////////////////////////////////////////////////////////

    struct UnstakeRequest {
        uint160 amount;
        uint48 deadline;
        uint48 createdAt;
    }

    /// @notice Penalty configuration with 2-step update mechanism
    struct PenaltyConfig {
        address penaltyReceiver;
        uint24 maxPenaltyBps;
        uint24 pendingMaxPenaltyBps;
        uint48 effectiveTimestamp;
    }

    ///////////////////////////////////////////////////////////////
    /// --- STORAGE
    ///////////////////////////////////////////////////////////////

    /// @notice Global nonce for generating unique unstake IDs
    /// @dev Init at 1 to avoid costly zero to non-zero storage write for the first unstaker.
    uint96 public nonce = 1;

    /// @notice The delay before unstaked SDT can be withdrawn
    uint160 public unstakeDelay;

    /// @notice Unstake requests by ID. ID = (nonce << 160) | owner
    mapping(uint256 id => UnstakeRequest) public unstakeRequests;

    /// @notice User balance checkpoints for historical queries
    /// @dev Trace208:{uint48 key, uint208 value}. The key is the timestamp and the value is the user's balance
    mapping(address user => Checkpoints.Trace208) internal _userCheckpoints;

    /// @notice Total supply checkpoints for historical queries
    /// @dev Trace208:{uint48 key, uint208 value}. The key is the timestamp and the value is the total supply
    Checkpoints.Trace208 internal _totalSupplyCheckpoints;

    /// @notice Penalty configuration (penaltyReceiver, maxPenalty, pendingMaxPenalty, effectiveTimestamp)
    PenaltyConfig public penaltyConfig;

    /// @notice Addresses authorized as operators across all satellite contracts in the vlSDT ecosystem
    /// @dev Satellite contracts call isOperator() to gate privileged actions. The operator role is
    ///      intentionally agnostic: each satellite contract decides which of its actions operators may perform.
    mapping(address operator => bool) public operators;

    ///////////////////////////////////////////////////////////////
    /// --- EVENTS
    ///////////////////////////////////////////////////////////////

    event Staked(address indexed caller, address indexed recipient, uint256 amount);
    event UnstakeRequested(uint256 indexed id, address indexed owner, uint256 amount, uint256 deadline);
    event UnstakeCancelled(uint256 indexed id, address indexed owner, uint256 amount);
    event UnstakeDelaySet(uint256 oldUnstakeDelay, uint256 newUnstakeDelay);
    event PenaltyReceiverSet(address indexed oldFeeDistributor, address indexed newFeeDistributor);
    event MaxPenaltyUpdateScheduled(uint256 currentMaxBps, uint256 pendingMaxBps, uint256 effectiveTimestamp);
    event MaxPenaltyUpdateApplied(uint256 oldMaxBps, uint256 newMaxBps);
    event OperatorAuthorizationSet(address indexed operator, bool authorized);
    event Withdrawn(uint256 indexed id, address indexed owner, address indexed recipient, uint256 amount);
    event WithdrawnEarly(
        uint256 indexed id, address indexed owner, address indexed recipient, uint256 amount, uint256 penaltyAmount
    );

    ///////////////////////////////////////////////////////////////
    /// --- ERRORS / CONSTRUCTOR
    ///////////////////////////////////////////////////////////////

    error NonTransferable();
    error AmountMustBeGreaterThanZero();
    error AmountExceedsUsableBalance();
    error RecipientCannotBeZeroAddress();
    error BoostRegistryCannotBeZeroAddress();
    error Unauthorized();
    error UnstakeRequestNotFound();
    error UnstakeRequestNotExpired();
    error UnstakeRequestAlreadyExpired();
    error EarlyExitDisabled();
    error InvalidPenalty();
    error NoPendingUpdate();
    error UpdateNotEffectiveYet();

    ///////////////////////////////////////////////////////////////
    /// --- CONSTRUCTOR
    ///////////////////////////////////////////////////////////////

    /// @param _owner The owner of the contract
    /// @param _boostRegistry The address of the BoostRegistry contract
    /// @param _sdt The address of the SDT token
    /// @param _veSDT The address of the veSDT contract (address(0) to disable migration)
    /// @dev The unstake delay is set to 8 weeks
    ///      The initial penalty is set to 25%
    ///      The penalty receiver is set to address(0), disabling early exit until governance enables it
    constructor(address _owner, address _boostRegistry, address _sdt, address _veSDT)
        ERC20("Vote Locked SDT", "vlSDT")
        Ownable(_owner)
    {
        require(_sdt != address(0));
        require(_boostRegistry != address(0), BoostRegistryCannotBeZeroAddress());
        SDT = _sdt;
        VE_SDT = _veSDT;
        BOOST_REGISTRY = _boostRegistry;
        _setUnstakeDelay(8 weeks);
        penaltyConfig = PenaltyConfig({
            penaltyReceiver: address(0), maxPenaltyBps: 2500, pendingMaxPenaltyBps: 0, effectiveTimestamp: 0
        });
    }

    ///////////////////////////////////////////////////////////////
    /// --- ERC20 OVERRIDES
    ///////////////////////////////////////////////////////////////

    /// @dev Disabled.
    function transfer(address, uint256) public pure override returns (bool) {
        revert NonTransferable();
    }

    /// @dev Disabled.
    function transferFrom(address, address, uint256) public pure override returns (bool) {
        revert NonTransferable();
    }

    /// @dev Disabled.
    function approve(address, uint256) public pure override returns (bool) {
        revert NonTransferable();
    }

    /// @dev Disabled.
    function allowance(address, address) public pure override returns (uint256) {
        return 0;
    }

    ///////////////////////////////////////////////////////////////
    /// --- STAKING
    ///////////////////////////////////////////////////////////////

    /**
     * @notice Stake SDT to receive vlSDT voting power
     * @dev Caller must have approved this contract to spend SDT.
     *      Creates checkpoints for recipient and totalSupply.
     * @param amount Amount of SDT to stake
     * @param recipient Address to receive the voting power
     */
    function stake(uint256 amount, address recipient) external {
        require(amount > 0, AmountMustBeGreaterThanZero());
        require(recipient != address(0), RecipientCannotBeZeroAddress());

        IERC20(SDT).transferFrom(msg.sender, address(this), amount);
        _mint(recipient, amount);

        _checkpoint(recipient);
        emit Staked(msg.sender, recipient, amount);
    }

    /**
     * @notice Request to unstake vlSDT
     * @dev Burns vlSDT immediately. SDT becomes withdrawable after unstakeDelay.
     *      Cannot unstake more than available (balance - delegatedOut).
     *      Creates checkpoints for caller and totalSupply.
     * @param amount Amount to unstake
     * @return id The unstake request ID for later withdrawal
     */
    function unstake(uint256 amount) external returns (uint256 id) {
        require(amount > 0, AmountMustBeGreaterThanZero());
        uint256 balance = balanceOf(msg.sender);
        uint256 delegatedOut = IBoostRegistry(BOOST_REGISTRY).delegatedOut(msg.sender);
        require(amount + delegatedOut <= balance, AmountExceedsUsableBalance());

        // Generate unique ID: (nonce++ << 160) | msg.sender
        // The nonce used is the current one
        id = (uint256(nonce++) << 160) | uint256(uint160(msg.sender));

        uint48 deadline = uint48(block.timestamp + uint256(unstakeDelay));
        unstakeRequests[id] =
            UnstakeRequest({amount: amount.toUint160(), deadline: deadline, createdAt: uint48(block.timestamp)});

        _burn(msg.sender, amount);
        _checkpoint(msg.sender, balance - amount);

        emit UnstakeRequested(id, msg.sender, amount, uint256(deadline));
    }

    /**
     * @notice Cancel a pending unstake request
     * @dev Restores voting power by minting vlSDT back to owner.
     *      Only the owner (encoded in ID) can cancel.
     *      Creates checkpoints for owner and totalSupply.
     * @param id The unstake request ID
     */
    function cancelUnstake(uint256 id) external {
        // Extract owner from ID = (nonce << 160) | owner
        address owner = address(uint160(id));
        require(msg.sender == owner, Unauthorized());

        UnstakeRequest memory request = unstakeRequests[id];
        uint160 amount = request.amount;
        require(amount > 0, UnstakeRequestNotFound());

        delete unstakeRequests[id];

        // Mint vlSDT back to owner
        _mint(owner, amount);
        _checkpoint(owner);

        emit UnstakeCancelled(id, owner, uint256(amount));
    }

    function _setUnstakeDelay(uint256 _unstakeDelay) internal {
        emit UnstakeDelaySet(uint256(unstakeDelay), _unstakeDelay);
        unstakeDelay = _unstakeDelay.toUint160();
    }

    ///////////////////////////////////////////////////////////////
    /// --- WITHDRAWAL
    ///////////////////////////////////////////////////////////////

    /**
     * @notice Withdraw SDT after unstake delay has passed
     * @dev Only the owner (encoded in ID) can withdraw.
     *      Deletes the unstake request and transfers SDT.
     *      No checkpoint needed - balance already reduced on unstake.
     * @param id The unstake request ID
     * @param recipient Address to receive the SDT
     */
    function withdraw(uint256 id, address recipient) external {
        require(recipient != address(0), RecipientCannotBeZeroAddress());

        // Extract owner from ID = (nonce << 160) | owner
        address owner = address(uint160(id));
        require(msg.sender == owner, Unauthorized());

        UnstakeRequest memory request = unstakeRequests[id];
        uint160 amount = request.amount;
        require(amount > 0, UnstakeRequestNotFound());
        require(block.timestamp >= request.deadline, UnstakeRequestNotExpired());

        delete unstakeRequests[id];
        IERC20(SDT).transfer(recipient, amount);

        emit Withdrawn(id, owner, recipient, uint256(amount));
    }

    /**
     * @notice Withdraw SDT early by paying a time-based penalty
     * @dev Penalty decreases linearly from maxPenaltyBps at t=createdAt to 0% at t=deadline.
     *      Penalty SDT is transferred to penaltyReceiver for redistribution to vlSDT holders.
     *      Feature is disabled when penaltyReceiver == address(0).
     *      vlSDT is already burned during unstake(), so boost delegation is unaffected.
     * @param id The unstake request ID
     * @param recipient Address to receive the SDT (after penalty)
     */
    function withdrawEarly(uint256 id, address recipient) external nonReentrant {
        require(recipient != address(0), RecipientCannotBeZeroAddress());
        PenaltyConfig memory config = penaltyConfig;
        require(config.penaltyReceiver != address(0), EarlyExitDisabled());

        // Extract owner from ID = (nonce << 160) | owner
        address owner = address(uint160(id));
        require(msg.sender == owner, Unauthorized());

        UnstakeRequest memory request = unstakeRequests[id];
        require(request.amount > 0, UnstakeRequestNotFound());
        require(block.timestamp < uint256(request.deadline), UnstakeRequestAlreadyExpired());
        (uint256 penaltyAmount,, uint256 userReceives) = _calculatePenalty(request, config.maxPenaltyBps);

        delete unstakeRequests[id];

        // Transfer penalty to penaltyReceiver for redistribution to vlSDT holders
        if (penaltyAmount > 0) IERC20(SDT).transfer(config.penaltyReceiver, penaltyAmount);
        // Transfer remaining SDT to recipient
        IERC20(SDT).transfer(recipient, userReceives);

        emit WithdrawnEarly(id, owner, recipient, uint256(request.amount), penaltyAmount);
    }

    ///////////////////////////////////////////////////////////////
    /// --- PENALTY
    ///////////////////////////////////////////////////////////////

    /**
     * @notice Calculate the penalty for early withdrawal of a specific unstake request
     * @dev Returns current penalty amount and basis points based on remaining time.
     *      Penalty naturally rounds down (user-friendly).
     * @param id The unstake request ID
     * @return penaltyAmount Amount of SDT that would be paid as penalty (in wei)
     * @return penaltyBps Current penalty in basis points (e.g., 2500 = 25%)
     * @return userReceives Amount of SDT user would receive after penalty (in wei)
     * @return canWithdrawEarly Whether early withdrawal is currently allowed
     */
    function calculatePenalty(uint256 id)
        external
        view
        returns (uint256 penaltyAmount, uint256 penaltyBps, uint256 userReceives, bool canWithdrawEarly)
    {
        UnstakeRequest memory request = unstakeRequests[id];
        PenaltyConfig memory config = penaltyConfig;

        if (request.amount == 0) return (0, 0, 0, false);
        if (config.penaltyReceiver == address(0)) return (0, 0, 0, false);
        if (block.timestamp >= uint256(request.deadline)) return (0, 0, 0, false);

        canWithdrawEarly = true;
        (penaltyAmount, penaltyBps, userReceives) = _calculatePenalty(request, config.maxPenaltyBps);
    }

    function _calculatePenalty(UnstakeRequest memory request, uint24 maxPenaltyBps)
        internal
        view
        returns (uint256 penaltyAmount, uint256 penaltyBps, uint256 userReceives)
    {
        uint256 elapsed = block.timestamp - uint256(request.createdAt);
        uint256 totalDelay = uint256(request.deadline) - uint256(request.createdAt);
        uint256 remainingTime = totalDelay - elapsed;

        penaltyBps = (uint256(maxPenaltyBps) * remainingTime) / totalDelay;

        uint256 amount = uint256(request.amount);
        penaltyAmount = (amount * penaltyBps) / 10_000;
        userReceives = amount - penaltyAmount;
    }

    ///////////////////////////////////////////////////////////////
    /// --- MIGRATION
    ///////////////////////////////////////////////////////////////

    /**
     * @notice Credit migrated tokens from veSDT
     * @dev Only callable by veSDT contract during migration.
     *      veSDT transfers SDT to this contract before calling.
     *      Creates checkpoints for user and totalSupply.
     * @param user The user migrating
     * @param amount The amount of SDT being migrated
     */
    function migrateFrom(address user, uint256 amount) external {
        require(amount > 0, AmountMustBeGreaterThanZero());
        require(msg.sender == VE_SDT, Unauthorized());

        _mint(user, amount);
        _checkpoint(user);

        emit Staked(VE_SDT, user, amount);
    }

    ///////////////////////////////////////////////////////////////
    /// --- CHECKPOINTS
    ///////////////////////////////////////////////////////////////

    /**
     * @notice Get user's balance at a specific past timestamp
     * @dev Used by FeeDistributor to compute reward shares at week boundaries.
     * @param user The address to query
     * @param timestamp The past timestamp to query
     * @return balance The user's balance at that timestamp
     */
    function balanceOfAt(address user, uint256 timestamp) external view returns (uint256 balance) {
        balance = _userCheckpoints[user].upperLookup(timestamp.toUint48());
    }

    /**
     * @notice Get total supply at a specific past timestamp
     * @dev Uses OZ Checkpoints.upperLookup for audited binary search.
     *      Used by FeeDistributor to compute reward shares at week boundaries.
     * @param timestamp The past timestamp to query
     * @return supply The total supply at that timestamp
     */
    function totalSupplyAt(uint256 timestamp) external view returns (uint256 supply) {
        supply = _totalSupplyCheckpoints.upperLookup(timestamp.toUint48());
    }

    /**
     * @notice Get the number of checkpoints for a user
     * @param user The address to query
     * @return nbrOfCheckpoints The number of checkpoints for the user
     */
    function numCheckpoints(address user) external view returns (uint256 nbrOfCheckpoints) {
        nbrOfCheckpoints = _userCheckpoints[user].length();
    }

    /**
     * @notice Get a specific checkpoint for a user
     * @param user The address to query
     * @param index The checkpoint index
     * @return timestamp The checkpoint timestamp
     * @return balance The balance at that checkpoint
     */
    function checkpoints(address user, uint256 index) external view returns (uint48 timestamp, uint208 balance) {
        Checkpoints.Checkpoint208 memory cp = _userCheckpoints[user].at(index.toUint32());
        timestamp = cp._key;
        balance = cp._value;
    }

    /**
     * @notice Record a checkpoint for a user's balance and total supply
     * @dev Called after every balance change. Uses OZ push which handles same-block updates.
     * @param user The user to checkpoint
     */
    function _checkpoint(address user) internal {
        _checkpoint(user, balanceOf(user));
    }

    /**
     * @notice Record a checkpoint for a user's balance and total supply
     * @dev Called after every balance change. Uses OZ push which:
     *      - Updates existing checkpoint if same timestamp (gas optimization)
     *      - Appends new checkpoint if different timestamp
     *      - Reverts if timestamp < last checkpoint (impossible with block.timestamp)
     *      - Handles same-block updates automatically (no duplicate checkpoints)
     * @param user The user to checkpoint
     * @param amount The user's new balance
     */
    function _checkpoint(address user, uint256 amount) internal {
        _userCheckpoints[user].push(uint48(block.timestamp), amount.toUint208());
        _totalSupplyCheckpoints.push(uint48(block.timestamp), totalSupply().toUint208());
    }

    ///////////////////////////////////////////////////////////////
    /// --- OPERATORS
    ///////////////////////////////////////////////////////////////

    /**
     * @notice Check if an address is an authorized operator
     * @dev Satellite contracts call this to gate privileged actions. Each contract decides independently
     *      which of its functions operators may invoke.
     * @param operator Address to check
     * @return authorized True if authorized, false otherwise
     */
    function isOperator(address operator) external view returns (bool authorized) {
        authorized = operators[operator];
    }

    ///////////////////////////////////////////////////////////////
    /// --- GOVERNANCE
    ///////////////////////////////////////////////////////////////

    /**
     * @notice Set the unstake delay
     * @dev Only callable by owner.
     * @param _unstakeDelay The new unstake delay
     */
    function setUnstakeDelay(uint256 _unstakeDelay) external onlyOwner {
        _setUnstakeDelay(_unstakeDelay);
    }

    /**
     * @notice Set the penalty receiver address for receiving penalty SDT
     * @dev Setting to address(0) disables the early exit feature.
     *      Only callable by owner (governance).
     * @param _penaltyReceiver New penalty receiver address (or address(0) to disable)
     */
    function setPenaltyReceiver(address _penaltyReceiver) external onlyOwner {
        emit PenaltyReceiverSet(penaltyConfig.penaltyReceiver, _penaltyReceiver);
        penaltyConfig.penaltyReceiver = _penaltyReceiver;
    }

    /**
     * @notice Schedule an update to the maximum penalty
     * @dev Gives users PENALTY_UPDATE_DELAY time before the new penalty takes effect.
     *      Can be called again to override a pending update (resets the cooldown).
     *      To effectively cancel a pending update, call with the current maxPenaltyBps value.
     * @param _newMaxPenaltyBps New maximum penalty in basis points (e.g., 5000 = 50%)
     */
    function scheduleMaxPenaltyUpdate(uint256 _newMaxPenaltyBps) external onlyOwner {
        require(_newMaxPenaltyBps <= 10_000, InvalidPenalty());

        uint48 effectiveAt = uint48(block.timestamp + PENALTY_UPDATE_DELAY);
        PenaltyConfig storage config = penaltyConfig;
        penaltyConfig.pendingMaxPenaltyBps = uint24(_newMaxPenaltyBps);
        penaltyConfig.effectiveTimestamp = effectiveAt;

        emit MaxPenaltyUpdateScheduled(uint256(config.maxPenaltyBps), _newMaxPenaltyBps, uint256(effectiveAt));
    }

    /**
     * @notice Authorize or revoke an operator across the vlSDT ecosystem
     * @dev The operator role is agnostic: satellite contracts call isOperator() and decide
     *      independently which of their privileged actions operators may perform.
     *      Only callable by owner (governance).
     * @param operator Address to authorize or revoke
     * @param authorized True to authorize, false to revoke
     */
    function setOperatorAuthorization(address operator, bool authorized) external onlyOwner {
        operators[operator] = authorized;
        emit OperatorAuthorizationSet(operator, authorized);
    }

    /**
     * @notice Apply a pending maximum penalty update
     * @dev Can be called by anyone after effectiveTimestamp.
     *      Reverts if no pending update or if grace period hasn't elapsed.
     */
    function applyMaxPenaltyUpdate() external {
        PenaltyConfig memory config = penaltyConfig;

        uint256 effectiveTimestamp = uint256(config.effectiveTimestamp);
        require(effectiveTimestamp != 0, NoPendingUpdate());
        require(block.timestamp >= effectiveTimestamp, UpdateNotEffectiveYet());

        uint24 newMax = config.pendingMaxPenaltyBps;
        penaltyConfig = PenaltyConfig({
            penaltyReceiver: config.penaltyReceiver,
            maxPenaltyBps: newMax,
            pendingMaxPenaltyBps: 0,
            effectiveTimestamp: 0
        });

        emit MaxPenaltyUpdateApplied(uint256(config.maxPenaltyBps), uint256(newMax));
    }
}
