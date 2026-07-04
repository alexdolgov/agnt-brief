//SPDX-License-Identifier: CC-BY-NC-ND-4.0
pragma solidity ^0.8.18;

import {Address} from "@openzeppelin/contracts/utils/Address.sol";
import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

import {LowGasSafeMath} from "@uniswap/v3-core/contracts/libraries/LowGasSafeMath.sol";
import {TransferHelper} from "@uniswap/v3-periphery/contracts/libraries/TransferHelper.sol";

import {ITermRepoCollateralManager} from "./interfaces/ITermRepoCollateralManager.sol";
import {ISavingsDai} from "./interfaces/ISavingsDai.sol";
import {IWstbt} from "./interfaces/IWstbt.sol";
import {IApxEth} from "./interfaces/IApxEth.sol";
import {IFlashLoanAggregator} from "./interfaces/IFlashLoanAggregator.sol";
import {IFlashLoanAggregatorReceiver} from "./interfaces/IFlashLoanAggregatorReceiver.sol";
import {TermAggregatorFlashLoanSubmission, TermAggregatorFlashLoanSubmission0x, TermAggregatorFlashLoanSubmission1Inch, SwapRoute} from "./lib/TermAggregatorFlashLoanSubmission.sol";
import {I1InchAggregatorV5} from "./interfaces/I1InchAggregatorV5.sol";
import {OneInchSwapDescription} from "./lib/OneInchSwapDescription.sol";

contract TermAggregatorFlashDefaultLiquidatorSwap is IFlashLoanAggregatorReceiver {
    using SafeERC20 for ERC20;
    using LowGasSafeMath for uint256;
    using Address for address;

    address public constant SDAI_ADDRESS = 0x83F20F44975D03b1b09e64809B757c47f942BEeA;
    address public constant WSTBT_ADDRESS = 0x288A8005C53632d920045b7C7c2e54A3f1Bc4C83;
    address public constant APXETH_ADDRESS = 0x9Ba021B0a9b958B5E75cE9f6dff97C7eE52cb3E6;

    IFlashLoanAggregator public immutable flashLoanAggregator;
    I1InchAggregatorV5 immutable oneInchAggregator; 

    address immutable liquidatorWallet;

    constructor(address flashLoanAggregator_, address oneInchAggregator_, address liquidatorWallet_){
        require(
            address(flashLoanAggregator_) != address(0),
            "flashLoanAggregator_ cannot be 0"
        );
        require(
            address(liquidatorWallet_) != address(0),
            "liquidatorWallet_ cannot be 0"
        );
        flashLoanAggregator = IFlashLoanAggregator(flashLoanAggregator_);
        oneInchAggregator = I1InchAggregatorV5(oneInchAggregator_);
        liquidatorWallet = liquidatorWallet_;
    }

    function flashDefault0x(TermAggregatorFlashLoanSubmission0x calldata flashDefaultSubmission0x) external {
        bytes memory flashDefaultSubmission0xParams = abi.encode(flashDefaultSubmission0x); // Add any necessary parameters
        TermAggregatorFlashLoanSubmission memory flashAggregatorSubmission = TermAggregatorFlashLoanSubmission({
            swapRoute: SwapRoute.ZERO_X,
            flashLoanSubmissionData: flashDefaultSubmission0xParams
        });
        bytes memory params = abi.encode(flashAggregatorSubmission);

        flashLoanAggregator.flashLoan(
            _getTokens(flashDefaultSubmission0x.repaymentToken),
            _getAmounts(flashDefaultSubmission0x.coverAmount),
            flashDefaultSubmission0x.flashloanRoute,
            params,
            flashDefaultSubmission0x.flashLoanInstaData
        );

    }

    function flashDefault1inch(TermAggregatorFlashLoanSubmission1Inch calldata flashDefaultSubmission1inch) external {
        if (address(oneInchAggregator) == address(0)) {
            revert("ONE_INCH_AGGREGATOR_NOT_SUPPORTED");
        }
        bytes memory flashDefaultSubmission1inchParams = abi.encode(flashDefaultSubmission1inch); // Add any necessary parameters
        TermAggregatorFlashLoanSubmission memory flashAggregatorSubmission = TermAggregatorFlashLoanSubmission({
            swapRoute: SwapRoute.ONE_INCH,
            flashLoanSubmissionData: flashDefaultSubmission1inchParams
        });
        bytes memory params = abi.encode(flashAggregatorSubmission);

        flashLoanAggregator.flashLoan(
            _getTokens(flashDefaultSubmission1inch.repaymentToken),
            _getAmounts(flashDefaultSubmission1inch.coverAmount),
            flashDefaultSubmission1inch.flashloanRoute,
            params,
            flashDefaultSubmission1inch.flashLoanInstaData
        );

    }

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
            return _executeDefaultAndSwap0x(flashAggregatorSubmission, assets, amounts, premiums);
        }
        else if (flashAggregatorSubmission.swapRoute == SwapRoute.ONE_INCH) {
            return _executeDefaultAndSwap1inch(flashAggregatorSubmission, assets, amounts, premiums);
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

    function _executeDefaultAndSwap0x(TermAggregatorFlashLoanSubmission memory flashDefaultSubmission, address[] calldata assets, uint256[] calldata amounts, uint256[] calldata premiums) internal returns (bool) {
        TermAggregatorFlashLoanSubmission0x memory liquidationParams = abi.decode(flashDefaultSubmission.flashLoanSubmissionData, (TermAggregatorFlashLoanSubmission0x));

        require(assets[0] == liquidationParams.repaymentToken, "INVALID_ASSET_ADDRESS");

        TransferHelper.safeApprove(
            liquidationParams.repaymentToken,
            liquidationParams.termRepoLocker,
            liquidationParams.coverAmount
        );

        _batchDefault(liquidationParams.termRepoCollateralManager, liquidationParams.borrower,liquidationParams.coverAmount);
        
        (address zeroXInputAsset, uint256 purchaseCurrencyReturnAmount) = _zeroXSwap(liquidationParams.zeroXToAddr, liquidationParams.zeroXAllowanceTarget, liquidationParams.zeroXSwapCalldata, liquidationParams.collateralToken, liquidationParams.unwrapCollateralToken, liquidationParams.repaymentToken);
        
        _finalSwapTransfers(amounts[0], premiums[0], purchaseCurrencyReturnAmount, liquidationParams.repaymentToken, zeroXInputAsset);
        return true;
    }

    function _executeDefaultAndSwap1inch(TermAggregatorFlashLoanSubmission memory flashDefaultSubmission, address[] calldata assets, uint256[] calldata amounts, uint256[] calldata premiums) internal returns (bool) {
        TermAggregatorFlashLoanSubmission1Inch memory liquidationParams = abi.decode(flashDefaultSubmission.flashLoanSubmissionData, (TermAggregatorFlashLoanSubmission1Inch));

        require(assets[0] == liquidationParams.repaymentToken, "INVALID_ASSET_ADDRESS");

        TransferHelper.safeApprove(
            liquidationParams.repaymentToken,
            liquidationParams.termRepoLocker,
            liquidationParams.coverAmount
        );

        _batchDefault(liquidationParams.termRepoCollateralManager, liquidationParams.borrower,liquidationParams.coverAmount);
        
       (address oneInchInputAsset, uint256 purchaseCurrencyReturnAmount) = _oneInchSwap(liquidationParams.oneInchSwapCalldata, liquidationParams.collateralToken, liquidationParams.unwrapCollateralToken);
        
        _finalSwapTransfers(amounts[0], premiums[0], purchaseCurrencyReturnAmount, liquidationParams.repaymentToken, oneInchInputAsset);
        return true;
    }

    function _oneInchSwap (bytes memory oneInchSwapCalldata, address collateralToken, bool unwrapCollateralToken) internal returns(address, uint256) {
        (address executor, OneInchSwapDescription memory desc,  bytes memory permit, bytes memory data) = abi.decode(oneInchSwapCalldata, (address, OneInchSwapDescription, bytes, bytes));

        address oneInchInputAsset = _oneInchSwapPrep(collateralToken,  unwrapCollateralToken);

        (uint256 purchaseCurrencyReturnAmount, ) = oneInchAggregator.swap(executor, desc, permit, data);

        // Reset approval to 0 after swap
        TransferHelper.safeApprove(oneInchInputAsset, address(oneInchAggregator), 0);

        return (oneInchInputAsset, purchaseCurrencyReturnAmount);
    }

    function _batchDefault(address collateralManager, address borrower, uint256 coverAmount) internal {
        ITermRepoCollateralManager termRepoCollateralManager = ITermRepoCollateralManager(
            collateralManager
        );

        uint256[] memory liquidationCoverAmounts = new uint256[](1);
        liquidationCoverAmounts[0] = coverAmount;

        termRepoCollateralManager.batchDefault(
            borrower,
            liquidationCoverAmounts
        );

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

    function _zeroXSwap (address zeroXToAddress, address zeroXAllowanceTarget, bytes memory zeroXSwapCalldata, address collateralToken, bool unwrapCollateralToken, address repaymentToken) internal returns(address, uint256) {
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

    function _finalSwapTransfers(uint256 amount, uint256 premium, uint256 purchaseCurrencyReturnAmount, address repaymentAsset, address zeroXInputAsset) internal {
          // Amount to Repay the flash loan
        uint256 amountOwing = amount + premium;

        // Transfer extra purchase currency to liquidator wallet
        uint256 purchaseCurrencyToLiquidator = LowGasSafeMath.sub(
                    purchaseCurrencyReturnAmount,
                    amountOwing
        );
        TransferHelper.safeTransfer(repaymentAsset, liquidatorWallet, purchaseCurrencyToLiquidator);

        // Transfer extra 0x input currency to liquidator wallet
        ERC20 zeroXInputAssetERC20 = ERC20(
            zeroXInputAsset
        );

        uint256 zeroXInputAssetBalance = zeroXInputAssetERC20.balanceOf(address(this));
        TransferHelper.safeTransfer(zeroXInputAsset, liquidatorWallet, zeroXInputAssetBalance);


        //Approve to repay flash loan
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
