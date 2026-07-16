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
import {PoolIdLibrary} from "v4-core/types/PoolId.sol";
import {VolatilityDynamicFeeHook} from "../LimitOrderBook/hooks/VolatilityDynamicFeeHook.sol";
import {VolatilityOracle} from "../LimitOrderBook/libraries/VolatilityOracle.sol";

/**
 * @title Relayer
 * @notice Automated relayer for MultiPositionManager with trigger-based execution
 * @dev Executes rebalances and withdrawals when configured triggers are met, reimburses automation services in ETH
 */
contract Relayer is IRelayer, ReentrancyGuard {
    using PoolIdLibrary for PoolKey;

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

    /// @notice Consolidated state containing all configuration and operational data
    /// @dev Using internal visibility removes auto-generated getters, saving ~800-1,200 bytes
    RelayerState internal state;

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
        if (state.isPaused) revert ContractPaused();
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
     * @param _twapParams TWAP-based protection and centering parameters
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
        CompoundSwapParams memory _compoundSwapParams,
        TwapParams memory _twapParams
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

        // Validate TWAP configuration
        _validateTwapParams(_twapParams, _triggerConfig, _strategyParams);

        // Assign all parameters to consolidated state struct
        state.triggerConfig = _triggerConfig;
        state.strategyParams = _strategyParams;
        state.volatilityParams = _volatilityParams;
        state.withdrawalParams = _withdrawalParams;
        state.compoundSwapParams = _compoundSwapParams;
        state.twapParams = _twapParams;
        // state.isPaused defaults to false
        // state.totalGasSpent defaults to 0
    }

    /**
     * @notice Validate TWAP parameters
     * @param _twapParams TWAP parameters to validate
     * @param _triggerConfig Trigger configuration
     * @param _strategyParams Strategy parameters
     */
    function _validateTwapParams(
        TwapParams memory _twapParams,
        TriggerConfig memory _triggerConfig,
        StrategyParams memory _strategyParams
    ) private pure {
        // Skip if TWAP not used
        if (!_twapParams.useTwapProtection && !_twapParams.useTwapCenter && _triggerConfig.baseTwapTickTrigger == 0) {
            return;
        }

        // Mutual exclusivity check
        bool hasBaseTrigger = (_triggerConfig.baseLowerTrigger != 0 || _triggerConfig.baseUpperTrigger != 0);
        bool hasTwapTrigger = (_triggerConfig.baseTwapTickTrigger != 0);
        if (hasBaseTrigger && hasTwapTrigger) revert InvalidTriggerConfig();

        // Prevent useTwapCenter with isBaseRatio
        if (_twapParams.useTwapCenter && _strategyParams.isBaseRatio) {
            revert InvalidTriggerConfig();
        }

        // Prevent baseTwapTickTrigger with isBaseRatio
        if (hasTwapTrigger && _strategyParams.isBaseRatio) {
            revert InvalidTriggerConfig();
        }

        // Validate parameters
        if (_twapParams.twapSeconds == 0) revert InvalidTriggerConfig();
        if (_twapParams.useTwapProtection && _twapParams.maxTickDeviation == 0) {
            revert InvalidTriggerConfig();
        }
    }

    /**
     * @notice Get TWAP tick from VolatilityOracle
     * @return twapTick The TWAP tick for the configured period
     */
    function _getTwapTick() private view returns (int24 twapTick) {
        PoolKey memory poolKey = manager.poolKey();
        address hookAddress = address(poolKey.hooks);

        // Get oracle from hook
        VolatilityDynamicFeeHook hook = VolatilityDynamicFeeHook(hookAddress);
        VolatilityOracle oracle = hook.volatilityOracle();

        // Consult oracle for TWAP
        (twapTick,) = oracle.consult(poolKey, state.twapParams.twapSeconds);

        return twapTick;
    }

    /**
     * @notice Check if current tick is within acceptable deviation from TWAP
     * @dev Reverts if deviation exceeds maxTickDeviation
     */
    function _checkTwapProtection() private {
        if (!state.twapParams.useTwapProtection) return;

        int24 twapTick = _getTwapTick();
        int24 currentTick = manager.currentTick();

        int24 tickDelta = currentTick - twapTick;
        uint256 absDelta = tickDelta >= 0 ? uint256(int256(tickDelta)) : uint256(int256(-tickDelta));

        if (absDelta > state.twapParams.maxTickDeviation) {
            emit TwapProtectionTriggered(currentTick, twapTick, uint24(absDelta));
            revert TwapDeviationExceeded();
        }
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
        return RelayerLogic.constructRebalanceParams(manager, state.strategyParams, state.twapParams, status);
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

        // Checks: Verify TWAP protection before executing
        _checkTwapProtection();

        uint256 gasBefore = gasleft();

        // Checks: Verify triggers are met
        RebalanceTriggerStatus memory status = checkTriggers();
        if (!status.anyTriggerMet) revert NoTriggersmet();

        // Construct rebalance params based on triggers
        IMultiPositionManager.RebalanceParams memory params = _constructRebalanceParams(status);

        // Interactions: Claim fees first if compoundFees is false
        if (!state.strategyParams.compoundFees) {
            manager.claimFee();
        }

        // Interactions: Execute rebalance on MultiPositionManager
        // This will revert if the rebalance fails, which is desired behavior
        manager.rebalance(params, outMin, inMin);

        // Determine primary trigger index (priority order) and emit event
        uint8 triggerIndex;
        if (status.baseTickTrigger) {
            triggerIndex = 0;
        } else if (status.baseTwapTickTrigger) {
            triggerIndex = 1;
        } else if (status.baseRatioTrigger) {
            triggerIndex = 2;
        } else if (status.limitTickTrigger) {
            triggerIndex = 3;
        } else if (status.limitRatioTrigger) {
            triggerIndex = 4;
        } else {
            triggerIndex = 5; // outOfPositionTrigger
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

        // Checks: Verify TWAP protection before executing
        _checkTwapProtection();

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
        if (!state.strategyParams.compoundFees) {
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
        } else if (status.baseTwapTickTrigger) {
            triggerIndex = 1;
        } else if (status.baseRatioTrigger) {
            triggerIndex = 2;
        } else if (status.limitTickTrigger) {
            triggerIndex = 3;
        } else if (status.limitRatioTrigger) {
            triggerIndex = 4;
        } else {
            triggerIndex = 5; // outOfPositionTrigger
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
            state.compoundSwapParams.outOfPositionRatioThreshold == 0
                || outOfPositionRatio < state.compoundSwapParams.outOfPositionRatioThreshold
        ) {
            revert NoTriggersmet();
        }

        // Interactions: Execute compound swap on MultiPositionManager
        // Forward any ETH sent (may be needed for swap)
        manager.compoundSwap{value: msg.value}(swapParams, inMin);

        // Emit event before gas reimbursement (CEI pattern)
        emit AutomatedCompoundExecuted(
            outOfPositionRatio, state.compoundSwapParams.outOfPositionRatioThreshold, address(manager)
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
            state.withdrawalParams.pool0RatioThreshold != 0 && pool0Ratio >= state.withdrawalParams.pool0RatioThreshold;

        bool pool1Triggered =
            state.withdrawalParams.pool1RatioThreshold != 0 && pool1Ratio >= state.withdrawalParams.pool1RatioThreshold;

        // Check trigger
        if (!pool0Triggered && !pool1Triggered) revert NoTriggersmet();

        // Validate withdrawal params
        RelayerLogic.validateWithdrawalParams(state.withdrawalParams);

        // Interactions: Determine withdrawal type and execute
        if (
            state.withdrawalParams.withdrawAll || (state.withdrawalParams.withdrawToken0Only && state.withdrawalParams.withdrawToken1Only)
        ) {
            // Path A: Full withdrawal
            address mpmOwner = Ownable(address(manager)).owner();
            uint256 ownerShares = manager.balanceOf(mpmOwner);
            manager.withdraw(ownerShares, outMin, true);
        } else if (state.withdrawalParams.withdrawToken0Only) {
            // Path B: Withdraw only token0, rebalance with remaining token1
            RelayerLogic.withdrawSingleToken(manager, true, outMin);
        } else if (state.withdrawalParams.withdrawToken1Only) {
            // Path C: Withdraw only token1, rebalance with remaining token0
            RelayerLogic.withdrawSingleToken(manager, false, outMin);
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
        return RelayerLogic.checkTriggers(manager, state.triggerConfig, state.strategyParams, state.twapParams);
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
     * @notice Get all rebalance parameters
     * @return triggerConfig Current TriggerConfig
     * @return strategyParams Current StrategyParams
     * @return volatilityParams Current VolatilityParams
     * @return twapParams Current TwapParams
     */
    function getRebalanceParams()
        external
        view
        override
        returns (TriggerConfig memory, StrategyParams memory, VolatilityParams memory, TwapParams memory)
    {
        return (state.triggerConfig, state.strategyParams, state.volatilityParams, state.twapParams);
    }

    /**
     * @notice Get withdrawal trigger parameters
     * @return params Current WithdrawalParams
     */
    function getWithdrawalParams() external view override returns (WithdrawalParams memory params) {
        return state.withdrawalParams;
    }

    /**
     * @notice Get compound swap trigger parameters
     * @return params Current CompoundSwapParams
     */
    function getCompoundSwapParams() external view override returns (CompoundSwapParams memory params) {
        return state.compoundSwapParams;
    }

    /**
     * @notice Check if the contract is paused
     * @return bool True if paused, false otherwise
     */
    function isPaused() external view override returns (bool) {
        return state.isPaused;
    }

    /**
     * @notice Check if compound swap trigger conditions are met
     * @return bool True if outOfPositionRatio meets/exceeds threshold
     * @dev Returns false if threshold is 0 (trigger disabled)
     */
    function compoundSwapTriggerStatus() internal view returns (bool) {
        // If threshold is 0, compound swap trigger is disabled
        if (state.compoundSwapParams.outOfPositionRatioThreshold == 0) {
            return false;
        }

        (,,,, uint256 outOfPositionRatio,,,,,,,) = manager.getRatios();

        return outOfPositionRatio >= state.compoundSwapParams.outOfPositionRatioThreshold;
    }

    /**
     * @notice Check if withdrawal trigger conditions are met
     * @return bool True if pool0Ratio or pool1Ratio meets/exceeds thresholds
     * @dev Returns false if both thresholds are 0 (trigger disabled)
     */
    function withdrawalTriggerStatus() internal view returns (bool) {
        // If both are 0, withdrawal trigger is disabled
        if (state.withdrawalParams.pool0RatioThreshold == 0 && state.withdrawalParams.pool1RatioThreshold == 0) {
            return false;
        }

        (uint256 pool0Ratio, uint256 pool1Ratio,,,,,,,,,,) = manager.getRatios();

        bool pool0Triggered =
            state.withdrawalParams.pool0RatioThreshold != 0 && pool0Ratio >= state.withdrawalParams.pool0RatioThreshold;

        bool pool1Triggered =
            state.withdrawalParams.pool1RatioThreshold != 0 && pool1Ratio >= state.withdrawalParams.pool1RatioThreshold;

        return pool0Triggered || pool1Triggered;
    }

    /**
     * @notice Set all rebalance parameters at once
     * @param _triggerConfig New trigger configuration
     * @param _strategyParams New strategy parameters
     * @param _volatilityParams New volatility parameters
     * @param _twapParams New TWAP parameters
     * @dev Only callable by owner. Validates all parameters.
     */
    function setRebalanceParams(
        TriggerConfig calldata _triggerConfig,
        StrategyParams calldata _strategyParams,
        VolatilityParams calldata _volatilityParams,
        TwapParams calldata _twapParams
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

        state.triggerConfig = roundedConfig;

        // Validate and set strategy params
        if (_strategyParams.strategy == address(0)) revert InvalidTriggerConfig();
        _validateWeights(_strategyParams.weight0, _strategyParams.weight1);

        // If isBaseRatio=true and proportional mode (weight0=0, weight1=0), must use swap
        // Otherwise: perpetual rebalancing (ratio trigger fires, rebalances proportionally, ratio still wrong, triggers again)
        bool isProportional = (_strategyParams.weight0 == 0 && _strategyParams.weight1 == 0);
        if (_strategyParams.isBaseRatio && isProportional && !_strategyParams.useRebalanceSwap) {
            revert InvalidTriggerConfig();
        }

        state.strategyParams = _strategyParams;

        // Validate and set volatility params
        if (_volatilityParams.pairType > 3) revert InvalidPairType();
        state.volatilityParams = _volatilityParams;

        // Validate and set TWAP params
        _validateTwapParams(_twapParams, _triggerConfig, _strategyParams);
        state.twapParams = _twapParams;

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
        RelayerLogic.validateWithdrawalParams(newParams);
        state.withdrawalParams = newParams;
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
        state.compoundSwapParams = newParams;
    }

    /**
     * @notice Pause automated rebalancing
     * @dev Only callable by owner
     */
    function pause() external override onlyOwner {
        if (state.isPaused) revert ContractPaused();
        state.isPaused = true;
    }

    /**
     * @notice Unpause automated rebalancing
     * @dev Only callable by owner
     */
    function unpause() external override onlyOwner {
        if (!state.isPaused) revert NotPaused();
        state.isPaused = false;
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

    // /**
    //  * @notice Withdraw all ETH from the contract
    //  * @dev Only callable by owner
    //  */
    // function withdrawAllFunds() external override onlyOwner {
    //     uint256 contractBalance = address(this).balance;
    //     if (contractBalance == 0) revert InsufficientFunds();

    //     // Use low-level call for ETH transfer
    //     // Assembly for gas-efficient external call with full control
    //     // Equivalent Solidity: (bool success,) = owner.call{value: contractBalance}("");
    //     // Memory-safe: only reads/writes scratch space
    //     bool success;
    //     address ownerAddr = owner;
    //     assembly ("memory-safe") {
    //         success := call(gas(), ownerAddr, contractBalance, 0, 0, 0, 0)
    //     }
    //     if (!success) revert TransferFailed();
    // }

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
            state.totalGasSpent += reimbursement;
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
