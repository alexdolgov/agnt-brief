// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.29;

import { Math } from "@openzeppelin/contracts/utils/math/Math.sol";

import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

import { BaseController } from "./BaseController.sol";
import { AccountingLogic } from "./AccountingLogic.sol";
import { IControlledVault } from "../interfaces/IControlledVault.sol";

/**
 * @title RebalancingManager
 * @notice Abstract contract that manages the rebalancing of assets between controlled vaults
 * @dev This contract allows authorized users to rebalance assets from one vault to another,
 * with optional asset swapping if the vaults use different underlying assets.
 * It extends BaseController to inherit access control and common functionality.
 */
abstract contract RebalancingManager is BaseController, AccountingLogic {
    using SafeERC20 for IERC20;
    using Math for uint256;

    /**
     * @notice Role identifier for addresses authorized to perform rebalancing operations
     */
    bytes32 public constant REBALANCING_MANAGER_ROLE = keccak256("REBALANCING_MANAGER_ROLE");

    /**
     * @notice Emitted when assets are successfully rebalanced between vaults
     */
    event Rebalanced(address indexed fromVault, address indexed toVault, uint256 fromAmount, uint256 toAmount);

    /**
     * @notice Thrown when one or both of the provided vault addresses are not valid vaults
     */
    error Rebalance_InvalidVault();
    /**
     * @notice Thrown when attempting to rebalance between the same vault
     */
    error Rebalance_SameVault();
    /**
     * @notice Thrown when the fromAmount parameter is zero
     */
    error Rebalance_ZeroFromAmount();
    /**
     * @notice Thrown when the received amount is less than the minimum expected amount
     */
    error Rebalance_SlippageTooHigh();
    /**
     * @notice Thrown when the total share supply changes during a rebalance operation
     */
    error Rebalance_ShareSupplyChanged();
    /**
     * @notice Thrown when the actual received amount does not match the expected amount after a swap
     */
    error Rebalance_IncorrectToAmount();

    /**
     * @notice Internal initializer for the RebalancingManager contract
     * @dev This function is called during contract initialization and is marked as onlyInitializing
     * to ensure it can only be called once during the initialization process
     */
    // forge-lint: disable-next-line(mixed-case-function)
    function __RebalancingManager_init() internal onlyInitializing { }

    /**
     * @notice Rebalances assets from one vault to another, with optional asset swapping
     * @param fromVault The address of the vault to withdraw assets from
     * @param fromAmount The amount of assets to withdraw from the source vault
     * @param toVault The address of the vault to deposit assets to
     * @param minToAmount The minimum amount of assets expected to be deposited (slippage protection)
     * @param swapperData Additional data passed to the swapper for asset conversion
     */
    function rebalance(
        address fromVault,
        uint256 fromAmount,
        address toVault,
        uint256 minToAmount,
        bytes calldata swapperData
    )
        external
        nonReentrant
        onlyRole(REBALANCING_MANAGER_ROLE)
    {
        require(isVault(fromVault) && isVault(toVault), Rebalance_InvalidVault());
        require(fromVault != toVault, Rebalance_SameVault());
        require(fromAmount > 0, Rebalance_ZeroFromAmount());

        address fromAsset = IControlledVault(fromVault).asset();
        address toAsset = IControlledVault(toVault).asset();

        uint256 toAmount = fromAsset == toAsset
            ? _rebalanceSameAssets(fromVault, fromAsset, fromAmount, toVault)
            : _rebalanceDiffAssets(fromVault, fromAsset, fromAmount, toVault, toAsset, minToAmount, swapperData);

        emit Rebalanced(fromVault, toVault, fromAmount, toAmount);
    }

    /**
     * @dev Internal function to rebalance the same asset type between two vaults
     * @param fromVault The address of the vault to withdraw assets from
     * @param asset The address of the asset being rebalanced
     * @param amount The amount of assets to rebalance between vaults
     * @param toVault The address of the vault to deposit assets to
     * @return toAmount The actual amount of assets that were successfully rebalanced
     */
    function _rebalanceSameAssets(
        address fromVault,
        address asset,
        uint256 amount,
        address toVault
    )
        internal
        returns (uint256 toAmount)
    {
        IControlledVault(fromVault).controllerWithdraw(asset, amount, toVault);
        IControlledVault(toVault).controllerDeposit(amount);
        return amount;
    }

    /**
     * @dev Internal function to rebalance different asset types between vaults with asset swapping.
     * The function includes multiple slippage protection mechanisms:
     * - Individual swap slippage protection via minToAmount
     * - Protocol-wide backing value slippage protection
     * - Safety buffer validation to ensure losses don't exceed acceptable limits
     * @param fromVault The address of the vault to withdraw assets from
     * @param fromAsset The address of the asset being withdrawn from the source vault
     * @param fromAmount The amount of assets to withdraw from the source vault
     * @param toVault The address of the vault to deposit assets to
     * @param toAsset The address of the asset being deposited to the destination vault
     * @param minToAmount The minimum amount of destination assets expected (slippage protection)
     * @param swapperData Additional data passed to the swapper for asset conversion
     * @return toAmount The actual amount of destination assets received and deposited
     */
    function _rebalanceDiffAssets(
        address fromVault,
        address fromAsset,
        uint256 fromAmount,
        address toVault,
        address toAsset,
        uint256 minToAmount,
        bytes calldata swapperData
    )
        internal
        returns (uint256 toAmount)
    {
        uint256 originalBackingValue = backingAssetsValue();
        uint256 originalShareSupply = _share.totalSupply();
        uint256 originalToVaultBalance = IERC20(toAsset).balanceOf(toVault);

        IControlledVault(fromVault).controllerWithdraw(fromAsset, fromAmount, address(_swapper));
        toAmount = _swapper.swap(fromAsset, fromAmount, toAsset, minToAmount, toVault, swapperData);

        // Note: Check swap amount before deposit because balanceOf returns the amount of unallocated assets

        require(originalShareSupply == _share.totalSupply(), Rebalance_ShareSupplyChanged());
        require(IERC20(toAsset).balanceOf(toVault) - originalToVaultBalance == toAmount, Rebalance_IncorrectToAmount());
        // Individual swap slippage protection
        require(toAmount >= minToAmount, Rebalance_SlippageTooHigh());
        // Check overall protocol backing value to ensure slippage is within acceptable range
        uint256 newBackingValue = backingAssetsValue();
        require(
            newBackingValue >= originalBackingValue.mulDiv(MAX_BPS - maxProtocolRebalanceSlippage, MAX_BPS),
            Rebalance_SlippageTooHigh()
        );
        // Slippage loss must not exceed safety buffer
        if (skipNextRebalanceSafetyBufferCheck) {
            skipNextRebalanceSafetyBufferCheck = false;
        } else {
            require(_safetyBuffer(newBackingValue) > 0, Rebalance_SlippageTooHigh());
        }

        IControlledVault(toVault).controllerDeposit(toAmount);
    }
}
