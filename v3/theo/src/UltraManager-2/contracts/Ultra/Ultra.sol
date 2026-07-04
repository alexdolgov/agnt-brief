// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts-upgradeable/token/ERC20/extensions/ERC20BurnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/access/AccessControlEnumerableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import "./KYC.sol";
import "./interfaces/IUltra.sol";
import "./UltraManager.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

/** 
 * @title Ultra Token Contract
 * @notice This contract implements the Ultra token with KYC requirements, transfer limits, and clawback functionality
 * @dev Inherits from UUPSUpgradeable, AccessControlEnumerableUpgradeable, and ERC20BurnableUpgradeable
 */
contract Ultra is 
    UUPSUpgradeable,
    AccessControlEnumerableUpgradeable, 
    ERC20BurnableUpgradeable,
    IUltra
{
    using SafeERC20 for IERC20;

    // Custom errors
    error TransferFailed();
    error TransferToZeroAddress();
    error InvalidAddress();
    error InvalidAmount();
    error Unauthorized();

    bytes32 internal constant OPERATOR_ADMIN = keccak256("OPERATOR_ADMIN");
    bytes32 public constant MINTER_ADMIN = keccak256("MINTER_ADMIN");
    bytes32 internal constant SUPER_ADMIN = keccak256("SUPER_ADMIN");

    // KYC contract reference needs to be mutable
    KYCUltra public KYCContract;
    address internal _clawbackAdmin;
    UltraManager internal _ultraManager;
    mapping(address => uint256) internal _clawedBackAmount; // Keep track of amount clawed back for each user

    uint256 public transferLimit; // Transfer limit in BPS
    uint256 public transferLimitPeriod; // Configurable period for transfer limits
    mapping(address => TransferTracker) internal _transferTrackers;

    struct TransferTracker {
        uint256 totalAmount;
        uint256 periodStart;
    }

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    /** 
     * @notice Initializes the Ultra token contract
     * @dev Sets up the initial state of the contract including roles and configurations
     * @param name The name of the token
     * @param symbol The symbol of the token
     * @param operatorAdmin Address that will receive the OPERATOR_ADMIN role
     * @param minterAdmin Address that will receive the MINTER_ADMIN role
     * @param superAdmin Address that will receive the SUPER_ADMIN role and be set as clawback admin
     * @param defaultAdmin Address that will receive the DEFAULT_ADMIN_ROLE
     * @param kyc Address of the KYC contract
     */
    function initialize(
        string memory name,
        string memory symbol,
        address operatorAdmin,
        address minterAdmin,
        address superAdmin,
        address defaultAdmin,
        address kyc
    ) public initializer {
        __ERC20_init(name, symbol);
        __ERC20Burnable_init();
        __AccessControlEnumerable_init();
        __UUPSUpgradeable_init();

        _grantRole(OPERATOR_ADMIN, operatorAdmin);
        _grantRole(MINTER_ADMIN, minterAdmin);
        _grantRole(SUPER_ADMIN, superAdmin);
        _grantRole(DEFAULT_ADMIN_ROLE, defaultAdmin);
        _clawbackAdmin = superAdmin;
        KYCContract = KYCUltra(kyc);
        
        transferLimitPeriod = 24 hours;
    }

    /** 
     * @notice Authorizes an upgrade to a new implementation
     * @dev Can only be called by an account with DEFAULT_ADMIN_ROLE
     * @param newImplementation Address of the new implementation contract
     */
    function _authorizeUpgrade(address newImplementation) internal override onlyRole(DEFAULT_ADMIN_ROLE) {
    }

    /** 
     * @notice Returns the number of decimals used for token amounts
     * @dev Overrides the default 18 decimals to return 6
     * @return The number of decimals (6)
     */
    function decimals() public view virtual override returns (uint8) {
        return 6;
    }

    /** 
     * @notice Sets the UltraManager contract address
     * @dev Can only be called by an account with OPERATOR_ADMIN role
     * @param ultraManager The address of the new UltraManager contract
     */
    function setUltraManager(
        address ultraManager
    ) external onlyRole(OPERATOR_ADMIN) {
        _ultraManager = UltraManager(ultraManager);
    }

    /** 
     * @notice Sets the clawback wallet address
     * @dev Can only be called by an account with SUPER_ADMIN role
     * @param clawbackAdmin The address of the new clawback wallet
     */
    function setClawbackWallet(
        address clawbackAdmin
    ) external onlyRole(SUPER_ADMIN) {
        if (clawbackAdmin == address(0)) revert TransferToZeroAddress();
        _clawbackAdmin = clawbackAdmin;
    }

    /** 
     * @notice Sets the KYC contract address
     * @dev Can only be called by an account with OPERATOR_ADMIN role
     * @param kyc The address of the new KYC contract
     */
    function setKYC(address kyc) external onlyRole(OPERATOR_ADMIN) {
        KYCContract = KYCUltra(kyc);
    }

    /** 
     * @notice Claws back tokens from a specified address
     * @dev Can only be called by an account with SUPER_ADMIN role
     * @param from The address to claw back tokens from
     * @param amount The amount of tokens to claw back
     */
    function clawback(address from, uint256 amount) external onlyRole(SUPER_ADMIN) {
        if (from == address(0)) revert InvalidAddress();
        if (amount == 0) revert InvalidAmount();
        
        _transfer(from, _clawbackAdmin, amount);
        _clawedBackAmount[from] += amount;

        emit TokensClawedBack(from, _msgSender(), amount);
    }

    /** 
     * @notice Hook that is called before any token transfer
     * @dev Ensures both sender and receiver are KYC approved unless the receiver is the clawback admin
     * @param from The sender address
     * @param to The receiver address
     * @param amount The amount of tokens being transferred
     */
    function _beforeTokenTransfer(
        address from,
        address to,
        uint256 amount
    ) internal override {
        super._beforeTokenTransfer(from, to, amount);
        if (to != _clawbackAdmin) {
            if (address(KYCContract) != address(0)) {
                require(
                    KYCContract.isKYC(from) &&
                        KYCContract.isKYC(to),
                    "Ultra: both sender and receiver need to be KYC approved"
                );
            }
        }
    }

    /** 
     * @notice Completes a transfer of tokens
     * @dev Can only be called by an account with MINTER_ADMIN role
     * @param to The recipient address
     * @param amount The amount of tokens to transfer
     */
    function completeTransfer(
        address to,
        uint256 amount
    ) external onlyRole(MINTER_ADMIN) {
        if (to == address(0)) revert InvalidAddress();
        if (amount == 0) revert InvalidAmount();
        bool success = super.transfer(to, amount);
        if (!success) revert TransferFailed();
    }

    /** 
     * @notice Transfers tokens from one address to another
     * @dev Handles transfer limits and creates transfer promises if needed
     * @param from The sender address
     * @param recipient The recipient address
     * @param amount The amount of tokens to transfer
     * @return success Whether the transfer was successful
     */
    function transferFrom(
        address from,
        address recipient,
        uint256 amount
    ) public virtual override returns (bool) {
        if (recipient == address(0)) revert TransferToZeroAddress();

        _beforeTokenTransfer(from, recipient, amount);

        uint256 fiatValue = (amount * _ultraManager.lastSetMintExchangeRate()) / _ultraManager.BPS_DENOMINATOR();
        
        _checkAndUpdateTransferTracker(from, fiatValue);

        bool success;
        if (_transferTrackers[from].totalAmount <= transferLimit) {
            success = super.transferFrom(from, recipient, amount);
            if (!success) revert TransferFailed();
            return success;
        } else {
            success = super.transferFrom(from, address(_ultraManager), amount);
            if (!success) revert TransferFailed();
            _ultraManager.createTransferPromise(from, recipient, amount);
            return success;
        }
    }

    /** 
     * @notice Transfers tokens from an address through the manager
     * @dev Can only be called by an account with MINTER_ADMIN role
     * @param from The sender address
     * @param recipient The recipient address
     * @param amount The amount of tokens to transfer
     * @return success Whether the transfer was successful
     */
    function transferFromManager(
        address from,
        address recipient,
        uint256 amount
    ) external onlyRole(MINTER_ADMIN) returns (bool) {
        bool success = super.transferFrom(from, recipient, amount);
        if (!success) revert TransferFailed();
        return success;
    }

    /** 
     * @notice Transfers tokens to another address
     * @dev Handles transfer limits and creates transfer promises if needed
     * @param recipient The recipient address
     * @param amount The amount of tokens to transfer
     * @return success Whether the transfer was successful
     */
    function transfer(
        address recipient,
        uint256 amount
    ) public virtual override returns (bool) {
        if (recipient == address(0)) revert TransferToZeroAddress();

        _beforeTokenTransfer(_msgSender(), recipient, amount);

        uint256 fiatValue = (amount * _ultraManager.lastSetMintExchangeRate()) / _ultraManager.BPS_DENOMINATOR();

        _checkAndUpdateTransferTracker(_msgSender(), fiatValue);

        bool success;
        if (_transferTrackers[_msgSender()].totalAmount <= transferLimit) {
            success = super.transfer(recipient, amount);
            if (!success) revert TransferFailed();
            return success;
        } else {
            success = super.transfer(address(_ultraManager), amount);
            if (!success) revert TransferFailed();
            _ultraManager.createTransferPromise(_msgSender(), recipient, amount);
            return success;
        }
    }

    /** 
     * @notice Mints new tokens
     * @dev Can only be called by an account with MINTER_ADMIN role
     * @param to The address that will receive the minted tokens
     * @param amount The amount of tokens to mint
     */
    function mint(address to, uint256 amount) public virtual onlyRole(MINTER_ADMIN) {
        _mint(to, amount);
    }

    /** 
     * @notice Mints new tokens with a promise ID
     * @dev Can only be called by an account with MINTER_ADMIN role
     * @param to The address that will receive the minted tokens
     * @param amount The amount of tokens to mint
     * @param promiseId The ID of the associated promise
     */
    function mint(address to, uint256 amount, string memory promiseId) public virtual onlyRole(MINTER_ADMIN) {
        _mint(to, amount);
        emit MintCompleted(to, amount, promiseId);
    }

    /** 
     * @notice Sets the transfer limit
     * @dev Can only be called by an account with OPERATOR_ADMIN role
     * @param newLimit The new transfer limit in BPS
     */
    function setTransferLimit(uint256 newLimit) external onlyRole(OPERATOR_ADMIN) {
        if (newLimit == 0) revert InvalidAmount();
        uint256 oldLimit = transferLimit;
        transferLimit = newLimit;
        emit TransferLimitSet(oldLimit, newLimit);
    }

    /** 
     * @notice Sets the transfer limit period
     * @dev Can only be called by an account with OPERATOR_ADMIN role
     * @param newPeriod The new transfer limit period in seconds
     */
    function setTransferLimitPeriod(uint256 newPeriod) external onlyRole(OPERATOR_ADMIN) {
        if (newPeriod == 0) revert InvalidAmount();
        uint256 oldPeriod = transferLimitPeriod;
        transferLimitPeriod = newPeriod;
        emit TransferLimitPeriodSet(oldPeriod, newPeriod);
    }

    /** 
     * @notice Updates the transfer tracker for an account
     * @dev Internal function to track transfer amounts within periods
     * @param account The address to track
     * @param amount The amount to add to the tracker
     */
    function _checkAndUpdateTransferTracker(address account, uint256 amount) internal {
        TransferTracker storage tracker = _transferTrackers[account];
        
        if (tracker.periodStart == 0) {
            tracker.periodStart = block.timestamp;
            tracker.totalAmount = amount;
            return;
        }
        
        if (block.timestamp >= tracker.periodStart + transferLimitPeriod) {
            tracker.totalAmount = amount;
            tracker.periodStart = block.timestamp;
        } else {
            tracker.totalAmount += amount;
        }
    }
}
