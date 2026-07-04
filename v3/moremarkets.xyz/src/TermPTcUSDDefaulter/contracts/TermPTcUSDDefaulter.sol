//SPDX-License-Identifier: CC-BY-NC-ND-4.0
pragma solidity ^0.8.18;

import {IFlashLoanSimpleReceiver} from "@aave/core-v3/contracts/flashloan/interfaces/IFlashLoanSimpleReceiver.sol";
import {IPoolAddressesProvider} from "@aave/core-v3/contracts/interfaces/IPoolAddressesProvider.sol";
import {IPool} from "@aave/core-v3/contracts/interfaces/IPool.sol";

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

import {LowGasSafeMath} from "@uniswap/v3-core/contracts/libraries/LowGasSafeMath.sol";
import {TransferHelper} from "@uniswap/v3-periphery/contracts/libraries/TransferHelper.sol";

import {ITermRepoCollateralManager} from "./interfaces/ITermRepoCollateralManager.sol";

interface IPendleRouter {
    struct TokenOutput {
        address tokenOut;
        uint256 minTokenOut;
        address tokenRedeemSy;
        address pendleSwap;
        SwapData swapData;
    }

    struct SwapData {
        uint8 swapType;
        address extRouter;
        bytes extCalldata;
        bool needScale;
    }

    struct LimitOrderData {
        address limitRouter;
        uint256 epsSkipMarket;
        FillOrderParams[] normalFills;
        FillOrderParams[] flashFills;
        bytes optData;
    }

    struct Order {
        uint256 salt;
        uint256 expiry;
        uint256 nonce;
        uint8 orderType;
        address token;
        address YT;
        address maker;
        address receiver;
        uint256 makingAmount;
        uint256 lnImpliedRate;
        uint256 failSafeRate;
        bytes permit;
    }

    struct FillOrderParams {
        Order order;
        bytes signature;
        uint256 makingAmount;
    }

    struct ExitPostExpReturnParams {
        uint256 totalSyOut;
        uint256 netYtFromSy;
        uint256 netSyFromBurn;
        uint256 netYtFromLp;
        uint256 netSyFromLp;
    }

    /// @notice For details on the parameters (input, guessPtSwapToSy, limit, etc.), please refer to IPAllActionTypeV3.
    function exitPostExpToToken(
        address receiver,
        address market,
        uint256 netPtIn,
        uint256 netLpIn,
        TokenOutput calldata output
    ) external returns (uint256 totalTokenOut, ExitPostExpReturnParams memory params);
}



contract TermPTcUSDDefaulter is IFlashLoanSimpleReceiver {
    using SafeERC20 for ERC20;
    using LowGasSafeMath for uint256;

    struct PendleContractCallParams {
        address receiver;
        address market;
        uint256 netPtIn;
        uint256 netYtIn;
        uint256 netLpIn;
        IPendleRouter.TokenOutput output;
        IPendleRouter.LimitOrderData limit;
    }

    struct TermPTcUSDDefaulterSubmission {
        address termRepoCollateralManager;
        address termRepoLocker;
        address borrower;
        address repaymentToken;
        uint256 coverAmount;
        uint256 collateralAmount;
        address collateralToken;
        PendleContractCallParams pendleParams;
    }

    IPoolAddressesProvider public immutable ADDRESSES_PROVIDER;
    IPool public immutable POOL;
    IPendleRouter public immutable pendleRouter;
    address immutable liquidatorWallet;

    constructor(address pendleRouter_, address lendingPoolAddressProvider_, address liquidatorWallet_){
        require(
            address(pendleRouter_) != address(0),
            "pendleRouter_ cannot be 0"
        );

        require(
            address(lendingPoolAddressProvider_) != address(0),
            "lendingPoolAddressProvider_ cannot be 0"
        );
        require(
            address(liquidatorWallet_) != address(0),
            "liquidatorWallet_ cannot be 0"
        );
        pendleRouter = IPendleRouter(pendleRouter_);
        ADDRESSES_PROVIDER = IPoolAddressesProvider(lendingPoolAddressProvider_); // mainnet address, for other addresses: https://docs.aave.com/developers/developing-on-aave/deployed-contract-instances
        POOL = IPool(ADDRESSES_PROVIDER.getPool());
        liquidatorWallet = liquidatorWallet_;
    }

    function flashDefault(TermPTcUSDDefaulterSubmission calldata termPTcUSDDefaulterSubmission) external {
        require(termPTcUSDDefaulterSubmission.coverAmount > 0, "Cover amount must be positive");
        require(termPTcUSDDefaulterSubmission.collateralAmount > 0, "Collateral amount must be positive");
        require(termPTcUSDDefaulterSubmission.borrower != address(0), "Invalid borrower address");

        address receiverAddress = address(this);

        bytes memory params = abi.encode(termPTcUSDDefaulterSubmission); // Add any necessary parameters
        uint16 referralCode = 0;

        POOL.flashLoanSimple(receiverAddress, termPTcUSDDefaulterSubmission.repaymentToken, termPTcUSDDefaulterSubmission.coverAmount, params, referralCode);
    }

    function executeOperation(
        address asset,
        uint256 amount,
        uint256 premium,
        address initiator,
        bytes calldata params
    ) external override returns (bool) {
        require(msg.sender == address(POOL), "Only pool can call this");
        TermPTcUSDDefaulterSubmission memory liquidationParams = abi.decode(params, (TermPTcUSDDefaulterSubmission));

        TransferHelper.safeApprove(
            asset,
            liquidationParams.termRepoLocker,
            liquidationParams.coverAmount
        );

        ERC20 collateralToken = ERC20(
            liquidationParams.collateralToken
        );
        uint256 collateralBalanceBefore = collateralToken.balanceOf(address(this));

        _batchDefault(liquidationParams.termRepoCollateralManager, liquidationParams.borrower,liquidationParams.coverAmount);
        uint256 collateralBalanceAfter = collateralToken.balanceOf(address(this));
        uint256 liquidatedCollateral = LowGasSafeMath.sub(collateralBalanceAfter, collateralBalanceBefore);
        require(liquidatedCollateral > 0, "No collateral received from liquidation");
        require(liquidatedCollateral >= liquidationParams.collateralAmount, "Insufficient collateral received");
        _pendleSwap(liquidationParams.pendleParams, liquidationParams.collateralToken);

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
    function _pendleSwap (PendleContractCallParams memory pendleParams, address collateralToken) internal  {
        TransferHelper.safeApprove(
            collateralToken,
            address(pendleRouter),
            pendleParams.netPtIn
        );

        // Call exitPostExpToToken using the parameters from Pendle API
        pendleRouter.exitPostExpToToken(
            pendleParams.receiver,
            pendleParams.market,
            pendleParams.netPtIn,
            pendleParams.netLpIn,
            pendleParams.output
        );
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