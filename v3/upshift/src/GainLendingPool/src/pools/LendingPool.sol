// SPDX-License-Identifier: BUSL-1.1
pragma solidity >= 0.8.26;

import "../core/interfaces/ITimelockedCall.sol";
import "./base/BaseLendingPool.sol";

/**
 * @title Represents a lending pool that is fully compliant with the ERC-4626 standard.
 * @dev The lending pool is an address-preserving transparent proxy.
 */
contract LendingPool is BaseLendingPool {
    /// @notice The address of the scheduler contract. This contract handles time-locked calls.
    address public scheduledCallerAddress;

    constructor() {
        _disableInitializers();
    }

    /**
     * @notice Proxy initialization function.
     * @param newOwner The owner of the lending pool.
     * @param erc20Decimals The number of decimals of the LP token issued by this pool, per ERC20.
     * @param erc20Symbol The token symbol of this pool, per ERC20.
     * @param erc20Name The token name of this pool, per ERC20.
     */
    function initialize(
        address newOwner,
        uint8 erc20Decimals,
        string memory erc20Symbol,
        string memory erc20Name
    ) external initializer {
        if (newOwner == address(0)) revert PoolOwnerRequired();
        // ERC-20 settings
        decimals = erc20Decimals;
        symbol = erc20Symbol;
        name = erc20Name;

        // Pause deposits and withdrawals until the pool gets configured by the authorized party.
        depositsPaused = true;
        withdrawalsPaused = true;

        _owner = newOwner;
    }

    /**
     * @notice Configures the lending pool.
     * @dev Throws if the caller is not the owner. Deposits and withdrawals are paused until the pool is configured.
     * @param newLagDuration The duration of the timelock. Pass zero if the pool is not time-locked.
     * @param newMaxDepositAmount The maximum deposit amount of assets (say USDC) investors are allowed to deposit in the pool.
     * @param newMaxWithdrawalAmount The maximum withdrawal amount of the pool, expressed in underlying assets (for example: USDC)
     * @param newMaxTokenSupply The maximum supply of LP tokens (liquidity pool tokens)
     * @param newUnderlyingAsset The underlying asset of the liquidity pool (for example: USDC).
     * @param newLoansOperator The address responsible for managing the loans of the pool.
     * @param newLoansDeployerAddress The address of the smart contract you will use for deploying loans on behalf of this pool.
     * @param newFeesCollectorAddr The address of the fees collector.
     * @param newScheduledCallerAddress The address of the contract that handles time-locked function calls.
     * @param newProcessingHour The hour (UTC) at which all withdrawal requests will be processed. The value ranges from [0..23]
     */
    function configurePool(
        uint256 newLagDuration,
        uint256 newMaxDepositAmount, 
        uint256 newMaxWithdrawalAmount, 
        uint256 newMaxTokenSupply,
        address newUnderlyingAsset,
        address newLoansOperator,
        address newLoansDeployerAddress,
        address newFeesCollectorAddr,
        address newScheduledCallerAddress,
        uint8 newProcessingHour
    ) external nonReentrant ifNotConfigured onlyOwner {
        if (newLoansOperator == address(0)) revert OperatorRequired();
        if (newLoansDeployerAddress == address(0)) revert DeployerRequired();
        if (newFeesCollectorAddr == address(0)) revert CollectorRequired();
        if (newProcessingHour >= 24) revert InvalidProcessingHour(); // Min: 0, Max: 23  (eg: 13 = 1PM)

        _underlyingAsset = IERC20(newUnderlyingAsset);
        _updateIssuanceLimits(newMaxDepositAmount, newMaxWithdrawalAmount, newMaxTokenSupply);

        // Loan management actors
        loansOperator = newLoansOperator;
        loansDeployerAddress = newLoansDeployerAddress;
        feesCollector = newFeesCollectorAddr;

        // Timelock settings
        lagDuration = newLagDuration;
        liquidationHour = newProcessingHour;

        // Resume deposits and withdrawals
        depositsPaused = false;
        withdrawalsPaused = false;
        scheduledCallerAddress = newScheduledCallerAddress;

        // Set the initial scheduler and duration for time-locked function calls
        ITimelockedCall(newScheduledCallerAddress).initScheduler(_owner, 24 hours);
    }

    /**
     * @notice Transfers ownership of the contract to a new account.
     * @dev Throws if the tx was not scheduled by the original owner. Also fails if the time-lock is still in place.
     * @param newOwner The new owner of this contract.
     */
    function transferOwnership(address newOwner) external nonReentrant onlyOwner {
        // Checks
        if (newOwner == address(0) || newOwner == address(this)) revert InvalidOwner();
        if (newOwner == loansOperator) revert OwnerCannotBeOperator();
        if (newOwner == loansDeployerAddress) revert OwnerCannotBeDeployer();
        if (isBlacklisted[newOwner]) revert AddressBlacklisted();

        // State changes
        address prevOwnerAddr = _owner;
        _transferOwnership(newOwner);

        // Attempt to consume the time-locked hash. The call reverts if the hash can't be consumed.
        bytes32 h = keccak256(abi.encode(
            abi.encodeWithSignature(
                "transferOwnership(address)", 
                newOwner
            )
        ));

        // This is a special case for consuming a hash. It rotates the scheduler in a single call.
        ITimelockedCall(scheduledCallerAddress).consumeOwnership(h, prevOwnerAddr, newOwner);
    }

    /**
     * @notice Updates the issuance and redemption settings of the pool.
     * @dev Throws if the caller is not the owner of the pool. Throws if the pool was not configured.
     * @param newMaxDepositAmount The maximum deposit amount of assets (say USDC) investors are allowed to deposit in the pool.
     * @param newMaxWithdrawalAmount The maximum withdrawal amount of the pool, expressed in underlying assets (for example: USDC)
     * @param newMaxTokenSupply The maximum supply of LP tokens (liquidity pool tokens)
     */
    function updateIssuanceLimits(
        uint256 newMaxDepositAmount, 
        uint256 newMaxWithdrawalAmount, 
        uint256 newMaxTokenSupply
    ) external nonReentrant ifConfigured onlyOwner {
        _updateIssuanceLimits(newMaxDepositAmount, newMaxWithdrawalAmount, newMaxTokenSupply);
    }

    /**
     * @notice Pauses/Resumes deposits and/or withdrawals.
     * @dev Throws if the caller is not the owner of the pool.
     * @param bPauseDeposits Pass "true" to pause deposits. Pass "false" to resume deposits.
     * @param bPauseWithdrawals Pass "true" to pause withdrawals. Pass "false" to resume withdrawals.
     */
    function pauseDepositsAndWithdrawals(bool bPauseDeposits, bool bPauseWithdrawals) external nonReentrant ifConfigured onlyOwner {
        _setPause(bPauseDeposits, bPauseWithdrawals);
    }

    /**
     * @notice Updates the duration of the timelock.
     * @dev Setting the timelock to zero will allow to withdraw funds immediately from the pool.
     * @param newDuration The duration of the timelock, expressed in seconds. It can be zero.
     */
    function updateTimelockDuration(uint256 newDuration) external nonReentrant ifConfigured onlyOwner {
        if (newDuration <= lagDuration) {
            if (globalLiabilityShares != 0) revert ProcessClaimsFirst();
        }
        lagDuration = newDuration;

        // Build the hash of this call and attempt to consume it. The call reverts if the hash can't be consumed.
        bytes32 h = keccak256(abi.encode(
            abi.encodeWithSignature(
                "updateTimelockDuration(uint256)", 
                newDuration
            )
        ));

        ITimelockedCall(scheduledCallerAddress).consume(h);
    }

    /**
     * @notice Updates the fee for withdrawals.
     * @param newWithdrawalFee The new fee, expressed with 2 decimal places.
     */
    function updateWithdrawalFee(uint256 newWithdrawalFee) external nonReentrant ifConfigured onlyOwner {
        if (newWithdrawalFee >= 9900) revert FeeTooHigh();
        withdrawalFee = newWithdrawalFee;
    }

    /**
     * @notice Blacklists the address specified.
     * @param addr The address to blacklist
     */
    function addToBlacklist(address addr) external nonReentrant ifConfigured onlyOwner {
        if (addr == _owner) revert CannotBlacklistOwner();
        isBlacklisted[addr] = true;
    }

    /**
     * @notice Removes the address specified from the blacklist.
     * @param addr The address to remove from the blacklist
     */
    function removeFromBlacklist(address addr) external nonReentrant ifConfigured onlyOwner {
        isBlacklisted[addr] = false;
    }

    /**
     * @notice Sets the address of the settlement account.
     * @param addr The address of the settlement account.
     */
    function updateSettlementAccount(address addr) external nonReentrant ifConfigured onlyOwner {
        if (addr == address(0)) revert InvalidAddress();
        settlementAccount = addr;
    }
}
