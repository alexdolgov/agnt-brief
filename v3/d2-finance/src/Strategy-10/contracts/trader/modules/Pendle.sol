// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity ^0.8.13;

import "@solidstate/contracts/utils/ReentrancyGuard.sol";
import "@solidstate/contracts/access/access_control/AccessControl.sol";
import "@solidstate/contracts/introspection/ERC165/base/ERC165Base.sol";
import "@solidstate/contracts/proxy/diamond/writable/DiamondWritableInternal.sol";
import "./dsq/DSQ_Common_Roles.sol";


interface IPendle_Module {
    function pendle_deposit(address market, uint256 amount) external;
    function pendle_withdraw(address market, uint256 amount) external;
}

contract Pendle_Module is IPendle_Module, AccessControl, ReentrancyGuard, DSQ_Common_Roles {
    IPRouter public immutable router;

    constructor(address _router) {
        require(_router != address(0), "Pendle_Module: Zero address");
        router = IPRouter(_router);
    }

    function marketToken(address market) internal view returns (address) {
        (address sy,,) = IPMarket(market).readTokens();
        return IPSY(sy).getTokensOut()[0];
    }

    function pendle_deposit(address market, uint256 amount) external onlyRole(EXECUTOR_ROLE) nonReentrant {
        address ast = marketToken(market);
        IPMarket.ApproxParams memory approxParams = IPMarket.ApproxParams({
            guessMin: 0,
            guessMax: type(uint256).max,
            guessOffchain: 0,
            maxIteration: 256,
            eps: 1e14 // Maximum 0.01% unused
        });
        IPSwapAggregator.SwapData memory swapData = IPSwapAggregator.SwapData({
            swapType: IPSwapAggregator.SwapType.NONE,
            extRouter: address(0),
            extCalldata: "",
            needScale: false
        });
        IPRouter.TokenInput memory input = IPRouter.TokenInput({
            tokenIn: ast,
            netTokenIn: amount,
            tokenMintSy: ast,
            bulk: address(0),
            pendleSwap: address(0),
            swapData: swapData
        });

        IERC20(ast).approve(address(router), amount);
        router.addLiquiditySingleToken(
            address(this),
            address(market),
            0,
            approxParams,
            input
        );
    }

    function pendle_withdraw(address market, uint256 amount) external onlyRole(EXECUTOR_ROLE) nonReentrant {
        address ast = marketToken(market);
        IPSwapAggregator.SwapData memory swapData = IPSwapAggregator.SwapData({
            swapType: IPSwapAggregator.SwapType.NONE,
            extRouter: address(0),
            extCalldata: "",
            needScale: false
        });
        IPRouter.TokenOutput memory output = IPRouter.TokenOutput({
            tokenOut: ast,
            minTokenOut: 0,
            tokenRedeemSy: ast,
            bulk: address(0),
            pendleSwap: address(0),
            swapData: swapData
        });

        IERC20(market).approve(address(router), amount);
        router.removeLiquiditySingleToken(
            address(this),
            address(market),
            amount,
            output
        );
    }
}

interface IERC20 {
    function name() external view returns (string memory);
    function symbol() external view returns (string memory);
    function decimals() external view returns (uint8);
    function totalSupply() external view returns (uint256);
    function balanceOf(address) external view returns (uint256);
    function allowance(address, address) external view returns (uint256);
    function approve(address, uint256) external returns (bool);
    function transfer(address, uint256) external returns (bool);
    function transferFrom(address, address, uint256) external returns (bool);
}

interface IPSwapAggregator {
    enum SwapType {
        NONE,
        KYBERSWAP,
        ONE_INCH,
        ETH_WETH
    }
    struct SwapData {
        SwapType swapType;
        address extRouter;
        bytes extCalldata;
        bool needScale;
    }
}

interface IPMarket is IERC20 {
    struct ApproxParams {
        uint256 guessMin;
        uint256 guessMax;
        uint256 guessOffchain;
        uint256 maxIteration;
        uint256 eps;
    }
    function redeemRewards(address user) external returns (uint256[] memory);
    function getRewardTokens() external view returns (address[] memory);
    function readTokens() external view returns (address, address, address);
}

interface IPRouter {
    struct TokenInput {
        address tokenIn;
        uint256 netTokenIn;
        address tokenMintSy;
        address bulk;
        address pendleSwap;
        IPSwapAggregator.SwapData swapData;
    }

    struct TokenOutput {
        address tokenOut;
        uint256 minTokenOut;
        address tokenRedeemSy;
        address bulk;
        address pendleSwap;
        IPSwapAggregator.SwapData swapData;
    }

    function addLiquiditySingleToken(
        address receiver,
        address market,
        uint256 minLpOut,
        IPMarket.ApproxParams calldata guessPtReceivedFromSy,
        TokenInput calldata input
    ) external payable returns (uint256 netLpOut, uint256 netSyFee);

    function removeLiquiditySingleToken(
        address receiver,
        address market,
        uint256 netLpToRemove,
        TokenOutput calldata output
    ) external returns (uint256 netTokenOut, uint256 netSyFee);
}

interface IPSY {
    function getTokensOut() external view returns (address[] memory);
}
