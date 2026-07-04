// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {IERC20} from "@openzeppelin/contracts/interfaces/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {SwapperBase} from "./SwapperBase.sol";
import {IDaiUsds} from "./interfaces/IDaiUsds.sol";


contract SwapperDaiUsds is SwapperBase {
    using SafeERC20 for IERC20;

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

    IDaiUsds public immutable DAI_USDS_CONTRACT;
    IERC20 public immutable USDS;
    IERC20 public immutable DAI;

    uint32 public USDS_TO_DAI = 0;
    uint32 public DAI_TO_USDS = 1;

    uint32 public routesCount = 0;

    constructor() SwapperBase() {
        if (block.chainid == 1) {
            DAI_USDS_CONTRACT = IDaiUsds(0x3225737a9Bbb6473CB4a45b7244ACa2BeFdB276A);
            USDS = DAI_USDS_CONTRACT.usds();
            DAI = DAI_USDS_CONTRACT.dai();
            emit RouteAdded(USDS_TO_DAI, USDS, DAI);
            emit RouteAdded(DAI_TO_USDS, DAI, USDS);
            routesCount = 2;
        } else {
            revert UnsupportedChain();
        }
    }


    function sell(uint32 routeId) public returns (uint256) {
        if (routeId == USDS_TO_DAI) {
            uint256 amountIn = USDS.balanceOf(address(msg.sender));
            USDS.safeTransferFrom(address(msg.sender), address(this), amountIn);
            USDS.forceApprove(address(DAI_USDS_CONTRACT), amountIn);
            DAI_USDS_CONTRACT.usdsToDai(address(msg.sender), amountIn);
            emit Swap(routeId, USDS, DAI, amountIn, amountIn);
            return amountIn;
        } else if (routeId == DAI_TO_USDS) {
            uint256 amountIn = DAI.balanceOf(address(msg.sender));
            DAI.safeTransferFrom(address(msg.sender), address(this), amountIn);
            DAI.forceApprove(address(DAI_USDS_CONTRACT), amountIn);
            DAI_USDS_CONTRACT.daiToUsds(address(msg.sender), amountIn);
            emit Swap(routeId, DAI, USDS, amountIn, amountIn);
            return amountIn;
        }
        revert RouteNotFound();
    }


    function previewSell(
        uint32 routeId,
        uint256 amountIn
    ) external view returns (uint256) {
        if (routeId == USDS_TO_DAI || routeId == DAI_TO_USDS) {
            return amountIn;
        }
        revert RouteNotFound();
    }

    function approvalNeeded(
        uint32 routeId
    ) external view returns (IERC20 token, address who, uint256 amount) {
        if (routeId == USDS_TO_DAI) {
            return (USDS, address(this), USDS.balanceOf(msg.sender));
        } else if (routeId == DAI_TO_USDS) {
            return (DAI, address(this), DAI.balanceOf(msg.sender));
        }
        revert RouteNotFound();
    }
}
