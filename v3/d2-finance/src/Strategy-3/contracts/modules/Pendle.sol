// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity 0.8.28;

import "@solidstate/contracts/utils/ReentrancyGuard.sol";
import "@solidstate/contracts/access/access_control/AccessControl.sol";
import "@solidstate/contracts/introspection/ERC165/base/ERC165Base.sol";
import "@solidstate/contracts/proxy/diamond/writable/DiamondWritableInternal.sol";


interface IPendle_Module {
    function pendle_deposit(address market, uint256 amount) external;
    function pendle_withdraw(address market, uint256 amount) external;
    function pendle_swap(uint256 kind, address market, uint256 amount) external;
    function pendle_claim(address yt) external;
    function pendle_exit(address market) external;
}

contract Pendle_Module is IPendle_Module, AccessControl, ReentrancyGuard {
    bytes32 public constant EXECUTOR_ROLE = keccak256("EXECUTOR_ROLE");

    IPRouter public immutable router;

    error UnkownSwapKind();

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
        IPRouter.ApproxParams memory approxParams = IPRouter.ApproxParams({
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
            pendleSwap: address(0),
            swapData: swapData
        });
        IPRouter.LimitOrderData memory limitOrderData = IPRouter.LimitOrderData({
            limitRouter: address(0),
            epsSkipMarket: 0,
            normalFills: new IPRouter.FillOrderParams[](0),
            flashFills: new IPRouter.FillOrderParams[](0),
            optData: ""
        });

        IERC20(ast).approve(address(router), amount);
        router.addLiquiditySingleToken(
            address(this),
            address(market),
            0,
            approxParams,
            input,
            limitOrderData
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
            pendleSwap: address(0),
            swapData: swapData
        });
        IPRouter.LimitOrderData memory limitOrderData = IPRouter.LimitOrderData({
            limitRouter: address(0),
            epsSkipMarket: 0,
            normalFills: new IPRouter.FillOrderParams[](0),
            flashFills: new IPRouter.FillOrderParams[](0),
            optData: ""
        });

        IERC20(market).approve(address(router), amount);
        router.removeLiquiditySingleToken(
            address(this),
            address(market),
            amount,
            output,
            limitOrderData
        );
    }

    function pendle_swap(uint256 kind, address market, uint256 amount) external onlyRole(EXECUTOR_ROLE) nonReentrant {
        address asset = marketToken(market);
        IPRouter.ApproxParams memory approxParams = IPRouter.ApproxParams({
            guessMin: 0,
            guessMax: type(uint256).max,
            guessOffchain: 0,
            maxIteration: 256,
            eps: 1e14 // Maximum 0.01% unused
        });
        IPRouter.LimitOrderData memory limitOrderData = IPRouter.LimitOrderData({
            limitRouter: address(0),
            epsSkipMarket: 0,
            normalFills: new IPRouter.FillOrderParams[](0),
            flashFills: new IPRouter.FillOrderParams[](0),
            optData: ""
        });
        IPSwapAggregator.SwapData memory swapData = IPSwapAggregator.SwapData({
            swapType: IPSwapAggregator.SwapType.NONE,
            extRouter: address(0),
            extCalldata: "",
            needScale: false
        });
        IPRouter.TokenInput memory input = IPRouter.TokenInput({
            tokenIn: asset,
            netTokenIn: amount,
            tokenMintSy: asset,
            pendleSwap: address(0),
            swapData: swapData
        });
        IPRouter.TokenOutput memory output = IPRouter.TokenOutput({
            tokenOut: asset,
            minTokenOut: 0,
            tokenRedeemSy: asset,
            pendleSwap: address(0),
            swapData: swapData
        });
        if (kind == 1) {
            IERC20(asset).approve(address(router), amount);
            router.swapExactTokenForPt(
                address(this),
                market,
                0,
                approxParams,
                input,
                limitOrderData
            );
        } else if (kind == 2) {
            (, address pt, ) = IPMarket(market).readTokens();
            IERC20(pt).approve(address(router), amount);
            router.swapExactPtForToken(
                address(this),
                market,
                amount,
                output,
                limitOrderData
            );
        } else if (kind == 3) {
            IERC20(asset).approve(address(router), amount);
            router.swapExactTokenForYt(
                address(this),
                market,
                0,
                approxParams,
                input,
                limitOrderData
            );
        } else if (kind == 4) {
            (, , address yt) = IPMarket(market).readTokens();
            IERC20(yt).approve(address(router), amount);
            router.swapExactYtForToken(
                address(this),
                market,
                amount,
                output,
                limitOrderData
            );
        } else {
            revert UnkownSwapKind();
        }
    }

    function pendle_claim(address market) external onlyRole(EXECUTOR_ROLE) nonReentrant {
        (address sy, , address yt) = IPMarket(market).readTokens();
        IPYT(yt).redeemDueInterestAndRewards(address(this), true, true);
        IPSY(sy).redeem(
            address(this),
            IERC20(sy).balanceOf(address(this)),
            IPSY(sy).getTokensOut()[0],
            0,
            false
        );
    }

    function pendle_exit(address market) external onlyRole(EXECUTOR_ROLE) nonReentrant {
        address asset = marketToken(market);
        (, address pt, ) = IPMarket(market).readTokens();
        uint256 amount = IERC20(pt).balanceOf(address(this));
        uint256 amountLp = IERC20(market).balanceOf(address(this));
        IERC20(pt).approve(address(router), amount);
        IERC20(market).approve(address(router), amountLp);
        router.exitPostExpToToken(
            address(this),
            market,
            amount,
            amountLp,
            IPRouter.TokenOutput({
                tokenOut: asset,
                minTokenOut: 0,
                tokenRedeemSy: asset,
                pendleSwap: address(0),
                swapData: IPSwapAggregator.SwapData({
                    swapType: IPSwapAggregator.SwapType.NONE,
                    extRouter: address(0),
                    extCalldata: "",
                    needScale: false
                })
            })
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
    function redeemRewards(address user) external returns (uint256[] memory);

    function getRewardTokens() external view returns (address[] memory);

    function readTokens() external view returns (address, address, address);
}

interface IPRouter {
    struct TokenInput {
        address tokenIn;
        uint256 netTokenIn;
        address tokenMintSy;
        address pendleSwap;
        IPSwapAggregator.SwapData swapData;
    }

    struct TokenOutput {
        address tokenOut;
        uint256 minTokenOut;
        address tokenRedeemSy;
        address pendleSwap;
        IPSwapAggregator.SwapData swapData;
    }

    struct ApproxParams {
        uint256 guessMin;
        uint256 guessMax;
        uint256 guessOffchain;
        uint256 maxIteration;
        uint256 eps;
    }

    enum OrderType {
        SY_FOR_PT,
        PT_FOR_SY,
        SY_FOR_YT,
        YT_FOR_SY
    }

    struct Order {
        uint256 salt;
        uint256 expiry;
        uint256 nonce;
        OrderType orderType;
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

    struct LimitOrderData {
        address limitRouter;
        uint256 epsSkipMarket; // only used for swap operations, will be ignored otherwise
        FillOrderParams[] normalFills;
        FillOrderParams[] flashFills;
        bytes optData;
    }

    function addLiquiditySingleToken(
        address receiver,
        address market,
        uint256 minLpOut,
        ApproxParams calldata guessPtReceivedFromSy,
        TokenInput calldata input,
        LimitOrderData calldata limit
    ) external payable returns (uint256 netLpOut, uint256 netSyFee, uint256 netSyInterm);

    function removeLiquiditySingleToken(
        address receiver,
        address market,
        uint256 netLpToRemove,
        TokenOutput calldata output,
        LimitOrderData calldata limit
    ) external returns (uint256 netTokenOut, uint256 netSyFee, uint256 netSyInterm);

    function exitPostExpToToken(
        address receiver,
        address market,
        uint256 netPtIn,
        uint256 netLpIn,
        TokenOutput calldata output
    ) external;

    function swapExactTokenForPt(
        address receiver,
        address market,
        uint256 minPtOut,
        ApproxParams calldata guessPtOut,
        TokenInput calldata input,
        LimitOrderData calldata limit
    ) external payable returns (uint256 netPtOut, uint256 netSyFee, uint256 netSyInterm);

    function swapExactPtForToken(
        address receiver,
        address market,
        uint256 exactPtIn,
        TokenOutput calldata output,
        LimitOrderData calldata limit
    ) external returns (uint256 netTokenOut, uint256 netSyFee, uint256 netSyInterm);

    function swapExactTokenForYt(
        address receiver,
        address market,
        uint256 minYtOut,
        ApproxParams calldata guessYtOut,
        TokenInput calldata input,
        LimitOrderData calldata limit
    ) external payable returns (uint256 netYtOut, uint256 netSyFee, uint256 netSyInterm);

    function swapExactYtForToken(
        address receiver,
        address market,
        uint256 exactYtIn,
        TokenOutput calldata output,
        LimitOrderData calldata limit
    ) external returns (uint256 netTokenOut, uint256 netSyFee, uint256 netSyInterm);
}

interface IPSY {
    function getTokensOut() external view returns (address[] memory);

    function redeem(
        address receiver,
        uint256 amountSharesToRedeem,
        address tokenOut,
        uint256 minTokenOut,
        bool burnFromInternalBalance
    ) external returns (uint256 amountTokenOut);
}

interface IPYT {
    function SY() external view returns (address);

    function redeemDueInterestAndRewards(
        address user,
        bool redeemInterest,
        bool redeemRewards
    ) external returns (uint256 interestOut, uint256[] memory rewardsOut);
}
