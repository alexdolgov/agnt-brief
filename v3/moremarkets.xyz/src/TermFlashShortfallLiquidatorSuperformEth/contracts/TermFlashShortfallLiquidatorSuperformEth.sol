//SPDX-License-Identifier: CC-BY-NC-ND-4.0
pragma solidity ^0.8.18;

import {IFlashLoanSimpleReceiver} from "@aave/core-v3/contracts/flashloan/interfaces/IFlashLoanSimpleReceiver.sol";
import {IPoolAddressesProvider} from "@aave/core-v3/contracts/interfaces/IPoolAddressesProvider.sol";
import {IPool} from "@aave/core-v3/contracts/interfaces/IPool.sol";

import {ITermRepoCollateralManager} from "./interfaces/ITermRepoCollateralManager.sol";
import {ITermRepoServicer} from "./interfaces/ITermRepoServicer.sol";
import {ITermPriceOracle} from "./interfaces/ITermPriceOracle.sol";

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {ExponentialNoError} from "./lib/ExponentialNoError.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {LowGasSafeMath} from "@uniswap/v3-core/contracts/libraries/LowGasSafeMath.sol";
import {TransferHelper} from "@uniswap/v3-periphery/contracts/libraries/TransferHelper.sol";
import {I1InchAggregatorV5} from "./interfaces/I1InchAggregatorV5.sol";
import {OneInchSwapDescription} from "./lib/OneInchSwapDescription.sol";

struct TermSuperEthFlashLiquidationSubmission {
    address termRepoCollateralManager;
    address termRepoLocker;
    address borrower;
    address repaymentToken;
    uint256 coverAmount;
    bytes oneInchSwapCalldata;
}

interface ISuperEthVault {
    function redeem(uint256 amount, address receiver, address owner) external;
}

contract TermFlashShortfallLiquidatorSuperformEth is IFlashLoanSimpleReceiver, ExponentialNoError {
    using SafeERC20 for IERC20;
    using LowGasSafeMath for uint256;

    // Super ETH Vault address
    address constant public SUPER_ETH_VAULT = 0xeF101508bf4DC6CF0f0a0C135f39a41faB4E4389;
    
    address immutable liquidatorWallet;
    IPoolAddressesProvider public immutable ADDRESSES_PROVIDER;
    IPool public immutable POOL;
    ITermPriceOracle immutable priceOracle;
    IERC20 immutable weth = IERC20(0xC02aaA39b223FE8D0A0e5C4F27eAD9083C756Cc2);
    I1InchAggregatorV5 immutable oneInchAggregator;
    
    constructor(
        address liquidatorWallet_,
        address oneInchAggregatorV5_,
        address lendingPoolAddressProvider_,
        address priceOracle_
    ) {
        require(
            address(liquidatorWallet_) != address(0),
            "liquidatorWallet_ cannot be 0"
        );

        require(
            address(oneInchAggregatorV5_) != address(0),
            "oneInchAggregatorV5_ cannot be 0"
        );

        require(
            address(lendingPoolAddressProvider_) != address(0),
            "lendingPoolAddressProvider_ cannot be 0"
        );

        require(priceOracle_ != address(0), "priceOracle_ cannot be 0");

        liquidatorWallet = liquidatorWallet_;
        ADDRESSES_PROVIDER = IPoolAddressesProvider(lendingPoolAddressProvider_);
        POOL = IPool(ADDRESSES_PROVIDER.getPool());
        oneInchAggregator = I1InchAggregatorV5(oneInchAggregatorV5_);
        priceOracle = ITermPriceOracle(priceOracle_);
    }

    function flashLiquidate(TermSuperEthFlashLiquidationSubmission calldata flashLiquidationSubmission) external {
        address receiverAddress = address(this);

        bytes memory params = abi.encode(flashLiquidationSubmission);
        uint16 referralCode = 0;

        // Include a 10 bp buffer for fees
        uint256 flashLoanAmount = flashLiquidationSubmission.coverAmount;

        POOL.flashLoanSimple(receiverAddress, flashLiquidationSubmission.repaymentToken, flashLoanAmount, params, referralCode);
    }

    function executeOperation(
        address asset,
        uint256 amount,
        uint256 premium,
        address initiator,
        bytes calldata params
    ) external override returns (bool) {
        TermSuperEthFlashLiquidationSubmission memory liquidationParams = abi.decode(params, (TermSuperEthFlashLiquidationSubmission));

        TransferHelper.safeApprove(
            asset,
            liquidationParams.termRepoLocker,
            liquidationParams.coverAmount
        );

        _batchLiquidation(liquidationParams.termRepoCollateralManager, liquidationParams.borrower, liquidationParams.coverAmount);
        _redeemSuperEthToWeth();

        uint256 wethBalance = weth.balanceOf(address(this));

        if (asset != address(weth)) {
            uint256 purchaseCurrencyReturnAmount = _oneInchSwap(liquidationParams.oneInchSwapCalldata, address(weth));
            _finalSwapTransfers(amount, premium, purchaseCurrencyReturnAmount, asset, address(weth));
        } else {
            _finalSwapTransfers(amount, premium, wethBalance, asset, address(0));
        }
                
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
    
    function _redeemSuperEthToWeth() internal {
        ISuperEthVault superEthVault = ISuperEthVault(SUPER_ETH_VAULT);
        
        // Check the balance of Super ETH tokens we received from the liquidation
        IERC20 superEthToken = IERC20(SUPER_ETH_VAULT);
        uint256 superEthBalance = superEthToken.balanceOf(address(this));
        
        if (superEthBalance > 0) {
            // Approve the vault to spend our Super ETH tokens
            TransferHelper.safeApprove(
                address(superEthToken),
                SUPER_ETH_VAULT,
                superEthBalance
            );
            
            // Redeem Super ETH for WETH
            superEthVault.redeem(superEthBalance, address(this), address(this));
        }
    }

    function _oneInchSwap (bytes memory oneInchSwapCalldata, address collateralToken) internal returns(uint256) {
        (address executor, OneInchSwapDescription memory desc,  bytes memory permit, bytes memory data) = abi.decode(oneInchSwapCalldata, (address, OneInchSwapDescription, bytes, bytes));

        _oneInchSwapPrep(collateralToken);

        (uint256 purchaseCurrencyReturnAmount, ) = oneInchAggregator.swap(executor, desc, permit, data);
        return purchaseCurrencyReturnAmount;
    }

    function _oneInchSwapPrep(address collateralTokenAddr) internal {
         IERC20 collateralToken = IERC20(
            collateralTokenAddr
        );

        uint256 collateralBalance = collateralToken.balanceOf(address(this));


        TransferHelper.safeApprove(
            collateralTokenAddr,
            address(oneInchAggregator),
            collateralBalance
        );
    }

    function _finalSwapTransfers(uint256 amount, uint256 premium, uint256 purchaseCurrencyReturnAmount, address repaymentAsset, address oneInchInputAsset) internal {
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

        if (oneInchInputAsset == address(0)) {
            return;
        }

        // Transfer extra 1inch input currency to liquidator wallet
        IERC20 oneInchInputAssetERC20 = IERC20(
            oneInchInputAsset
        );

        uint256 oneInchInputAssetBalance = oneInchInputAssetERC20.balanceOf(address(this));
        TransferHelper.safeTransfer(oneInchInputAsset, liquidatorWallet, oneInchInputAssetBalance);
    }

    // Function to recover any tokens that might be stuck in the contract
    function recoverERC20(address tokenAddress, uint256 tokenAmount) external {
        require(msg.sender == liquidatorWallet, "Only liquidator can recover tokens");
        TransferHelper.safeTransfer(tokenAddress, liquidatorWallet, tokenAmount);
    }
}