// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {IERC20} from "@openzeppelin/contracts/interfaces/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {SwapperBase} from "./SwapperBase.sol";
import {IDaiUsds} from "./interfaces/IDaiUsds.sol";
import {ICreditEnforcer, IPegStabilityModule, ISavingModule} from "./interfaces/IReservoirSwap.sol";
import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";


contract SwapperRusd is SwapperBase {
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

    IPegStabilityModule public immutable PSM;
    ISavingModule public immutable SM;
    ICreditEnforcer public immutable CE;
    IERC20 public immutable rUSD;
    IERC20 public immutable srUSD;
    IERC20 public immutable USDC;

    uint32 public rUSD_TO_srUSD = 0;
    uint32 public srUSD_TO_rUSD = 1;
    uint32 public rUSD_TO_USDC = 2;
    uint32 public USDC_TO_rUSD = 3;

    uint32 public routesCount = 0;

    constructor() SwapperBase() {
        if (block.chainid == 1) {
            rUSD = IERC20(0x09D4214C03D01F49544C0448DBE3A27f768F2b34);
            srUSD = IERC20(0x738d1115B90efa71AE468F1287fc864775e23a31);
            USDC = IERC20(0xA0b86991c6218b36c1d19D4a2e9Eb0cE3606eB48);
            PSM = IPegStabilityModule(0x4809010926aec940b550D34a46A52739f996D75D);
            SM = ISavingModule(0x5475611Dffb8ef4d697Ae39df9395513b6E947d7);
            CE = ICreditEnforcer(0x04716DB62C085D9e08050fcF6F7D775A03d07720);

            // Set infinite approvals for PSM, SM and CE
            USDC.forceApprove(address(PSM), type(uint256).max);
            USDC.forceApprove(address(CE), type(uint256).max);
            rUSD.forceApprove(address(PSM), type(uint256).max);
            rUSD.forceApprove(address(SM), type(uint256).max);
            srUSD.forceApprove(address(SM), type(uint256).max);

            emit RouteAdded(rUSD_TO_srUSD, rUSD, srUSD);
            emit RouteAdded(srUSD_TO_rUSD, srUSD, rUSD);
            emit RouteAdded(rUSD_TO_USDC, rUSD, USDC);
            emit RouteAdded(USDC_TO_rUSD, USDC, rUSD);
            routesCount = 4;
        } else {
            revert UnsupportedChain();
        }
    }

    function _fromToken(uint32 routeId) internal view returns (IERC20) {
        if (routeId == rUSD_TO_srUSD) {
            return rUSD;
        } else if (routeId == srUSD_TO_rUSD) {
            return srUSD;
        } else if (routeId == rUSD_TO_USDC) {
            return rUSD;
        } else if (routeId == USDC_TO_rUSD) {
            return USDC;
        }
        revert RouteNotFound();
    }

    function _toToken(uint32 routeId) internal view returns (IERC20) {
        if (routeId == rUSD_TO_srUSD) {
            return srUSD;
        } else if (routeId == srUSD_TO_rUSD) {
            return rUSD;
        } else if (routeId == rUSD_TO_USDC) {
            return USDC;
        } else if (routeId == USDC_TO_rUSD) {
            return rUSD;
        }
        revert RouteNotFound();
    }

    function _rusd_to_srusd(uint256 amountIn) internal returns (uint256) {
        uint256 initialBalance = srUSD.balanceOf(msg.sender);
        CE.mintSavingcoin(msg.sender, amountIn);
        uint256 finalBalance = srUSD.balanceOf(msg.sender);
        return finalBalance - initialBalance;
    }

    function _preview_rusd_to_srusd(uint256 amountIn) internal view returns (uint256) {
        return SM.previewMint(amountIn);
    }

    function _srusd_to_rusd(uint256 amountIn) internal returns (uint256) {
        uint256 initialBalance = rUSD.balanceOf(msg.sender);
        uint256 amountRusd = (amountIn*SM.currentPrice())/(1e2*(1e6+SM.redeemFee()));
        SM.redeem(msg.sender, amountRusd);
        uint256 finalBalance = rUSD.balanceOf(msg.sender);
        return finalBalance - initialBalance;
    }

    function _preview_srusd_to_rusd(uint256 amountIn) internal view returns (uint256) {
        uint256 amountRusd = (amountIn*SM.currentPrice())/(1e2*(1e6+SM.redeemFee()));
        return amountRusd;
    }

    function _usdc_to_rusd(uint256 amountIn) internal returns (uint256) {
        uint256 initialBalance = rUSD.balanceOf(msg.sender);
        CE.mintStablecoin(msg.sender, amountIn);
        uint256 finalBalance = rUSD.balanceOf(msg.sender);
        return finalBalance - initialBalance;
    }

    function _preview_usdc_to_rusd(uint256 amountIn) internal pure returns (uint256) {
        return amountIn*1e12; // 12=18-6=rUSD.decimals-USDC.decimals
    }

    function _rusd_to_usdc(uint256 amountIn) internal returns (uint256) {
        uint256 initialBalance = USDC.balanceOf(msg.sender);
        PSM.redeem(msg.sender, amountIn/1e12);
        uint256 finalBalance = USDC.balanceOf(msg.sender);
        return finalBalance - initialBalance;
    }

    function _preview_rusd_to_usdc(uint256 amountIn) internal pure returns (uint256) {
        return amountIn/1e12;
    }

    function _sell(uint32 routeId, uint256 amountIn) internal returns (uint256) {
        IERC20 fromToken = _fromToken(routeId);
        fromToken.safeTransferFrom(address(msg.sender), address(this), amountIn);
        if (routeId == rUSD_TO_srUSD) {
            return _rusd_to_srusd(amountIn);
        } else if (routeId == srUSD_TO_rUSD) {
            return _srusd_to_rusd(amountIn);
        } else if (routeId == rUSD_TO_USDC) {
            return _rusd_to_usdc(amountIn);
        } else if (routeId == USDC_TO_rUSD) {
            return _usdc_to_rusd(amountIn);
        }
        revert RouteNotFound();
    }

    function sell(uint32 routeId, uint256 amountIn) public returns (uint256) {
        return _sell(routeId, amountIn);
    }

    function sell(uint32 routeId) public returns (uint256) {
        IERC20 fromToken = _fromToken(routeId);
        uint256 amountIn = fromToken.balanceOf(address(msg.sender));
        return _sell(routeId, amountIn);
    }


    function previewSell(
        uint32 routeId,
        uint256 amountIn
    ) external view returns (uint256) {
        if (routeId == rUSD_TO_srUSD) {
            return _preview_rusd_to_srusd(amountIn);
        } else if (routeId == srUSD_TO_rUSD) {
            return _preview_srusd_to_rusd(amountIn);
        } else if (routeId == rUSD_TO_USDC) {
            return _preview_rusd_to_usdc(amountIn);
        } else if (routeId == USDC_TO_rUSD) {
            return _preview_usdc_to_rusd(amountIn);
        }
        revert RouteNotFound();
    }

    function approvalNeeded(
        uint32 routeId
    ) external view returns (IERC20 token, address who, uint256 amount) {
        IERC20 fromToken = _fromToken(routeId);
        return (fromToken, address(this), fromToken.balanceOf(msg.sender));
    }
}
