// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {IERC20} from "@openzeppelin/contracts/interfaces/IERC20.sol";
import {IERC4626} from "@openzeppelin/contracts/interfaces/IERC4626.sol";
import {MathLib} from "../lib/morpho-blue/src/libraries/MathLib.sol";
import {SwapperBase} from "./SwapperBase.sol";

interface IPsm {
    function tin() external view returns (uint256);
    function tout() external view returns (uint256);

    function sellGem(
        address usr,
        uint256 gemAmt
    ) external returns (uint256 daiOutWad);
    function buyGem(
        address usr,
        uint256 gemAmt
    ) external returns (uint256 daiInWad);
}

contract SwapperMakerPSM is SwapperBase {
    using MathLib for uint256;

    event RouteAdded(
        uint32 routeId,
        IERC20 tokenFrom,
        IERC20 tokenTo
    );
    event Swap(
        uint32 routeId,
        IERC20 tokenFrom,
        IERC20 tokenTo,
        uint256 amountIn,
        uint256 amountOut
    );

    IPsm public psm = IPsm(0xf6e72Db5454dd049d0788e411b06CfAF16853042);

    IERC20 private constant usdc =
        IERC20(0xA0b86991c6218b36c1d19D4a2e9Eb0cE3606eB48);
    IERC20 private constant dai =
        IERC20(0x6B175474E89094C44Da98b954EedeAC495271d0F);
    uint256 private constant USDC_TO_DAI_FACTOR = 10 ** 12;

    uint32 public USDC_TO_DAI = 0;
    uint32 public DAI_TO_USDC = 1;

    constructor() SwapperBase() {
        if (block.chainid == 1) {
            emit RouteAdded(USDC_TO_DAI, usdc, dai);
            emit RouteAdded(DAI_TO_USDC, dai, usdc);
        } else {
            revert UnsupportedChain();
        }
    }

    /**
     * @notice routeId 0 = USDC to DAI, 1 = DAI to USDC
     */
    function sell(uint32 routeId) public returns (uint256) {
        if(routeId > DAI_TO_USDC) revert RouteNotFound();

        if (routeId == USDC_TO_DAI) {
            uint256 amountIn = usdc.balanceOf(address(msg.sender));
            usdc.transferFrom(address(msg.sender), address(this), amountIn);
            uint256 amountOut = psm.sellGem(msg.sender, amountIn);
            emit Swap(USDC_TO_DAI, usdc, dai, amountIn, amountOut);
            return amountOut;
        } else {
            uint256 amountIn = dai.balanceOf(address(msg.sender));
            uint256 usdcToBuy = _previewSell(DAI_TO_USDC, amountIn) /
                USDC_TO_DAI_FACTOR;
            psm.buyGem(msg.sender, usdcToBuy);
            emit Swap(DAI_TO_USDC, dai, usdc, amountIn, usdcToBuy);
            return usdcToBuy;
        }
    }

    function previewSell(
        uint32 routeId,
        uint256 amountIn
    ) external view returns (uint256 amountOut) {
        if(routeId > DAI_TO_USDC) revert RouteNotFound();
        return _previewSell(routeId, amountIn);
    }

    function _previewSell(
        uint32 routeId,
        uint256 amountIn
    ) internal view returns (uint256 amountOut) {
        if (routeId == USDC_TO_DAI) {
            return (amountIn * (1 ether + psm.tin())) / 1 ether;
        } else {
            return (amountIn * 1 ether) / (1 ether + psm.tout());
        }
    }

    function approvalNeeded(
        uint32 routeId
    ) external view returns (IERC20 token, address who, uint256 amount) {
        if (routeId == 0) {
            return (usdc, address(this), usdc.balanceOf(msg.sender));
        } else {
            return (dai, address(this), dai.balanceOf(msg.sender));
        }
    }
}
