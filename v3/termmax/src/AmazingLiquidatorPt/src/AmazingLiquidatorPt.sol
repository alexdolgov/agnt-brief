// SPDX-License-Identifier: MIT
// solhint-disable-next-line
pragma solidity ^0.8.17;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {SafeCast} from "@openzeppelin/contracts/utils/math/SafeCast.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {IFlashLoanFacet} from "./zkTrueUp/IFlashLoanFacetPartial.sol";
import {ILoanFacet, Loan} from "./zkTrueUp/ILoanFacetPartial.sol";
import {IFlashLoanReceiver} from "./zkTrueUp/IFlashLoanReceiver.sol";
import {IPActionSwapPTV3, FillOrderParams, TokenOutput, LimitOrderData, SwapData, SwapType} from "./pendle/IPActionSwapPTV3.sol";
import {ITokenWrapper} from "./zkTrueUp/ITokenWrapper.sol";
import {IPMarket, IStandardizedYield} from "./pendle/IPMarket.sol";

struct FlashLoanToLiquidateParams {
    IERC20 borrowToken;
    uint256 repayAmt;
    bytes12 loanId;
    address debtTokenAddr;
    address collateralTokenAddr;
    bytes path;
}

struct TokenConfig {
    bool isPt;
    bool isWrapped;
    address ptMarketAddr;
    IERC20 underlyingAddr;
}

// Define the ProfitSwapParams struct to hold the parameters for the function
struct ProfitSwapParams {
    bytes path;
    address ptMarket;
    address tokenIn;
    address tokenOut;
    uint256 amountIn;
    uint256 flashLoanDebt;
}

contract AmazingLiquidatorPt is IFlashLoanReceiver, Ownable {
    using SafeERC20 for IERC20;
    using SafeERC20 for ITokenWrapper;
    using SafeCast for uint256;

    uint256 internal constant MAX_UINT_256 = 2 ** 256 - 1;
    address internal constant DEFAULT_NATIVE_TOKEN_ADDR =
        0xEeeeeEeeeEeEeeEeEeEeeEEEeeeeEeeeeeeeEEeE;
    address internal immutable _zkTrueUpAddr;
    address internal immutable _pendleSwapAddr;
    IFlashLoanFacet internal immutable flashLoanFacet;
    ILoanFacet internal immutable loanFacet;
    IPActionSwapPTV3 internal immutable pendleRouter;

    mapping(address => TokenConfig) public tokenConfigs;

    error ProfitIsNotPositive(int256 profitAmt);
    error NativeTokenTransferFailed(
        address receiver,
        uint256 amount,
        bytes data
    );

    event FlashLoanToLiquidatePt(
        bytes12 indexed loanId,
        IERC20 borrowingToken,
        address debtTokenAddr,
        address collateralTokenAddr,
        uint128 repayAmt,
        uint256 flashLoanDebtAmt,
        uint256 profitAmt
    );
    event Withdrawal(address indexed token, uint256 amount);

    constructor(
        address payable zkTrueUpAddr,
        address pendleRouterAddr,
        address pendleSwapAddr
    ) Ownable(msg.sender) {
        _zkTrueUpAddr = zkTrueUpAddr;
        flashLoanFacet = IFlashLoanFacet(zkTrueUpAddr);
        loanFacet = ILoanFacet(zkTrueUpAddr);
        pendleRouter = IPActionSwapPTV3(pendleRouterAddr);
        _pendleSwapAddr = pendleSwapAddr;
    }

    function executeOperation(
        address,
        IERC20[] calldata assets,
        uint256[] calldata amounts,
        uint256[] calldata premiums,
        bytes calldata data
    ) external {
        (
            bytes12 loanId,
            address debtTokenAddr,
            address collateralTokenAddr,
            bytes memory path
        ) = abi.decode(data, (bytes12, address, address, bytes));

        IERC20 borrowingToken = assets[0];
        uint128 repayAmt = amounts[0].toUint128();
        uint256 premiumsAmt = premiums[0];
        uint256 flashLoanDebtAmt = repayAmt + premiumsAmt;

        // wrap borrowing token into wrapped token
        ITokenWrapper debtToken = ITokenWrapper(debtTokenAddr);
        borrowingToken.safeIncreaseAllowance(debtTokenAddr, repayAmt);
        debtToken.depositFor(address(this), repayAmt);

        // approve zkTrueUp to spend debtToken for repaying the debt
        debtToken.safeIncreaseAllowance(_zkTrueUpAddr, repayAmt);

        // approve zkTrueUp to spend borrowingToken for flash loan debt
        borrowingToken.safeIncreaseAllowance(_zkTrueUpAddr, flashLoanDebtAmt);

        // liquidate loan
        uint128 liquidatorRewardAmt = _liquidateLoan(loanId, repayAmt);

        ProfitSwapParams memory params = ProfitSwapParams({
            path: path,
            ptMarket: tokenConfigs[collateralTokenAddr].ptMarketAddr,
            tokenIn: collateralTokenAddr,
            tokenOut: address(borrowingToken),
            amountIn: liquidatorRewardAmt,
            flashLoanDebt: flashLoanDebtAmt
        });

        uint256 profitAmt = _profitSwapPt(params);

        emit FlashLoanToLiquidatePt(
            loanId,
            borrowingToken,
            debtTokenAddr,
            collateralTokenAddr,
            repayAmt,
            flashLoanDebtAmt,
            profitAmt
        );
    }

    function _liquidateLoan(
        bytes12 loanId,
        uint128 repayAmt
    ) internal returns (uint128) {
        (uint128 liquidatorRewardAmt, ) = loanFacet.liquidate(loanId, repayAmt);
        return liquidatorRewardAmt;
    }

    function _profitSwapPt(
        ProfitSwapParams memory params
    ) internal returns (uint256) {
        (
            SwapType swapType,
            bool needScale,
            address extRouterAddr,
            bytes memory extCalldata
        ) = abi.decode(params.path, (SwapType, bool, address, bytes));

        LimitOrderData memory emptyLimit;
        IERC20(params.tokenIn).forceApprove(
            address(pendleRouter),
            params.amountIn
        );
        (IStandardizedYield sy, , ) = IPMarket(params.ptMarket).readTokens();
        // swap PT token to underlying token of wrapped token
        (uint256 netTokenOut, , ) = pendleRouter.swapExactPtForToken(
            address(this),
            params.ptMarket,
            params.amountIn,
            TokenOutput({
                tokenOut: params.tokenOut,
                minTokenOut: 0,
                tokenRedeemSy: sy.yieldToken(),
                pendleSwap: _pendleSwapAddr,
                swapData: SwapData({
                    swapType: swapType,
                    needScale: needScale,
                    extRouter: extRouterAddr,
                    extCalldata: extCalldata
                })
            }),
            emptyLimit
        );

        // calculate profit, if profit is negative, revert
        int256 profitAmt = _calcProfit(netTokenOut, params.flashLoanDebt);
        if (profitAmt < 0) revert ProfitIsNotPositive(profitAmt);

        // return profit amount if profit is positive
        return uint256(profitAmt);
    }

    function _calcProfit(
        uint256 swapOutAmt,
        uint256 flashLoanDebt
    ) internal pure returns (int256) {
        if (swapOutAmt > flashLoanDebt) {
            return int256(swapOutAmt - flashLoanDebt);
        } else {
            return -int256(flashLoanDebt - swapOutAmt);
        }
    }

    function flashLoanToLiquidatePt(
        FlashLoanToLiquidateParams memory params
    ) public {
        IERC20[] memory assets = new IERC20[](1);
        uint256[] memory amounts = new uint256[](1);

        assets[0] = params.borrowToken;
        amounts[0] = params.repayAmt;

        bytes memory data = abi.encode(
            params.loanId,
            params.debtTokenAddr,
            params.collateralTokenAddr,
            params.path
        );

        flashLoanFacet.flashLoan(payable(address(this)), assets, amounts, data);
    }

    // function batchFlashLoanToLiquidatePt(
    //     FlashLoanToLiquidateParams[] calldata params
    // ) external {
    //     for (uint256 i; i < params.length; ) {
    //         flashLoanToLiquidatePt(params[i]);

    //         unchecked {
    //             ++i;
    //         }
    //     }
    // }

    function withdraw(IERC20 token, uint256 amount) external onlyOwner {
        if (address(token) == DEFAULT_NATIVE_TOKEN_ADDR) {
            (bool success, bytes memory data) = owner().call{value: amount}("");
            if (!success)
                revert NativeTokenTransferFailed(owner(), amount, data);
        } else {
            token.safeTransfer(owner(), amount);
        }
        emit Withdrawal(address(token), amount);
    }

    function setTokenConfig(
        address token,
        bool isPt,
        bool isWrapped,
        address ptMarketAddr,
        IERC20 underlyingAddr
    ) external onlyOwner {
        tokenConfigs[token] = TokenConfig({
            isPt: isPt,
            isWrapped: isWrapped,
            ptMarketAddr: ptMarketAddr,
            underlyingAddr: underlyingAddr
        });
    }

    function getTokenConfig(
        address token
    ) external view returns (TokenConfig memory) {
        return tokenConfigs[token];
    }

    receive() external payable {}
}
