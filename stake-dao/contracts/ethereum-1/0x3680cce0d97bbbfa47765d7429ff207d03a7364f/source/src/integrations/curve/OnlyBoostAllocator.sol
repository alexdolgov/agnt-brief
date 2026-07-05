// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.28;

import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";

import {Allocator} from "src/Allocator.sol";

import {ISidecar} from "src/interfaces/ISidecar.sol";
import {IBalanceProvider} from "src/interfaces/IBalanceProvider.sol";
import {IProtocolController} from "src/interfaces/IProtocolController.sol";
import {IConvexSidecarFactory} from "src/interfaces/IConvexSidecarFactory.sol";

/// @title OnlyBoostAllocator.
/// @author Stake DAO
/// @custom:github @stake-dao
/// @custom:contact contact@stakedao.org

/// @notice Calculates the optimal LP token allocation for Stake DAO Locker and Convex.
contract OnlyBoostAllocator is Allocator {
    using Math for uint256;

    /// @notice Gauge-specific configuration when manual weights are enabled.
    struct CustomWeights {
        uint128 lockerWeight;
        bool enabled;
    }

    /// @notice Address of the Curve Boost Delegation V3 contract
    address public immutable BOOST_PROVIDER;

    /// @notice Address of the Convex Boost Holder contract
    address public immutable CONVEX_BOOST_HOLDER;

    /// @notice Address of the Convex Sidecar Factory contract
    IConvexSidecarFactory public immutable CONVEX_SIDECAR_FACTORY;

    /// @notice Protocol controller that manages permissions.
    IProtocolController public immutable PROTOCOL_CONTROLLER;

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
    /// @param _convexSidecarFactory Address of the Convex Sidecar Factory contract
    constructor(
        address _locker,
        address _gateway,
        address _protocolController,
        address _convexSidecarFactory,
        address _boostProvider,
        address _convexBoostHolder
    ) Allocator(_locker, _gateway) {
        PROTOCOL_CONTROLLER = IProtocolController(_protocolController);
        BOOST_PROVIDER = _boostProvider;
        CONVEX_BOOST_HOLDER = _convexBoostHolder;
        CONVEX_SIDECAR_FACTORY = IConvexSidecarFactory(_convexSidecarFactory);
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
        address sidecar = CONVEX_SIDECAR_FACTORY.getSidecar(gauge);

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

        // 4. Fetch current balances.
        uint256 balanceOfLocker = IBalanceProvider(gauge).balanceOf(LOCKER);

        // 5. Get the optimal balance based on Convex balance and veBoost ratio.
        uint256 optimalBalanceOfLocker = getOptimalLockerBalance(gauge);

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
        address sidecar = CONVEX_SIDECAR_FACTORY.getSidecar(gauge);

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

        // 5. Calculate the optimal amount of lps that must be held by the locker.
        uint256 optimalBalanceOfLocker = getOptimalLockerBalance(gauge);

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
        address sidecar = CONVEX_SIDECAR_FACTORY.getSidecar(gauge);
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
            uint256 optimalLockerBalance = getOptimalLockerBalance(gauge);

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
        address sidecar = CONVEX_SIDECAR_FACTORY.getSidecar(gauge);
        if (sidecar == address(0)) {
            return super.getAllocationTargets(gauge);
        }

        return _targets(sidecar);
    }

    /// @notice Returns the optimal amount of LP token that must be held by Stake DAO Locker
    /// @dev Calculates the optimal balance to maximize boost efficiency
    /// @param gauge Address of the Curve gauge
    /// @return balanceOfLocker Optimal amount of LP token that should be held by Stake DAO Locker
    function getOptimalLockerBalance(address gauge) public view returns (uint256 balanceOfLocker) {
        // 1. Get the balance of veBoost on Stake DAO and Convex
        uint256 veBoostOfLocker = IBalanceProvider(BOOST_PROVIDER).balanceOf(LOCKER);
        uint256 veBoostOfConvex = IBalanceProvider(BOOST_PROVIDER).balanceOf(CONVEX_BOOST_HOLDER);

        // 2. Get the balance of the liquidity gauge on Convex
        uint256 balanceOfConvex = IBalanceProvider(gauge).balanceOf(CONVEX_BOOST_HOLDER);

        // 3. If there is no balance of Convex or no veBoost on Convex, return 0
        if (balanceOfConvex == 0 || veBoostOfConvex == 0) return 0;

        // 4. Compute the optimal balance for Stake DAO based on veBoost ratio
        // This ensures Stake DAO gets LP tokens proportional to its veBoost advantage
        balanceOfLocker = balanceOfConvex.mulDiv(veBoostOfLocker, veBoostOfConvex);
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

    /// @dev Stores manual locker weight configuration for a gauge.
    /// @param gauge Gauge address to configure.
    /// @param lockerWeight Locker share scaled with WEIGHT_SCALE.
    function _setGaugeWeights(address gauge, uint256 lockerWeight) private {
        // 1. Ensure the gauge has a sidecar, meaning manual splits are applicable.
        address sidecar = CONVEX_SIDECAR_FACTORY.getSidecar(gauge);
        require(sidecar != address(0), InvalidGauge());

        // 2. Guard against invalid weights (greater than 100%).
        require(lockerWeight <= WEIGHT_SCALE, InvalidGaugeWeights());

        // 3. Persist configuration and emit the update event.
        customWeights[gauge] = CustomWeights({lockerWeight: uint128(lockerWeight), enabled: true});

        emit CustomWeightsSet(gauge, lockerWeight);
    }
}
