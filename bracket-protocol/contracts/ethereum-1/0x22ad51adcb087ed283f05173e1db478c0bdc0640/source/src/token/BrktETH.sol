//SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.25;

import {IERC20} from "openzeppelin-contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "openzeppelin-contracts/token/ERC20/utils/SafeERC20.sol";

import {Math} from "openzeppelin-contracts/utils/math/Math.sol";

import {UUPSUpgradeable} from "openzeppelin-contracts/proxy/utils/UUPSUpgradeable.sol";
import {ERC20PermitUpgradeable} from
    "openzeppelin-contracts-upgradeable/token/ERC20/extensions/ERC20PermitUpgradeable.sol";
import {AccessControlDefaultAdminRulesUpgradeable} from "openzeppelin-contracts-upgradeable/access/extensions/AccessControlDefaultAdminRulesUpgradeable.sol";
import {PausableUpgradeable} from "openzeppelin-contracts-upgradeable/utils/PausableUpgradeable.sol";

import {IBrktETH} from "src/token/IBrktETH.sol";
import {IBracketOracle} from "src/oracle/IBracketOracle.sol";

/// @title brktETH Token Contract
/// @notice This contract implements the brktETH token, a liquid staking derivative for Ethereum
/// @dev This contract is upgradeable and uses OpenZeppelin's upgradeable contracts
contract BrktETH is IBrktETH, ERC20PermitUpgradeable, AccessControlDefaultAdminRulesUpgradeable, UUPSUpgradeable, PausableUpgradeable {
    using SafeERC20 for IERC20;

    uint48 public constant INITIAL_ADMIN_CHANGE_DELAY = 1 days;
    uint256 public constant WITHDRAWAL_DELAY = 5 days;

    bytes32 public constant MANAGER_ROLE = keccak256("MANAGER_ROLE");

    IBracketOracle public oracle;
    CollateralInfo[] public collaterals;

    // Begins at 1.
    mapping(address => uint256) collateralsIndex;
    mapping(bytes32 => WithdrawalStatus) public queuedWithdrawals;

    /// @dev Disables initializers for the implementation contract
    constructor() {
        _disableInitializers();
    }

    //////////////////////////////////
    /////// EXTERNAL FUNCTIONS //////
    ////////////////////////////////

    /// @notice Initializes the contract
    /// @param _oracle Address of the oracle contract
    /// @param tokens Array of initial collateral token addresses
    function initialize(address _oracle, address[] memory tokens) external initializer {
        __ERC20Permit_init("Bracket Liquid Staked ETH");
        __ERC20_init("Bracket Liquid Staked ETH", "brktETH");
        __AccessControlDefaultAdminRules_init(INITIAL_ADMIN_CHANGE_DELAY, msg.sender);
        __Pausable_init();

        setOracle(_oracle);

        uint256 length = tokens.length;
        for (uint256 i; i < length;) {
            addCollateral(tokens[i]);

            unchecked {
                ++i;
            }
        }
    }

    /// @inheritdoc IBrktETH
    function mint(address token, uint256 amount, uint256 minBrktAmount) external whenNotPaused returns (uint256 brktAmount) {
        // Calculate the amount to mint
        uint256 value = oracle.getValue(token, amount);
        brktAmount = calculateMint(value);
        if (brktAmount < minBrktAmount) revert MinAmountOutNotMet();

        // Deposit the tokens
        _depositCollateral(token, amount);

        // Mint the brktETH
        _mint(msg.sender, brktAmount);

        emit Mint(msg.sender, token, amount, brktAmount);
    }

    /// @inheritdoc IBrktETH
    function burn(address token, uint256 amount, uint256 minColAmount, bytes32 salt) external whenNotPaused returns (uint256) {
        if (token == address(0)) revert ZeroAddress();
        if (amount == 0) revert ZeroAmount();

        // Calculate the amount of collateral to withdraw
        uint256 colAmount = calculateBurn(amount, token);
        if (colAmount < minColAmount) revert MinAmountOutNotMet();

        // Burn the brktETH
        _burn(msg.sender, amount);

        // Schedule the withdrawal of the collateral
        uint256 timestamp = _scheduleWithdrawal(token, colAmount, salt);

        emit WithdrawalScheduled(msg.sender, token, colAmount, amount, timestamp, salt);
        return colAmount;
    }

    /// @inheritdoc IBrktETH
    function claimWithdrawal(address token, uint256 amount, uint256 timestamp, bytes32 salt) external {
        (WithdrawalStatus status, bytes32 digest) = getWithdrawalStatusAndHash(msg.sender, token, amount, timestamp, salt);
        if (status != WithdrawalStatus.Ready) revert WithdrawalNotReady();

        // Set the withdrawal status to completed
        queuedWithdrawals[digest] = WithdrawalStatus.Completed;

        // Transfer the collateral token to the user
        IERC20(token).safeTransfer(msg.sender, amount);

        emit WithdrawalClaimed(msg.sender, token, amount, timestamp);
    }

    /// @inheritdoc IBrktETH
    function calculateMint(address token, uint256 amount) external view returns (uint256) {
        _validateCollateral(token, amount);

        uint256 value = oracle.getValue(token, amount);
        return calculateMint(value);
    }

    /// @inheritdoc IBrktETH
    function whitelistCollateral(address token) external onlyRole(DEFAULT_ADMIN_ROLE) {
        if (token == address(0)) revert ZeroAddress();

        uint256 index = _getIndex(token);
        if (collaterals[index].whitelisted) revert CollateralNotBlacklisted();

        collaterals[index].whitelisted = true;
    }

    /// @inheritdoc IBrktETH
    function blacklistCollateral(address token) external onlyRole(DEFAULT_ADMIN_ROLE) {
        if (token == address(0)) revert ZeroAddress();

        uint256 index = _getIndex(token);
        if (!collaterals[index].whitelisted) revert CollateralNotWhitelisted();

        collaterals[index].whitelisted = false;
    }

    function removeCollateral(address token) external onlyRole(DEFAULT_ADMIN_ROLE) {
        uint256 index = _getIndex(token);
        if (collaterals[index].whitelisted) revert CollateralNotBlacklisted();
        if (collaterals[index].totalDeposit != 0) revert CollateralNotEmpty();
                
        CollateralInfo memory moveToken = collaterals[collaterals.length - 1];
                
        collaterals[index] = moveToken;
        collateralsIndex[moveToken.collateral] = index + 1;
        
        delete collateralsIndex[token];
        collaterals.pop();
    }

    function swapCollateral(address tokenIn, address tokenOut, uint256 amountOut, uint256 maxAmountIn) external onlyRole(DEFAULT_ADMIN_ROLE) {
        if (tokenIn == tokenOut) revert SameCollateral();

        uint256 indexIn = _getIndex(tokenIn);
        uint256 indexOut = _getIndex(tokenOut);

        // Check that the collateral we are putting in is whitelisted.
        // Collateral we are taking out doesn't need to be whitelisted as this can be used to rebalance removed collaterals.
        CollateralInfo memory infoIn = collaterals[indexIn];
        if (!infoIn.whitelisted) revert CollateralNotWhitelisted();

        // Check that the collateral we are taking out is not empty.
        if (amountOut >collaterals[indexOut].totalDeposit) revert NotEnoughCollateral();

        uint256 amountIn = calculateRebalance(tokenIn, tokenOut, amountOut);
        if (amountIn > maxAmountIn) revert MaxAmountInExceeded();

        // Transfer the replacement collateral
        IERC20(tokenIn).safeTransferFrom(msg.sender, address(this), amountIn);

        // Transfer the released collateral
        IERC20(tokenOut).safeTransfer(msg.sender, amountOut);

        // Update the collateral
        collaterals[indexIn].totalDeposit += amountIn;
        collaterals[indexOut].totalDeposit -= amountOut;
    }

    function pause() external onlyRole(DEFAULT_ADMIN_ROLE) {
        _pause();
    }

    function unpause() external onlyRole(DEFAULT_ADMIN_ROLE) {
        _unpause();
    }

    /// @inheritdoc IBrktETH
    function getBracketRate() external view returns (uint256) {
        return getBracketValue(1 ether);
    }

    /// @inheritdoc IBrktETH
    function getCollateralInfo(address token) external view returns (CollateralInfo memory) {
        uint256 index = _getIndex(token);
        return collaterals[index];
    }

    //////////////////////////////////
    /////// PUBLIC FUNCTIONS //////
    ////////////////////////////////

    /// @inheritdoc IBrktETH
    function setOracle(address _oracle) public onlyRole(DEFAULT_ADMIN_ROLE) {
        if (_oracle == address(0)) revert ZeroAddress();

        oracle = IBracketOracle(_oracle);
    }

    /// @inheritdoc IBrktETH
    function addCollateral(address token) public onlyRole(DEFAULT_ADMIN_ROLE) {
        if (token == address(0)) revert ZeroAddress();
        if (collateralsIndex[token] != 0) revert CollateralAlreadyExists();
        if (collaterals.length >= 15) revert MaxCollateralsReached();

        // Check that the token is added to the oracle
        if (oracle.getRate(token) == 0) revert CollateralNotSupported();

        CollateralInfo memory info = CollateralInfo(token, true, 0);
        collaterals.push(info);

        collateralsIndex[token] = collaterals.length;
    }

    /// @inheritdoc IBrktETH
    function getBracketValue(uint256 amount) public view returns (uint256) {
        uint256 supply = totalSupply();
        if (supply != 0) {
            return Math.mulDiv(getTotalValue(), amount, supply);
        } else {
            return 0;
        }
    }

    /// @inheritdoc IBrktETH
    function getTotalValue() public view returns (uint256) {
        uint256 length = collaterals.length;

        address[] memory tokens = new address[](length);
        uint256[] memory amounts = new uint256[](length);

        for (uint256 i; i < length; ++i) {
            tokens[i] = collaterals[i].collateral;
            amounts[i] = collaterals[i].totalDeposit;
        }

        return oracle.getTotalValue(tokens, amounts);
    }

    /// @inheritdoc IBrktETH
    function calculateMint(uint256 value) public view returns (uint256 brktAmount) {
        uint256 supply = totalSupply();
        uint256 totalValue = getTotalValue();

        if ((supply != 0) && (totalValue != 0)) {
            brktAmount = Math.mulDiv(supply, value, totalValue);
        } else {
            brktAmount = value;
        }
    }

    /// @inheritdoc IBrktETH
    function calculateBurn(uint256 brktAmount, address token) public view returns (uint256) {
        uint256 value = getBracketValue(brktAmount);
        return Math.mulDiv(value, 1 ether, oracle.getRate(token));
    }

    function calculateRebalance(address tokenIn, address tokenOut, uint256 amountOut)
        public
        view
        returns (uint256 amountIn)
    {
        uint256 rateOut = oracle.getRate(tokenOut);
        uint256 rateIn = oracle.getRate(tokenIn);

        uint256 outValue = Math.mulDiv(amountOut, rateOut, 1 ether);
        amountIn = Math.mulDiv(outValue, 1 ether, rateIn);
    }

    /// @inheritdoc IBrktETH
    function hashWithdrawal(address user, address token, uint256 amount, uint256 time, bytes32 salt) public pure returns (bytes32) {
        return keccak256(abi.encode(user, token, amount, time, salt));
    }

    function getWithdrawalStatusAndHash(address user, address token, uint256 amount, uint256 timestamp, bytes32 salt)
        public
        view
        returns (WithdrawalStatus, bytes32)
    {
        bytes32 digest = hashWithdrawal(user, token, amount, timestamp, salt);

        WithdrawalStatus status = queuedWithdrawals[digest];
        if (status == WithdrawalStatus.Queued && block.timestamp >= timestamp) {
            return (WithdrawalStatus.Ready, digest);
        }

        return (status, digest);
    }

    //////////////////////////////////
    /////// INTERNAL FUNCTIONS //////
    ////////////////////////////////

    /// @dev Gets the index of a collateral token
    /// @param token Address of the collateral token
    /// @return Index of the collateral token
    function _getIndex(address token) internal view returns (uint256) {
        uint256 index = collateralsIndex[token];
        if (index == 0) revert CollateralNotExists();

        return index - 1;
    }

    /// @dev Validates a collateral token and amount
    /// @param token Address of the collateral token
    /// @param amount Amount of collateral token
    /// @return index Index of the collateral token
    function _validateCollateral(address token, uint256 amount) internal view returns (uint256 index) {
        if (token == address(0)) revert ZeroAddress();
        if (amount == 0) revert ZeroAmount();
        index = _getIndex(token);
        if (!collaterals[index].whitelisted) revert CollateralNotWhitelisted();
    }

    /// @dev Deposits collateral tokens
    /// @param token Address of the collateral token
    /// @param amount Amount of collateral token to deposit
    function _depositCollateral(address token, uint256 amount) internal {
        uint256 index = _validateCollateral(token, amount);

        IERC20(token).safeTransferFrom(msg.sender, address(this), amount);
        collaterals[index].totalDeposit += amount;
    }

    /// @notice Schedules a withdrawal of collateral tokens
    /// @dev This function is called internally after burning brktETH
    /// @param token Address of the collateral token to withdraw
    /// @param amount Amount of collateral token to withdraw
    function _scheduleWithdrawal(address token, uint256 amount, bytes32 salt) internal returns (uint256 timestamp) {
        // Get the timestamp, for managers we allow instant withdrawals, for everyone else they will have to wait for withdrawal delay
        timestamp = hasRole(MANAGER_ROLE, msg.sender) ? block.timestamp : block.timestamp + WITHDRAWAL_DELAY;


        bytes32 digest = hashWithdrawal(msg.sender, token, amount, timestamp, salt);
        if (queuedWithdrawals[digest] != WithdrawalStatus.Unset) revert WithdrawalAlreadyQueued();

        uint256 index = _getIndex(token);
        uint256 totalDeposit = collaterals[index].totalDeposit;
        if (amount > totalDeposit) revert NotEnoughCollateral();

        // Remove the amount from the collateralized balances
        collaterals[index].totalDeposit = totalDeposit - amount;

        // Set the withdrawal status to queued
        queuedWithdrawals[digest] = WithdrawalStatus.Queued;
    }

    function _authorizeUpgrade(address newImplementation) internal override onlyRole(DEFAULT_ADMIN_ROLE) {}
}
