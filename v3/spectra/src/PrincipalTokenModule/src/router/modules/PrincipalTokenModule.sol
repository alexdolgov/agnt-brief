/// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.20;

import {SafeERC20, IERC20} from "openzeppelin-contracts/token/ERC20/utils/SafeERC20.sol";
import {IERC4626} from "openzeppelin-contracts/interfaces/IERC4626.sol";
import {Constants} from "src/router/Constants.sol";
import {IPrincipalToken} from "core-v2/src/interfaces/IPrincipalToken.sol";
import {LibExecutionModule} from "diamond-router/src/modules/libraries/LibExecutionModule.sol";
import {LibPreviewCommandsManagerModule} from "src/router/modules/libraries/LibPreviewCommandsManagerModule.sol";
import {RouterCommandsUtilities} from "src/libraries/RouterCommandsUtilities.sol";
import {RouterUtil} from "src/router/util/RouterUtil.sol";
import {RayMath} from "core-v2/src/libraries/RayMath.sol";
import {Math} from "openzeppelin-contracts/utils/math/Math.sol";
import {LibRegistryStorage} from "src/router/modules/libraries/LibRegistryStorage.sol";
import {IRegistry} from "core-v2/src/interfaces/IRegistry.sol";
import {IPrincipalTokenModule} from "src/router/modules/interfaces/IPrincipalTokenModule.sol";

/**
 * @title PrincipalTokenModule
 * @notice Handles Principal Token and IBT operations for the router
 */
contract PrincipalTokenModule is IPrincipalTokenModule {
    using SafeERC20 for IERC20;
    using Math for uint256;
    using RayMath for uint256;

    /**
     * @dev Deposits assets into IBT
     * @param ibt The address of the IBT
     * @param assets The amount of assets to deposit
     * @param recipient The address of the recipient
     */
    function depositAssetInIBT(address ibt, uint256 assets, address recipient) external payable {
        address asset = IERC4626(ibt).asset();
        assets = RouterCommandsUtilities._resolveTokenValue(asset, assets);
        recipient = RouterCommandsUtilities._resolveAddress(recipient);

        IERC20(asset).forceApprove(ibt, assets);
        IERC4626(ibt).deposit(assets, recipient);
        IERC20(asset).forceApprove(ibt, 0);
    }

    /**
     * @dev Deposits assets into PT
     * @param pt The address of the PT
     * @param assets The amount of assets to deposit
     * @param ptRecipient The address of the PT recipient
     * @param ytRecipient The address of the YT recipient
     * @param minShares The minimum amount of shares to receive
     */
    function depositAssetInPT(address pt, uint256 assets, address ptRecipient, address ytRecipient, uint256 minShares)
        external
        payable
    {
        address asset = IPrincipalToken(pt).underlying();
        assets = RouterCommandsUtilities._resolveTokenValue(asset, assets);
        ptRecipient = RouterCommandsUtilities._resolveAddress(ptRecipient);
        ytRecipient = RouterCommandsUtilities._resolveAddress(ytRecipient);
        bool isRegisteredPT = IRegistry(LibRegistryStorage.getRegistry()).isRegisteredPT(pt);
        if (isRegisteredPT) {
            RouterCommandsUtilities._ensureApproved(asset, pt, assets);
        } else {
            IERC20(asset).forceApprove(pt, assets);
        }
        IPrincipalToken(pt).deposit(assets, ptRecipient, ytRecipient, minShares);
        if (!isRegisteredPT) {
            IERC20(asset).forceApprove(pt, 0);
        }
    }

    /**
     * @dev Deposits IBT into PT
     * @param pt The address of the PT
     * @param ibts The amount of IBTs to deposit
     * @param ptRecipient The address of the PT recipient
     * @param ytRecipient The address of the YT recipient
     * @param minShares The minimum amount of shares to receive
     */
    function depositIBTInPT(address pt, uint256 ibts, address ptRecipient, address ytRecipient, uint256 minShares)
        external
        payable
    {
        address ibt = IPrincipalToken(pt).getIBT();
        ibts = RouterCommandsUtilities._resolveTokenValue(ibt, ibts);
        ptRecipient = RouterCommandsUtilities._resolveAddress(ptRecipient);
        ytRecipient = RouterCommandsUtilities._resolveAddress(ytRecipient);
        bool isRegisteredPT = IRegistry(LibRegistryStorage.getRegistry()).isRegisteredPT(pt);
        if (isRegisteredPT) {
            RouterCommandsUtilities._ensureApproved(ibt, pt, ibts);
        } else {
            IERC20(ibt).forceApprove(pt, ibts);
        }
        IPrincipalToken(pt).depositIBT(ibts, ptRecipient, ytRecipient, minShares);
        if (!isRegisteredPT) {
            IERC20(ibt).forceApprove(pt, 0);
        }
    }

    /**
     * @dev Redeems IBT for underlying assets
     * @param ibt The address of the IBT
     * @param shares The amount of shares to redeem
     * @param recipient The address of the recipient
     */
    function redeemIBTForAsset(address ibt, uint256 shares, address recipient) external payable {
        shares = RouterCommandsUtilities._resolveTokenValue(ibt, shares);
        recipient = RouterCommandsUtilities._resolveAddress(recipient);

        IERC4626(ibt).redeem(shares, recipient, address(this));
    }

    /**
     * @dev Redeems PT for underlying assets
     * @param pt The address of the PT
     * @param shares The amount of shares to redeem
     * @param recipient The address of the recipient
     * @param minOut The minimum amount of assets to receive
     */
    function redeemPTForAsset(address pt, uint256 shares, address recipient, uint256 minOut) external payable {
        shares = RouterCommandsUtilities._resolveTokenValue(pt, shares);
        recipient = RouterCommandsUtilities._resolveAddress(recipient);
        uint256 redeemShares = block.timestamp < IPrincipalToken(pt).maturity()
            ? Math.min(shares, IERC20(IPrincipalToken(pt).getYT()).balanceOf(address(this)))
            : shares;
        IPrincipalToken(pt).redeem(redeemShares, recipient, address(this), minOut);
    }

    /**
     * @dev Redeems PT for IBT
     * @param pt The address of the PT
     * @param shares The amount of shares to redeem
     * @param recipient The address of the recipient
     * @param minOut The minimum amount of IBTs to receive
     */
    function redeemPTForIBT(address pt, uint256 shares, address recipient, uint256 minOut) external payable {
        recipient = RouterCommandsUtilities._resolveAddress(recipient);
        shares = RouterCommandsUtilities._resolveTokenValue(pt, shares);
        uint256 redeemShares = block.timestamp < IPrincipalToken(pt).maturity()
            ? Math.min(shares, IERC20(IPrincipalToken(pt).getYT()).balanceOf(address(this)))
            : shares;
        IPrincipalToken(pt).redeemForIBT(redeemShares, recipient, address(this), minOut);
    }

    //PREVIEW COMMANDS

    // Common helper function to calculate exchange rate
    function _calculateExchangeRate(
        uint256 inputAmount,
        uint256 outputAmount,
        address outputToken,
        address recipient,
        RouterCommandsUtilities.TokenBalance[] memory balances
    ) internal view returns (uint256) {
        recipient = RouterCommandsUtilities._resolveAddress(recipient);
        if (recipient == address(this)) {
            RouterCommandsUtilities._increasePreviewTokenValue(outputAmount, outputToken, balances);
        }
        // rate : outputAmount * rayUnit / inputAmount
        return outputAmount.mulDiv(RayMath.RAY_UNIT, inputAmount);
    }

    // View function for DEPOSIT_ASSET_IN_IBT command
    function previewDepositAssetInIBT(
        bytes memory _inputs,
        bool _spot,
        RouterCommandsUtilities.TokenBalance[] memory balances
    ) external view returns (uint256, RouterCommandsUtilities.TokenBalance[] memory) {
        // Decode the input parameters
        (address ibt, uint256 assets, address recipient) = abi.decode(_inputs, (address, uint256, address));

        address asset = IERC4626(ibt).asset();

        if (_spot) {
            assets = RouterUtil(LibPreviewCommandsManagerModule.getRouterUtil()).getUnit(asset);
        } else {
            assets = RouterCommandsUtilities._decreasePreviewTokenValue(assets, asset, balances);
        }

        uint256 _expectedShares = IERC4626(ibt).previewDeposit(assets);

        return (_calculateExchangeRate(assets, _expectedShares, ibt, recipient, balances), balances);
    }

    // View function for DEPOSIT_ASSET_IN_PT command
    function previewDepositAssetInPT(
        bytes memory _inputs,
        bool _spot,
        RouterCommandsUtilities.TokenBalance[] memory balances
    ) external view returns (uint256, RouterCommandsUtilities.TokenBalance[] memory) {
        // Decode the input parameters
        (address pt, uint256 assets, address ptRecipient, address ytRecipient) =
            abi.decode(_inputs, (address, uint256, address, address));

        if (_spot) {
            assets = RouterUtil(LibPreviewCommandsManagerModule.getRouterUtil()).getPTUnderlyingUnit(pt);
        } else {
            assets =
                RouterCommandsUtilities._decreasePreviewTokenValue(assets, IPrincipalToken(pt).underlying(), balances);
        }

        uint256 _expectedShares = IPrincipalToken(pt).previewDeposit(assets);

        ptRecipient = RouterCommandsUtilities._resolveAddress(ptRecipient);
        if (ptRecipient == address(this)) {
            RouterCommandsUtilities._increasePreviewTokenValue(_expectedShares, pt, balances);
        }

        ytRecipient = RouterCommandsUtilities._resolveAddress(ytRecipient);
        if (ytRecipient == address(this)) {
            RouterCommandsUtilities._increasePreviewTokenValue(_expectedShares, IPrincipalToken(pt).getYT(), balances);
        }

        // rate : shares * rayUnit / assets
        return (_expectedShares.mulDiv(RayMath.RAY_UNIT, assets), balances);
    }

    function previewDepositIBTInPT(
        bytes memory _inputs,
        bool _spot,
        RouterCommandsUtilities.TokenBalance[] memory balances
    ) external view returns (uint256, RouterCommandsUtilities.TokenBalance[] memory) {
        // Decode the input parameters
        (address pt, uint256 ibts, address ptRecipient, address ytRecipient) =
            abi.decode(_inputs, (address, uint256, address, address));

        if (_spot) {
            ibts = RouterUtil(LibPreviewCommandsManagerModule.getRouterUtil()).getUnit(pt);
        } else {
            ibts = RouterCommandsUtilities._decreasePreviewTokenValue(ibts, IPrincipalToken(pt).getIBT(), balances);
        }

        uint256 _expectedShares = IPrincipalToken(pt).previewDepositIBT(ibts);

        ptRecipient = RouterCommandsUtilities._resolveAddress(ptRecipient);
        if (ptRecipient == address(this)) {
            RouterCommandsUtilities._increasePreviewTokenValue(_expectedShares, pt, balances);
        }

        ytRecipient = RouterCommandsUtilities._resolveAddress(ytRecipient);
        if (ytRecipient == address(this)) {
            RouterCommandsUtilities._increasePreviewTokenValue(_expectedShares, IPrincipalToken(pt).getYT(), balances);
        }

        // rate : shares * rayUnit / ibts
        return (_expectedShares.mulDiv(RayMath.RAY_UNIT, ibts), balances);
    }

    // View function for REDEEM_IBT_FOR_ASSET command
    function previewRedeemIBTForAsset(
        bytes memory _inputs,
        bool _spot,
        RouterCommandsUtilities.TokenBalance[] memory balances
    ) external view returns (uint256, RouterCommandsUtilities.TokenBalance[] memory) {
        (address ibt, uint256 shares, address recipient) = abi.decode(_inputs, (address, uint256, address));

        if (_spot) {
            shares = RouterUtil(LibPreviewCommandsManagerModule.getRouterUtil()).getUnit(ibt);
        } else {
            shares = RouterCommandsUtilities._decreasePreviewTokenValue(shares, ibt, balances);
        }

        uint256 _expectedAssets = IERC4626(ibt).previewRedeem(shares);

        return (_calculateExchangeRate(shares, _expectedAssets, IERC4626(ibt).asset(), recipient, balances), balances);
    }

    function previewRedeemPTForAsset(
        bytes memory _inputs,
        bool _spot,
        RouterCommandsUtilities.TokenBalance[] memory balances
    ) external view returns (uint256, RouterCommandsUtilities.TokenBalance[] memory) {
        // Decode the input parameters
        (address pt, uint256 shares, address recipient) = abi.decode(_inputs, (address, uint256, address));

        if (_spot) {
            shares = RouterUtil(LibPreviewCommandsManagerModule.getRouterUtil()).getUnit(pt);
        } else {
            shares = RouterCommandsUtilities._decreasePreviewTokenValue(shares, pt, balances);
            if (block.timestamp < IPrincipalToken(pt).maturity()) {
                RouterCommandsUtilities._decreasePreviewTokenValue(shares, IPrincipalToken(pt).getYT(), balances);
            }
        }

        uint256 _expectedAssets = IPrincipalToken(pt).previewRedeem(shares);

        return (
            _calculateExchangeRate(shares, _expectedAssets, IPrincipalToken(pt).underlying(), recipient, balances),
            balances
        );
    }

    // View function for REDEEM_PT_FOR_IBT command
    function previewRedeemPTForIBT(
        bytes memory _inputs,
        bool _spot,
        RouterCommandsUtilities.TokenBalance[] memory balances
    ) external view returns (uint256, RouterCommandsUtilities.TokenBalance[] memory) {
        // Decode the input parameters
        (address pt, uint256 shares, address recipient) = abi.decode(_inputs, (address, uint256, address));

        if (_spot) {
            shares = RouterUtil(LibPreviewCommandsManagerModule.getRouterUtil()).getUnit(pt);
        } else {
            shares = RouterCommandsUtilities._decreasePreviewTokenValue(shares, pt, balances);
            if (block.timestamp < IPrincipalToken(pt).maturity()) {
                RouterCommandsUtilities._decreasePreviewTokenValue(shares, IPrincipalToken(pt).getYT(), balances);
            }
        }

        uint256 _expectedIBTs = IPrincipalToken(pt).previewRedeemForIBT(shares);

        return
            (_calculateExchangeRate(shares, _expectedIBTs, IPrincipalToken(pt).getIBT(), recipient, balances), balances);
    }
}
