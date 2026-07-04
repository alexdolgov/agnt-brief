// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts-upgradeable/utils/PausableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";

import "./interfaces/IFBTC1.sol";
import "./interfaces/IWFBTC.sol";
/**
 * @title FBTCWrapper
 * @dev Wrapper contract for FBTC tokens that allows users to deposit FBTC0 and mint WFBTC
 */

contract FBTCWrapper is PausableUpgradeable, AccessControlUpgradeable {
    using SafeERC20 for IERC20;

    bytes32 public constant ADMIN_ROLE = keccak256("ADMIN_ROLE");
    bytes32 public constant MANAGER_ROLE = keccak256("MANAGER_ROLE");
    bytes32 public constant PAUSE_ROLE = keccak256("PAUSE_ROLE");
    bytes32 public constant KEEPER_ROLE = keccak256("KEEPER_ROLE");

    mapping(address => bool) public whitelistedUsers;
    uint256 public amountInFBTC0;
    uint256 public amountOutFBTC0;
    uint256 public totalSupply;
    IWFBTC public WFBTC;
    address public FBTC0;
    IFBTC1 public FBTC1;

    mapping(address => uint256) public claimableFBTC0;

    error NotWhitelisted();
    error InvalidAddress();
    error InvalidAmount();
    error InsufficientBalance();
    error InsufficientClaimableFBTC0();

    event WhitelistUpdated(address indexed user, bool status);
    event Deposit(address indexed user, uint256 amount);
    event WithdrawRequested(address indexed user, uint256 amount);
    event FBTCClaimed(address indexed user, uint256 amount);
    event TransferOutFBTC0(uint256 amount);
    event RequestTransferInFBTC0(uint256 amount);
    event FBTC0Updated(address indexed newFBTC0);
    event FBTC1Updated(address indexed newFBTC1);
    event WFBTCUpdated(address indexed newWFBTC);
    event AmountInFBTC0Set(uint256 newAmount);
    event AmountOutFBTC0Set(uint256 newAmount);

    constructor() {
        _disableInitializers();
    }

    modifier onlyWhitelisted() {
        if (!whitelistedUsers[msg.sender]) revert NotWhitelisted();
        _;
    }

    function initialize(address owner) public reinitializer(2) {
        __Pausable_init();

        _grantRole(DEFAULT_ADMIN_ROLE, owner);
        _grantRole(ADMIN_ROLE, owner);
        _setRoleAdmin(ADMIN_ROLE, ADMIN_ROLE);
        _setRoleAdmin(MANAGER_ROLE, ADMIN_ROLE);
        _setRoleAdmin(KEEPER_ROLE, ADMIN_ROLE);
        _setRoleAdmin(PAUSE_ROLE, ADMIN_ROLE);
    }

    // ==================== Admin Functions ====================

    function setFBTC0(address _FBTC0) external onlyRole(ADMIN_ROLE) {
        FBTC0 = _FBTC0;
        emit FBTC0Updated(_FBTC0);
    }

    function setFBTC1(address _FBTC1) external onlyRole(ADMIN_ROLE) {
        FBTC1 = IFBTC1(_FBTC1);
        emit FBTC1Updated(_FBTC1);
    }

    function setWFBTC(address _WFBTC) external onlyRole(ADMIN_ROLE) {
        WFBTC = IWFBTC(_WFBTC);
        emit WFBTCUpdated(_WFBTC);
    }

    function setAmountInFBTC0(uint256 newAmount) external onlyRole(ADMIN_ROLE) {
        amountInFBTC0 = newAmount;
        emit AmountInFBTC0Set(newAmount);
    }

    function setAmountOutFBTC0(
        uint256 newAmount
    ) external onlyRole(ADMIN_ROLE) {
        amountOutFBTC0 = newAmount;
        emit AmountOutFBTC0Set(newAmount);
    }

    /**
     * @dev Set whitelist status for a user
     * @param user Address of the user
     * @param status Whitelist status to set
     */
    function setWhitelist(address user, bool status) external onlyRole(MANAGER_ROLE) {
        if (user == address(0)) revert InvalidAddress();
        whitelistedUsers[user] = status;
        emit WhitelistUpdated(user, status);
    }

    /**
     * @dev Pause the contract
     */
    function pause() external onlyRole(PAUSE_ROLE) {
        _pause();
    }

    /**
     * @dev Unpause the contract
     */
    function unpause() external onlyRole(PAUSE_ROLE) {
        _unpause();
    }

    // ==================== User Functions ====================

    /**
     * @dev Deposit FBTC0 and mint WFBTC at 1:1 ratio
     * @param amount Amount of FBTC0 to deposit
     */
    function deposit(uint256 amount) external whenNotPaused onlyWhitelisted {
        if (amount == 0) revert InvalidAmount();

        amountInFBTC0 += amount;
        totalSupply += amount;

        emit Deposit(msg.sender, amount);

        IERC20(FBTC0).safeTransferFrom(msg.sender, address(this), amount);
        WFBTC.mint(msg.sender, amount);
    }

    /**
     * @dev Request withdrawal of FBTC0 by burning WFBTC
     * @param amount Amount of WFBTC to burn
     */
    function withdraw(uint256 amount) external whenNotPaused onlyWhitelisted {
        if (amount == 0) revert InvalidAmount();
        if (IERC20(WFBTC).balanceOf(msg.sender) < amount) revert InsufficientBalance();

        // Update state
        amountOutFBTC0 += amount;
        totalSupply -= amount;
        claimableFBTC0[msg.sender] += amount;

        emit WithdrawRequested(msg.sender, amount);

        // Burn WFBTC from user
        WFBTC.burnFromWrapper(msg.sender, amount);
    }

    /**
     * @dev Claim FBTC0 that has been confirmed for withdrawal
     * @param amount Amount of FBTC0 to claim
     */
    function claimFBTC(uint256 amount) external whenNotPaused onlyWhitelisted {
        if (amount == 0) revert InvalidAmount();
        if (claimableFBTC0[msg.sender] < amount) revert InsufficientClaimableFBTC0();

        // Update state
        claimableFBTC0[msg.sender] -= amount;

        // Transfer FBTC0 to user
        uint256 fb0BalanceBefore = IERC20(FBTC0).balanceOf(address(this));
        if (fb0BalanceBefore < amount) {
            FBTC1.confirmRedeemFbtc(amount - fb0BalanceBefore);
        }
        IERC20(FBTC0).safeTransfer(msg.sender, amount);

        emit FBTCClaimed(msg.sender, amount);
    }

    // ==================== Batch Operations ====================

    /**
     * @dev Execute batch operations to manage FBTC0 and FBTC1
     * This function should be called periodically by a keeper
     */
    function batchJob() external whenNotPaused onlyRole(KEEPER_ROLE) {
        if (amountInFBTC0 > amountOutFBTC0) {
            // If we have more FBTC0 coming in than going out,
            // lock the excess in FBTC1
            uint256 amount = amountInFBTC0 - amountOutFBTC0;
            IERC20(FBTC0).approve(address(FBTC1), amount);
            IFBTC1(FBTC1).mintLockedFbtcRequest(amount);
            emit TransferOutFBTC0(amount);
        } else if (amountInFBTC0 < amountOutFBTC0) {
            // If we have more FBTC0 going out than coming in,
            // request to unlock from FBTC1
            uint256 amount = amountOutFBTC0 - amountInFBTC0;
            emit RequestTransferInFBTC0(amount);
        }

        // Reset counters
        amountInFBTC0 = 0;
        amountOutFBTC0 = 0;
    }
}
