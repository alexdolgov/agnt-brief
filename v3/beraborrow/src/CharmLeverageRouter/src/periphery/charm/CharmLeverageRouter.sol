// SPDX-License-Identifier: MIT

pragma solidity 0.8.26;

import {LeverageRouter, IDenManager, IInfraredCollateralVault, IERC20, SwappersLib, SafeERC20} from "src/periphery/LeverageRouter.sol";
import {IAlphaProVault} from "src/interfaces/utils/integrations/IAlphaProVault.sol";

interface ICharmPeriphery {
    function getVaultPositionsRatio(address vaultAddress) external view returns (uint256 ratioWad);
}

/**
 * @title CharmLeverageRouter
 * @author Beraborrow Team
 * @notice This contract enables opening and increasing leveraged den positions using DebtToken's flash loans.
 * @dev Whitelisted to not pay flashloan fees, and whitelisted as periphery contract to manage dens in behalf of the user.
 * @dev Assumes the collateral asset is an Alpha Pro Vault (Charm Finance)
 */
contract CharmLeverageRouter is LeverageRouter {
    using SafeERC20 for IERC20;

    ICharmPeriphery public charmPeriphery;

    uint256 constant RAD = 1e27;

    constructor(address _borrowerOperations, address _nect, address _priceFeed, address[] memory _initialSwapRouters, address _alphaProPeriphery)
        LeverageRouter(_borrowerOperations, _nect, _priceFeed, _initialSwapRouters)
    {
        charmPeriphery = ICharmPeriphery(_alphaProPeriphery);
    }

    // function _getFlashLoanNectAmount(IDenManager denManager, DenLoopingParams memory p) internal view override returns (uint256 flashloanNectAmount) {
    //     /// @dev Only dynamically calculate the nect to flashloan if it's a user deposit, on keeper increase/decreaseLeverage we don't have any margin.
    //     if (p.marginCollAmount != 0) {
    //         IInfraredCollateralVault coll = IInfraredCollateralVault(denManager.collateralToken());
    //         IAlphaProVault charmVault = IAlphaProVault(coll.asset());

    //         // token 0 to token 1 ratio
    //         uint256 ratioRad = charmPeriphery.getVaultPositionsRatio(address(charmVault));
    //         bool isNectToken0 = charmVault.token0() == address(nect);

    //         if (isNectToken0) {
    //             flashloanNectAmount = p.marginCollAmount * ratioRad / RAD;
    //         } else {
    //             flashloanNectAmount = p.marginCollAmount * RAD / ratioRad;
    //         }
    //     } else {
    //         return super._getFlashLoanNectAmount(denManager, p);
    //     }
    // }

    function _transferFromAsset(address collVaultAsset, address account, uint256 margin) internal override {
        address asset = _nonNectToken(collVaultAsset);

        IERC20(asset).safeTransferFrom(account, address(this), margin);
    }

    /// @dev Deposit NECT flash loaned and margin deposited to the Alpha Pro Vault, no swap needed
    function _swapAndWrap(
        IDenManager denManager,
        address account,
        DenLoopingParams memory params,
        address collVaultAsset,
        address collVault
    ) internal override returns (uint256 collVaultSharesMinted) {
        (uint256 prevColl, uint256 prevDebt) = denManager.getDenCollAndDebt(account);
    
        uint256 tokenOutReceived = _swapAndWrapCore(
            denManager,
            account,
            collVaultAsset,
            params
        );
    
        if (tokenOutReceived < params.nectToColl.outputMin) {
            revert InsufficientAssetReceived(tokenOutReceived, params.nectToColl.outputMin);
        }
    
        (uint256 newColl, uint256 newDebt) = denManager.getDenCollAndDebt(account);
        if (newColl != prevColl || newDebt != prevDebt) {
            revert DebtOrCollateralChanged(newColl, newDebt, prevColl, prevDebt);
        }
    
        IERC20(collVaultAsset).approve(collVault, tokenOutReceived);
        collVaultSharesMinted = IInfraredCollateralVault(collVault).deposit(tokenOutReceived, address(this));
    }

    function _swapAndWrapCore(
        IDenManager denManager,
        address account,
        address collVaultAsset,
        DenLoopingParams memory params
    ) private returns (uint256 tokenOutReceived) {
        /// @dev swapParams must be nectToVolatile if 'predominantVolatileRatio' is true, otherwise margin (volatile) to nect
        (DexAggregatorParams memory swapParams, uint256 toSwap, uint256 min0, uint256 min1, bool predominantVolatileRatio) =
            abi.decode(params.nectToColl.dexCalldata, (DexAggregatorParams, uint256, uint256, uint256, bool));

        /// increaseLeverage or user deposit when the BTC ratio is above 50%
        address nonNect = _nonNectToken(collVaultAsset);
        if (predominantVolatileRatio) {
            params.marginCollAmount += _swap(
                denManager,
                account,
                swapParams,
                address(nect),
                nonNect,
                toSwap
            );
        } else {
            _swap(
                denManager,
                account,
                swapParams,
                nonNect,
                address(nect),
                toSwap
            );
            params.marginCollAmount -= toSwap;
        }

        tokenOutReceived = _wrapCharmVault(
            collVaultAsset,
            params.marginCollAmount,
            min0,
            min1
        );
    }

    function _wrapCharmVault(
        address collVaultAsset,
        uint256 marginAmount,
        uint256 minToken0Amount,
        uint256 minToken1Amount
    ) internal returns (uint256 tokenOutReceived) {
        uint256 prevTokenOutBalance = IERC20(collVaultAsset).balanceOf(address(this));

        address token0 = IAlphaProVault(collVaultAsset).token0();
        address token1 = IAlphaProVault(collVaultAsset).token1();

        // token 0 to token 1 ratio
        uint256 ratioRad = charmPeriphery.getVaultPositionsRatio(collVaultAsset);
        bool isNectToken0 = IAlphaProVault(collVaultAsset).token0() == address(nect);

        // @dev Clamps 'nectAmount' based on volatile token 'marginAmount'
        // Remaining NECT amount can be used to repay part of the debt
        // If the NECT availabe is not enough, it will revert, means the offchain 'flashloanNectAmount' calculation is incorrect
        uint256 nectAmount;
        if (isNectToken0) {
            nectAmount = marginAmount * ratioRad / RAD;
        } else {
            nectAmount = marginAmount * RAD / ratioRad;
        }

        uint256 token0Amount = isNectToken0 ? nectAmount : marginAmount;
        uint256 token1Amount = isNectToken0 ? marginAmount : nectAmount;

        address asset = isNectToken0 ? token1 : token0;
        nect.approve(collVaultAsset, nectAmount);
        IERC20(asset).approve(collVaultAsset, marginAmount);
        IAlphaProVault(collVaultAsset).deposit(token0Amount, token1Amount, minToken0Amount, minToken1Amount, address(this));

        tokenOutReceived = IERC20(collVaultAsset).balanceOf(address(this)) - prevTokenOutBalance;
    }

    function _nonNectToken(address collVaultAsset) internal view returns (address) {
        address token0 = IAlphaProVault(collVaultAsset).token0();
        address token1 = IAlphaProVault(collVaultAsset).token1();

        return token0 == address(nect) ? token1 : token0;
    }
}
