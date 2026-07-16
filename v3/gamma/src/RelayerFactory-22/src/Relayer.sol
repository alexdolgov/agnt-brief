// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.26;

import { IRelayer } from "./interfaces/IRelayer.sol";
import { IMultiPositionManager } from "./interfaces/IMultiPositionManager.sol";
import { IRelayerFactory } from "./interfaces/IRelayerFactory.sol";
import { RebalanceLogic } from "./libraries/RebalanceLogic.sol";
import { RelayerLogic } from "./libraries/RelayerLogic.sol";
import { ReentrancyGuard } from "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import { IERC20Metadata } from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import { PoolKey } from "v4-core/types/PoolKey.sol";
import { Currency } from "v4-core/types/Currency.sol";

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

    /// @notice Whether the contract is paused
    bool public isPaused;

    /// @notice Total number of rebalances executed
    uint256 public rebalanceCount;

    /// @notice Cumulative gas costs paid out (in wei)
    uint256 public totalGasSpent;

    /// @notice Timestamp of last rebalance
    uint256 public lastRebalanceTime;

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
     * @dev Automatically rounds delta values UP to nearest tickSpacing multiple for accuracy
     */
    constructor(
        address _manager,
        address _factory,
        address _owner,
        TriggerConfig memory _triggerConfig,
        StrategyParams memory _strategyParams,
        VolatilityParams memory _volatilityParams,
        WithdrawalParams memory _withdrawalParams
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
        _validateDeltas(_triggerConfig.baseLowerTrigger, _triggerConfig.baseUpperTrigger, _triggerConfig.limitDeltaTicks, _triggerConfig.maxDeltaTicks);

        // Validate pairType
        if (_volatilityParams.pairType > 3) revert InvalidPairType();

        triggerConfig = _triggerConfig;
        strategyParams = _strategyParams;
        volatilityParams = _volatilityParams;
        withdrawalParams = _withdrawalParams;
    }

    /**
     * @notice Internal wrapper to construct rebalance params using library
     * @param status Trigger status from checkTriggers
     * @return params Constructed rebalance parameters
     */
    function _constructRebalanceParams(RebalanceTriggerStatus memory status) private view returns (IMultiPositionManager.RebalanceParams memory params) {
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
    function executeRebalance(
        uint256[2][] memory outMin,
        uint256[2][] memory inMin
    ) external override onlyAutomationService whenNotPaused nonReentrant {
        // Checks: Verify minimum balance
        if (address(this).balance < MIN_BALANCE) revert InsufficientFunds();

        uint256 gasBefore = gasleft();

        // Checks: Verify triggers are met
        RebalanceTriggerStatus memory status = checkTriggers();
        if (!status.anyTriggerMet) revert NoTriggersmet();

        // Construct rebalance params based on triggers
        IMultiPositionManager.RebalanceParams memory params = _constructRebalanceParams(status);

        // Effects: Update statistics before interaction
        unchecked {
            ++rebalanceCount;
        }
        lastRebalanceTime = block.timestamp;

        // Interactions: Execute rebalance on MultiPositionManager
        // This will revert if the rebalance fails, which is desired behavior
        manager.rebalance(params, outMin, inMin);

        // Calculate gas used and reimburse caller
        _reimburseGas(gasBefore, status, false);
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
        IMultiPositionManager.RebalanceSwapParams memory params = IMultiPositionManager.RebalanceSwapParams({
            rebalanceParams: rebalanceParams,
            swapParams: swapParams
        });

        // Effects: Update statistics before interaction
        unchecked {
            ++rebalanceCount;
        }
        lastRebalanceTime = block.timestamp;

        // Interactions: Execute rebalance swap on MultiPositionManager
        // Forward any ETH sent (may be needed for swap)
        // This will revert if the rebalance fails, which is desired behavior
        manager.rebalanceSwap{value: msg.value}(params, outMin, inMin);

        // Calculate gas used and reimburse caller
        _reimburseGas(gasBefore, status, true);
    }

    /**
     * @notice Internal wrapper to check triggers using library
     * @return status Trigger status indicating which triggers are met
     */
    function checkTriggers() internal view returns (RebalanceTriggerStatus memory status) {
        return RelayerLogic.checkTriggers(manager, triggerConfig, strategyParams);
    }


    /**
     * @notice Get current trigger configuration
     * @return config Current TriggerConfig
     */
    function getTriggerConfig() external view override returns (TriggerConfig memory config) {
        return triggerConfig;
    }

    /**
     * @notice Get current statistics
     * @return stats RelayerStats struct
     */
    function getStats() external view override returns (RelayerStats memory stats) {
        stats.rebalanceCount = rebalanceCount;
        stats.totalGasSpent = totalGasSpent;
        stats.lastRebalanceTime = lastRebalanceTime;
        stats.ethBalance = address(this).balance;
    }

    /**
     * @notice Estimate how many rebalances can be funded with current ETH balance
     * @param estimatedGasPerRebalance Estimated gas per rebalance (e.g., 500000)
     * @return count Estimated number of rebalances remaining
     */
    function estimateRebalancesLeft(uint256 estimatedGasPerRebalance) external view override returns (uint256 count) {
        uint256 balance = address(this).balance;
        if (balance == 0) return 0;

        // Calculate estimated cost per rebalance with buffer
        // cost = (estimatedGas + overhead) * gasPrice * buffer
        uint256 estimatedCost = (estimatedGasPerRebalance + BASE_GAS_OVERHEAD) * tx.gasprice;
        estimatedCost = (estimatedCost * GAS_BUFFER_NUMERATOR) / GAS_BUFFER_DENOMINATOR;

        if (estimatedCost == 0) return 0;

        return balance / estimatedCost;
    }

    /**
     * @notice Get complete token information for the pool
     * @return info Token information including symbols, addresses, decimals, and Coingecko IDs
     */
    function getTokenInfo() external view override returns (IRelayer.TokenInfo memory info) {
        PoolKey memory poolKey = manager.poolKey();
        info.token0Address = Currency.unwrap(poolKey.currency0);
        info.token1Address = Currency.unwrap(poolKey.currency1);

        // Handle native ETH (address(0)) specially
        if (info.token0Address == address(0)) {
            info.token0Symbol = "ETH";
            info.decimals0 = 18;
        } else {
            try IERC20Metadata(info.token0Address).symbol() returns (string memory symbol) {
                info.token0Symbol = symbol;
            } catch {
                info.token0Symbol = "UNKNOWN";
            }
            try IERC20Metadata(info.token0Address).decimals() returns (uint8 decimals) {
                info.decimals0 = decimals;
            } catch {
                info.decimals0 = 18;
            }
        }

        if (info.token1Address == address(0)) {
            info.token1Symbol = "ETH";
            info.decimals1 = 18;
        } else {
            try IERC20Metadata(info.token1Address).symbol() returns (string memory symbol) {
                info.token1Symbol = symbol;
            } catch {
                info.token1Symbol = "UNKNOWN";
            }
            try IERC20Metadata(info.token1Address).decimals() returns (uint8 decimals) {
                info.decimals1 = decimals;
            } catch {
                info.decimals1 = 18;
            }
        }

        info.token0CoingeckoId = volatilityParams.geckoIdToken0;
        info.token1CoingeckoId = volatilityParams.geckoIdToken1;
    }

    /**
     * @notice Get volatility parameters for this token pair
     * @return params Current VolatilityParams
     */
    function getVolatilityParams() external view override returns (VolatilityParams memory params) {
        return volatilityParams;
    }

    /**
     * @notice Get withdrawal trigger parameters
     * @return params Current WithdrawalParams
     */
    function getWithdrawalParams() external view override returns (WithdrawalParams memory params) {
        return withdrawalParams;
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

        (, uint256 pool0Ratio, uint256 pool1Ratio, , , , , , , , , ) = manager.getRatios();

        bool pool0Triggered = withdrawalParams.pool0RatioThreshold != 0 &&
                              pool0Ratio >= withdrawalParams.pool0RatioThreshold;

        bool pool1Triggered = withdrawalParams.pool1RatioThreshold != 0 &&
                              pool1Ratio >= withdrawalParams.pool1RatioThreshold;

        return pool0Triggered || pool1Triggered;
    }

    /**
     * @notice Get current strategy parameters
     * @return params Current StrategyParams
     */
    function getStrategyParams() external view override returns (StrategyParams memory params) {
        return strategyParams;
    }

    /**
     * @notice Update trigger configuration
     * @param newConfig New trigger configuration
     * @dev Only callable by owner
     * @dev Automatically rounds delta values UP to nearest tickSpacing multiple for accuracy
     */
    function updateTriggers(TriggerConfig calldata newConfig) external override onlyOwner {
        _validateRatios(newConfig.baseMinRatio, newConfig.baseMaxRatio, newConfig.limitMinRatio,
                       newConfig.limitThreshold, newConfig.outOfPositionThreshold);

        // Round up deltas to tickSpacing multiples and validate
        int24 tickSpacing = manager.poolKey().tickSpacing;
        TriggerConfig memory roundedConfig = newConfig;
        roundedConfig.baseLowerTrigger = _roundUpToTickSpacing(newConfig.baseLowerTrigger, tickSpacing);
        roundedConfig.baseUpperTrigger = _roundUpToTickSpacing(newConfig.baseUpperTrigger, tickSpacing);
        roundedConfig.limitDeltaTicks = _roundUpToTickSpacing(newConfig.limitDeltaTicks, tickSpacing);
        roundedConfig.maxDeltaTicks = _roundUpToTickSpacing(newConfig.maxDeltaTicks, tickSpacing);

        _validateDeltas(roundedConfig.baseLowerTrigger, roundedConfig.baseUpperTrigger, roundedConfig.limitDeltaTicks, roundedConfig.maxDeltaTicks);

        triggerConfig = roundedConfig;
        emit TriggersUpdated(msg.sender);
    }

    /**
     * @notice Update strategy parameters
     * @param newParams New strategy parameters
     * @dev Only callable by owner
     */
    function updateStrategyParams(StrategyParams calldata newParams) external override onlyOwner {
        if (newParams.strategy == address(0)) revert InvalidTriggerConfig();
        _validateWeights(newParams.weight0, newParams.weight1);
        strategyParams = newParams;
        emit TriggersUpdated(msg.sender);  // Reuse same event
    }

    /**
     * @notice Update volatility parameters for this token pair
     * @param newParams New volatility parameters
     * @dev Only callable by owner
     * @dev Validates pairType is valid (0-3)
     */
    function updateVolatilityParams(
        VolatilityParams calldata newParams
    ) external override onlyOwner {
        if (newParams.pairType > 3) revert InvalidPairType();
        volatilityParams = newParams;
        emit VolatilityParamsUpdated(newParams.geckoIdToken0, newParams.geckoIdToken1, newParams.pairType);
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
        _validateRatios(_triggerConfig.baseMinRatio, _triggerConfig.baseMaxRatio, _triggerConfig.limitMinRatio,
                       _triggerConfig.limitThreshold, _triggerConfig.outOfPositionThreshold);

        int24 tickSpacing = manager.poolKey().tickSpacing;
        TriggerConfig memory roundedConfig = _triggerConfig;
        roundedConfig.baseLowerTrigger = _roundUpToTickSpacing(_triggerConfig.baseLowerTrigger, tickSpacing);
        roundedConfig.baseUpperTrigger = _roundUpToTickSpacing(_triggerConfig.baseUpperTrigger, tickSpacing);
        roundedConfig.limitDeltaTicks = _roundUpToTickSpacing(_triggerConfig.limitDeltaTicks, tickSpacing);
        roundedConfig.maxDeltaTicks = _roundUpToTickSpacing(_triggerConfig.maxDeltaTicks, tickSpacing);

        _validateDeltas(roundedConfig.baseLowerTrigger, roundedConfig.baseUpperTrigger, roundedConfig.limitDeltaTicks, roundedConfig.maxDeltaTicks);

        triggerConfig = roundedConfig;

        // Validate and set strategy params
        if (_strategyParams.strategy == address(0)) revert InvalidTriggerConfig();
        _validateWeights(_strategyParams.weight0, _strategyParams.weight1);
        strategyParams = _strategyParams;

        // Validate and set volatility params
        if (_volatilityParams.pairType > 3) revert InvalidPairType();
        volatilityParams = _volatilityParams;

        emit TriggersUpdated(msg.sender);
        emit VolatilityParamsUpdated(_volatilityParams.geckoIdToken0, _volatilityParams.geckoIdToken1, _volatilityParams.pairType);
    }

    /**
     * @notice Set withdrawal trigger parameters
     * @param newParams New withdrawal parameters
     * @dev Only callable by owner
     */
    function setWithdrawalParams(WithdrawalParams calldata newParams) external override onlyOwner {
        withdrawalParams = newParams;
    }

    /**
     * @notice Execute withdrawal when trigger conditions are met
     * @param outMin Minimum output amounts for slippage protection
     * @dev Callable by owner or automation service when withdrawal triggers are met
     */
    function executeWithdrawal(uint256[2][] memory outMin) external override nonReentrant {
        // Check trigger
        if (!withdrawalTriggerStatus()) revert NoTriggersmet();

        // Check caller authorization
        if (msg.sender != owner && !factory.hasRole(AUTOMATION_SERVICE_ROLE, msg.sender)) {
            revert UnauthorizedCaller();
        }

        // Call withdrawRelay on manager (withdraws all owner shares)
        manager.withdrawRelay(outMin, true);
    }

    /**
     * @notice Pause automated rebalancing
     * @dev Only callable by owner
     */
    function pause() external override onlyOwner {
        if (isPaused) revert ContractPaused();
        isPaused = true;
        emit Paused(msg.sender);
    }

    /**
     * @notice Unpause automated rebalancing
     * @dev Only callable by owner
     */
    function unpause() external override onlyOwner {
        if (!isPaused) revert NotPaused();
        isPaused = false;
        emit Unpaused(msg.sender);
    }

    /**
     * @notice Fund the contract with ETH for gas reimbursements
     * @dev Anyone can fund the contract
     */
    function fundContract() external payable override {
        if (msg.value == 0) revert InsufficientFunds();
        emit Funded(msg.sender, msg.value);
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

        emit Withdrawn(owner, amount);
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

        emit Withdrawn(owner, contractBalance);
    }

    /**
     * @notice Reimburse the caller for gas used
     * @param gasBefore Gas remaining before execution
     * @param status Trigger status for event emission
     * @param isSwap Whether this was a swap rebalance
     * @dev Calculates gas used, applies 10% buffer, and transfers ETH to caller
     */
    function _reimburseGas(uint256 gasBefore, RebalanceTriggerStatus memory status, bool isSwap) private {
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

        // Determine primary trigger index (priority order)
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

        // Emit event before transfer (CEI pattern)
        emit AutomatedRebalanceExecuted(triggerIndex, isSwap);

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


    function _validateRatios(uint256 baseMin, uint256 baseMax, uint256 limitMin,
                            uint256 limitThreshold, uint256 outOfPos) private pure {
        if (baseMin > 1e18 || baseMax > 1e18 || limitMin > 1e18 ||
            limitThreshold > 1e18 || outOfPos > 1e18) {
            revert InvalidTriggerConfig();
        }
        if (baseMin != 0 && baseMax != 0 && baseMin > baseMax) {
            revert InvalidTriggerConfig();
        }
    }

    function _validateDeltas(uint24 baseLowerTrigger, uint24 baseUpperTrigger, uint24 limitDelta, uint24 maxDelta) private pure {
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
    receive() external payable {
        emit Funded(msg.sender, msg.value);
    }
}
