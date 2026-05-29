//SPDX-License-Identifier: CC-BY-NC-ND-4.0
pragma solidity ^0.8.18;

import {IFlashLoanSimpleReceiver} from "@aave/core-v3/contracts/flashloan/interfaces/IFlashLoanSimpleReceiver.sol";
import {IPoolAddressesProvider} from "@aave/core-v3/contracts/interfaces/IPoolAddressesProvider.sol";
import {IPool} from "@aave/core-v3/contracts/interfaces/IPool.sol";
import {CurvePool} from "./interfaces/CurvePool.sol";

import {ITermRepoCollateralManager} from "./interfaces/ITermRepoCollateralManager.sol";
import {ITermRepoServicer} from "./interfaces/ITermRepoServicer.sol";
import {ITermPriceOracle} from "./interfaces/ITermPriceOracle.sol";

import {IUsualDao} from "./interfaces/IUsualDao.sol";
import {IHashNoteTeller} from "./interfaces/IHashNoteTeller.sol";

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {ExponentialNoError} from "./lib/ExponentialNoError.sol";
import {TermUsualFlashDefaultSubmission} from "./lib/TermUsualFlashDefaultSubmission.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {LowGasSafeMath} from "@uniswap/v3-core/contracts/libraries/LowGasSafeMath.sol";
import {TransferHelper} from "@uniswap/v3-periphery/contracts/libraries/TransferHelper.sol";

contract TermUsualShortfallLiquidatorFlashSwap is IFlashLoanSimpleReceiver, ExponentialNoError {
    using SafeERC20 for IERC20;
    using LowGasSafeMath for uint256;

    address constant public CRV_POOL = 0x1d08E7adC263CfC70b1BaBe6dC5Bb339c16Eec52;
    address constant public USUAL_DAO_CONTRACT = 0xde6e1F680C4816446C8D515989E2358636A38b04;
    address constant public HASHNOTE_TELLER_CONTRACT = 0x5C73E1cfdD85b7f1d608F7F7736fC8C653513B7A;

    address immutable liquidatorWallet;
    IPoolAddressesProvider public immutable ADDRESSES_PROVIDER;
    IPool public immutable POOL;
    ITermPriceOracle immutable priceOracle;
    IERC20 immutable usd0LiquidBond = IERC20(0x35D8949372D46B7a3D5A56006AE77B215fc69bC0);
    IERC20 immutable usualUSD = IERC20(0x73A15FeD60Bf67631dC6cd7Bc5B6e8da8190aCF5);
    IERC20 immutable usyc = IERC20(0x136471a34f6ef19fE571EFFC1CA711fdb8E49f2b);
    IERC20 immutable usdc = IERC20(0xA0b86991c6218b36c1d19D4a2e9Eb0cE3606eB48);

    constructor(
        address liquidatorWallet_,
        address lendingPoolAddressProvider_,
        address priceOracle_
    ) {
        require(
            address(liquidatorWallet_) != address(0),
            "liquidatorWallet_ cannot be 0"
        );

        require(
            address(lendingPoolAddressProvider_) != address(0),
            "lendingPoolAddressProvider_ cannot be 0"
        );

        require(priceOracle_ != address(0), "priceOracle_ cannot be 0");


        liquidatorWallet = liquidatorWallet_;
        ADDRESSES_PROVIDER = IPoolAddressesProvider(lendingPoolAddressProvider_); // mainnet address, for other addresses: https://docs.aave.com/developers/developing-on-aave/deployed-contract-instances
        POOL = IPool(ADDRESSES_PROVIDER.getPool());
        priceOracle = ITermPriceOracle(priceOracle_);
    }

    function flashLiquidate(TermUsualFlashDefaultSubmission calldata flashDefaultSubmission) external {
        address receiverAddress = address(this);

        bytes memory params = abi.encode(flashDefaultSubmission); // Add any necessary parameters
        uint16 referralCode = 0;

        uint256 flashLoanAmount = flashDefaultSubmission.coverAmount * (10**18 + 10**17) / 10 ** 18; // inclues 10 bp from redemptions

        POOL.flashLoanSimple(receiverAddress, address(usdc), flashLoanAmount, params, referralCode);
    }


    // gets tokens/WETH via a V3 flash swap, swaps for the ETH/tokens on Curve, repays V3, and keeps the rest!
    function executeOperation(
        address asset,
        uint256 amount,
        uint256 premium,
        address initiator,
        bytes calldata params
    ) external override returns (bool) {
        TermUsualFlashDefaultSubmission memory liquidationParams = abi.decode(params, (TermUsualFlashDefaultSubmission));

        TransferHelper.safeApprove(
            asset,
            liquidationParams.termRepoLocker,
            liquidationParams.coverAmount
        );

        _batchLiquidation(liquidationParams.termRepoCollateralManager, liquidationParams.borrower,liquidationParams.coverAmount);
        _swapUSD0LiqBondToUsualUSD();
        _swapUsualUSDForRWATokens();
        _swapUSYCToUSDC();

        uint256 usdcBalance = usdc.balanceOf(address(this));

        _finalSwapTransfers(amount, premium, usdcBalance, asset);
        return true;
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

    function _batchLiquidation(address collateralManager, address borrower, uint256 coverAmount) internal {
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
    
    function _swapUSD0LiqBondToUsualUSD() internal {
        uint256 usd0LiquidBondBalance = usd0LiquidBond.balanceOf(address(this));
        CurvePool crvPool = CurvePool(CRV_POOL);

        uint256 i;
        int128 usd0LiquidBondIndex = 0;
        int128 usualUSDIndex = 0;
        address poolCoin;
        for ( i = 0 ; i < 3; ++i){
            poolCoin = crvPool.coins(i);
            if (poolCoin == address(usd0LiquidBond)) {
                    break;
            }
            ++usd0LiquidBondIndex;
        }
        for ( i = 0 ; i < 3; ++i){
            poolCoin = crvPool.coins(i);
            if (poolCoin == address(usualUSD)) {
                    break;
            }
            ++usualUSDIndex;
        }

        TransferHelper.safeApprove(
                    address(usd0LiquidBond),
                    address(crvPool),
                    usd0LiquidBondBalance
        );

        crvPool.exchange(usd0LiquidBondIndex, usualUSDIndex, usd0LiquidBondBalance, 0);
    }

    function _swapUsualUSDForRWATokens() internal {
        IUsualDao usualDao = IUsualDao(USUAL_DAO_CONTRACT);
        uint256 usualUSDBalance = usualUSD.balanceOf(address(this));
        TransferHelper.safeApprove(
            address(usualUSD),
            USUAL_DAO_CONTRACT,
            usualUSDBalance
        );
        usualDao.redeem(address(usyc), usualUSDBalance, 0);
    }

    function _swapUSYCToUSDC() internal {
        IERC20 usycToken = IERC20(usyc);
        uint256 usycBalance = usycToken.balanceOf(address(this));
        TransferHelper.safeApprove(
            address(usyc),
            HASHNOTE_TELLER_CONTRACT,
            usycBalance
        );
        IHashNoteTeller hashnoteTeller = IHashNoteTeller(HASHNOTE_TELLER_CONTRACT);
        hashnoteTeller.sell(usycBalance);
    }

    function _finalSwapTransfers(uint256 amount, uint256 premium, uint256 purchaseCurrencyReturnAmount, address repaymentAsset) internal {
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
