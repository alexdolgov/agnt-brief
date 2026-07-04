// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/utils/ReentrancyGuardUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/utils/PausableUpgradeable.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

contract Vault is
    Initializable,
    UUPSUpgradeable,
    AccessControlUpgradeable,
    ReentrancyGuardUpgradeable,
    PausableUpgradeable
{
    using SafeERC20 for IERC20;

    // Roles
    bytes32 public constant ADMIN_ROLE = keccak256("ADMIN_ROLE");
    bytes32 public constant PAUSER_ROLE = keccak256("PAUSER_ROLE");
    bytes32 public constant FREEZER_ROLE = keccak256("FREEZER_ROLE");

    // Position structure
    struct Position {
        address user; // User who made the deposit
        address token; // Token being deposited
        uint256 amount; // Amount deposited
        uint256 lockDuration; // Lock duration in seconds
        uint256 depositTime; // Timestamp when deposit was made
        uint256 unlockTime; // Timestamp when position can be withdrawn
        bool isWithdrawn; // Whether position has been withdrawn
        bool isEarlyWithdrawRequested; // Whether early withdrawal was requested
    }

    // Variables
    uint256 private _nextPositionId;
    uint256 public earlyWithdrawCooldownPeriod;
    bool public isFrozen;
    mapping(address => bool) private _tokenFrozen;
    mapping(address => uint256) private _totalAmounts;
    mapping(uint256 => Position) private _positions;
    mapping(address => uint256[]) private _userPositions;
    mapping(address => bool) private _isSupportedTokens;
    address[] private _supportedTokens;

    uint256[41] private __gap;

    // Events
    event Deposit(
        address indexed user,
        uint256 indexed positionId,
        address indexed token,
        uint256 amount,
        uint256 lockDuration,
        uint256 unlockTime
    );
    event Withdraw(
        address indexed user, uint256 indexed positionId, address indexed token, uint256 amount, bool isEarlyWithdraw
    );
    event EarlyWithdrawRequested(address indexed user, uint256 indexed positionId, uint256 unlockTime);
    event LockTimeExtended(address indexed user, uint256 indexed positionId, uint256 lockDuration, uint256 unlockTime);
    event EarlyWithdrawCooldownPeriodUpdated(uint256 oldCooldownPeriod, uint256 newCooldownPeriod);

    event Frozen(address indexed admin);
    event Unfrozen(address indexed admin);
    event TokenFrozen(address indexed admin, address indexed token);
    event TokenUnfrozen(address indexed admin, address indexed token);

    // Errors
    error TokenNotSupported();
    error InvalidAmount();
    error UnauthorizedAccess();
    error PositionAlreadyWithdrawn();
    error EarlyWithdrawAlreadyRequested();
    error UnlockTimeNotReached();
    error CannotShortenLockTime();
    error VaultIsFrozen();
    error TokenIsFrozen();
    error EarlyWithdrawNotBeneficial();

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function initialize(address owner, uint256 earlyWithdrawCooldownPeriod_, address[] memory supportedTokens_)
        public
        initializer
    {
        __AccessControl_init();
        __ReentrancyGuard_init();
        __UUPSUpgradeable_init();
        __Pausable_init();
        _nextPositionId = 1;

        // Grant default admin role to the owner
        _grantRole(DEFAULT_ADMIN_ROLE, owner);
        _grantRole(ADMIN_ROLE, owner);
        _grantRole(PAUSER_ROLE, owner);
        _grantRole(FREEZER_ROLE, owner);

        earlyWithdrawCooldownPeriod = earlyWithdrawCooldownPeriod_;

        // Set initial supported tokens
        for (uint256 i = 0; i < supportedTokens_.length; i++) {
            if (!_isSupportedTokens[supportedTokens_[i]]) {
                _isSupportedTokens[supportedTokens_[i]] = true;
                _supportedTokens.push(supportedTokens_[i]);
            }
        }
    }

    /**
     * @notice Authorize contract upgrades (only default admin can upgrade)
     * @param newImplementation The address of the new implementation
     */
    function _authorizeUpgrade(address newImplementation) internal override onlyRole(DEFAULT_ADMIN_ROLE) {}

    /**
     * @notice Pause the contract (only pauser role)
     */
    function pause() external onlyRole(PAUSER_ROLE) {
        _pause();
    }

    /**
     * @notice Unpause the contract (only pauser role)
     */
    function unpause() external onlyRole(PAUSER_ROLE) {
        _unpause();
    }

    /**
     * @notice Deposit tokens with a lock duration
     * @param token The token address to deposit
     * @param amount The amount to deposit
     * @param lockDuration The lock duration in seconds
     * @return positionId The ID of the created position
     */
    function deposit(address token, uint256 amount, uint256 lockDuration)
        external
        nonReentrant
        whenNotPaused
        returns (uint256 positionId)
    {
        if (isFrozen) revert VaultIsFrozen();
        if (_tokenFrozen[token]) revert TokenIsFrozen();
        if (!_isSupportedTokens[token]) revert TokenNotSupported();
        if (amount == 0) revert InvalidAmount();

        positionId = _nextPositionId++;
        uint256 unlockTime = block.timestamp + lockDuration;

        _positions[positionId] = Position({
            user: msg.sender,
            token: token,
            amount: amount,
            lockDuration: lockDuration,
            depositTime: block.timestamp,
            unlockTime: unlockTime,
            isWithdrawn: false,
            isEarlyWithdrawRequested: false
        });

        _userPositions[msg.sender].push(positionId);
        _totalAmounts[token] += amount;

        // Transfer tokens
        IERC20(token).safeTransferFrom(msg.sender, address(this), amount);

        _deposit(positionId, msg.sender, token, amount, lockDuration);

        emit Deposit(msg.sender, positionId, token, amount, lockDuration, unlockTime);
    }

    /**
     * @notice Internal hook called after deposit
     * @param positionId The position ID that was created
     * @param user The user who made the deposit
     * @param token The token that was deposited
     * @param amount The amount that was deposited
     * @param lockDuration The lock duration of the position
     */
    function _deposit(uint256 positionId, address user, address token, uint256 amount, uint256 lockDuration)
        internal
        virtual
    {
        // Default implementation does nothing
        // Override in derived contracts to add custom logic
    }

    /**
     * @notice Withdraw tokens from a position (supports both normal and early withdrawal)
     * @param positionId The position ID to withdraw from
     */
    function withdraw(uint256 positionId) external nonReentrant whenNotPaused {
        Position storage position = _positions[positionId];

        if (position.user != msg.sender) revert UnauthorizedAccess();
        if (position.isWithdrawn) revert PositionAlreadyWithdrawn();

        if (block.timestamp < position.unlockTime) {
            revert UnlockTimeNotReached();
        }

        position.isWithdrawn = true;
        _totalAmounts[position.token] -= position.amount;

        _withdraw(positionId, msg.sender, position.token, position.amount, position.isEarlyWithdrawRequested);

        IERC20(position.token).safeTransfer(msg.sender, position.amount);

        emit Withdraw(msg.sender, positionId, position.token, position.amount, position.isEarlyWithdrawRequested);
    }

    /**
     * @notice Internal hook called before withdraw
     * @param positionId The position ID being withdrawn
     * @param user The user who is withdrawing
     * @param token The token being withdrawn
     * @param amount The amount being withdrawn
     * @param isEarlyWithdraw Whether this is an early withdrawal
     */
    function _withdraw(uint256 positionId, address user, address token, uint256 amount, bool isEarlyWithdraw)
        internal
        virtual
    {
        // Default implementation does nothing
        // Override in derived contracts to add custom logic
    }

    /**
     * @notice Request early withdrawal (requires cooldown period)
     * @param positionId The position ID to request early withdrawal for
     */
    function requestEarlyWithdraw(uint256 positionId) external whenNotPaused {
        Position storage position = _positions[positionId];

        if (position.user != msg.sender) revert UnauthorizedAccess();
        if (position.isWithdrawn) revert PositionAlreadyWithdrawn();
        if (position.isEarlyWithdrawRequested) revert EarlyWithdrawAlreadyRequested();

        uint256 earlyUnlockTime = block.timestamp + earlyWithdrawCooldownPeriod;
        if (earlyUnlockTime >= position.unlockTime) revert EarlyWithdrawNotBeneficial();

        position.isEarlyWithdrawRequested = true;
        position.unlockTime = earlyUnlockTime;

        emit EarlyWithdrawRequested(msg.sender, positionId, position.unlockTime);
    }

    /**
     * @notice Extend the lock time of a position
     * @param positionId The position ID to extend
     * @param lockDuration New lock duration in seconds from current time
     */
    function extendLockTime(uint256 positionId, uint256 lockDuration) external whenNotPaused {
        Position storage position = _positions[positionId];

        if (position.user != msg.sender) revert UnauthorizedAccess();
        if (position.isWithdrawn) revert PositionAlreadyWithdrawn();
        if (position.isEarlyWithdrawRequested) revert EarlyWithdrawAlreadyRequested();

        uint256 unlockTime = block.timestamp + lockDuration;
        if (unlockTime <= position.unlockTime) revert CannotShortenLockTime();

        position.unlockTime = unlockTime;
        position.lockDuration = lockDuration;

        emit LockTimeExtended(msg.sender, positionId, lockDuration, unlockTime);
    }

    /**
     * @notice Add support for multiple tokens (only admin)
     * @param tokens The token addresses to add support for
     */
    function addSupportedTokens(address[] calldata tokens) external onlyRole(ADMIN_ROLE) {
        for (uint256 i = 0; i < tokens.length; i++) {
            if (!_isSupportedTokens[tokens[i]]) {
                _isSupportedTokens[tokens[i]] = true;
                _supportedTokens.push(tokens[i]);
            }
        }
    }

    /**
     * @notice Remove support for multiple tokens (only admin)
     * @param tokens The token addresses to remove support for
     */
    function removeSupportedTokens(address[] calldata tokens) external onlyRole(ADMIN_ROLE) {
        for (uint256 i = 0; i < tokens.length; i++) {
            if (_isSupportedTokens[tokens[i]]) {
                _isSupportedTokens[tokens[i]] = false;
                for (uint256 j = 0; j < _supportedTokens.length; j++) {
                    if (_supportedTokens[j] == tokens[i]) {
                        _supportedTokens[j] = _supportedTokens[_supportedTokens.length - 1];
                        _supportedTokens.pop();
                        break;
                    }
                }
            }
        }
    }

    /**
     * @notice Set early withdraw cooldown period (only admin)
     * @param _earlyWithdrawCooldownPeriod New cooldown period in seconds
     */
    function setEarlyWithdrawCooldownPeriod(uint256 _earlyWithdrawCooldownPeriod) external onlyRole(ADMIN_ROLE) {
        uint256 oldCooldownPeriod = earlyWithdrawCooldownPeriod;
        earlyWithdrawCooldownPeriod = _earlyWithdrawCooldownPeriod;
        emit EarlyWithdrawCooldownPeriodUpdated(oldCooldownPeriod, _earlyWithdrawCooldownPeriod);
    }

    /**
     * @notice Freeze the entire contract (only freezer role)
     * @dev When frozen, only withdrawals are allowed, deposits are blocked for all tokens
     */
    function freeze() external onlyRole(FREEZER_ROLE) {
        isFrozen = true;
        emit Frozen(msg.sender);
    }

    /**
     * @notice Unfreeze the entire contract (only freezer role)
     * @dev When unfrozen, both deposits and withdrawals are allowed for all tokens
     */
    function unfreeze() external onlyRole(FREEZER_ROLE) {
        isFrozen = false;
        emit Unfrozen(msg.sender);
    }

    /**
     * @notice Freeze a specific token (only freezer role)
     * @dev When a token is frozen, deposits are blocked for that specific token only
     * @param token The token address to freeze
     */
    function freezeToken(address token) external onlyRole(FREEZER_ROLE) {
        if (!_isSupportedTokens[token]) revert TokenNotSupported();
        _tokenFrozen[token] = true;
        emit TokenFrozen(msg.sender, token);
    }

    /**
     * @notice Unfreeze a specific token (only freezer role)
     * @dev When a token is unfrozen, deposits are allowed for that token (if contract is not globally frozen)
     * @param token The token address to unfreeze
     */
    function unfreezeToken(address token) external onlyRole(FREEZER_ROLE) {
        _tokenFrozen[token] = false;
        emit TokenUnfrozen(msg.sender, token);
    }

    /**
     * @notice Get the total amount of a specific token currently locked in the vault
     * @param token The token address to query
     * @return The total amount of the token in the vault
     */
    function getTotalAmount(address token) external view returns (uint256) {
        return _totalAmounts[token];
    }

    /**
     * @notice Get the list of supported tokens
     * @return Array of supported token addresses
     */
    function getSupportedTokens() external view returns (address[] memory) {
        return _supportedTokens;
    }

    /**
     * @notice Check if a specific token is frozen
     * @param token The token address to check
     * @return Whether the token is frozen
     */
    function isTokenFrozen(address token) external view returns (bool) {
        return _tokenFrozen[token];
    }

    // View functions

    /**
     * @notice Get position details
     * @param positionId The position ID
     * @return position The position struct
     */
    function getPosition(uint256 positionId) public view returns (Position memory position) {
        position = _positions[positionId];
    }

    /**
     * @notice Get all position IDs for a user
     * @param user The user address
     * @return positionIds Array of position IDs
     */
    function getUserPositionIds(address user) external view returns (uint256[] memory) {
        return _userPositions[user];
    }

    /**
     * @notice Get all positions for a user
     * @param user The user address
     * @return positions Array of Position structs
     */
    function getUserPositions(address user) external view returns (Position[] memory positions) {
        uint256[] memory positionIds = _userPositions[user];
        positions = new Position[](positionIds.length);

        for (uint256 i = 0; i < positionIds.length; i++) {
            positions[i] = _positions[positionIds[i]];
        }
    }
}
