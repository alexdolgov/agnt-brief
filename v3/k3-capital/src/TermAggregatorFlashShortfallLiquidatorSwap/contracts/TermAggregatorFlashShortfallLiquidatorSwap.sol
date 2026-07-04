//SPDX-License-Identifier: CC-BY-NC-ND-4.0
pragma solidity ^0.8.18;

import {Address} from "@openzeppelin/contracts/utils/Address.sol";
import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

import {LowGasSafeMath} from "@uniswap/v3-core/contracts/libraries/LowGasSafeMath.sol";
import {TransferHelper} from "@uniswap/v3-periphery/contracts/libraries/TransferHelper.sol";

import {ITermPriceOracle} from "./interfaces/ITermPriceOracle.sol";
import {ITermRepoCollateralManager} from "./interfaces/ITermRepoCollateralManager.sol";
import {ITermRepoServicer} from "./interfaces/ITermRepoServicer.sol";
import {ISavingsDai} from "./interfaces/ISavingsDai.sol";
import {IWstbt} from "./interfaces/IWstbt.sol";
import {IApxEth} from "./interfaces/IApxEth.sol";
import {IFlashLoanAggregator} from "./interfaces/IFlashLoanAggregator.sol";
import {IFlashLoanAggregatorReceiver} from "./interfaces/IFlashLoanAggregatorReceiver.sol";
import {ExponentialNoError} from "./lib/ExponentialNoError.sol";
import {TermAggregatorFlashLoanSubmission, TermAggregatorFlashLoanSubmission0x, TermAggregatorFlashLoanSubmission1Inch, SwapRoute} from "./lib/TermAggregatorFlashLoanSubmission.sol";
import {I1InchAggregatorV5} from "./interfaces/I1InchAggregatorV5.sol";
import {OneInchSwapDescription} from "./lib/OneInchSwapDescription.sol";

contract TermAggregatorFlashShortfallLiquidatorSwap is IFlashLoanAggregatorReceiver, ExponentialNoError {
    using SafeERC20 for ERC20;
    using LowGasSafeMath for uint256;
    using Address for address;

    address public constant SDAI_ADDRESS = 0x83F20F44975D03b1b09e64809B757c47f942BEeA;
    address public constant WSTBT_ADDRESS = 0x288A8005C53632d920045b7C7c2e54A3f1Bc4C83;
    address public constant APXETH_ADDRESS = 0x9Ba021B0a9b958B5E75cE9f6dff97C7eE52cb3E6;

    IFlashLoanAggregator public immutable flashLoanAggregator;
    I1InchAggregatorV5 immutable oneInchAggregator;

    address immutable liquidatorWallet;
    ITermPriceOracle immutable priceOracle;

    constructor(address flashLoanAggregator_, address oneInchAggregator_, address priceOracle_, address liquidatorWallet_){
        require(
            address(flashLoanAggregator_) != address(0),
            "flashLoanAggregator_ cannot be 0"
        );
        require(
            address(priceOracle_) != address(0),
            "priceOracle_ cannot be 0"
        );
        require(
            address(liquidatorWallet_) != address(0),
            "liquidatorWallet_ cannot be 0"
        );
        flashLoanAggregator = IFlashLoanAggregator(flashLoanAggregator_);
        oneInchAggregator = I1InchAggregatorV5(oneInchAggregator_);
        liquidatorWallet = liquidatorWallet_;
        priceOracle = ITermPriceOracle(priceOracle_);
    }

    function flashLiquidate0x(TermAggregatorFlashLoanSubmission0x calldata flashLiquidationSubmission0x) external {
        bytes memory flashLiquidationSubmission0xParams = abi.encode(flashLiquidationSubmission0x); // Add any necessary parameters
        TermAggregatorFlashLoanSubmission memory flashAggregatorSubmission = TermAggregatorFlashLoanSubmission({
            swapRoute: SwapRoute.ZERO_X,
            flashLoanSubmissionData: flashLiquidationSubmission0xParams
        });
        bytes memory params = abi.encode(flashAggregatorSubmission);

        flashLoanAggregator.flashLoan(
            _getTokens(flashLiquidationSubmission0x.repaymentToken),
            _getAmounts(flashLiquidationSubmission0x.coverAmount),
            flashLiquidationSubmission0x.flashloanRoute,
            params,
            flashLiquidationSubmission0x.flashLoanInstaData
        );

    }

    function flashLiquidate1inch(TermAggregatorFlashLoanSubmission1Inch calldata flashLiquidationSubmission1inch) external {
        if (address(oneInchAggregator) == address(0)) {
            revert("ONE_INCH_AGGREGATOR_NOT_SUPPORTED");
        }
        bytes memory flashLiquidationSubmission1inchParams = abi.encode(flashLiquidationSubmission1inch); // Add any necessary parameters
        TermAggregatorFlashLoanSubmission memory flashAggregatorSubmission = TermAggregatorFlashLoanSubmission({
            swapRoute: SwapRoute.ONE_INCH,
            flashLoanSubmissionData: flashLiquidationSubmission1inchParams
        });
        bytes memory params = abi.encode(flashAggregatorSubmission);

        flashLoanAggregator.flashLoan(
            _getTokens(flashLiquidationSubmission1inch.repaymentToken),
            _getAmounts(flashLiquidationSubmission1inch.coverAmount),
            flashLiquidationSubmission1inch.flashloanRoute,
            params,
            flashLiquidationSubmission1inch.flashLoanInstaData
        );

    }

    /// @notice Flash loan callback function that executes various Term Finance operations
    /// @dev Called by the flash loan aggregator with the borrowed funds, routes to appropriate facet
    /// @param assets Array of borrowed asset addresses
    /// @param amounts Array of borrowed amounts
    /// @param premiums Array of flash loan fees
    /// @param initiator Address that initiated the flash loan
    /// @param data Encoded operation parameters containing function selector and operation data
    /// @return success Boolean indicating successful execution
    function executeOperation(
        address[] calldata assets,
        uint256[] calldata amounts,
        uint256[] calldata premiums,
        address initiator,
        bytes calldata data
    ) external override returns (bool) {
        require(msg.sender == address(flashLoanAggregator), "ONLY_FLASHLOAN_AGGREGATOR");
        require(initiator == address(this), "ONLY_SELF");
        require(
            assets.length == amounts.length && amounts.length == premiums.length,
            "ARRAY_LENGTH_MISMATCH"
        );
        require(assets.length == 1, "ONLY_SINGLE_ASSET_FLASHLOAN_SUPPORTED");
        require(amounts[0] != 0, "ZERO_AMOUNT");

        TermAggregatorFlashLoanSubmission memory flashAggregatorSubmission = abi.decode(data, (TermAggregatorFlashLoanSubmission));

        if (flashAggregatorSubmission.swapRoute == SwapRoute.ZERO_X) {
            return _executeLiquidationAndSwap0x(flashAggregatorSubmission, assets, amounts, premiums);
        }
        else if (flashAggregatorSubmission.swapRoute == SwapRoute.ONE_INCH) {
            return _executeLiquidationAndSwap1inch(flashAggregatorSubmission, assets, amounts, premiums);
        }
        else {
            revert("INVALID_SWAP_ROUTE");
        }
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

    function _executeLiquidationAndSwap0x(TermAggregatorFlashLoanSubmission memory flashLiquidationSubmission, address[] calldata assets, uint256[] calldata amounts, uint256[] calldata premiums) internal returns (bool) {
        TermAggregatorFlashLoanSubmission0x memory liquidationParams = abi.decode(flashLiquidationSubmission.flashLoanSubmissionData, (TermAggregatorFlashLoanSubmission0x));

        require(assets[0] == liquidationParams.repaymentToken, "INVALID_ASSET_ADDRESS");

        TransferHelper.safeApprove(
            liquidationParams.repaymentToken,
            liquidationParams.termRepoLocker,
            liquidationParams.coverAmount
        );

        _batchLiquidate(liquidationParams.termRepoCollateralManager, liquidationParams.borrower, liquidationParams.coverAmount);

        (address zeroXInputAsset, uint256 purchaseCurrencyReturnAmount) = _zeroXSwap(
            liquidationParams.zeroXToAddr,
            liquidationParams.zeroXAllowanceTarget,
            liquidationParams.zeroXSwapCalldata,
            liquidationParams.collateralToken,
            liquidationParams.unwrapCollateralToken,
            liquidationParams.repaymentToken
        );

        _finalSwapTransfers(amounts[0], premiums[0], purchaseCurrencyReturnAmount, liquidationParams.repaymentToken, zeroXInputAsset);
        return true;
    }

    function _executeLiquidationAndSwap1inch(TermAggregatorFlashLoanSubmission memory flashLiquidationSubmission, address[] calldata assets, uint256[] calldata amounts, uint256[] calldata premiums) internal returns (bool) {
        TermAggregatorFlashLoanSubmission1Inch memory liquidationParams = abi.decode(flashLiquidationSubmission.flashLoanSubmissionData, (TermAggregatorFlashLoanSubmission1Inch));

        require(assets[0] == liquidationParams.repaymentToken, "INVALID_ASSET_ADDRESS");

        TransferHelper.safeApprove(
            liquidationParams.repaymentToken,
            liquidationParams.termRepoLocker,
            liquidationParams.coverAmount
        );

        _batchLiquidate(liquidationParams.termRepoCollateralManager, liquidationParams.borrower, liquidationParams.coverAmount);

        (address oneInchInputAsset, uint256 purchaseCurrencyReturnAmount) = _oneInchSwap(
            liquidationParams.oneInchSwapCalldata,
            liquidationParams.collateralToken,
            liquidationParams.unwrapCollateralToken
        );

        _finalSwapTransfers(amounts[0], premiums[0], purchaseCurrencyReturnAmount, liquidationParams.repaymentToken, oneInchInputAsset);
        return true;
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

    function _oneInchSwap (bytes memory oneInchSwapCalldata, address collateralToken, bool unwrapCollateralToken) internal returns(address, uint256) {
        (address executor, OneInchSwapDescription memory desc, bytes memory permit, bytes memory data) = abi.decode(oneInchSwapCalldata, (address, OneInchSwapDescription, bytes, bytes));

        address oneInchInputAsset = _oneInchSwapPrep(collateralToken, unwrapCollateralToken);

        (uint256 purchaseCurrencyReturnAmount, ) = oneInchAggregator.swap(executor, desc, permit, data);

        // Reset approval to 0 after swap
        TransferHelper.safeApprove(oneInchInputAsset, address(oneInchAggregator), 0);

        return (oneInchInputAsset, purchaseCurrencyReturnAmount);
    }

    function _oneInchSwapPrep(address collateralTokenAddr, bool unwrapCollateralToken ) internal returns (address) {
         ERC20 collateralToken = ERC20(
            collateralTokenAddr
        );

        uint256 collateralBalance = collateralToken.balanceOf(address(this));

        address oneInchInputAsset;
        uint256 amount1InchInputAsset;
        if (unwrapCollateralToken){
            (oneInchInputAsset, amount1InchInputAsset) = _unwrapCollateralToken(collateralTokenAddr, collateralBalance);
        }
        else {
            oneInchInputAsset = collateralTokenAddr;
            amount1InchInputAsset = collateralBalance;
        }

        TransferHelper.safeApprove(
            oneInchInputAsset,
            address(oneInchAggregator),
            amount1InchInputAsset
        );

        return oneInchInputAsset;
    }

    function _zeroXSwap (
        address zeroXToAddress,
        address zeroXAllowanceTarget,
        bytes memory zeroXSwapCalldata,
        address collateralToken,
        bool unwrapCollateralToken,
        address repaymentToken
    ) internal returns(address, uint256) {
        address zeroXInputAsset = _zeroXSwapPrep(zeroXAllowanceTarget, collateralToken, unwrapCollateralToken);

        // Get purchase currency balance before swap
        ERC20 purchaseCurrency = ERC20(repaymentToken);
        uint256 balanceBefore = purchaseCurrency.balanceOf(address(this));

        Address.functionCall(zeroXToAddress, zeroXSwapCalldata);

        // Calculate purchase currency return amount
        uint256 balanceAfter = purchaseCurrency.balanceOf(address(this));
        uint256 purchaseCurrencyReturnAmount = balanceAfter - balanceBefore;

        // Reset approval to 0 after swap
        TransferHelper.safeApprove(zeroXInputAsset, zeroXAllowanceTarget, 0);

        return (zeroXInputAsset, purchaseCurrencyReturnAmount);
    }

    function _zeroXSwapPrep(address zeroXAllowanceTarget, address collateralTokenAddr, bool unwrapCollateralToken ) internal returns (address) {
         ERC20 collateralToken = ERC20(
            collateralTokenAddr
        );

        uint256 collateralBalance = collateralToken.balanceOf(address(this));

        address zeroXInputAsset;
        uint256 amountZeroXInputAsset;
        if (unwrapCollateralToken){
            (zeroXInputAsset, amountZeroXInputAsset) = _unwrapCollateralToken(collateralTokenAddr, collateralBalance);
        }
        else {
            zeroXInputAsset = collateralTokenAddr;
            amountZeroXInputAsset = collateralBalance;
        }

        TransferHelper.safeApprove(
            zeroXInputAsset,
            address(zeroXAllowanceTarget),
            amountZeroXInputAsset
        );


        return zeroXInputAsset;
    }

    function _unwrapCollateralToken(address collateralToken, uint256 collateralAmount) internal returns (address, uint256){
        if (collateralToken == SDAI_ADDRESS) {
            ISavingsDai sDai = ISavingsDai(collateralToken);
            uint256 shares = sDai.redeem(collateralAmount, address(this), address(this));
            return (address(sDai.dai()), shares);
        }
        else if (collateralToken == WSTBT_ADDRESS) {
            IWstbt wstbt = IWstbt(collateralToken);
            uint stbtAmount = wstbt.unwrap(collateralAmount);
            return (wstbt.stbtAddress(), uint256(stbtAmount));
        }
        else if (collateralToken == APXETH_ADDRESS) {
            IApxEth apxEth = IApxEth(collateralToken);
            uint256 pxEthAmount = apxEth.redeem(collateralAmount, address(this), address(this));
            return (apxEth.pirexEth(), pxEthAmount);
        }
        else {
            revert("UNSUPPORTED_COLLATERAL_TOKEN");
        }
    }

    function _finalSwapTransfers(uint256 amount, uint256 premium, uint256 purchaseCurrencyReturnAmount, address repaymentAsset, address swapInputAsset) internal {
          // Amount to Repay the flash loan
        uint256 amountOwing = amount + premium;

        // Transfer extra purchase currency to liquidator wallet
        uint256 purchaseCurrencyToLiquidator = LowGasSafeMath.sub(
                    purchaseCurrencyReturnAmount,
                    amountOwing
        );
        TransferHelper.safeTransfer(repaymentAsset, liquidatorWallet, purchaseCurrencyToLiquidator);

        // Transfer extra swap input currency to liquidator wallet
        ERC20 swapInputAssetERC20 = ERC20(
            swapInputAsset
        );

        uint256 swapInputAssetBalance = swapInputAssetERC20.balanceOf(address(this));
        TransferHelper.safeTransfer(swapInputAsset, liquidatorWallet, swapInputAssetBalance);


        // Transfer to repay flash loan
        TransferHelper.safeTransfer(
            repaymentAsset,
            msg.sender,
            amountOwing
        );
    }

    function _getAmounts(uint256 coverAmount) internal pure returns (uint256[] memory) {
        uint256[] memory amounts = new uint256[](1);
        amounts[0] = coverAmount;
        return amounts;
    }


    function _getTokens(address repaymentToken) internal pure returns (address[] memory) {
        address[] memory tokens = new address[](1);
        tokens[0] = repaymentToken;
        return tokens;
    }


}
