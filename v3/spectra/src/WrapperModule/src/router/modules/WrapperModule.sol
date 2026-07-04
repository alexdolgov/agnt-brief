// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.20;

import {SafeERC20, IERC20} from "openzeppelin-contracts/token/ERC20/utils/SafeERC20.sol";
import {Constants} from "src/router/Constants.sol";
import {ISpectra4626Wrapper} from "core-v2/src/interfaces/ISpectra4626Wrapper.sol";
import {INATIVE} from "core-v2/src/interfaces/INATIVE.sol";
import {LibExecutionModule} from "diamond-router/src/modules/libraries/LibExecutionModule.sol";
import {LibPreviewCommandsManagerModule} from "src/router/modules/libraries/LibPreviewCommandsManagerModule.sol";
import {RouterCommandsUtilities} from "src/libraries/RouterCommandsUtilities.sol";
import {RouterUtil} from "src/router/util/RouterUtil.sol";
import {Math} from "openzeppelin-contracts/utils/math/Math.sol";
import {RayMath} from "core-v2/src/libraries/RayMath.sol";
import {IWrapperModule} from "src/router/modules/interfaces/IWrapperModule.sol";

/**
 * @title WrapperModule
 * @notice Handles wrapper operations for the router
 */
contract WrapperModule is IWrapperModule {
    using SafeERC20 for IERC20;
    using Math for uint256;
    using RayMath for uint256;

    /**
     * @dev Wraps vault shares in a 4626 adapter
     * @param wrapper The address of the wrapper
     * @param vaultShares The amount of vault shares to wrap
     * @param recipient The address of the recipient
     * @param minWrapperShares The minimum amount of wrapper shares to receive
     */
    function wrapVaultIn4626Adapter(address wrapper, uint256 vaultShares, address recipient, uint256 minWrapperShares)
        external
        payable
    {
        address vault = ISpectra4626Wrapper(wrapper).vaultShare();
        recipient = RouterCommandsUtilities._resolveAddress(recipient);
        vaultShares = RouterCommandsUtilities._resolveTokenValue(vault, vaultShares);

        IERC20(vault).forceApprove(wrapper, vaultShares);
        ISpectra4626Wrapper(wrapper).wrap(vaultShares, recipient, minWrapperShares);
        IERC20(vault).forceApprove(wrapper, 0);
    }

    /**
     * @dev Unwraps vault from a 4626 adapter
     * @param wrapper The address of the wrapper
     * @param wrapperShares The amount of wrapper shares to unwrap
     * @param recipient The address of the recipient
     * @param minVaultShares The minimum amount of vault shares to receive
     */
    function unwrapVaultFrom4626Adapter(
        address wrapper,
        uint256 wrapperShares,
        address recipient,
        uint256 minVaultShares
    ) external payable {
        recipient = RouterCommandsUtilities._resolveAddress(recipient);
        wrapperShares = RouterCommandsUtilities._resolveTokenValue(wrapper, wrapperShares);

        ISpectra4626Wrapper(wrapper).unwrap(wrapperShares, recipient, address(this), minVaultShares);
    }

    /**
     * @dev Deposits native token into wrapper
     * @param wrapper The address of the wrapper
     * @param amount The amount of native token to deposit
     */
    function depositNativeInWrapper(address wrapper, uint256 amount) external payable {
        // Consume the caller's share of msg.value up front. Checked arithmetic
        // reverts if the batch over-budgets the available native balance.
        LibExecutionModule.executionStorage().msgValue -= amount;
        INATIVE(wrapper).deposit{value: amount}();
    }

    /**
     * @dev Withdraws native token from wrapper
     * @param wrapper The address of the wrapper
     * @param amount The amount of native token to withdraw
     */
    function withdrawNativeFromWrapper(address wrapper, uint256 amount) external payable {
        INATIVE(wrapper).withdraw(amount);
        // Credit native budget so later commands can spend the unwrapped amount.
        LibExecutionModule.executionStorage().msgValue += amount;
    }

    /* VIEW
    *****************************************************************************************************************/

    // Common helper function to calculate rate
    function _calculateWrapperRate(
        uint256 vaultShares,
        uint256 _expectedWrapperShares,
        address wrapper,
        address recipient,
        RouterCommandsUtilities.TokenBalance[] memory _balances
    ) internal view returns (uint256) {
        recipient = RouterCommandsUtilities._resolveAddress(recipient);
        if (recipient == address(this)) {
            RouterCommandsUtilities._increasePreviewTokenValue(_expectedWrapperShares, wrapper, _balances);
        }
        // rate : _expectedWrapperShares * rayUnit / vaultShares
        return _expectedWrapperShares.mulDiv(RayMath.RAY_UNIT, vaultShares);
    }

    /**
     * @dev Previews wrapping vault shares into 4626 wrapper shares
     * @param inputs ABI-encoded (wrapper, vaultShares, recipient)
     * @param _spot True for spot calculation, false for adjusted amount
     * @param balances Token balance array for calculations
     */
    function previewWrapVaultIn4626Adapter(
        bytes memory inputs,
        bool _spot,
        RouterCommandsUtilities.TokenBalance[] memory balances
    ) external view returns (uint256, RouterCommandsUtilities.TokenBalance[] memory) {
        (address wrapper, uint256 vaultShares, address recipient) = abi.decode(inputs, (address, uint256, address));

        address vault = ISpectra4626Wrapper(wrapper).vaultShare();
        if (_spot) {
            vaultShares = RouterUtil(LibPreviewCommandsManagerModule.getRouterUtil()).getUnit(vault);
        } else {
            vaultShares = RouterCommandsUtilities._decreasePreviewTokenValue(vaultShares, vault, balances);
        }

        uint256 _expectedWrapperShares = ISpectra4626Wrapper(wrapper).previewWrap(vaultShares);

        return (_calculateWrapperRate(vaultShares, _expectedWrapperShares, wrapper, recipient, balances), balances);
    }

    /**
     * @dev Previews unwrapping vault shares from 4626 wrapper shares
     * @param inputs ABI-encoded (wrapper, wrapperShares, recipient)
     * @param _spot True for spot calculation, false for adjusted amount
     * @param balances Token balance array for calculations
     */
    function previewUnwrapVaultFrom4626Adapter(
        bytes memory inputs,
        bool _spot,
        RouterCommandsUtilities.TokenBalance[] memory balances
    ) external view returns (uint256, RouterCommandsUtilities.TokenBalance[] memory) {
        (address wrapper, uint256 wrapperShares, address recipient) = abi.decode(inputs, (address, uint256, address));

        if (_spot) {
            wrapperShares = RouterUtil(LibPreviewCommandsManagerModule.getRouterUtil()).getUnit(wrapper);
        } else {
            wrapperShares = RouterCommandsUtilities._decreasePreviewTokenValue(wrapperShares, wrapper, balances);
        }

        uint256 _expectedVaultShares = ISpectra4626Wrapper(wrapper).previewUnwrap(wrapperShares);
        address vault = ISpectra4626Wrapper(wrapper).vaultShare();

        return (_calculateWrapperRate(wrapperShares, _expectedVaultShares, vault, recipient, balances), balances);
    }
}
