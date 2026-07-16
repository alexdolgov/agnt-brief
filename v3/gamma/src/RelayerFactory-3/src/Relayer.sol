// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.26;

import {IRelayer} from "./interfaces/IRelayer.sol";
import {IMultiPositionManager} from "./interfaces/IMultiPositionManager.sol";
import {IRelayerFactory} from "./interfaces/IRelayerFactory.sol";
import {RebalanceLogic} from "./libraries/RebalanceLogic.sol";
import {RelayerLogic} from "./libraries/RelayerLogic.sol";
import {ReentrancyGuard} from "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {IERC20Metadata} from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import {PoolKey} from "v4-core/types/PoolKey.sol";
import {Currency} from "v4-core/types/Currency.sol";

/**
 * @title Relayer
 * @notice Automated relayer for MultiPositionManager with trigger-based execution
 * @dev Executes rebalances and withdrawals when configured triggers are met, reimburses automation services in ETH
 */
contract Relayer is IRelayer, ReentrancyGuard {
    /// @notice Role identifier for automation services (must match factory)
    bytes32 private constant AUTOMATION_SERVICE_ROLE = keccak256("AUTOMATION_SERVICE");

    /// @notice Gas overhead for reimbursement calculation (covers ETH transfer and base tx cost)
    uint256 private constant BASE_GAS_OVERHEAD = 21000 + 10000; // Base tx + ETH transfer overhead

    /// @notice Gas buffer multiplier (1.1x = 110/100 = 10% buffer)
    uint256 private constant GAS_BUFFER_NUMERATOR = 110;
    uint256 private constant GAS_BUFFER_DENOMINATOR = 100;

    /// @notice Minimum ETH balance required to execute rebalances
    uint256 public constant MIN_BALANCE = 0.001 ether;

    /// @notice The MultiPositionManager being automated
    IMultiPositionManager public immutable manager;

    /// @notice The factory that deployed this contract
    IRelayerFactory public immutable factory;

    /// @notice The owner of this relayer (MPM owner)
    address public immutable owner;

    /// @notice Current trigger configuration
    TriggerConfig public triggerConfig;

    /// @notice Current strategy parameters
    StrategyParams public strategyParams;

    /// @notice Volatility parameters for this token pair
    VolatilityParams public volatilityParams;

    /// @notice Withdrawal trigger parameters
    WithdrawalParams public withdrawalParams;

    /// @notice Compound swap trigger parameters
    CompoundSwapParams public compoundSwapParams;

    /// @notice Whether the contract is paused
    bool public isPaused;

    /// @notice Cumulative gas costs paid out (in wei)
    uint256 public totalGasSpent;

    /// @notice Restrict access to owner only
    modifier onlyOwner() {
        if (msg.sender != owner) revert UnauthorizedCaller();
        _;
    }

    /// @notice Restrict access to automation services only
    modifier onlyAutomationService() {
        if (!factory.hasRole(AUTOMATION_SERVICE_ROLE, msg.sender)) {
            revert UnauthorizedCaller();
        }
        _;
    }

    /// @notice Ensure contract is not paused
    modifier whenNotPaused() {
        if (isPaused) revert ContractPaused();
        _;
    }

    /**
     * @notice Construct a new Rebalancer
     * @param _manager The MultiPositionManager to automate
     * @param _factory The factory that deployed this contract
     * @param _owner The owner of this rebalancer
     * @param _triggerConfig Initial trigger configuration
     * @param _strategyParams Initial strategy parameters
     * @param _volatilityParams Volatility parameters for this token pair
     * @param _withdrawalParams Initial withdrawal trigger parameters
     * @param _compoundSwapParams Initial compound swap trigger parameters
     * @dev Automatically rounds delta values UP to nearest tickSpacing multiple for accuracy
     */
    constructor(
        address _manager,
        address _factory,
        address _owner,
        TriggerConfig memory _triggerConfig,
        StrategyParams memory _strategyParams,
        VolatilityParams memory _volatilityParams,
        WithdrawalParams memory _withdrawalParams,
        CompoundSwapParams memory _compoundSwapParams
    ) {
        if (_manager == address(0)) revert InvalidTriggerConfig();
        if (_factory == address(0)) revert InvalidTriggerConfig();
        if (_owner == address(0)) revert InvalidTriggerConfig();

        manager = IMultiPositionManager(_manager);
        factory = IRelayerFactory(_factory);
        owner = _owner;

        // Round up delta values to tickSpacing multiples before storing
        int24 tickSpacing = manager.poolKey().tickSpacing;
        _triggerConfig.baseLowerTrigger = _roundUpToTickSpacing(_triggerConfig.baseLowerTrigger, tickSpacing);
        _triggerConfig.baseUpperTrigger = _roundUpToTickSpacing(_triggerConfig.baseUpperTrigger, tickSpacing);
        _triggerConfig.limitDeltaTicks = _roundUpToTickSpacing(_triggerConfig.limitDeltaTicks, tickSpacing);
        _triggerConfig.maxDeltaTicks = _roundUpToTickSpacing(_triggerConfig.maxDeltaTicks, tickSpacing);

        // Validate delta constraints
        _validateDeltas(
            _triggerConfig.baseLowerTrigger,
            _triggerConfig.baseUpperTrigger,
            _triggerConfig.limitDeltaTicks,
            _triggerConfig.maxDeltaTicks
        );

        // Validate weights
        _validateWeights(_strategyParams.weight0, _strategyParams.weight1);

        // If isBaseRatio=true and proportional mode (weight0=0, weight1=0), must use swap
        // Otherwise: perpetual rebalancing (ratio trigger fires, rebalances proportionally, ratio still wrong, triggers again)
        bool isProportional = (_strategyParams.weight0 == 0 && _strategyParams.weight1 == 0);
        if (_strategyParams.isBaseRatio && isProportional && !_strategyParams.useRebalanceSwap) {
            revert InvalidTriggerConfig();
        }

        // Validate pairType
        if (_volatilityParams.pairType > 3) revert InvalidPairType();

        triggerConfig = _triggerConfig;
        strategyParams = _strategyParams;
        volatilityParams = _volatilityParams;
        withdrawalParams = _withdrawalParams;
        compoundSwapParams = _compoundSwapParams;
    }

    /**
     * @notice Internal wrapper to construct rebalance params using library
     * @param status Trigger status from checkTriggers
     * @return params Constructed rebalance parameters
     */
    function _constructRebalanceParams(RebalanceTriggerStatus memory status)
        private
        view
        returns (IMultiPositionManager.RebalanceParams memory params)
    {
        return RelayerLogic.constructRebalanceParams(manager, strategyParams, status);
    }

    /**
     * @notice Execute a rebalance if triggers are met
     * @param outMin Minimum output amounts for burning positions
     * @param inMin Minimum input amounts for new positions
     * @dev Only callable by whitelisted automation services
     * @dev Reverts if no triggers are met or if rebalance fails
     * @dev Reimburses caller with ETH including 10% buffer
     * @dev Automatically constructs RebalanceParams based on which triggers are met
     */
    function executeRebalance(uint256[2][] memory outMin, uint256[2][] memory inMin)
        external
        override
        onlyAutomationService
        whenNotPaused
        nonReentrant
    {
        // Checks: Verify minimum balance
        if (address(this).balance < MIN_BALANCE) revert InsufficientFunds();

        uint256 gasBefore = gasleft();

        // Checks: Verify triggers are met
        RebalanceTriggerStatus memory status = checkTriggers();
        if (!status.anyTriggerMet) revert NoTriggersmet();

        // Construct rebalance params based on triggers
        IMultiPositionManager.RebalanceParams memory params = _constructRebalanceParams(status);

        // Interactions: Claim fees first if compoundFees is false
        if (!strategyParams.compoundFees) {
            manager.claimFee();
        }

        // Interactions: Execute rebalance on MultiPositionManager
        // This will revert if the rebalance fails, which is desired behavior
        manager.rebalance(params, outMin, inMin);

        // Determine primary trigger index (priority order) and emit event
        uint8 triggerIndex;
        if (status.baseTickTrigger) {
            triggerIndex = 0;
        } else if (status.baseRatioTrigger) {
            triggerIndex = 1;
        } else if (status.limitTickTrigger) {
            triggerIndex = 2;
        } else if (status.limitRatioTrigger) {
            triggerIndex = 3;
        } else {
            triggerIndex = 4; // outOfPositionTrigger
        }
        emit AutomatedRebalanceExecuted(triggerIndex, false);

        // Calculate gas used and reimburse caller
        _reimburseGas(gasBefore);
    }

    /**
     * @notice Execute a rebalance with swap if triggers are met
     * @param swapParams Swap parameters for the external DEX swap
     * @param outMin Minimum output amounts for burning positions
     * @param inMin Minimum input amounts for new positions
     * @dev Only callable by whitelisted automation services
     * @dev Reverts if no triggers are met or if rebalance fails
     * @dev Reimburses caller with ETH including 10% buffer
     * @dev Automatically constructs RebalanceParams based on which triggers are met
     */
    function executeRebalanceSwap(
        RebalanceLogic.SwapParams calldata swapParams,
        uint256[2][] memory outMin,
        uint256[2][] memory inMin
    ) external payable override onlyAutomationService whenNotPaused nonReentrant {
        // Checks: Verify minimum balance
        if (address(this).balance < MIN_BALANCE) revert InsufficientFunds();

        uint256 gasBefore = gasleft();

        // Checks: Verify triggers are met
        RebalanceTriggerStatus memory status = checkTriggers();
        if (!status.anyTriggerMet) revert NoTriggersmet();

        // Construct rebalance params based on triggers
        IMultiPositionManager.RebalanceParams memory rebalanceParams = _constructRebalanceParams(status);

        // Combine rebalance and swap params
        IMultiPositionManager.RebalanceSwapParams memory params =
            IMultiPositionManager.RebalanceSwapParams({rebalanceParams: rebalanceParams, swapParams: swapParams});

        // Interactions: Claim fees first if compoundFees is false
        if (!strategyParams.compoundFees) {
            manager.claimFee();
        }

        // Interactions: Execute rebalance swap on MultiPositionManager
        // Forward any ETH sent (may be needed for swap)
        // This will revert if the rebalance fails, which is desired behavior
        manager.rebalanceSwap{value: msg.value}(params, outMin, inMin);

        // Determine primary trigger index (priority order) and emit event
        uint8 triggerIndex;
        if (status.baseTickTrigger) {
            triggerIndex = 0;
        } else if (status.baseRatioTrigger) {
            triggerIndex = 1;
        } else if (status.limitTickTrigger) {
            triggerIndex = 2;
        } else if (status.limitRatioTrigger) {
            triggerIndex = 3;
        } else {
            triggerIndex = 4; // outOfPositionTrigger
        }
        emit AutomatedRebalanceExecuted(triggerIndex, true);

        // Calculate gas used and reimburse caller
        _reimburseGas(gasBefore);
    }

    /**
     * @notice Execute compound swap when trigger conditions are met
     * @param swapParams Parameters for the DEX aggregator swap
     * @param inMin Minimum amounts for adding liquidity to positions
     * @dev Only callable by automation service when not paused
     * @dev Checks compound swap trigger before executing
     * @dev Reimburses caller with ETH for gas costs
     */
    function executeCompoundSwap(RebalanceLogic.SwapParams calldata swapParams, uint256[2][] calldata inMin)
        external
        payable
        override
        onlyAutomationService
        whenNotPaused
        nonReentrant
    {
        // Checks: Verify minimum balance
        if (address(this).balance < MIN_BALANCE) revert InsufficientFunds();

        uint256 gasBefore = gasleft();

        // Checks: Verify compound swap trigger is met
        (,,,, uint256 outOfPositionRatio,,,,,,,) = manager.getRatios();
        if (
            compoundSwapParams.outOfPositionRatioThreshold == 0
                || outOfPositionRatio < compoundSwapParams.outOfPositionRatioThreshold
        ) {
            revert NoTriggersmet();
        }

        // Interactions: Execute compound swap on MultiPositionManager
        // Forward any ETH sent (may be needed for swap)
        manager.compoundSwap{value: msg.value}(swapParams, inMin);

        // Emit event before gas reimbursement (CEI pattern)
        emit AutomatedCompoundExecuted(
            outOfPositionRatio, compoundSwapParams.outOfPositionRatioThreshold, address(manager)
        );

        // Calculate gas used and reimburse caller
        _reimburseGas(gasBefore);
    }

    /**
     * @notice Execute withdrawal when trigger conditions are met
     * @param outMin Minimum output amounts for slippage protection
     * @dev Only callable by automation service when withdrawal triggers are met
     * @dev Reimburses automation service with ETH including 10% buffer
     */
    function executeWithdrawal(uint256[2][] memory outMin)
        external
        override
        onlyAutomationService
        whenNotPaused
        nonReentrant
    {
        // Checks: Verify minimum balance for gas reimbursement
        if (address(this).balance < MIN_BALANCE) {
            revert InsufficientFunds();
        }

        uint256 gasBefore = gasleft();

        // Get ratios to check trigger status
        (uint256 pool0Ratio, uint256 pool1Ratio,,,,,,,,,,) = manager.getRatios();

        bool pool0Triggered =
            withdrawalParams.pool0RatioThreshold != 0 && pool0Ratio >= withdrawalParams.pool0RatioThreshold;

        bool pool1Triggered =
            withdrawalParams.pool1RatioThreshold != 0 && pool1Ratio >= withdrawalParams.pool1RatioThreshold;

        // Check trigger
        if (!pool0Triggered && !pool1Triggered) revert NoTriggersmet();

        // Validate withdrawal params
        _validateWithdrawalParams();

        // Interactions: Determine withdrawal type and execute
        if (
            withdrawalParams.withdrawAll || (withdrawalParams.withdrawToken0Only && withdrawalParams.withdrawToken1Only)
        ) {
            // Path A: Full withdrawal
            address mpmOwner = Ownable(address(manager)).owner();
            uint256 ownerShares = manager.balanceOf(mpmOwner);
            manager.withdraw(ownerShares, outMin, true);
        } else if (withdrawalParams.withdrawToken0Only) {
            // Path B: Withdraw only token0, rebalance with remaining token1
            _withdrawSingleToken(true, outMin);
        } else if (withdrawalParams.withdrawToken1Only) {
            // Path C: Withdraw only token1, rebalance with remaining token0
            _withdrawSingleToken(false, outMin);
        }

        // Emit event after withdrawal execution (CEI pattern)
        emit AutomatedWithdrawalExecuted(pool0Triggered, pool1Triggered, address(manager));

        // Reimburse gas to automation service
        _reimburseGas(gasBefore);
    }

    /**
     * @notice Internal wrapper to check triggers using library
     * @return status Trigger status indicating which triggers are met
     */
    function checkTriggers() internal view returns (RebalanceTriggerStatus memory status) {
        return RelayerLogic.checkTriggers(manager, triggerConfig, strategyParams);
    }

    // /**
    //  * @notice Get current statistics
    //  * @return stats RelayerStats struct
    //  */
    // function getStats() external view override returns (RelayerStats memory stats) {
    //     stats.totalGasSpent = totalGasSpent;
    //     stats.ethBalance = address(this).balance;
    // }

    // /**
    //  * @notice Estimate how many rebalances can be funded with current ETH balance
    //  * @param estimatedGasPerRebalance Estimated gas per rebalance (e.g., 500000)
    //  * @return count Estimated number of rebalances remaining
    //  */
    // function estimateRebalancesLeft(uint256 estimatedGasPerRebalance) external view override returns (uint256 count) {
    //     uint256 balance = address(this).balance;
    //     if (balance == 0) return 0;

    //     // Calculate estimated cost per rebalance with buffer
    //     // cost = (estimatedGas + overhead) * gasPrice * buffer
    //     uint256 estimatedCost = (estimatedGasPerRebalance + BASE_GAS_OVERHEAD) * tx.gasprice;
    //     estimatedCost = (estimatedCost * GAS_BUFFER_NUMERATOR) / GAS_BUFFER_DENOMINATOR;

    //     if (estimatedCost == 0) return 0;

    //     return balance / estimatedCost;
    // }

    /**
     * @notice Get complete token information for the pool
     * @return info Token information including symbols, addresses, decimals, and Coingecko IDs
     */
    function getTokenInfo() external view override returns (IRelayer.TokenInfo memory info) {
        PoolKey memory poolKey = manager.poolKey();
        info.token0Address = Currency.unwrap(poolKey.currency0);
        info.token1Address = Currency.unwrap(poolKey.currency1);

        // Handle native ETH for token0 (token1 can never be address(0) due to sorting)
        if (info.token0Address == address(0)) {
            info.token0Symbol = "ETH";
            info.decimals0 = 18;
        } else {
            info.token0Symbol = IERC20Metadata(info.token0Address).symbol();
            info.decimals0 = IERC20Metadata(info.token0Address).decimals();
        }

        // Token1 is always an ERC20 (never native ETH)
        info.token1Symbol = IERC20Metadata(info.token1Address).symbol();
        info.decimals1 = IERC20Metadata(info.token1Address).decimals();

        info.token0CoingeckoId = volatilityParams.geckoIdToken0;
        info.token1CoingeckoId = volatilityParams.geckoIdToken1;
    }

    /**
     * @notice Get all rebalance parameters
     * @return triggerConfig Current TriggerConfig
     * @return strategyParams Current StrategyParams
     * @return volatilityParams Current VolatilityParams
     */
    function getRebalanceParams()
        external
        view
        override
        returns (TriggerConfig memory, StrategyParams memory, VolatilityParams memory)
    {
        return (triggerConfig, strategyParams, volatilityParams);
    }

    /**
     * @notice Get withdrawal trigger parameters
     * @return params Current WithdrawalParams
     */
    function getWithdrawalParams() external view override returns (WithdrawalParams memory params) {
        return withdrawalParams;
    }

    /**
     * @notice Get compound swap trigger parameters
     * @return params Current CompoundSwapParams
     */
    function getCompoundSwapParams() external view override returns (CompoundSwapParams memory params) {
        return compoundSwapParams;
    }

    /**
     * @notice Check if compound swap trigger conditions are met
     * @return bool True if outOfPositionRatio meets/exceeds threshold
     * @dev Returns false if threshold is 0 (trigger disabled)
     */
    function compoundSwapTriggerStatus() internal view returns (bool) {
        // If threshold is 0, compound swap trigger is disabled
        if (compoundSwapParams.outOfPositionRatioThreshold == 0) {
            return false;
        }

        (,,,, uint256 outOfPositionRatio,,,,,,,) = manager.getRatios();

        return outOfPositionRatio >= compoundSwapParams.outOfPositionRatioThreshold;
    }

    /**
     * @notice Check if withdrawal trigger conditions are met
     * @return bool True if pool0Ratio or pool1Ratio meets/exceeds thresholds
     * @dev Returns false if both thresholds are 0 (trigger disabled)
     */
    function withdrawalTriggerStatus() internal view returns (bool) {
        // If both are 0, withdrawal trigger is disabled
        if (withdrawalParams.pool0RatioThreshold == 0 && withdrawalParams.pool1RatioThreshold == 0) {
            return false;
        }

        (uint256 pool0Ratio, uint256 pool1Ratio,,,,,,,,,,) = manager.getRatios();

        bool pool0Triggered =
            withdrawalParams.pool0RatioThreshold != 0 && pool0Ratio >= withdrawalParams.pool0RatioThreshold;

        bool pool1Triggered =
            withdrawalParams.pool1RatioThreshold != 0 && pool1Ratio >= withdrawalParams.pool1RatioThreshold;

        return pool0Triggered || pool1Triggered;
    }

    /**
     * @notice Set all rebalance parameters at once
     * @param _triggerConfig New trigger configuration
     * @param _strategyParams New strategy parameters
     * @param _volatilityParams New volatility parameters
     * @dev Only callable by owner. Validates all parameters.
     */
    function setRebalanceParams(
        TriggerConfig calldata _triggerConfig,
        StrategyParams calldata _strategyParams,
        VolatilityParams calldata _volatilityParams
    ) external override onlyOwner {
        // Validate and set trigger config
        _validateRatios(
            _triggerConfig.baseMinRatio,
            _triggerConfig.baseMaxRatio,
            _triggerConfig.limitMinRatio,
            _triggerConfig.limitThreshold,
            _triggerConfig.outOfPositionThreshold
        );

        int24 tickSpacing = manager.poolKey().tickSpacing;
        TriggerConfig memory roundedConfig = _triggerConfig;
        roundedConfig.baseLowerTrigger = _roundUpToTickSpacing(_triggerConfig.baseLowerTrigger, tickSpacing);
        roundedConfig.baseUpperTrigger = _roundUpToTickSpacing(_triggerConfig.baseUpperTrigger, tickSpacing);
        roundedConfig.limitDeltaTicks = _roundUpToTickSpacing(_triggerConfig.limitDeltaTicks, tickSpacing);
        roundedConfig.maxDeltaTicks = _roundUpToTickSpacing(_triggerConfig.maxDeltaTicks, tickSpacing);

        _validateDeltas(
            roundedConfig.baseLowerTrigger,
            roundedConfig.baseUpperTrigger,
            roundedConfig.limitDeltaTicks,
            roundedConfig.maxDeltaTicks
        );

        triggerConfig = roundedConfig;

        // Validate and set strategy params
        if (_strategyParams.strategy == address(0)) revert InvalidTriggerConfig();
        _validateWeights(_strategyParams.weight0, _strategyParams.weight1);

        // If isBaseRatio=true and proportional mode (weight0=0, weight1=0), must use swap
        // Otherwise: perpetual rebalancing (ratio trigger fires, rebalances proportionally, ratio still wrong, triggers again)
        bool isProportional = (_strategyParams.weight0 == 0 && _strategyParams.weight1 == 0);
        if (_strategyParams.isBaseRatio && isProportional && !_strategyParams.useRebalanceSwap) {
            revert InvalidTriggerConfig();
        }

        strategyParams = _strategyParams;

        // Validate and set volatility params
        if (_volatilityParams.pairType > 3) revert InvalidPairType();
        volatilityParams = _volatilityParams;

        emit TriggersUpdated(msg.sender);
        emit VolatilityParamsUpdated(
            _volatilityParams.geckoIdToken0, _volatilityParams.geckoIdToken1, _volatilityParams.pairType
        );
    }

    /**
     * @notice Set withdrawal trigger parameters
     * @param newParams New withdrawal parameters
     * @dev Only callable by owner
     */
    function setWithdrawalParams(WithdrawalParams calldata newParams) external override onlyOwner {
        // Validate params before setting
        _validateWithdrawalParamsStruct(newParams);
        withdrawalParams = newParams;
    }

    /**
     * @notice Set compound swap trigger parameters
     * @param newParams New compound swap parameters
     * @dev Only callable by owner
     */
    function setCompoundSwapParams(CompoundSwapParams calldata newParams) external override onlyOwner {
        // Validate: threshold should not exceed 100%
        if (newParams.outOfPositionRatioThreshold > 1e18) {
            revert InvalidTriggerConfig();
        }
        compoundSwapParams = newParams;
    }

    /**
     * @notice Validate withdrawal params struct for invalid combinations
     * @param params The withdrawal params to validate
     * @dev Reverts if params have invalid flag combinations
     */
    function _validateWithdrawalParamsStruct(WithdrawalParams memory params) private pure {
        if (
            // Cannot have withdrawAll=true with either token-specific flag
            (params.withdrawAll && (params.withdrawToken0Only || params.withdrawToken1Only))
            // Cannot set both withdrawToken0Only and withdrawToken1Only (mutually exclusive)
            || (params.withdrawToken0Only && params.withdrawToken1Only)
            // Cannot set both pool0RatioThreshold and pool1RatioThreshold (mutually exclusive)
            || (params.pool0RatioThreshold != 0 && params.pool1RatioThreshold != 0)
            // If all flags are false and both ratio thresholds are 0, no trigger is possible
            || (!params.withdrawAll && !params.withdrawToken0Only && !params.withdrawToken1Only
                && params.pool0RatioThreshold == 0 && params.pool1RatioThreshold == 0)
            // Logic validation: pool0RatioThreshold should pair with withdrawToken0Only or withdrawAll
            // If pool is 95% token0, you should withdraw token0 (not token1 which doesn't exist)
            || (params.pool0RatioThreshold != 0 && params.withdrawToken1Only)
            // Logic validation: pool1RatioThreshold should pair with withdrawToken1Only or withdrawAll
            // If pool is 95% token1, you should withdraw token1 (not token0 which doesn't exist)
            || (params.pool1RatioThreshold != 0 && params.withdrawToken0Only)
        ) {
            revert InvalidWithdrawalParams();
        }
    }

    /**
     * @notice Validate withdrawal params for invalid combinations
     * @dev Reverts if withdrawal params have invalid flag combinations
     */
    function _validateWithdrawalParams() private view {
        if (
            // Cannot have withdrawAll=true with either token-specific flag
            (withdrawalParams.withdrawAll && (withdrawalParams.withdrawToken0Only || withdrawalParams.withdrawToken1Only))
            // Cannot set both withdrawToken0Only and withdrawToken1Only (mutually exclusive)
            || (withdrawalParams.withdrawToken0Only && withdrawalParams.withdrawToken1Only)
            // Cannot set both pool0RatioThreshold and pool1RatioThreshold (mutually exclusive)
            || (withdrawalParams.pool0RatioThreshold != 0 && withdrawalParams.pool1RatioThreshold != 0)
            // If all flags are false and both ratio thresholds are 0, no trigger is possible
            || (!withdrawalParams.withdrawAll && !withdrawalParams.withdrawToken0Only && !withdrawalParams.withdrawToken1Only
                && withdrawalParams.pool0RatioThreshold == 0 && withdrawalParams.pool1RatioThreshold == 0)
            // Logic validation: pool0RatioThreshold should pair with withdrawToken0Only or withdrawAll
            || (withdrawalParams.pool0RatioThreshold != 0 && withdrawalParams.withdrawToken1Only)
            // Logic validation: pool1RatioThreshold should pair with withdrawToken1Only or withdrawAll
            || (withdrawalParams.pool1RatioThreshold != 0 && withdrawalParams.withdrawToken0Only)
        ) {
            revert InvalidWithdrawalParams();
        }
    }

    /**
     * @notice Withdraw a single token type and rebalance with the remaining token
     * @param isToken0 True to withdraw token0, false to withdraw token1
     * @param outMin Slippage protection for withdrawCustom
     */
    function _withdrawSingleToken(bool isToken0, uint256[2][] memory outMin) private {
        // Check ratios BEFORE withdrawal to determine if remaining token exists
        (uint256 pool0Ratio, uint256 pool1Ratio,,,,,,,,,,) = manager.getRatios();

        // Determine if rebalance needed based on remaining token
        // If withdrawing token0, check if token1 remains (pool1Ratio > 0)
        // If withdrawing token1, check if token0 remains (pool0Ratio > 0)
        bool shouldRebalance = isToken0 ? (pool1Ratio > 0) : (pool0Ratio > 0);

        // Get total amounts
        (uint256 total0, uint256 total1,,) = manager.getTotalAmounts();

        // Withdraw the specified token (tokens go to owner)
        if (isToken0) {
            manager.withdrawCustom(total0, 0, outMin);
        } else {
            manager.withdrawCustom(0, total1, outMin);
        }

        // If no remaining token, return early (no rebalance needed)
        if (!shouldRebalance) {
            return;
        }

        // Retrieve ALL strategy params from MultiPositionManager to preserve position structure
        (
            address lastStrategy,
            int24 lastCenterTick,
            uint24 lastTicksLeft,
            uint24 lastTicksRight,
            uint24 lastLimitWidth,
            , // weight0 - ignore, use 0 for proportional
            , // weight1 - ignore, use 0 for proportional
            bool lastUseCarpet,
            , // useSwap - ignore
            // useAssetWeights - ignore
        ) = manager.lastStrategyParams();

        // Construct rebalance params using stored strategy params from last rebalance
        // Use proportional weights (0,0) to deploy liquidity with only the remaining token
        IMultiPositionManager.RebalanceParams memory params = IMultiPositionManager.RebalanceParams({
            strategy: lastStrategy,
            center: lastCenterTick,
            tLeft: lastTicksLeft,
            tRight: lastTicksRight,
            limitWidth: lastLimitWidth,
            weight0: 0,
            weight1: 0,
            useCarpet: lastUseCarpet
        });

        // Prepare inMin array (all zeros)
        // Use max(1, basePositionsLength) to ensure at least 1 element for new positions
        uint256 basePositionsLen = manager.basePositionsLength();
        uint256 inMinLen = basePositionsLen > 0 ? basePositionsLen : 1;
        uint256[2][] memory inMin = new uint256[2][](inMinLen);
        // Arrays are initialized to zero by default

        // Prepare outMin array for rebalance (all zeros)
        uint256[2][] memory rebalanceOutMin = new uint256[2][](basePositionsLen);
        // Arrays are initialized to zero by default

        // Execute rebalance with remaining token
        manager.rebalance(params, rebalanceOutMin, inMin);
    }

    /**
     * @notice Pause automated rebalancing
     * @dev Only callable by owner
     */
    function pause() external override onlyOwner {
        if (isPaused) revert ContractPaused();
        isPaused = true;
    }

    /**
     * @notice Unpause automated rebalancing
     * @dev Only callable by owner
     */
    function unpause() external override onlyOwner {
        if (!isPaused) revert NotPaused();
        isPaused = false;
    }

    /**
     * @notice Fund the contract with ETH for gas reimbursements
     * @dev Anyone can fund the contract
     */
    function fundContract() external payable override {
        if (msg.value == 0) revert InsufficientFunds();
    }

    /**
     * @notice Withdraw ETH from the contract
     * @param amount Amount of ETH to withdraw
     * @dev Only callable by owner
     */
    function withdrawFunds(uint256 amount) external override onlyOwner {
        if (amount == 0) revert InsufficientFunds();
        if (address(this).balance < amount) revert InsufficientFunds();

        // Use low-level call for ETH transfer
        // Assembly for gas-efficient external call with full control
        // Equivalent Solidity: (bool success,) = owner.call{value: amount}("");
        // Memory-safe: only reads/writes scratch space
        bool success;
        address ownerAddr = owner;
        assembly ("memory-safe") {
            success := call(gas(), ownerAddr, amount, 0, 0, 0, 0)
        }
        if (!success) revert TransferFailed();
    }

    /**
     * @notice Withdraw all ETH from the contract
     * @dev Only callable by owner
     */
    function withdrawAllFunds() external override onlyOwner {
        uint256 contractBalance = address(this).balance;
        if (contractBalance == 0) revert InsufficientFunds();

        // Use low-level call for ETH transfer
        // Assembly for gas-efficient external call with full control
        // Equivalent Solidity: (bool success,) = owner.call{value: contractBalance}("");
        // Memory-safe: only reads/writes scratch space
        bool success;
        address ownerAddr = owner;
        assembly ("memory-safe") {
            success := call(gas(), ownerAddr, contractBalance, 0, 0, 0, 0)
        }
        if (!success) revert TransferFailed();
    }

    /**
     * @notice Reimburse the caller for gas used
     * @param gasBefore Gas remaining before execution
     * @dev Calculates gas used, applies 10% buffer, and transfers ETH to caller
     */
    function _reimburseGas(uint256 gasBefore) private {
        // Calculate gas used
        uint256 gasUsed = gasBefore - gasleft() + BASE_GAS_OVERHEAD;

        // Calculate reimbursement with 10% buffer
        uint256 reimbursement = (gasUsed * tx.gasprice * GAS_BUFFER_NUMERATOR) / GAS_BUFFER_DENOMINATOR;

        // Check sufficient balance
        if (address(this).balance < reimbursement) revert InsufficientFunds();

        // Update statistics
        unchecked {
            totalGasSpent += reimbursement;
        }

        // Transfer ETH to caller
        // Assembly for gas-efficient external call with full control
        // Equivalent Solidity: (bool success,) = msg.sender.call{value: reimbursement}("");
        // Memory-safe: only reads/writes scratch space
        bool success;
        assembly ("memory-safe") {
            success := call(gas(), caller(), reimbursement, 0, 0, 0, 0)
        }
        if (!success) revert TransferFailed();
    }

    function _validateRatios(
        uint256 baseMin,
        uint256 baseMax,
        uint256 limitMin,
        uint256 limitThreshold,
        uint256 outOfPos
    ) private pure {
        if (baseMin > 1e18 || baseMax > 1e18 || limitMin > 1e18 || limitThreshold > 1e18 || outOfPos > 1e18) {
            revert InvalidTriggerConfig();
        }
        if (baseMin != 0 && baseMax != 0 && baseMin > baseMax) {
            revert InvalidTriggerConfig();
        }
    }

    function _validateDeltas(uint24 baseLowerTrigger, uint24 baseUpperTrigger, uint24 limitDelta, uint24 maxDelta)
        private
        pure
    {
        // maxDelta = 0 means no circuit breaker, so only validate if maxDelta is set
        if (maxDelta != 0) {
            // If baseLowerTrigger is set, maxDeltaTicks must be greater
            if (baseLowerTrigger != 0 && maxDelta <= baseLowerTrigger) {
                revert InvalidTriggerConfig();
            }
            // If baseUpperTrigger is set, maxDeltaTicks must be greater
            if (baseUpperTrigger != 0 && maxDelta <= baseUpperTrigger) {
                revert InvalidTriggerConfig();
            }
            // If limitDeltaTicks is set, maxDeltaTicks must be greater
            if (limitDelta != 0 && maxDelta <= limitDelta) {
                revert InvalidTriggerConfig();
            }
        }
    }

    /**
     * @notice Round a delta value UP to the nearest tickSpacing multiple
     * @param value The delta value to round
     * @param tickSpacing The tick spacing to align to
     * @return Rounded value (0 stays 0, non-zero rounds up)
     * @dev Always rounds UP to ensure triggers are not more sensitive than intended
     */
    function _roundUpToTickSpacing(uint24 value, int24 tickSpacing) private pure returns (uint24) {
        if (value == 0) return 0;
        uint24 spacing = uint24(uint256(int256(tickSpacing)));
        return ((value + spacing - 1) / spacing) * spacing;
    }

    function _validateWeights(uint256 w0, uint256 w1) private pure {
        // Proportional mode: both weights must be 0
        if (w0 == 0 && w1 == 0) {
            return;
        }
        // Non-proportional mode: weights must sum to 1e18
        if (w0 + w1 != 1e18) {
            revert InvalidTriggerConfig();
        }
    }

    /**
     * @notice Receive function to accept ETH
     */
    receive() external payable {}
}
