// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.28;

import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";

import {Allocator} from "src/Allocator.sol";

import {ISidecar} from "src/interfaces/ISidecar.sol";
import {IAccountant} from "src/interfaces/IAccountant.sol";
import {IBalanceProvider} from "src/interfaces/IBalanceProvider.sol";
import {IProtocolController} from "src/interfaces/IProtocolController.sol";
import {ISidecarFactory} from "src/interfaces/ISidecarFactory.sol";
import {IBaseRewardPool} from "@interfaces/convex/IBaseRewardPool.sol";

/// @dev Minimal interface for sidecars with reward pool (Convex/Aura)
interface ISidecarRewardPool {
    function baseRewardPool() external view returns (address);
}

/// @dev Minimal interface for Curve/Balancer gauge v2.0 calculations
interface ICurveGauge {
    function working_supply() external view returns (uint256);
    function inflation_rate() external view returns (uint256);
    function totalSupply() external view returns (uint256);
}

/// @dev Minimal interface for Curve gauge controller
interface IGaugeController {
    function gauge_relative_weight(address gauge) external view returns (uint256);
}

/// @title OnlyBoostAllocator.
/// @author Stake DAO
/// @custom:github @stake-dao
/// @custom:contact contact@stakedao.org

/// @notice Calculates the optimal LP token allocation for Stake DAO Locker and sidecars (Convex/Aura).
contract OnlyBoostAllocator is Allocator {
    using Math for uint256;

    /// @notice Gauge-specific configuration when manual weights are enabled.
    struct CustomWeights {
        uint128 lockerWeight;
        bool enabled;
    }

    /// @notice Address of the Boost Delegation contract (e.g., veCRV Boost Delegation V3)
    address public immutable BOOST_PROVIDER;

    /// @notice Address of the Sidecar Boost Holder contract (e.g., Convex Voter Proxy, Aura Voter Proxy)
    address public immutable SIDECAR_BOOST_HOLDER;

    /// @notice Address of the Sidecar Factory contract (e.g., ConvexSidecarFactory, AuraSidecarFactory)
    ISidecarFactory public immutable SIDECAR_FACTORY;

    /// @notice Protocol controller that manages permissions.
    IProtocolController public immutable PROTOCOL_CONTROLLER;

    /// @notice Protocol identifier for fetching accountant
    bytes4 public immutable PROTOCOL_ID;

    /// @notice Address of the Curve gauge controller for gauge weight lookup
    address public immutable GAUGE_CONTROLLER;

    /// @notice Scaling factor for manual weight configuration (1e18 precision).
    uint256 private constant WEIGHT_SCALE = 1e18;

    /// @notice Gauges forced to allocate 100% to the locker (used during migrations).
    mapping(address => bool) public lockerOnly;

    /// @notice Gauge-specific manual allocation overrides.
    mapping(address => CustomWeights) public customWeights;

    /// @notice Emitted when the locker-only override is toggled for a gauge.
    event LockerOnlyUpdated(address indexed gauge, bool lockerOnly);

    /// @notice Emitted when manual weights are set for a gauge.
    event CustomWeightsSet(address indexed gauge, uint256 lockerWeight);

    /// @notice Emitted when manual weights are cleared for a gauge.
    event GaugeWeightsCleared(address indexed gauge);

    /// @notice Error thrown when caller is not authorized through the protocol controller.
    error OnlyAllowed();

    /// @notice Error thrown when attempting to set invalid gauge weights.
    error InvalidGaugeWeights();

    /// @notice Error thrown when provided gauge is invalid for overrides.
    error InvalidGauge();

    /// @notice Restricts function access to addresses permissioned via the protocol controller.
    modifier onlyAllowed() {
        require(PROTOCOL_CONTROLLER.allowed(address(this), msg.sender, msg.sig), OnlyAllowed());
        _;
    }

    /// @notice Initializes the OnlyBoostAllocator contract
    /// @param _locker Address of the Stake DAO Liquidity Locker
    /// @param _gateway Address of the gateway contract
    /// @param _protocolController Address of the protocol controller contract
    /// @param _sidecarFactory Address of the Sidecar Factory contract
    /// @param _boostProvider Address of the boost provider contract (also used for veCRV total supply)
    /// @param _sidecarBoostHolder Address of the sidecar boost holder (e.g., Convex/Aura Voter Proxy)
    /// @param _protocolId Protocol identifier for fetching accountant
    /// @param _gaugeController Address of the Curve gauge controller
    constructor(
        address _locker,
        address _gateway,
        address _protocolController,
        address _sidecarFactory,
        address _boostProvider,
        address _sidecarBoostHolder,
        bytes4 _protocolId,
        address _gaugeController
    ) Allocator(_locker, _gateway) {
        PROTOCOL_CONTROLLER = IProtocolController(_protocolController);
        BOOST_PROVIDER = _boostProvider;
        SIDECAR_BOOST_HOLDER = _sidecarBoostHolder;
        SIDECAR_FACTORY = ISidecarFactory(_sidecarFactory);
        PROTOCOL_ID = _protocolId;
        GAUGE_CONTROLLER = _gaugeController;
    }

    /// @notice Enables or disables sidecar allocations for a gauge.
    /// @dev Need to rebalance the allocator to update the allocation targets, else the deposit/withdrawal will fail.
    function setLockerOnly(address gauge, bool value) external onlyAllowed {
        lockerOnly[gauge] = value;
        emit LockerOnlyUpdated(gauge, value);
    }

    /// @notice Sets manual allocation weights for a gauge, overriding automated boost logic.
    /// @param gauge Gauge address to configure.
    /// @param lockerWeight Relative weight for the locker target expressed on WEIGHT_SCALE (1e18 precision).
    function setGaugeWeights(address gauge, uint256 lockerWeight) external onlyAllowed {
        _setGaugeWeights(gauge, lockerWeight);
    }

    /// @notice Clears manual allocation weights for a gauge.
    /// @param gauge Gauge address to clear.
    function clearGaugeWeights(address gauge) external onlyAllowed {
        delete customWeights[gauge];
        emit GaugeWeightsCleared(gauge);
    }

    //////////////////////////////////////////////////////
    // --- DEPOSIT ALLOCATION
    //////////////////////////////////////////////////////

    /// @inheritdoc Allocator
    function getDepositAllocation(address asset, address gauge, uint256 amount)
        public
        view
        override
        returns (Allocation memory alloc)
    {
        // 1. Resolve the sidecar for the gauge.
        address sidecar = SIDECAR_FACTORY.getSidecar(gauge);

        if (sidecar == address(0)) {
            return super.getDepositAllocation(asset, gauge, amount);
        }

        // 3. Prepare targets and amounts containers.
        alloc.asset = asset;
        alloc.gauge = gauge;
        alloc.targets = _targets(sidecar);
        alloc.amounts = _pair(0, 0);

        if (lockerOnly[gauge]) {
            alloc.amounts[1] = amount;
            return alloc;
        }

        // 4a. If manual override is active, allocate according to manual locker share.
        CustomWeights memory customConfig = customWeights[gauge];
        if (customConfig.enabled) {
            alloc.amounts[1] = amount.mulDiv(customConfig.lockerWeight, WEIGHT_SCALE);
            alloc.amounts[0] = amount - alloc.amounts[1];
            return alloc;
        }

        // 4. Fetch current locker balance.
        uint256 balanceOfLocker = IBalanceProvider(gauge).balanceOf(LOCKER);

        // 5. Get the optimal balance based on Convex balance and veBoost ratio (using cached sidecar).
        uint256 optimalBalanceOfLocker = _getOptimalLockerBalance(gauge, sidecar, balanceOfLocker);

        // 6. Calculate the amount of lps to deposit into the locker.
        alloc.amounts[1] =
            optimalBalanceOfLocker > balanceOfLocker ? Math.min(optimalBalanceOfLocker - balanceOfLocker, amount) : 0;

        // 7. Calculate the amount of lps to deposit into the sidecar.
        alloc.amounts[0] = amount - alloc.amounts[1];
    }

    //////////////////////////////////////////////////////
    // --- WITHDRAWAL ALLOCATION
    //////////////////////////////////////////////////////

    /// @inheritdoc Allocator
    function getWithdrawalAllocation(address asset, address gauge, uint256 amount)
        public
        view
        override
        returns (Allocation memory alloc)
    {
        // 1. Resolve the sidecar.
        address sidecar = SIDECAR_FACTORY.getSidecar(gauge);

        // 2. Fallback to base allocator if none.
        if (sidecar == address(0)) {
            return super.getWithdrawalAllocation(asset, gauge, amount);
        }

        // 3. Prepare return struct.
        alloc.asset = asset;
        alloc.gauge = gauge;
        alloc.targets = _targets(sidecar);
        alloc.amounts = _pair(0, 0);

        // 4. Current balances.
        uint256 balanceOfSidecar = ISidecar(sidecar).balanceOf();
        uint256 balanceOfLocker = IBalanceProvider(gauge).balanceOf(LOCKER);

        // 5. Calculate the optimal amount of lps that must be held by the locker (using cached values).
        uint256 optimalBalanceOfLocker = _getOptimalLockerBalance(gauge, sidecar, balanceOfLocker);

        // 6. Calculate the total balance.
        uint256 totalBalance = balanceOfSidecar + balanceOfLocker;

        if (lockerOnly[gauge]) {
            // 6a. Locker-only mode: withdraw entirely from locker unless sidecar still holds funds.
            if (totalBalance <= amount) {
                alloc.amounts[0] = balanceOfSidecar;
                alloc.amounts[1] = balanceOfLocker;
            } else {
                alloc.amounts[0] = Math.min(amount, balanceOfSidecar);
                uint256 remaining = amount - alloc.amounts[0];
                alloc.amounts[1] = Math.min(remaining, balanceOfLocker);
            }
            return alloc;
        }

        // 6b. Apply manual override if enabled: target the configured locker share post-withdrawal.
        CustomWeights memory customConfig = customWeights[gauge];
        if (customConfig.enabled) {
            // 6b.i. If the withdrawal amount empties both targets, return full balances.
            if (totalBalance <= amount) {
                alloc.amounts[0] = balanceOfSidecar;
                alloc.amounts[1] = balanceOfLocker;
                return alloc;
            }

            // 6b.ii. Compute post-withdrawal targets under the manual locker share.
            uint256 finalTotal = totalBalance - amount;
            uint256 desiredLocker = finalTotal.mulDiv(customConfig.lockerWeight, WEIGHT_SCALE);
            uint256 desiredSidecar = finalTotal - desiredLocker;

            // 6b.iii. Determine how much each target can shed while respecting the target share.
            uint256 lockerWithdraw = balanceOfLocker > desiredLocker ? balanceOfLocker - desiredLocker : 0;
            uint256 sidecarWithdraw = balanceOfSidecar > desiredSidecar ? balanceOfSidecar - desiredSidecar : 0;

            // 6b.iv. Withdraw from locker up to its allowable delta, then satisfy the remainder from the sidecar.
            alloc.amounts[1] = Math.min(lockerWithdraw, amount);
            alloc.amounts[0] = Math.min(sidecarWithdraw, amount - alloc.amounts[1]);
            return alloc;
        }

        // 7. Adjust the withdrawal based on the optimal amount for Stake DAO
        if (totalBalance <= amount) {
            // 7a. If the total balance is less than or equal to the withdrawal amount, withdraw everything
            alloc.amounts[0] = balanceOfSidecar;
            alloc.amounts[1] = balanceOfLocker;
        } else if (optimalBalanceOfLocker >= balanceOfLocker) {
            // 7b. If Stake DAO balance is below optimal, prioritize withdrawing from Convex
            alloc.amounts[0] = Math.min(amount, balanceOfSidecar);
            alloc.amounts[1] = amount > alloc.amounts[0] ? amount - alloc.amounts[0] : 0;
        } else {
            // 7c. If Stake DAO is above optimal, prioritize withdrawing from Stake DAO,
            //     but only withdraw as much as needed to bring the balance down to the optimal amount.
            alloc.amounts[1] = Math.min(amount, balanceOfLocker - optimalBalanceOfLocker);
            alloc.amounts[0] = amount > alloc.amounts[1] ? Math.min(amount - alloc.amounts[1], balanceOfSidecar) : 0;

            // 7d. If there is still more to withdraw, withdraw the rest from Stake DAO.
            if (amount > alloc.amounts[0] + alloc.amounts[1]) {
                alloc.amounts[1] += amount - alloc.amounts[0] - alloc.amounts[1];
            }
        }
    }

    //////////////////////////////////////////////////////
    // --- REBALANCE ALLOCATION
    //////////////////////////////////////////////////////

    /// @inheritdoc Allocator
    function getRebalancedAllocation(address asset, address gauge, uint256 totalBalance)
        public
        view
        override
        returns (Allocation memory alloc)
    {
        // 1. Resolve sidecar.
        address sidecar = SIDECAR_FACTORY.getSidecar(gauge);
        if (sidecar == address(0)) {
            return super.getRebalancedAllocation(asset, gauge, totalBalance);
        }

        // 2. Prepare struct.
        alloc.asset = asset;
        alloc.gauge = gauge;
        alloc.targets = _targets(sidecar);
        alloc.amounts = _pair(0, 0);

        if (lockerOnly[gauge]) {
            alloc.amounts[0] = 0;
            alloc.amounts[1] = totalBalance;
        } else {
            // 2a. If manual override is set, rebalance to the configured locker share.
            CustomWeights memory customConfig = customWeights[gauge];
            if (customConfig.enabled) {
                alloc.amounts[1] = totalBalance.mulDiv(customConfig.lockerWeight, WEIGHT_SCALE);
                alloc.amounts[0] = totalBalance - alloc.amounts[1];
                return alloc;
            }

            // 3. For rebalancing, we still want to match the optimal balance based on Convex holdings
            // This ensures we maintain the boost-maximizing ratio
            uint256 balanceOfLocker = IBalanceProvider(gauge).balanceOf(LOCKER);
            uint256 optimalLockerBalance = _getOptimalLockerBalance(gauge, sidecar, balanceOfLocker);

            // Cap the locker amount to the total balance available
            alloc.amounts[1] = Math.min(optimalLockerBalance, totalBalance);
            alloc.amounts[0] = totalBalance - alloc.amounts[1];
        }
    }

    //////////////////////////////////////////////////////
    // --- VIEW HELPER FUNCTIONS
    //////////////////////////////////////////////////////

    /// @inheritdoc Allocator
    function getAllocationTargets(address gauge) public view override returns (address[] memory) {
        address sidecar = SIDECAR_FACTORY.getSidecar(gauge);
        if (sidecar == address(0)) {
            return super.getAllocationTargets(gauge);
        }

        return _targets(sidecar);
    }

    /// @dev Parameters for v2.0 optimal balance calculation
    struct OptimalBalanceParams {
        uint256 vsd; // Stake DAO veBoost
        uint256 totalBalanceRef; // Sidecar (Convex/Aura) + Stake DAO gauge balance
        uint256 sidecarRewardRate; // Actual sidecar (Convex/Aura) reward rate from BaseRewardPool
        uint256 W; // Working supply
        uint256 R; // Actual gauge CRV emission rate (inflation_rate * gauge_weight)
        uint256 B; // Gauge total supply
        uint256 V; // veCRV total supply
    }

    /// @notice Returns the optimal amount of LP token that must be held by Stake DAO Locker
    /// @dev Uses quadratic optimization based on Curve's working balance mechanics (v2.0)
    /// @param gauge Address of the gauge
    /// @return Optimal amount of LP token for Stake DAO Locker
    function getOptimalLockerBalance(address gauge) public view returns (uint256) {
        address sidecar = SIDECAR_FACTORY.getSidecar(gauge);
        uint256 balanceOfLocker = IBalanceProvider(gauge).balanceOf(LOCKER);
        return _getOptimalLockerBalance(gauge, sidecar, balanceOfLocker);
    }

    /// @dev Internal version with cached sidecar and locker balance to avoid redundant external calls
    function _getOptimalLockerBalance(address gauge, address sidecar, uint256 balanceOfLocker)
        private
        view
        returns (uint256)
    {
        // 1. Fetch sidecar (Convex/Aura) gauge balance - if zero, nothing to optimize
        uint256 sidecarBalance = IBalanceProvider(gauge).balanceOf(SIDECAR_BOOST_HOLDER);
        if (sidecarBalance == 0) return type(uint256).max;

        // 2. Check if sidecar reward period is active and has rewards streaming
        IBaseRewardPool baseRewardPool = IBaseRewardPool(ISidecarRewardPool(sidecar).baseRewardPool());
        if (baseRewardPool.periodFinish() < block.timestamp) return type(uint256).max;

        uint256 sidecarRewardRate = baseRewardPool.rewardRate();
        if (sidecarRewardRate == 0) return type(uint256).max;

        // 3. Calculate actual gauge CRV emission rate = inflation_rate * gauge_weight
        uint256 globalInflationRate = ICurveGauge(gauge).inflation_rate();
        if (globalInflationRate == 0) return type(uint256).max;

        uint256 gaugeWeight = IGaugeController(GAUGE_CONTROLLER).gauge_relative_weight(gauge);
        if (gaugeWeight == 0) return type(uint256).max;

        uint256 actualGaugeRate = globalInflationRate.mulDiv(gaugeWeight, 1e18);

        // 4. Build params struct and solve quadratic
        OptimalBalanceParams memory p = OptimalBalanceParams({
            vsd: IBalanceProvider(BOOST_PROVIDER).balanceOf(LOCKER),
            totalBalanceRef: sidecarBalance + balanceOfLocker,
            sidecarRewardRate: sidecarRewardRate,
            W: ICurveGauge(gauge).working_supply(),
            R: actualGaugeRate,
            B: ICurveGauge(gauge).totalSupply(),
            V: IBalanceProvider(BOOST_PROVIDER).totalSupply()
        });

        return _solveOptimalBalance(p);
    }

    /// @dev Solves the quadratic equation for optimal balance
    /// @notice Quadratic: Bsd^2 + b*Bsd + c = 0, solved via (-b + sqrt(b^2 - 4c)) / 2
    function _solveOptimalBalance(OptimalBalanceParams memory p) private view returns (uint256) {
        // Reward transmission factor: portion of rewards kept after fees (e.g., 0.83 for 17% fees)
        uint256 rewardTransmission = _getRewardTransmissionFactor();
        if (rewardTransmission == 0) return type(uint256).max;

        // Quadratic coefficient components for: Bsd^2 + b*Bsd + c = 0
        // b = sidecarEfficiency + lockerBoostAdvantage - totalBalanceRef
        uint256 sidecarEfficiency =
            p.sidecarRewardRate.mulDiv(p.W * 10, p.R.mulDiv(4 * rewardTransmission, 1e18));
        uint256 lockerBoostAdvantage = p.vsd.mulDiv(3 * p.B, 2 * p.V);

        // c is negative, so we track |c| for the discriminant: b^2 + 4|c|
        uint256 constantTermAbs = p.totalBalanceRef.mulDiv(3 * p.vsd, 1).mulDiv(p.B, 2 * p.V);

        return _solveQuadratic(sidecarEfficiency, lockerBoostAdvantage, p.totalBalanceRef, constantTermAbs);
    }

    /// @dev Solves quadratic Bsd^2 + b*Bsd + c = 0 where c < 0
    /// @param sidecarEfficiency First positive component of b
    /// @param lockerBoostAdvantage Second positive component of b
    /// @param totalBalanceRef Negative component of b (subtracted)
    /// @param constantTermAbs Absolute value of c (c is negative)
    /// @return Optimal Stake DAO locker balance
    function _solveQuadratic(
        uint256 sidecarEfficiency,
        uint256 lockerBoostAdvantage,
        uint256 totalBalanceRef,
        uint256 constantTermAbs
    ) private pure returns (uint256) {
        // b = sidecarEfficiency + lockerBoostAdvantage - totalBalanceRef
        // Solution: Bsd = (-b + sqrt(b^2 + 4|c|)) / 2
        if (sidecarEfficiency + lockerBoostAdvantage >= totalBalanceRef) {
            // b >= 0: Bsd = (sqrt(b^2 + 4|c|) - b) / 2
            uint256 b = sidecarEfficiency + lockerBoostAdvantage - totalBalanceRef;
            uint256 discriminant = Math.sqrt(b * b + 4 * constantTermAbs);
            return discriminant > b ? (discriminant - b) / 2 : type(uint256).max;
        } else {
            // b < 0: Bsd = (|b| + sqrt(b^2 + 4|c|)) / 2
            uint256 bAbs = totalBalanceRef - sidecarEfficiency - lockerBoostAdvantage;
            uint256 discriminant = Math.sqrt(bAbs * bAbs + 4 * constantTermAbs);
            return (bAbs + discriminant) / 2;
        }
    }

    //////////////////////////////////////////////////////
    // --- HELPER FUNCTIONS
    //////////////////////////////////////////////////////

    /// @dev Returns the pair `[sidecar, LOCKER]` used by allocation targets.
    function _targets(address sidecar) private view returns (address[] memory arr) {
        arr = new address[](2);
        arr[0] = sidecar;
        arr[1] = LOCKER;
    }

    /// @dev Utility to allocate a two‑element uint256 array.
    function _pair(uint256 a0, uint256 a1) private pure returns (uint256[] memory arr) {
        arr = new uint256[](2);
        arr[0] = a0;
        arr[1] = a1;
    }

    /// @dev Returns the reward transmission factor F = 1 - totalFees
    /// @return F scaled by 1e18 (e.g., 0.83e18 for 17% fees)
    function _getRewardTransmissionFactor() private view returns (uint256) {
        address accountant = PROTOCOL_CONTROLLER.accountant(PROTOCOL_ID);
        if (accountant == address(0)) return 1e18; // No fees if no accountant

        uint256 protocolFee = IAccountant(accountant).getProtocolFeePercent();
        uint256 harvestFee = IAccountant(accountant).getHarvestFeePercent();

        return 1e18 - protocolFee - harvestFee;
    }

    /// @dev Stores manual locker weight configuration for a gauge.
    /// @param gauge Gauge address to configure.
    /// @param lockerWeight Locker share scaled with WEIGHT_SCALE.
    function _setGaugeWeights(address gauge, uint256 lockerWeight) private {
        // 1. Ensure the gauge has a sidecar, meaning manual splits are applicable.
        address sidecar = SIDECAR_FACTORY.getSidecar(gauge);
        require(sidecar != address(0), InvalidGauge());

        // 2. Guard against invalid weights (greater than 100%).
        require(lockerWeight <= WEIGHT_SCALE, InvalidGaugeWeights());

        // 3. Persist configuration and emit the update event.
        customWeights[gauge] = CustomWeights({lockerWeight: uint128(lockerWeight), enabled: true});

        emit CustomWeightsSet(gauge, lockerWeight);
    }
}
