// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;

import {Address} from "@openzeppelin/contracts/utils/Address.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {IPMarketFactoryV3} from "@pendle/contracts/interfaces/IPMarketFactoryV3.sol";
import {IPAllActionV3} from "@pendle/contracts/interfaces/IPAllActionV3.sol";
import {IPPrincipalToken} from "@pendle/contracts/interfaces/IPPrincipalToken.sol";
import {IPYieldToken} from "@pendle/contracts/interfaces/IPYieldToken.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {Errors} from "@size/src/market/libraries/Errors.sol";
import {IUniswapV2Router02} from "src/interfaces/dex/IUniswapV2Router02.sol";
import {IUniswapV3Router} from "src/interfaces/dex/IUniswapV3Router.sol";
import {PeripheryErrors} from "src/libraries/PeripheryErrors.sol";
import {IPMarket} from "@pendle/contracts/interfaces/IPMarket.sol";
import {IStandardizedYield} from "@pendle/contracts/interfaces/IStandardizedYield.sol";

import {
    createDefaultApproxParams,
    createTokenInputSimple,
    createEmptyLimitOrderData
} from "@pendle/contracts/interfaces/IPAllActionTypeV3.sol";
import {Initializable} from "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";

enum SwapMethod {
    UniswapV2ExactInput,
    UniswapV3ExactInput,
    SellPt,
    BuyPt,
    UniswapV2ExactOutput,
    UniswapV3ExactOutput,
    GenericSwap
}

struct SwapParams {
    SwapMethod method;
    bytes data;
}

struct UniswapV2ExactInputParams {
    uint256 amountOutMin;
    address[] path;
    address to;
    uint256 deadline;
}

struct UniswapV3ExactInputParams {
    address tokenIn;
    address tokenOut;
    uint24 fee;
    uint160 sqrtPriceLimitX96;
    uint256 amountOutMinimum;
}

struct SellPtParams {
    address market;
    address tokenOut;
    uint256 minTokenOut;
}

struct BuyPtParams {
    address market;
    address tokenIn;
    address router;
    uint256 minPtOut;
}

struct UniswapV2ExactOutputParams {
    uint256 amountOut;
    address[] path;
    address to;
    uint256 deadline;
}

struct UniswapV3ExactOutputParams {
    address tokenIn;
    address tokenOut;
    uint24 fee;
    uint160 sqrtPriceLimitX96;
    uint256 amountOut;
}

struct GenericSwapParams {
    address tokenIn;
    address router;
    bytes data;
}

/// @title DexSwapUpgradeable
/// @custom:security-contact security@size.credit
/// @author Size (https://size.credit/)
/// @notice Contract that allows to swap tokens using different DEXs
/// @dev WARNING: GenericSwap does not validate input and executes arbitrary call to the specified router. This function MUST be guarded by permission control.
abstract contract DexSwapUpgradeable is Initializable {
    using SafeERC20 for IERC20;

    // STORAGE
    /// @custom:storage-location erc7201:size.storage.DexSwapUpgradeable
    struct DexSwapUpgradeableStorage {
        IUniswapV2Router02 _uniswapV2Router;
        IUniswapV3Router _uniswapV3Router;
        IPAllActionV3 _pendleRouter;
        IPMarketFactoryV3 _pendleMarketFactory;
    }

    // keccak256(abi.encode(uint256(keccak256("size.storage.DexSwapUpgradeable")) - 1)) & ~bytes32(uint256(0xff));
    // forge-lint: disable-next-line(screaming-snake-case-const)
    bytes32 private constant DexSwapUpgradeableStorageLocation =
        0x6f29eb74e25c3cf85e3f0ab46bdb6ded23eee7bc8cc12fc7a785eb63edac3800;

    function _getDexSwapUpgradeableStorage() private pure returns (DexSwapUpgradeableStorage storage $) {
        assembly {
            $.slot := DexSwapUpgradeableStorageLocation
        }
    }

    // INITIALIZER
    /// forge-lint: disable-next-line(mixed-case-function)
    function __DexSwapUpgradeable_init(
        address _uniswapV2Router,
        address _uniswapV3Router,
        address _pendleRouter,
        address _pendleMarketFactory
    ) internal onlyInitializing {
        if (
            _uniswapV2Router == address(0) || _uniswapV3Router == address(0) || _pendleRouter == address(0)
                || _pendleMarketFactory == address(0)
        ) {
            revert Errors.NULL_ADDRESS();
        }

        DexSwapUpgradeableStorage storage $ = _getDexSwapUpgradeableStorage();
        $._uniswapV2Router = IUniswapV2Router02(_uniswapV2Router);
        $._uniswapV3Router = IUniswapV3Router(_uniswapV3Router);
        $._pendleRouter = IPAllActionV3(_pendleRouter);
        $._pendleMarketFactory = IPMarketFactoryV3(_pendleMarketFactory);
    }

    // FUNCTIONS
    function _swap(SwapParams[] memory swapParamsArray) internal {
        for (uint256 i = 0; i < swapParamsArray.length; i++) {
            SwapParams memory swapParams = swapParamsArray[i];
            if (swapParams.method == SwapMethod.UniswapV2ExactInput) {
                _swapUniswapV2ExactInput(abi.decode(swapParams.data, (UniswapV2ExactInputParams)));
            } else if (swapParams.method == SwapMethod.UniswapV3ExactInput) {
                _swapUniswapV3ExactInput(abi.decode(swapParams.data, (UniswapV3ExactInputParams)));
            } else if (swapParams.method == SwapMethod.SellPt) {
                _sellPt(abi.decode(swapParams.data, (SellPtParams)));
            } else if (swapParams.method == SwapMethod.BuyPt) {
                _buyPt(abi.decode(swapParams.data, (BuyPtParams)));
            } else if (swapParams.method == SwapMethod.UniswapV2ExactOutput) {
                _swapUniswapV2ExactOutput(abi.decode(swapParams.data, (UniswapV2ExactOutputParams)));
            } else if (swapParams.method == SwapMethod.UniswapV3ExactOutput) {
                _swapUniswapV3ExactOutput(abi.decode(swapParams.data, (UniswapV3ExactOutputParams)));
            } else if (swapParams.method == SwapMethod.GenericSwap) {
                _swapGeneric(abi.decode(swapParams.data, (GenericSwapParams)));
            } else {
                revert PeripheryErrors.INVALID_SWAP_METHOD();
            }
        }
    }

    function _sellPt(SellPtParams memory params) private {
        if (!pendleMarketFactory().isValidMarket(params.market)) {
            revert PeripheryErrors.INVALID_PENDLE_MARKET(params.market);
        }

        (IStandardizedYield SY, IPPrincipalToken PT, IPYieldToken YT) = IPMarket(params.market).readTokens();
        address tokenIn = address(PT);

        uint256 netPtIn = IERC20(tokenIn).balanceOf(address(this));

        // from BoringPtSeller
        uint256 netSyOut;
        if (PT.isExpired()) {
            IERC20(PT).safeTransfer(address(YT), netPtIn);
            netSyOut = YT.redeemPY(address(SY));
        } else {
            IERC20(PT).safeTransfer(params.market, netPtIn);
            (netSyOut,) = IPMarket(params.market).swapExactPtForSy(
                address(SY), // better gas optimization to transfer SY directly to itself and burn
                netPtIn,
                ""
            );
        }

        SY.redeem(address(this), netSyOut, params.tokenOut, params.minTokenOut, true);
    }

    function _buyPt(BuyPtParams memory params) private {
        if (!pendleMarketFactory().isValidMarket(params.market)) {
            revert PeripheryErrors.INVALID_PENDLE_MARKET(params.market);
        }

        uint256 amountIn = IERC20(params.tokenIn).balanceOf(address(this));
        IERC20(params.tokenIn).forceApprove(address(pendleRouter()), amountIn);
        pendleRouter().swapExactTokenForPt(
            address(this),
            address(params.market),
            params.minPtOut,
            createDefaultApproxParams(),
            createTokenInputSimple(params.tokenIn, amountIn),
            createEmptyLimitOrderData()
        );
    }

    function _swapUniswapV2ExactInput(UniswapV2ExactInputParams memory params) private {
        IERC20(params.path[0]).forceApprove(address(uniswapV2Router()), type(uint256).max);
        uint256 amountIn = IERC20(params.path[0]).balanceOf(address(this));
        uniswapV2Router().swapExactTokensForTokens(
            amountIn, params.amountOutMin, params.path, params.to, params.deadline
        );
    }

    function _swapUniswapV3ExactInput(UniswapV3ExactInputParams memory params) private {
        uint256 amountIn = IERC20(params.tokenIn).balanceOf(address(this));
        IERC20(params.tokenIn).forceApprove(address(uniswapV3Router()), amountIn);

        IUniswapV3Router.ExactInputSingleParams memory swapParams = IUniswapV3Router.ExactInputSingleParams({
            tokenIn: params.tokenIn,
            tokenOut: params.tokenOut,
            fee: params.fee,
            recipient: address(this),
            amountIn: amountIn,
            amountOutMinimum: params.amountOutMinimum,
            sqrtPriceLimitX96: params.sqrtPriceLimitX96
        });

        uniswapV3Router().exactInputSingle(swapParams);
    }

    function _swapUniswapV2ExactOutput(UniswapV2ExactOutputParams memory params) private {
        uint256 amountInMaximum = IERC20(params.path[0]).balanceOf(address(this));
        IERC20(params.path[0]).forceApprove(address(uniswapV2Router()), amountInMaximum);
        uniswapV2Router().swapTokensForExactTokens(
            params.amountOut, amountInMaximum, params.path, params.to, params.deadline
        );
    }

    function _swapUniswapV3ExactOutput(UniswapV3ExactOutputParams memory params) private {
        uint256 amountInMaximum = IERC20(params.tokenIn).balanceOf(address(this));
        IERC20(params.tokenIn).forceApprove(address(uniswapV3Router()), amountInMaximum);

        IUniswapV3Router.ExactOutputSingleParams memory swapParams = IUniswapV3Router.ExactOutputSingleParams({
            tokenIn: params.tokenIn,
            tokenOut: params.tokenOut,
            fee: params.fee,
            recipient: address(this),
            amountInMaximum: amountInMaximum,
            amountOut: params.amountOut,
            sqrtPriceLimitX96: params.sqrtPriceLimitX96
        });

        uniswapV3Router().exactOutputSingle(swapParams);
    }

    function _swapGeneric(GenericSwapParams memory params) private {
        IERC20(params.tokenIn).forceApprove(params.router, type(uint256).max);
        Address.functionCall(params.router, params.data);
        IERC20(params.tokenIn).forceApprove(params.router, 0);
    }

    // VIEW FUNCTIONS
    function uniswapV2Router() public view returns (IUniswapV2Router02) {
        return _getDexSwapUpgradeableStorage()._uniswapV2Router;
    }

    function uniswapV3Router() public view returns (IUniswapV3Router) {
        return _getDexSwapUpgradeableStorage()._uniswapV3Router;
    }

    function pendleRouter() public view returns (IPAllActionV3) {
        return _getDexSwapUpgradeableStorage()._pendleRouter;
    }

    function pendleMarketFactory() public view returns (IPMarketFactoryV3) {
        return _getDexSwapUpgradeableStorage()._pendleMarketFactory;
    }
}
