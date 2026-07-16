// SPDX-License-Identifier: MIT

pragma solidity =0.8.24;

import "@openzeppelin-contracts-upgradeable/access/OwnableUpgradeable.sol";
import {IERC20} from "@openzeppelin/token/ERC20/IERC20.sol";
import {IERC20Metadata} from "@openzeppelin/token/ERC20/extensions/IERC20Metadata.sol";
import {SafeERC20} from "@openzeppelin/token/ERC20/utils/SafeERC20.sol";
import {IDividend} from "src/interfaces/Tax/IDividend.sol";
import {IPortal, IPortalTradeV2, IPortalTypes} from "src/interfaces/IPortal.sol";

interface IWETH {
    function withdraw(uint256) external;
    function deposit() external payable;
}

interface IUniswapV2Factory {
    function getPair(address tokenA, address tokenB) external view returns (address pair);
}

interface IUniswapRouter02 {
    function swapExactTokensForTokensSupportingFeeOnTransferTokens(
        uint256 amountIn,
        uint256 amountOutMin,
        address[] calldata path,
        address to,
        uint256 deadline
    ) external;

    function addLiquidity(
        address tokenA,
        address tokenB,
        uint256 amountADesired,
        uint256 amountBDesired,
        uint256 amountAMin,
        uint256 amountBMin,
        address to,
        uint256 deadline
    ) external returns (uint256 amountA, uint256 amountB, uint256 liquidity);

    function getAmountsOut(uint256 amountIn, address[] calldata path)
        external
        view
        returns (uint256[] memory amounts);

    function factory() external pure returns (address);
}

/// @notice Initialization parameters for TaxProcessor
struct TaxProcessorInitParams {
    address quoteToken;
    address router;
    address feeReceiver;
    address marketAddress;
    address dividendAddress;
    address taxToken;
    uint16 feeRate;
    uint16 marketBps;
    uint16 deflationBps;
    uint16 lpBps;
    uint16 dividendBps;
}

contract TaxProcessor is OwnableUpgradeable {
    using SafeERC20 for IERC20;

    // --- Constants ---
    /// @notice Dead address for burning deflation tokens
    address public constant DEAD_ADDRESS = 0x000000000000000000000000000000000000dEaD;

    // --- Immutable Storage ---
    /// @notice WETH address for ETH conversion (immutable)
    address public immutable weth;

    /// @notice FlapBlackHole address (immutable)
    address public immutable flapBlackHole;

    /// @notice Portal address for swapping (immutable)
    address public immutable portal;

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor(address weth_, address flapBlackHole_, address portal_) {
        require(weth_ != address(0), "TaxProcessor: zero WETH address");
        require(portal_ != address(0), "TaxProcessor: zero portal address");
        weth = weth_;
        flapBlackHole = flapBlackHole_;
        portal = portal_;
        _disableInitializers();
    }

    // --- Storage ---
    /// @notice Quote token (WETH or other ERC20), only set if not WETH
    address public quoteToken;

    /// @notice Tax token (the token that calls processing)
    address public taxToken;

    /// @notice Uniswap V2 router address
    address public router;

    /// @notice Fee receiver address
    address public feeReceiver;

    /// @notice Market receiver address (only set if marketBps > 0)
    address public marketAddress;

    /// @notice Dividend contract address (only set if dividendBps > 0)
    address public dividendAddress;

    /// @notice Accumulated quote token balance for fee
    uint256 public feeQuoteBalance;

    /// @notice Accumulated quote token balance for lp
    uint256 public lpQuoteBalance;

    /// @notice Accumulated quote token balance for market
    uint256 public marketQuoteBalance;

    /// @notice Accumulated quote token balance for dividend
    uint256 public dividendQuoteBalance;

    /// @notice Gas-optimized struct containing all fee configuration
    /// @dev Packed into a single 256-bit storage slot for gas efficiency
    /// Field breakdown:
    ///   - marketBps: 16 bits (basis points, max 65535)
    ///   - deflationBps: 16 bits (basis points, max 65535)
    ///   - lpBps: 16 bits (basis points, max 65535)
    ///   - dividendBps: 16 bits (basis points, max 65535)
    ///   - feeRate: 16 bits (basis points, max 65535)
    ///   - isWeth: 8 bits (boolean, padded to 8 bits for alignment)
    /// Total: 16 + 16 + 16 + 16 + 16 + 8 = 88 bits (fits in one storage slot)
    struct PackedFeeConfig {
        uint16 marketBps;
        uint16 deflationBps;
        uint16 lpBps;
        uint16 dividendBps;
        uint16 feeRate;
        bool isWeth;
    }

    /// @notice All fee-related configuration packed into a single storage slot
    PackedFeeConfig public feeConfig;

    /// @notice Total quote token sent to dividend contract
    uint256 public totalQuoteSentToDividend;

    /// @notice Total quote token added to liquidity
    uint256 public totalQuoteAddedToLiquidity;

    /// @notice Total tax token added to liquidity
    uint256 public totalTokenAddedToLiquidity;

    /// @notice Total quote token sent to marketing wallet
    uint256 public totalQuoteSentToMarketing;

    /// @notice Pre-bonding burn funds (deflation portion from bonding curve tax)
    uint256 public preBondBurnFunds;

    /// @notice Minimum buy back quote amount threshold
    uint256 public minBuyBackQuote;

    /// @notice Maximum gas limit for buy back operations
    uint256 public maxBuyBackGasLimit;

    // --- Events ---
    event FlapTaxProcessorDispatchExecuted(
        address indexed taxToken, uint256 feeAmount, uint256 marketAmount, uint256 dividendAmount
    );
    event FlapTaxProcessorBurnExecuted(address indexed taxToken, uint256 quoteAmount, uint256 tokensBurned);
    event FlapTaxProcessorBuyBackSkipped(address indexed taxToken, uint256 quoteAmount, uint256 gasLeft, string reason);
    event FlapTaxProcessorPortalRefund(address indexed taxToken, uint256 refundAmount, bool isWeth);
    event FlapTaxProcessorDividendDepositSkipped(address indexed taxToken, uint256 amount, string reason);
    event FlapTaxProcessorTokensBurned(address indexed taxToken, uint256 amount);
    event FlapTaxProcessorBondingCurveTax(address indexed taxToken, uint256 quoteAmount);
    event FlapTaxProcessorProcessTaxTokens(address indexed taxToken, uint256 taxAmount);
    event FlapTaxProcessorMaxBuyBackGasLimitUpdated(uint256 oldLimit, uint256 newLimit);
    event FlapTaxProcessorMinBuyBackQuoteUpdated(uint256 oldAmount, uint256 newAmount);

    // --- Modifiers ---
    modifier onlyTaxToken() {
        require(msg.sender == taxToken, "TaxProcessor: caller is not the tax token");
        _;
    }

    // --- Initialization ---
    function initialize(TaxProcessorInitParams memory params) external initializer {
        require(
            params.router != address(0) && params.feeReceiver != address(0) && params.taxToken != address(0),
            "TaxProcessor: zero required init arg"
        );

        // Validate total distribution percentages sum to 10000 (100%)
        uint256 totalBps = uint256(params.marketBps) + uint256(params.deflationBps) + uint256(params.lpBps)
            + uint256(params.dividendBps);
        require(totalBps == 10000, "TaxProcessor: distribution bps must sum to 10000");

        // Validate fee rate
        require(params.feeRate <= 10000, "TaxProcessor: feeRate must be <= 10000");

        __Ownable_init();

        // Set basic addresses
        router = params.router;
        feeReceiver = params.feeReceiver;
        taxToken = params.taxToken;

        // Determine if quote token is WETH
        bool isWeth = params.quoteToken == weth;

        // Set quote token only if not WETH
        if (!isWeth) {
            require(params.quoteToken != address(0), "TaxProcessor: zero quote token");
            quoteToken = params.quoteToken;
        }

        // Set addresses only if their respective bps > 0 and validate non-zero
        if (params.marketBps > 0) {
            require(params.marketAddress != address(0), "TaxProcessor: zero market address");
            marketAddress = params.marketAddress;
        }

        if (params.dividendBps > 0) {
            require(params.dividendAddress != address(0), "TaxProcessor: zero dividend address");
            dividendAddress = params.dividendAddress;
        }

        // Pack fee configuration into a single storage slot
        feeConfig = PackedFeeConfig({
            marketBps: params.marketBps,
            deflationBps: params.deflationBps,
            lpBps: params.lpBps,
            dividendBps: params.dividendBps,
            feeRate: params.feeRate,
            isWeth: isWeth
        });

        // Calculate and set minBuyBackQuote based on chain and quote token
        minBuyBackQuote = _calculateMinBuyBackQuote(isWeth, params.quoteToken);

        // Set maximum gas limit for buy back operations (default: 500k gas)
        maxBuyBackGasLimit = 500_000;
    }

    // --- External Functions ---

    /// @notice Get the quote token address
    /// @return The quote token address (WETH if isWeth is true, otherwise stored quoteToken)
    function getQuoteToken() external view returns (address) {
        return _getQuoteToken();
    }

    /// @notice Process bonding curve tax in quote tokens
    /// @param quoteAmount The amount of quote tokens to process
    /// @dev Splits quote tokens into fee, market, dividend, lp, and deflation based on configured ratios
    ///      LP portion is added to lpQuoteBalance for later processing
    ///      Deflation portion is added to preBondBurnFunds for buyback and burn
    function processBondingCurveTax(uint256 quoteAmount) external {
        require(quoteAmount > 0, "TaxProcessor: zero amount");

        PackedFeeConfig memory config = feeConfig;

        // Transfer quote token from sender (always as ERC20, even if WETH)
        address quoteTokenAddr = _getQuoteToken();
        IERC20(quoteTokenAddr).safeTransferFrom(msg.sender, address(this), quoteAmount);

        // Calculate distribution
        uint256 fee = (quoteAmount * uint256(config.feeRate)) / 10000;
        uint256 remaining = quoteAmount - fee;

        uint256 market = (remaining * uint256(config.marketBps)) / 10000;
        uint256 deflation = (remaining * uint256(config.deflationBps)) / 10000;
        uint256 lp = (remaining * uint256(config.lpBps)) / 10000;
        uint256 dividend = remaining - market - deflation - lp;

        // Update balances
        feeQuoteBalance += fee;
        marketQuoteBalance += market;
        dividendQuoteBalance += dividend;
        lpQuoteBalance += lp;
        preBondBurnFunds += deflation;

        emit FlapTaxProcessorBondingCurveTax(taxToken, quoteAmount);
    }

    /// @notice Process tax tokens: compute fees, split amounts, burn deflation, swap and distribute
    /// @param taxAmount The total amount of tax tokens to process
    /// @dev Uses TaxProcessor's stored configuration for fee and distribution calculations
    function processTaxTokens(uint256 taxAmount) external onlyTaxToken {
        require(taxAmount > 0, "TaxProcessor: zero amount");

        // Transfer tax tokens from sender first
        IERC20(taxToken).safeTransferFrom(msg.sender, address(this), taxAmount);

        // Get packed config
        PackedFeeConfig memory config = feeConfig;

        // Step 1: Compute fee and remaining using stored configuration
        uint256 fee = (taxAmount * uint256(config.feeRate)) / 10000;
        uint256 remaining = taxAmount - fee;

        // Step 2: Split remaining into components using stored percentages
        uint256 market = (remaining * uint256(config.marketBps)) / 10000;
        uint256 deflation = (remaining * uint256(config.deflationBps)) / 10000;
        uint256 lp = (remaining * uint256(config.lpBps)) / 10000;
        uint256 dividend = remaining - (market + deflation + lp);

        // Step 3: Burn deflation tokens directly
        // Note: preBondBurnFunds is now handled in dispatch() function
        if (deflation > 0) {
            IERC20(taxToken).safeTransfer(flapBlackHole, deflation);
            emit FlapTaxProcessorTokensBurned(taxToken, deflation);
        }

        // Step 4: Process remaining token distribution (swap, add liquidity, record balances)
        _processTokenDistribution(fee, market, lp, dividend);

        // No unwrapping here - keep everything as WETH internally for efficiency

        emit FlapTaxProcessorProcessTaxTokens(taxToken, taxAmount);
    }

    /// @notice Process token distribution: add liquidity first, then swap remaining tokens
    /// @param fee Amount of tax tokens for fee
    /// @param market Amount of tax tokens for market
    /// @param lp Amount of tax tokens for liquidity provision
    /// @param dividend Amount of tax tokens for dividend
    function _processTokenDistribution(uint256 fee, uint256 market, uint256 lp, uint256 dividend) internal {
        uint256 lpTaxToSwap = lp; // Default: all lp tokens need to be swapped

        // Step 1: Add liquidity using lp tax tokens and accumulated lpQuoteBalance
        if (lp > 0 && lpQuoteBalance > 0) {
            (uint256 actualTokenUsed, uint256 actualQuoteUsed) = _addLiquidity(lp, lpQuoteBalance);

            // Calculate remaining tokens after liquidity provision
            lpTaxToSwap = lp >= actualTokenUsed ? lp - actualTokenUsed : 0;
            lpQuoteBalance = lpQuoteBalance >= actualQuoteUsed ? lpQuoteBalance - actualQuoteUsed : 0;
        }

        // Step 2: Swap all remaining tax tokens (lpTaxToSwap + fee + market + dividend)
        uint256 totalToSwap = lpTaxToSwap + fee + market + dividend;

        if (totalToSwap > 0) {
            uint256 quoteReceived = _swapTokensForQuote(totalToSwap);

            if (quoteReceived > 0) {
                // Use totalToSwap as the base for proportional distribution
                // Record balances for fee, market, dividend, lpTaxLeft proportionally
                if (totalToSwap > 0) {
                    if (fee > 0) {
                        uint256 quoteForFee = (quoteReceived * fee) / totalToSwap;
                        feeQuoteBalance = feeQuoteBalance + quoteForFee;
                    }
                    if (market > 0) {
                        uint256 quoteForMarket = (quoteReceived * market) / totalToSwap;
                        marketQuoteBalance = marketQuoteBalance + quoteForMarket;
                    }
                    if (dividend > 0) {
                        uint256 quoteForDividend = (quoteReceived * dividend) / totalToSwap;
                        dividendQuoteBalance = dividendQuoteBalance + quoteForDividend;
                    }
                    if (lpTaxToSwap > 0) {
                        uint256 quoteForLp = (quoteReceived * lpTaxToSwap) / totalToSwap;
                        lpQuoteBalance = lpQuoteBalance + quoteForLp;
                    }
                }
            }
        }
    }

    /// @notice Dispatch accumulated quote tokens to receivers
    function dispatch() external {
        uint256 feeAmount = feeQuoteBalance;
        uint256 marketAmount = marketQuoteBalance;
        uint256 dividendAmount = dividendQuoteBalance;
        uint256 burnAmount = preBondBurnFunds;

        // Clear balances first (checks-effects-interactions pattern)
        if (feeAmount > 0) feeQuoteBalance = 0;
        if (marketAmount > 0) marketQuoteBalance = 0;
        if (dividendAmount > 0) dividendQuoteBalance = 0;
        if (burnAmount > 0) preBondBurnFunds = 0;

        PackedFeeConfig memory config = feeConfig;

        // If quote token is WETH, optimize by unwrapping once and sending ETH directly
        if (config.isWeth) {
            _dispatchETH(feeAmount, marketAmount, dividendAmount);
        } else {
            // Regular ERC20 token dispatch
            _dispatchERC20(feeAmount, marketAmount, dividendAmount);
        }

        // Process burn funds based on token state
        if (burnAmount > 0) {
            // Check if token has migrated to DEX via Portal's getTokenV7
            IPortalTradeV2.TokenStateV7 memory state = IPortal(portal).getTokenV7(taxToken);

            // TokenState: Tradable=BondingCurve, DEX=Graduated
            if (state.status == IPortalTypes.TokenStatus.DEX) {
                // Token is on DEX, liquidate all remaining funds regardless of threshold
                // Use DEX router to swap quote tokens for tax tokens and burn
                uint256 taxTokensReceived = _swapQuoteForTokens(burnAmount);
                if (taxTokensReceived > 0) {
                    IERC20(taxToken).safeTransfer(flapBlackHole, taxTokensReceived);
                    emit FlapTaxProcessorBurnExecuted(taxToken, burnAmount, taxTokensReceived);
                }
            } else {
                // Token still on bonding curve, only process if exceeds threshold
                if (burnAmount >= minBuyBackQuote) {
                    _buyBackAndBurn(burnAmount);
                } else {
                    // Re-add to preBondBurnFunds if below threshold
                    preBondBurnFunds = burnAmount;
                }
            }
        }

        emit FlapTaxProcessorDispatchExecuted(taxToken, feeAmount, marketAmount, dividendAmount);
    }

    /// @notice Dispatch ETH (when quote token is WETH) with optimized unwrapping
    /// @param feeAmount Amount to send to fee receiver
    /// @param marketAmount Amount to send to market receiver
    /// @param dividendAmount Amount to send to dividend contract
    function _dispatchETH(uint256 feeAmount, uint256 marketAmount, uint256 dividendAmount) internal {
        uint256 totalETHNeeded = 0;

        // Calculate total ETH needed for external addresses (fee + market)
        if (feeAmount > 0) totalETHNeeded += feeAmount;
        if (marketAmount > 0 && marketAddress != address(0)) totalETHNeeded += marketAmount;

        // Unwrap all needed ETH at once
        if (totalETHNeeded > 0) {
            IWETH(weth).withdraw(totalETHNeeded);
        }

        uint256 ethUsed = 0;

        // Send fee
        if (feeAmount > 0) {
            (bool success,) = payable(feeReceiver).call{value: feeAmount}("");
            if (success) {
                ethUsed += feeAmount;
            }
        }

        // Send market
        if (marketAmount > 0 && marketAddress != address(0)) {
            (bool success,) = payable(marketAddress).call{value: marketAmount}("");
            if (success) {
                ethUsed += marketAmount;
                totalQuoteSentToMarketing += marketAmount;
            }
        }

        // If any ETH sends failed, wrap the remaining ETH back to WETH and add to fee balance
        uint256 remainingETH = totalETHNeeded - ethUsed;
        if (remainingETH > 0) {
            IWETH(weth).deposit{value: remainingETH}();
            feeQuoteBalance += remainingETH; // Add failed amounts to fee balance
        }

        // Send dividend to Dividend contract (keep as WETH)
        if (dividendAmount > 0 && dividendAddress != address(0)) {
            _sendToDividendContract(dividendAmount);
        }
    }

    /// @notice Dispatch ERC20 tokens (when quote token is not WETH)
    /// @param feeAmount Amount to send to fee receiver
    /// @param marketAmount Amount to send to market receiver
    /// @param dividendAmount Amount to send to dividend contract
    function _dispatchERC20(uint256 feeAmount, uint256 marketAmount, uint256 dividendAmount) internal {
        address quote = _getQuoteToken();

        // Send fee
        if (feeAmount > 0) {
            IERC20(quote).safeTransfer(feeReceiver, feeAmount);
        }

        // Send market
        if (marketAmount > 0 && marketAddress != address(0)) {
            totalQuoteSentToMarketing += marketAmount;
            IERC20(quote).safeTransfer(marketAddress, marketAmount);
        }

        // Send dividend to Dividend contract
        if (dividendAmount > 0 && dividendAddress != address(0)) {
            _sendToDividendContract(dividendAmount);
        }
    }

    /// @notice Owner can update receivers
    function setReceivers(address feeReceiver_, address marketAddress_, address dividendAddress_) external onlyOwner {
        require(feeReceiver_ != address(0), "TaxProcessor: zero fee receiver");
        feeReceiver = feeReceiver_;

        // Only set market and dividend addresses if they will be used (bps > 0)
        PackedFeeConfig memory config = feeConfig;

        if (config.marketBps > 0) {
            require(marketAddress_ != address(0), "TaxProcessor: zero market address");
            marketAddress = marketAddress_;
        }

        if (config.dividendBps > 0) {
            require(dividendAddress_ != address(0), "TaxProcessor: zero dividend address");
            dividendAddress = dividendAddress_;
        }
    }

    /// @notice Owner can update tax configuration
    function setTaxConfig(uint16 feeRate_, uint16 marketBps_, uint16 deflationBps_, uint16 lpBps_, uint16 dividendBps_)
        external
        onlyOwner
    {
        // Validate fee rate and percentages
        require(feeRate_ <= 10000, "TaxProcessor: feeRate must be <= 10000");
        uint256 totalBps = uint256(marketBps_) + uint256(deflationBps_) + uint256(lpBps_) + uint256(dividendBps_);
        require(totalBps == 10000, "TaxProcessor: distribution bps must sum to 10000");

        // Validate that addresses are set for non-zero BPS allocations
        if (marketBps_ > 0) {
            require(marketAddress != address(0), "TaxProcessor: market address not set");
        }
        if (dividendBps_ > 0) {
            require(dividendAddress != address(0), "TaxProcessor: dividend address not set");
        }

        // Update packed config
        PackedFeeConfig memory config = feeConfig;
        config.feeRate = feeRate_;
        config.marketBps = marketBps_;
        config.deflationBps = deflationBps_;
        config.lpBps = lpBps_;
        config.dividendBps = dividendBps_;
        feeConfig = config;
    }

    /// @notice Owner can update maximum buy back gas limit
    /// @param newLimit The new maximum gas limit for buy back operations
    function setMaxBuyBackGasLimit(uint256 newLimit) external onlyOwner {
        require(newLimit > 0, "TaxProcessor: zero maxBuyBackGasLimit");
        uint256 oldLimit = maxBuyBackGasLimit;
        maxBuyBackGasLimit = newLimit;
        emit FlapTaxProcessorMaxBuyBackGasLimitUpdated(oldLimit, newLimit);
    }

    /// @notice Owner can update minimum buy back quote amount
    /// @param newAmount The new minimum buy back quote amount
    function setMinBuyBackQuote(uint256 newAmount) external onlyOwner {
        require(newAmount > 0, "TaxProcessor: zero minBuyBackQuote");
        uint256 oldAmount = minBuyBackQuote;
        minBuyBackQuote = newAmount;
        emit FlapTaxProcessorMinBuyBackQuoteUpdated(oldAmount, newAmount);
    }

    // --- Internal Functions ---

    /// @notice Calculate minimum buy back quote amount based on chain and quote token
    /// @param isWeth Whether the quote token is WETH
    /// @param quoteTokenAddr The quote token address
    /// @return The minimum buy back quote amount
    function _calculateMinBuyBackQuote(bool isWeth, address quoteTokenAddr) internal view returns (uint256) {
        uint256 chainId = block.chainid;

        uint256 decimals = IERC20Metadata(quoteTokenAddr).decimals();

        // BNB chain (BSC mainnet or testnet)
        if (chainId == 56 || chainId == 97) {
            if (isWeth) {
                return 0.05 ether;
            } else if (quoteTokenAddr == 0x000Ae314E2A2172a039B26378814C252734f556A) {
                return 100 ether;
            } else if (quoteTokenAddr == 0x924fa68a0FC644485b8df8AbfA0A41C2e7744444) {
                return 300 ether;
            } else {
                // treat all other tokens a USD*
                return 50 * (10 ** decimals);
            }
        }
        // xlayer
        else if (chainId == 196) {
            if (isWeth) {
                // OKB
                return 0.3 ether;
            } else {
                // USD* $50
                return 50 * (10 ** decimals);
            }
        } else {
            return 0.1 ether;
        }
    }

    /// @notice Internal function to get the quote token address
    /// @return The quote token address (WETH if isWeth is true, otherwise stored quoteToken)
    function _getQuoteToken() internal view returns (address) {
        return feeConfig.isWeth ? weth : quoteToken;
    }

    /// @notice Swap tax tokens for quote tokens
    /// @param amount Amount of tax tokens to swap
    /// @return quoteReceived Amount of quote tokens received
    function _swapTokensForQuote(uint256 amount) internal returns (uint256 quoteReceived) {
        // Approve router
        IERC20(taxToken).safeApprove(router, 0);
        IERC20(taxToken).safeApprove(router, amount);

        address quoteTokenAddr = _getQuoteToken();
        address[] memory path = new address[](2);
        path[0] = taxToken;
        path[1] = quoteTokenAddr;

        uint256 quoteBefore = IERC20(quoteTokenAddr).balanceOf(address(this));

        IUniswapRouter02(router).swapExactTokensForTokensSupportingFeeOnTransferTokens(
            amount,
            0, // Accept any amount
            path,
            address(this),
            block.timestamp
        );
        quoteReceived = IERC20(quoteTokenAddr).balanceOf(address(this)) - quoteBefore;

        return quoteReceived;
    }

    /// @notice Swap quote tokens for tax tokens (reverse swap)
    /// @param quoteAmount Amount of quote tokens to swap
    /// @return taxTokensReceived Amount of tax tokens received
    function _swapQuoteForTokens(uint256 quoteAmount) internal returns (uint256 taxTokensReceived) {
        address quoteTokenAddr = _getQuoteToken();

        // Approve router
        IERC20(quoteTokenAddr).safeApprove(router, 0);
        IERC20(quoteTokenAddr).safeApprove(router, quoteAmount);

        address[] memory path = new address[](2);
        path[0] = quoteTokenAddr;
        path[1] = taxToken;

        uint256 taxTokenBefore = IERC20(taxToken).balanceOf(address(this));

        IUniswapRouter02(router).swapExactTokensForTokensSupportingFeeOnTransferTokens(
            quoteAmount,
            0, // Accept any amount
            path,
            address(this),
            block.timestamp
        );
        taxTokensReceived = IERC20(taxToken).balanceOf(address(this)) - taxTokenBefore;

        return taxTokensReceived;
    }

    /// @notice Add liquidity to DEX
    /// @param tokenAmount Amount of tax tokens
    /// @param quoteAmount Amount of quote tokens
    /// @return actualTokenUsed Amount of tax tokens actually used
    /// @return actualQuoteUsed Amount of quote tokens actually used
    function _addLiquidity(uint256 tokenAmount, uint256 quoteAmount)
        internal
        returns (uint256 actualTokenUsed, uint256 actualQuoteUsed)
    {
        address quoteTokenAddr = _getQuoteToken();

        // Approve router
        IERC20(taxToken).safeApprove(router, 0);
        IERC20(taxToken).safeApprove(router, tokenAmount);
        IERC20(quoteTokenAddr).safeApprove(router, 0);
        IERC20(quoteTokenAddr).safeApprove(router, quoteAmount);

        // Add liquidity and receive LP tokens to this contract
        (uint256 amountA, uint256 amountB,) = IUniswapRouter02(router).addLiquidity(
            taxToken, quoteTokenAddr, tokenAmount, quoteAmount, 0, 0, address(DEAD_ADDRESS), block.timestamp
        );

        // Determine which amount corresponds to tax token and quote token
        // Router returns amounts in the same order as input tokens
        actualTokenUsed = amountA;
        actualQuoteUsed = amountB;

        // Update totals
        totalTokenAddedToLiquidity += actualTokenUsed;
        totalQuoteAddedToLiquidity += actualQuoteUsed;
    }

    /// @notice Send quote tokens to Dividend contract
    /// @param amount The amount to send
    function _sendToDividendContract(uint256 amount) internal {
        address quoteTokenAddr = _getQuoteToken();

        // Approve Dividend contract
        IERC20(quoteTokenAddr).safeApprove(dividendAddress, 0);
        IERC20(quoteTokenAddr).safeApprove(dividendAddress, amount);

        // Call deposit on Dividend contract and check return value
        bool success = IDividend(dividendAddress).deposit(amount);
        if (!success) {
            // No shareholders or deposit failed, add back to dividendQuoteBalance
            dividendQuoteBalance += amount;
            emit FlapTaxProcessorDividendDepositSkipped(taxToken, amount, "No shareholders or deposit failed");
        } else {
            totalQuoteSentToDividend += amount;
        }
    }

    /// @notice Buy back tax tokens using quote tokens and burn them
    /// @param quoteAmount The amount of quote tokens to use for buyback
    function _buyBackAndBurn(uint256 quoteAmount) internal {
        uint256 tokensBought;

        // Distinguish between WETH and ERC20 tokens (Portal doesn't accept WETH as ERC20)
        if (feeConfig.isWeth) {
            // Quote token is WETH - need to unwrap to native token for Portal swap
            IWETH(weth).withdraw(quoteAmount);

            // Record ETH balance before swap
            uint256 ethBefore = address(this).balance;

            // Swap native token for tax tokens using Portal with gas limit
            IPortalTradeV2.ExactInputParams memory params = IPortalTradeV2.ExactInputParams({
                inputToken: address(0), // Native token (BNB/ETH)
                outputToken: taxToken,
                inputAmount: quoteAmount,
                minOutputAmount: 0, // No slippage protection
                permitData: ""
            });

            try IPortal(portal).swapExactInput{value: quoteAmount, gas: maxBuyBackGasLimit}(params) returns (
                uint256 received
            ) {
                tokensBought = received;

                // Check for ETH refund from Portal
                uint256 ethAfter = address(this).balance;
                if (ethAfter > ethBefore - quoteAmount) {
                    // Portal refunded some ETH, wrap it back to WETH and add to preBondBurnFunds
                    uint256 ethRefund = ethAfter - (ethBefore - quoteAmount);
                    IWETH(weth).deposit{value: ethRefund}();
                    preBondBurnFunds += ethRefund;
                    emit FlapTaxProcessorPortalRefund(taxToken, ethRefund, true);
                }
            } catch {
                // Swap failed due to gas limit or other reasons, wrap ETH back and re-add to preBondBurnFunds
                IWETH(weth).deposit{value: quoteAmount}();
                preBondBurnFunds += quoteAmount;
                emit FlapTaxProcessorBuyBackSkipped(
                    taxToken, quoteAmount, gasleft(), "Swap failed or gas limit exceeded"
                );
                return;
            }
        } else {
            // Quote token is ERC20
            address quoteTokenAddr = _getQuoteToken();

            // Record quote token balance before swap
            uint256 quoteBefore = IERC20(quoteTokenAddr).balanceOf(address(this));

            // Approve Portal to spend quote tokens
            IERC20(quoteTokenAddr).safeApprove(portal, 0);
            IERC20(quoteTokenAddr).safeApprove(portal, quoteAmount);

            // Swap ERC20 quote tokens for tax tokens using Portal with gas limit
            IPortalTradeV2.ExactInputParams memory params = IPortalTradeV2.ExactInputParams({
                inputToken: quoteTokenAddr,
                outputToken: taxToken,
                inputAmount: quoteAmount,
                minOutputAmount: 0, // No slippage protection
                permitData: ""
            });

            try IPortal(portal).swapExactInput{gas: maxBuyBackGasLimit}(params) returns (uint256 received) {
                tokensBought = received;

                // Check for quote token refund from Portal
                uint256 quoteAfter = IERC20(quoteTokenAddr).balanceOf(address(this));
                if (quoteAfter > quoteBefore - quoteAmount) {
                    // Portal refunded some quote tokens, add back to preBondBurnFunds
                    uint256 quoteRefund = quoteAfter - (quoteBefore - quoteAmount);
                    preBondBurnFunds += quoteRefund;
                    emit FlapTaxProcessorPortalRefund(taxToken, quoteRefund, false);
                }
            } catch {
                // Swap failed due to gas limit or other reasons, re-add to preBondBurnFunds
                preBondBurnFunds += quoteAmount;
                emit FlapTaxProcessorBuyBackSkipped(
                    taxToken, quoteAmount, gasleft(), "Swap failed or gas limit exceeded"
                );
                return;
            }
        }

        // Burn the bought tokens by sending to FlapBlackHole
        if (tokensBought > 0) {
            IERC20(taxToken).safeTransfer(flapBlackHole, tokensBought);
            emit FlapTaxProcessorBurnExecuted(taxToken, quoteAmount, tokensBought);
        }
    }

    // --- Emergency Functions ---

    /// @notice Withdraw all remaining tokens to a specified address
    /// @param token Token address to withdraw (use address(0) for quote token or native ETH)
    /// @param to Recipient address
    function withdrawAll(address token, address to) external onlyOwner {
        require(to != address(0), "TaxProcessor: zero address");

        if (token == address(0)) {
            // Default to withdraw quote token or native ETH
            PackedFeeConfig memory config = feeConfig;
            if (config.isWeth) {
                // If quote token is WETH, withdraw native ETH
                uint256 balance = address(this).balance;
                if (balance > 0) {
                    (bool success,) = payable(to).call{value: balance}("");
                    require(success, "TaxProcessor: ETH transfer failed");
                }
            } else {
                // Withdraw quote token
                address quoteTokenAddr = _getQuoteToken();
                uint256 balance = IERC20(quoteTokenAddr).balanceOf(address(this));
                if (balance > 0) {
                    IERC20(quoteTokenAddr).safeTransfer(to, balance);
                }
            }
        } else {
            // Withdraw specific ERC20 token
            uint256 balance = IERC20(token).balanceOf(address(this));
            if (balance > 0) {
                IERC20(token).safeTransfer(to, balance);
            }
        }
    }

    // --- Fallback ---
    /// @notice Allow contract to receive native ETH
    receive() external payable {}
}
