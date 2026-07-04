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
import {IWETH} from "./weth/IWETH.sol";
import {ISwapRouter} from "@uniswap/v3-periphery/contracts/interfaces/ISwapRouter.sol";

struct FlashLoanToLiquidateParams {
    IERC20 asset;
    uint256 amount;
    bytes12 loanId;
    address collateralTokenAddr;
    bytes path;
}

contract AmazingLiquidator is IFlashLoanReceiver, Ownable {
    using SafeERC20 for IERC20;
    using SafeCast for uint256;

    uint256 internal constant MAX_UINT_256 = 2 ** 256 - 1;
    address internal constant DEFAULT_NATIVE_TOKEN_ADDR =
        0xEeeeeEeeeEeEeeEeEeEeeEEEeeeeEeeeeeeeEEeE;
    address internal immutable _zkTrueUpAddr;
    IFlashLoanFacet internal immutable flashLoanFacet;
    ILoanFacet internal immutable loanFacet;
    ISwapRouter internal immutable swapRouter; // 0x68b3465833fb72A70ecDF485E0e4C7bD8665Fc45
    IWETH internal immutable weth;

    error ProfitIsNotPositive(int256 profitAmt);
    error NativeTokenTransferFailed(
        address receiver,
        uint256 amount,
        bytes data
    );

    event FlashLoanToLiquidate(
        bytes12 indexed loanId,
        IERC20 borrowingAsset,
        address collateralTokenAddr,
        uint128 repayAmt,
        uint256 flashLoanDebtAmt,
        uint256 profitAmt
    );
    event Withdrawal(address indexed token, uint256 amount);

    constructor(
        address payable zkTrueUpAddr,
        address swapRouterAddr,
        address wethAddr
    ) Ownable(msg.sender) {
        _zkTrueUpAddr = zkTrueUpAddr;
        flashLoanFacet = IFlashLoanFacet(zkTrueUpAddr);
        loanFacet = ILoanFacet(zkTrueUpAddr);
        swapRouter = ISwapRouter(swapRouterAddr);
        weth = IWETH(wethAddr);
    }

    function executeOperation(
        address,
        IERC20[] calldata assets,
        uint256[] calldata amounts,
        uint256[] calldata premiums,
        bytes calldata data
    ) external {
        (bytes12 loanId, address collateralTokenAddr, bytes memory path) = abi
            .decode(data, (bytes12, address, bytes));

        IERC20 borrowingAsset = assets[0];
        uint128 repayAmt = amounts[0].toUint128();
        uint256 premiumsAmt = premiums[0];
        uint256 flashLoanDebtAmt = repayAmt + premiumsAmt;

        // approve zkTrueUp contract to spend asset when liquidating and after flash loan
        // 1. repayAmt for liquidation
        // 2. flashLoanDebtAmt for paying back flash loan
        borrowingAsset.safeIncreaseAllowance(
            _zkTrueUpAddr,
            repayAmt + flashLoanDebtAmt
        );
        // liquidate loan
        uint128 liquidatorRewardAmt = _liquidateLoan(
            loanId,
            borrowingAsset,
            repayAmt
        );

        uint256 profitAmt;
        // if collateral token == borrowing token or collateral token == eth
        if (
            collateralTokenAddr == address(borrowingAsset) ||
            (collateralTokenAddr == DEFAULT_NATIVE_TOKEN_ADDR &&
                address(borrowingAsset) == address(weth))
        ) {
            // if collateral token is borrowing token, profit is liquidator reward - flash loan debt
            profitAmt = liquidatorRewardAmt - flashLoanDebtAmt;
            int256 calProfitAmt = _calcProfit(
                liquidatorRewardAmt,
                flashLoanDebtAmt
            );
            if (calProfitAmt < 0) revert ProfitIsNotPositive(calProfitAmt);
            profitAmt = uint256(calProfitAmt);
            if (collateralTokenAddr == DEFAULT_NATIVE_TOKEN_ADDR) {
                weth.deposit{value: flashLoanDebtAmt}();
            }
        } else {
            // swap liquidator reward from collateral token to borrowing token
            if (collateralTokenAddr == DEFAULT_NATIVE_TOKEN_ADDR) {
                // if collateral token is eth, convert it to weth to swap on uniswap
                weth.deposit{value: liquidatorRewardAmt}();
                profitAmt = _profitSwap(
                    path,
                    address(weth),
                    address(borrowingAsset),
                    liquidatorRewardAmt,
                    flashLoanDebtAmt
                );
            } else {
                profitAmt = _profitSwap(
                    path,
                    collateralTokenAddr,
                    address(borrowingAsset),
                    liquidatorRewardAmt,
                    flashLoanDebtAmt
                );
            }
        }

        emit FlashLoanToLiquidate(
            loanId,
            borrowingAsset,
            collateralTokenAddr,
            repayAmt,
            flashLoanDebtAmt,
            profitAmt
        );
    }

    function _liquidateLoan(
        bytes12 loanId,
        IERC20 borrowingAsset,
        uint128 repayAmt
    ) internal returns (uint128) {
        uint128 liquidatorRewardAmt;

        if (address(borrowingAsset) == address(weth)) {
            // if borrowing asset is weth, convert it to eth to liquidate loan
            weth.withdraw(repayAmt);
            (liquidatorRewardAmt, ) = loanFacet.liquidate{value: repayAmt}(
                loanId,
                repayAmt
            );
        } else {
            // if borrowing asset is not weth, liquidate loan directly
            (liquidatorRewardAmt, ) = loanFacet.liquidate(loanId, repayAmt);
        }
        return liquidatorRewardAmt;
    }

    function _profitSwap(
        bytes memory path,
        address tokenIn,
        address /* tokenOut */,
        uint256 amountIn,
        uint256 flashLoanDebt
    ) internal returns (uint256) {
        // approve swap router to spend tokenIn
        IERC20(tokenIn).forceApprove(address(swapRouter), amountIn);

        ISwapRouter.ExactInputParams memory params = ISwapRouter
            .ExactInputParams({
                path: path,
                recipient: address(this),
                deadline: block.timestamp + 3600,
                amountIn: amountIn,
                amountOutMinimum: 0
            });

        // swap tokenIn to tokenOut on uniswap
        uint256 amountOut = swapRouter.exactInput(params);

        // calculate profit, if profit is negative, revert
        int256 profitAmt = _calcProfit(amountOut, flashLoanDebt);
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

    function flashLoanToLiquidate(
        FlashLoanToLiquidateParams calldata params
    ) public {
        IERC20[] memory assets = new IERC20[](1);
        uint256[] memory amounts = new uint256[](1);

        assets[0] = params.asset;
        amounts[0] = params.amount;
        bytes memory data = abi.encode(
            params.loanId,
            params.collateralTokenAddr,
            params.path
        );
        flashLoanFacet.flashLoan(payable(address(this)), assets, amounts, data);
    }

    function batchFlashLoanToLiquidate(
        FlashLoanToLiquidateParams[] calldata params
    ) external {
        for (uint256 i; i < params.length; ) {
            flashLoanToLiquidate(params[i]);

            unchecked {
                ++i;
            }
        }
    }

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

    receive() external payable {}
}
