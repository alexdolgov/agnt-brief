//SPDX-License-Identifier: CC-BY-NC-ND-4.0
pragma solidity ^0.8.18;

import {IFlashLoanSimpleReceiver} from "@aave/core-v3/contracts/flashloan/interfaces/IFlashLoanSimpleReceiver.sol";
import {IPoolAddressesProvider} from "@aave/core-v3/contracts/interfaces/IPoolAddressesProvider.sol";
import {IPool} from "@aave/core-v3/contracts/interfaces/IPool.sol";

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

import {LowGasSafeMath} from "@uniswap/v3-core/contracts/libraries/LowGasSafeMath.sol";
import {TransferHelper} from "@uniswap/v3-periphery/contracts/libraries/TransferHelper.sol";

import {I1InchAggregatorV5} from "./interfaces/I1InchAggregatorV5.sol";
import {ITermPriceOracle} from "./interfaces/ITermPriceOracle.sol";
import {ITermRepoCollateralManager} from "./interfaces/ITermRepoCollateralManager.sol";
import {ITermRepoServicer} from "./interfaces/ITermRepoServicer.sol";
import {ExponentialNoError} from "./lib/ExponentialNoError.sol";
import {TermPTSuperUSDCLiquidatorSubmission} from "./lib/TermPTSuperUSDCLiquidatorSubmission.sol";
import {OneInchSwapDescription} from "./lib/OneInchSwapDescription.sol";

contract TermPTSuperUSDCLiquidator is IFlashLoanSimpleReceiver, ExponentialNoError {
    using SafeERC20 for ERC20;
    using LowGasSafeMath for uint256;


    IPoolAddressesProvider public immutable ADDRESSES_PROVIDER;
    IPool public immutable POOL;
    address immutable liquidatorWallet;
    ITermPriceOracle immutable priceOracle;


    constructor(address lendingPoolAddressProvider_, address priceOracle_, address liquidatorWallet_){
        require(
            address(lendingPoolAddressProvider_) != address(0),
            "lendingPoolAddressProvider_ cannot be 0"
        );
        require(
            address(priceOracle_) != address(0),
            "priceOracle_ cannot be 0"
        );
        require(
            address(liquidatorWallet_) != address(0),
            "liquidatorWallet_ cannot be 0"
        );
        ADDRESSES_PROVIDER = IPoolAddressesProvider(lendingPoolAddressProvider_); // mainnet address, for other addresses: https://docs.aave.com/developers/developing-on-aave/deployed-contract-instances
        POOL = IPool(ADDRESSES_PROVIDER.getPool());
        liquidatorWallet = liquidatorWallet_;
        priceOracle = ITermPriceOracle(priceOracle_);
    }

    function flashLiquidate(TermPTSuperUSDCLiquidatorSubmission calldata termPTSuperUSDCLiquidatorSubmission) external {
        address receiverAddress = address(this);

        bytes memory params = abi.encode(termPTSuperUSDCLiquidatorSubmission); // Add any necessary parameters
        uint16 referralCode = 0;

        POOL.flashLoanSimple(receiverAddress, termPTSuperUSDCLiquidatorSubmission.repaymentToken, termPTSuperUSDCLiquidatorSubmission.coverAmount, params, referralCode);
    }

    function executeOperation(
        address asset,
        uint256 amount,
        uint256 premium,
        address initiator,
        bytes calldata params
    ) external override returns (bool) {
        TermPTSuperUSDCLiquidatorSubmission memory liquidationParams = abi.decode(params, (TermPTSuperUSDCLiquidatorSubmission));

        TransferHelper.safeApprove(
            asset,
            liquidationParams.termRepoLocker,
            liquidationParams.coverAmount
        );

        _batchLiquidate(liquidationParams.termRepoCollateralManager, liquidationParams.borrower,liquidationParams.coverAmount);
        _pendleSwap(liquidationParams.pendleSwapCalldata, liquidationParams.pendleSwapContract, liquidationParams.collateralToken, liquidationParams.collateralAmount);
                
        _finalSwapTransfers(amount, premium, asset);
        return true;
    }

    function flushToLiquidatorWallet(address tokenAddr) external {
        ERC20 token = ERC20(
            tokenAddr
        );
        uint256 tokenBalance = token.balanceOf(address(this));
        TransferHelper.safeTransfer(tokenAddr, liquidatorWallet, tokenBalance);
    }


    function maxLiquidationRepayment(
        ITermRepoCollateralManager termRepoCollateralManager,
        ITermRepoServicer termRepoServicer,
        address borrower,
        address repayTokenAddr,
        address collateralTokenAddr
    ) external view returns (uint256) {
        uint256 deMinimisMarginThreshold = termRepoCollateralManager
            .deMinimisMarginThreshold();
        uint256 liquidatedDamage = termRepoCollateralManager.liquidatedDamages(
            collateralTokenAddr
        );
        uint256 initialCollateralRatio = termRepoCollateralManager
            .initialCollateralRatios(collateralTokenAddr);
        uint256 netExposureCap = termRepoCollateralManager
            .netExposureCapOnLiquidation();

        ERC20 repayToken = ERC20(repayTokenAddr);
        ERC20 collateralToken = ERC20(collateralTokenAddr);

        uint256 borrowBalance = termRepoServicer
            .getBorrowerRepurchaseObligation(borrower);
        uint256 collateralBalance = termRepoCollateralManager
            .getCollateralBalance(borrower, collateralTokenAddr);
        Exp memory borrowBalanceUSD = priceOracle.usdValueOfTokens(
            repayTokenAddr,
            borrowBalance
        );
        uint256 borrowerCollateralUSDValue = termRepoCollateralManager
            .getCollateralMarketValue(borrower);

        if (
            borrowBalanceUSD.mantissa + deMinimisMarginThreshold >
            borrowerCollateralUSDValue
        ) {
            return
                _maxDeminimisLiquidationPayment(
                    collateralToken,
                    repayToken,
                    borrowBalance,
                    collateralBalance,
                    liquidatedDamage
                );
        }

        uint256 maxRepayWithinNetExposureCap =
            _maxRepaymentWithinNetExposureCap(
                repayToken,
                borrowBalanceUSD,
                borrowerCollateralUSDValue,
                liquidatedDamage,
                initialCollateralRatio,
                netExposureCap
            );

        uint256 maxRepayBoundary = _maxBoundaryRepayment(
            repayToken,
            borrowBalanceUSD,
            borrowerCollateralUSDValue,
            liquidatedDamage
        );

        return maxRepayWithinNetExposureCap < maxRepayBoundary ? maxRepayWithinNetExposureCap : maxRepayBoundary;
    }

    function _maxDeminimisLiquidationPayment(
        ERC20 collateralToken,
        ERC20 repayToken,
        uint256 borrowBalance,
        uint256 collateralBalance,
        uint256 liquidatedDamage
    ) internal view returns (uint256) {
        Exp memory collateralAmountWithoutDiscount = div_(
            Exp({mantissa: collateralBalance * expScale}),
            add_(Exp({mantissa: expScale}), Exp({mantissa: liquidatedDamage}))
        );
        Exp memory usdValueOfCollateralRepaidFor = mul_(
            collateralAmountWithoutDiscount,
            priceOracle.usdValueOfTokens(
                address(collateralToken),
                10 ** (collateralToken.decimals())
            )
        );

        uint256 maxLiquidationRepaymentForCollateralBalance = truncate(
            div_(
                usdValueOfCollateralRepaidFor,
                priceOracle.usdValueOfTokens(
                    address(repayToken),
                    10 ** (repayToken.decimals())
                )
            )
        );

        return
            maxLiquidationRepaymentForCollateralBalance < borrowBalance
                ? maxLiquidationRepaymentForCollateralBalance
                : borrowBalance;
    }

    function _maxRepaymentWithinNetExposureCap(
        ERC20 repayToken,
        Exp memory borrowBalanceUSD,
        uint256 collateralUSDValue,
        uint256 liquidatedDamage,
        uint256 initialCollateralRatio,
        uint256 netExposureCap
    ) internal view returns (uint256) {
        uint8 repayTokenDecimals = repayToken.decimals();
        address repayTokenAddress = address(repayToken);
        Exp memory netExposureCapRatioMultiplier = add_(
            Exp({mantissa: expScale}),
            Exp({mantissa: netExposureCap})
        );

        Exp memory liquidatedDamageDividedByInitialCollatRatioMultiplier = div_(
            add_(Exp({mantissa: expScale}), Exp({mantissa: liquidatedDamage})),
            Exp({mantissa: initialCollateralRatio})
        );

        Exp memory currentCollateralBalanceHaircut = div_(
            Exp({mantissa: collateralUSDValue}),
            Exp({mantissa: initialCollateralRatio})
        );

        Exp memory currentBorrowBalanceHaircut = mul_(
            borrowBalanceUSD,
            netExposureCapRatioMultiplier
        );

        Exp memory currentHaircutDifference = sub_(
            currentBorrowBalanceHaircut,
            currentCollateralBalanceHaircut
        );

        Exp memory maxRepaymentAmountMultiplier = mul_(
            priceOracle.usdValueOfTokens(
                repayTokenAddress,
                10 ** repayTokenDecimals
            ),
            sub_(
                netExposureCapRatioMultiplier,
                liquidatedDamageDividedByInitialCollatRatioMultiplier
            )
        );

        Exp memory maxRepaymentAmount = div_(
            currentHaircutDifference,
            maxRepaymentAmountMultiplier
        );

        return maxRepaymentAmount.mantissa / 10 ** (18 - repayTokenDecimals);
    }

    function _maxBoundaryRepayment(
        ERC20 repayToken,
        Exp memory borrowBalanceUSD,
        uint256 collateralUSDValue,
        uint256 liquidatedDamage
    ) internal view returns (uint256) {
        uint8 repayTokenDecimals = repayToken.decimals();
        address repayTokenAddress = address(repayToken);
        Exp memory maxRepayPerLiquidatedCollateral = div_(
            Exp({mantissa: collateralUSDValue}),
            add_(Exp({mantissa: expScale}), Exp({mantissa: liquidatedDamage}))
        );

        if (maxRepayPerLiquidatedCollateral.mantissa < borrowBalanceUSD.mantissa) {
            Exp memory maxBoundaryRepayment = div_(
                maxRepayPerLiquidatedCollateral, 
                priceOracle.usdValueOfTokens(
                    repayTokenAddress,
                    10 ** repayTokenDecimals
            )
                );
                return maxBoundaryRepayment.mantissa / 10 ** (18 - repayTokenDecimals);
        }
        else {
            Exp memory maxBoundaryRepayment = div_(
                borrowBalanceUSD, 
                priceOracle.usdValueOfTokens(
                    repayTokenAddress,
                    10 ** repayTokenDecimals
            )
                );
            return maxBoundaryRepayment.mantissa / 10 ** (18 - repayTokenDecimals);
        }

        
        
    }

    function _batchLiquidate(address collateralManager, address borrower, uint256 coverAmount) internal {
        ITermRepoCollateralManager termRepoCollateralManager = ITermRepoCollateralManager(
            collateralManager
        );

        uint256[] memory liquidationCoverAmounts = new uint256[](1);
        liquidationCoverAmounts[0] = coverAmount;

        termRepoCollateralManager.batchLiquidation(
            borrower,
            liquidationCoverAmounts
        );

    } 
    function _pendleSwap (bytes memory pendleSwapCalldata, address pendleSwapContract, address collateralToken, uint256 collateralAmount) internal  {
        TransferHelper.safeApprove(
            collateralToken,
            pendleSwapContract,
            collateralAmount
        );
        pendleSwapContract.call(pendleSwapCalldata);
    }

    function _finalSwapTransfers(uint256 amount, uint256 premium, address repaymentAsset) internal {
        ERC20 repaymentToken = ERC20(repaymentAsset);
        uint256 purchaseCurrencyReturnAmount = repaymentToken.balanceOf(address(this));
          // Amount to Repay the flash loan
        uint256 amountOwing = amount + premium;


        // Transfer extra purchase currency to liquidator wallet
        uint256 purchaseCurrencyToLiquidator = LowGasSafeMath.sub(
                    purchaseCurrencyReturnAmount,
                    amountOwing
        );
        TransferHelper.safeTransfer(repaymentAsset, liquidatorWallet, purchaseCurrencyToLiquidator);

        //Approve to repay flash loan
        TransferHelper.safeApprove(
            repaymentAsset,
            address(POOL),
            amountOwing
        );
    }

}