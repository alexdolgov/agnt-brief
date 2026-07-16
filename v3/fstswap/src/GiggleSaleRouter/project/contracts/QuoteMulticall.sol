// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

/**
 * @title QuoteMulticall
 * @notice 批量询价合约 — 一次 RPC call 查询所有协议的报价
 *         返回 0 = 该协议不支持此代币，返回 >0 = 支持且为预估输出量
 */

// ─── Minimal Interfaces ───

interface IPancakeRouter {
    function getAmountsOut(uint256 amountIn, address[] calldata path)
        external view returns (uint256[] memory amounts);
}

interface IInternalRouter {
    function getAmountsOut(uint256 amountIn, address[] calldata path)
        external view returns (uint256[] memory amounts);
}

interface IFourMemeHelper3 {
    function getTokenInfo(address token) external view returns (
        uint256 version, address tokenManager, address quote,
        uint256 lastPrice, uint256 tradingFeeRate, uint256 minTradingFee,
        uint256 launchTime, uint256 offers, uint256 maxOffers,
        uint256 funds, uint256 maxFunds, bool liquidityAdded
    );
    function tryBuy(address token, uint256 amount, uint256 funds) external view returns (
        address tokenManager, address quote,
        uint256 estimatedAmount, uint256 estimatedCost, uint256 estimatedFee,
        uint256 amountMsgValue, uint256 amountApproval, uint256 amountFunds
    );
    function trySell(address token, uint256 amount) external view returns (
        address tokenManager, address quote, uint256 funds, uint256 fee
    );
}

interface IFlapPortal {
    struct TokenStateV2 {
        uint8 status;          // 0=Trading, 1=Graduating, 2=Listed, ...
        uint256 reserve;
        uint256 circulatingSupply;
        uint256 price;
        uint8 tokenVersion;
        uint256 r;
        uint256 dexSupplyThresh;
    }

    struct QuoteExactInputParams {
        address inputToken;
        address outputToken;
        uint256 inputAmount;
    }

    function quoteExactInput(QuoteExactInputParams calldata params) external returns (uint256 outputAmount);
    function getTokenV2(address token) external view returns (TokenStateV2 memory state);
    function getFeeRate() external view returns (uint256 buyFeeRate, uint256 sellFeeRate);
}

contract QuoteMulticall {
    address public immutable WBNB;
    
    // Protocol addresses (same order as AggregatorRouter)
    address public pcsRouter;        // 0: PancakeSwap
    address public fstRouter;        // 1: FstSwap
    address public fourMemeHelper;   // 5: Four.meme Helper3
    address public flapPortal;       // 3: Flap.sh
    address public internalRouter;   // 4: InternalDEX

    address public owner;

    struct BuyQuote {
        uint256 internalDexOut;   // 我们内盘
        uint256 fourMemeOut;      // Four.meme
        uint256 flapOut;          // Flap.sh
        uint256 pcsOut;           // PancakeSwap
        uint256 fstOut;           // FstSwap
        bool    isFourMeme;      // 是否 Four.meme 代币
        bool    isFlap;          // 是否 Flap 代币
        bool    isInternal;      // 是否我们内盘代币
        bool    isGraduated;     // Four.meme 是否已上外盘
        uint8   flapStatus;      // 0=bonding_curve, 1=graduating, 2=listed, 255=not_found
        uint256 flapReserve;     // Flap bonding curve reserve (BNB)
        uint256 flapSupply;      // Flap circulating supply
    }

    struct SellQuote {
        uint256 internalDexOut;
        uint256 fourMemeOut;
        uint256 flapOut;
        uint256 pcsOut;
        uint256 fstOut;
        bool    isFourMeme;
        bool    isFlap;
        bool    isInternal;
        bool    isGraduated;
        uint8   flapStatus;
        uint256 flapReserve;
        uint256 flapSupply;
    }

    constructor(
        address _wbnb,
        address _pcsRouter,
        address _fstRouter,
        address _fourMemeHelper,
        address _flapPortal,
        address _internalRouter
    ) {
        WBNB = _wbnb;
        pcsRouter = _pcsRouter;
        fstRouter = _fstRouter;
        fourMemeHelper = _fourMemeHelper;
        flapPortal = _flapPortal;
        internalRouter = _internalRouter;
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Not owner");
        _;
    }

    function setAddresses(
        address _pcsRouter,
        address _fstRouter,
        address _fourMemeHelper,
        address _flapPortal,
        address _internalRouter
    ) external onlyOwner {
        if (_pcsRouter != address(0)) pcsRouter = _pcsRouter;
        if (_fstRouter != address(0)) fstRouter = _fstRouter;
        if (_fourMemeHelper != address(0)) fourMemeHelper = _fourMemeHelper;
        if (_flapPortal != address(0)) flapPortal = _flapPortal;
        if (_internalRouter != address(0)) internalRouter = _internalRouter;
    }

    // ═══════════════════════════════════════════
    //  买入询价: BNB → Token
    // ═══════════════════════════════════════════

    function quoteBuy(address token, uint256 bnbAmount) external returns (BuyQuote memory q) {
        // 1. 我们的内盘
        if (internalRouter != address(0)) {
            try this._quoteInternalBuy(token, bnbAmount) returns (uint256 out) {
                if (out > 0) {
                    q.internalDexOut = out;
                    q.isInternal = true;
                }
            } catch {}
        }

        // 2. Four.meme
        if (fourMemeHelper != address(0)) {
            try this._quoteFourMemeBuy(token, bnbAmount) returns (uint256 out, bool graduated) {
                if (out > 0) {
                    q.fourMemeOut = out;
                    q.isFourMeme = true;
                    q.isGraduated = graduated;
                }
            } catch {}
        }

        // 3. Flap.sh — 先查 getTokenV2，再用 quoteExactInput
        if (flapPortal != address(0)) {
            // Step 3a: getTokenV2 (view) — detect if token exists on Flap
            try this._getFlapTokenState(token) returns (uint8 status, uint256 reserve, uint256 supply) {
                q.flapStatus = status;
                q.flapReserve = reserve;
                q.flapSupply = supply;
                q.isFlap = true;

                // Step 3b: quoteExactInput for actual price
                try this._quoteFlapBuy(token, bnbAmount) returns (uint256 out) {
                    if (out > 0) {
                        q.flapOut = out;
                    }
                } catch {}
            } catch {
                q.flapStatus = 255; // not_found
            }
        }

        // 4. PancakeSwap
        if (pcsRouter != address(0)) {
            try this._quotePCSBuy(token, bnbAmount) returns (uint256 out) {
                q.pcsOut = out;
            } catch {}
        }

        // 5. FstSwap
        if (fstRouter != address(0)) {
            try this._quoteFSTBuy(token, bnbAmount) returns (uint256 out) {
                q.fstOut = out;
            } catch {}
        }
    }

    // ═══════════════════════════════════════════
    //  卖出询价: Token → BNB
    // ═══════════════════════════════════════════

    function quoteSell(address token, uint256 tokenAmount) external returns (SellQuote memory q) {
        // 1. 我们的内盘
        if (internalRouter != address(0)) {
            try this._quoteInternalSell(token, tokenAmount) returns (uint256 out) {
                if (out > 0) {
                    q.internalDexOut = out;
                    q.isInternal = true;
                }
            } catch {}
        }

        // 2. Four.meme
        if (fourMemeHelper != address(0)) {
            try this._quoteFourMemeSell(token, tokenAmount) returns (uint256 out, bool graduated) {
                if (out > 0) {
                    q.fourMemeOut = out;
                    q.isFourMeme = true;
                    q.isGraduated = graduated;
                }
            } catch {}
        }

        // 3. Flap.sh — 先查 getTokenV2，再用 quoteExactInput
        if (flapPortal != address(0)) {
            try this._getFlapTokenState(token) returns (uint8 status, uint256 reserve, uint256 supply) {
                q.flapStatus = status;
                q.flapReserve = reserve;
                q.flapSupply = supply;
                q.isFlap = true;

                try this._quoteFlapSell(token, tokenAmount) returns (uint256 out) {
                    if (out > 0) {
                        q.flapOut = out;
                    }
                } catch {}
            } catch {
                q.flapStatus = 255;
            }
        }

        // 4. PancakeSwap
        if (pcsRouter != address(0)) {
            try this._quotePCSSell(token, tokenAmount) returns (uint256 out) {
                q.pcsOut = out;
            } catch {}
        }

        // 5. FstSwap
        if (fstRouter != address(0)) {
            try this._quoteFSTSell(token, tokenAmount) returns (uint256 out) {
                q.fstOut = out;
            } catch {}
        }
    }

    // ═══════════════════════════════════════════
    //  批量询价: 多个代币一次查
    // ═══════════════════════════════════════════

    function batchQuoteBuy(address[] calldata tokens, uint256 bnbAmount) 
        external returns (BuyQuote[] memory quotes) 
    {
        quotes = new BuyQuote[](tokens.length);
        for (uint256 i = 0; i < tokens.length; i++) {
            try this.quoteBuy(tokens[i], bnbAmount) returns (BuyQuote memory q) {
                quotes[i] = q;
            } catch {}
        }
    }

    function batchQuoteSell(address[] calldata tokens, uint256[] calldata amounts) 
        external returns (SellQuote[] memory quotes) 
    {
        require(tokens.length == amounts.length, "Length mismatch");
        quotes = new SellQuote[](tokens.length);
        for (uint256 i = 0; i < tokens.length; i++) {
            try this.quoteSell(tokens[i], amounts[i]) returns (SellQuote memory q) {
                quotes[i] = q;
            } catch {}
        }
    }

    // ═══════════════════════════════════════════
    //  Internal query functions (external for try/catch)
    // ═══════════════════════════════════════════

    function _quoteInternalBuy(address token, uint256 bnbAmount) external view returns (uint256) {
        address[] memory path = new address[](2);
        path[0] = WBNB;
        path[1] = token;
        uint256[] memory amounts = IInternalRouter(internalRouter).getAmountsOut(bnbAmount, path);
        return amounts[1];
    }

    function _quoteInternalSell(address token, uint256 tokenAmount) external view returns (uint256) {
        address[] memory path = new address[](2);
        path[0] = token;
        path[1] = WBNB;
        uint256[] memory amounts = IInternalRouter(internalRouter).getAmountsOut(tokenAmount, path);
        return amounts[1];
    }

    function _quoteFourMemeBuy(address token, uint256 bnbAmount) external view returns (uint256 out, bool graduated) {
        // 先检查是否是 Four.meme 代币
        (,,,,,,,,,, , bool liquidityAdded) = IFourMemeHelper3(fourMemeHelper).getTokenInfo(token);
        graduated = liquidityAdded;
        
        // tryBuy: amount=0 表示用 funds 计算
        (, , uint256 estimatedAmount,,,,, ) = IFourMemeHelper3(fourMemeHelper).tryBuy(token, 0, bnbAmount);
        out = estimatedAmount;
    }

    function _quoteFourMemeSell(address token, uint256 tokenAmount) external view returns (uint256 out, bool graduated) {
        (,,,,,,,,,, , bool liquidityAdded) = IFourMemeHelper3(fourMemeHelper).getTokenInfo(token);
        graduated = liquidityAdded;
        
        (, , uint256 funds, ) = IFourMemeHelper3(fourMemeHelper).trySell(token, tokenAmount);
        out = funds;
    }

    /// @notice Get Flap token state via getTokenV2
    function _getFlapTokenState(address token) external view returns (uint8 status, uint256 reserve, uint256 supply) {
        IFlapPortal.TokenStateV2 memory state = IFlapPortal(flapPortal).getTokenV2(token);
        status = state.status;
        reserve = state.reserve;
        supply = state.circulatingSupply;
    }

    function _quoteFlapBuy(address token, uint256 bnbAmount) external returns (uint256) {
        return IFlapPortal(flapPortal).quoteExactInput(
            IFlapPortal.QuoteExactInputParams({
                inputToken: address(0),  // BNB
                outputToken: token,
                inputAmount: bnbAmount
            })
        );
    }

    function _quoteFlapSell(address token, uint256 tokenAmount) external returns (uint256) {
        return IFlapPortal(flapPortal).quoteExactInput(
            IFlapPortal.QuoteExactInputParams({
                inputToken: token,
                outputToken: address(0),  // BNB
                inputAmount: tokenAmount
            })
        );
    }

    function _quotePCSBuy(address token, uint256 bnbAmount) external view returns (uint256) {
        address[] memory path = new address[](2);
        path[0] = WBNB;
        path[1] = token;
        uint256[] memory amounts = IPancakeRouter(pcsRouter).getAmountsOut(bnbAmount, path);
        return amounts[1];
    }

    function _quotePCSSell(address token, uint256 tokenAmount) external view returns (uint256) {
        address[] memory path = new address[](2);
        path[0] = token;
        path[1] = WBNB;
        uint256[] memory amounts = IPancakeRouter(pcsRouter).getAmountsOut(tokenAmount, path);
        return amounts[1];
    }

    function _quoteFSTBuy(address token, uint256 bnbAmount) external view returns (uint256) {
        address[] memory path = new address[](2);
        path[0] = WBNB;
        path[1] = token;
        uint256[] memory amounts = IPancakeRouter(fstRouter).getAmountsOut(bnbAmount, path);
        return amounts[1];
    }

    function _quoteFSTSell(address token, uint256 tokenAmount) external view returns (uint256) {
        address[] memory path = new address[](2);
        path[0] = token;
        path[1] = WBNB;
        uint256[] memory amounts = IPancakeRouter(fstRouter).getAmountsOut(tokenAmount, path);
        return amounts[1];
    }

    receive() external payable {}
}
