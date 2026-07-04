// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import { ICurveStableSwapNG } from "./interfaces/ICurveStableSwapNG.sol";
import { IUniversalRouter } from "./interfaces/IUniversalRouter.sol";
import { IPermit2 } from "./interfaces/IPermit2.sol";
import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import { Currency, CurrencyLibrary } from "./interfaces/PoolKey.sol";
import { PoolKey, IHooks, IPoolManager } from "./interfaces/IInfinityRouter.sol";
import { MevConstants } from "./libraries/MevConstants.sol";
import { MevSwapLib } from "./libraries/MevSwapLib.sol";

/// @title SigmaMev
/// @notice MEV arbitrage contract for Sigma token swaps
/// @dev Supports both forward and reverse arbitrage paths
contract SigmaMevV2 {
    using SafeERC20 for IERC20;

    // ============ Errors ============
    error InsufficientOutput(uint256 actual, uint256 minimum);

    // ============ State Variables ============
    address private operator = 0x600Eb072368d7614AB349b137dad7B4d20a3fBFB;

    // ============ Constructor ============
    constructor() {
        _approveTokens();
    }

    // ============ Modifiers ============
    modifier onlyOperator() {
        require(msg.sender == operator, "only operator");
        _;
    }

    // ============ External Functions ============
    
    /// @notice Execute forward arbitrage: bnbUSD -> Sigma -> BNB -> WBNB -> USDT -> bnbUSD
    /// @param bnbusdAmount The amount of bnbUSD to start with
    /// @param minOutput The minimum amount of bnbUSD to receive back
    function execute(uint256 bnbusdAmount, uint256 minOutput) external onlyOperator {
        require(bnbusdAmount > 0, "bnbusdAmount must be greater than 0");
        require(minOutput >= bnbusdAmount, "minOutput must be greater than 0");
        
        // Step 1: Transfer bnbUSD from caller to this contract
        IERC20(MevConstants.BNBUSD).safeTransferFrom(msg.sender, address(this), bnbusdAmount);
        
        // Step 2: Swap bnbUSD -> Sigma via Curve
        uint256 sigmaAmount = MevSwapLib.swapCurveBnbusdToSigma(bnbusdAmount);
        
        // Step 3: Swap Sigma -> native BNB via Infinity CL pool
        uint256 bnbAmount = MevSwapLib.swapSigmaToBnb(sigmaAmount);
        
        // Step 4: Wrap native BNB to WBNB
        MevSwapLib.wrapBnb(bnbAmount);
        
        // Step 5: Swap WBNB -> USDT via PancakeSwap V3
        uint256 usdtAmount = MevSwapLib.swapV3WbnbToUsdt(bnbAmount);
        
        // Step 6: Swap USDT -> bnbUSD via Curve
        uint256 bnbusdOut = MevSwapLib.swapCurveUsdtToBnbusd(usdtAmount);
        
        // Step 7: Check slippage protection
        if (bnbusdOut < minOutput) {
            revert InsufficientOutput(bnbusdOut, minOutput);
        }
        
        // Step 8: Transfer bnbUSD back to caller
        IERC20(MevConstants.BNBUSD).safeTransfer(msg.sender, bnbusdOut);
    }

    /// @notice Execute reverse arbitrage: bnbUSD -> USDT -> WBNB -> BNB -> Sigma -> bnbUSD
    /// @param bnbusdAmount The amount of bnbUSD to start with
    /// @param minOutput The minimum amount of bnbUSD to receive back
    function executeReverse(uint256 bnbusdAmount, uint256 minOutput) external onlyOperator {
        require(bnbusdAmount > 0, "bnbusdAmount must be greater than 0");
        require(minOutput >= bnbusdAmount, "minOutput must be greater than 0");
        
        // Step 1: Transfer bnbUSD from caller to this contract
        IERC20(MevConstants.BNBUSD).safeTransferFrom(msg.sender, address(this), bnbusdAmount);
        
        // Step 2: Swap bnbUSD -> USDT via Curve
        uint256 usdtAmount = MevSwapLib.swapCurveBnbusdToUsdt(bnbusdAmount);
        
        // Step 3: Swap USDT -> WBNB via PancakeSwap V3
        uint256 wbnbAmount = MevSwapLib.swapV3UsdtToWbnb(usdtAmount);
        
        // Step 4: Unwrap WBNB to native BNB
        MevSwapLib.unwrapWbnb(wbnbAmount);
        
        // Step 5: Swap native BNB -> Sigma via Infinity CL pool
        uint256 sigmaAmount = MevSwapLib.swapBnbToSigma(wbnbAmount);
        
        // Step 6: Swap Sigma -> bnbUSD via Curve
        uint256 bnbusdOut = MevSwapLib.swapCurveSigmaToBnbusd(sigmaAmount);
        
        // Step 7: Check slippage protection
        if (bnbusdOut < minOutput) {
            revert InsufficientOutput(bnbusdOut, minOutput);
        }
        
        // Step 8: Transfer bnbUSD back to caller
        IERC20(MevConstants.BNBUSD).safeTransfer(msg.sender, bnbusdOut);
    }


    // ============ Debug Functions ============

    /// @notice Debug function to get the infinity swap payload for forward swap (Sigma -> BNB)
    function debugGetInfinityPayload(uint256 sigmaAmount) external view returns (
        bytes memory payload,
        PoolKey memory poolKey,
        bool zeroForOne,
        address currency0,
        address currency1
    ) {
        poolKey = MevSwapLib.getPoolKey(MevConstants.SIGMA_WBNB_POOL_ID);
        currency0 = Currency.unwrap(poolKey.currency0);
        currency1 = Currency.unwrap(poolKey.currency1);
        // sigma is currency1, BNB (address(0)) is currency0
        // We want sigma -> BNB, so zeroForOne = false (1 -> 0)
        zeroForOne = (currency0 == MevConstants.SIGMA);
        payload = MevSwapLib.buildInfinitySwapPayload(
            poolKey,
            zeroForOne,
            uint128(sigmaAmount),
            0
        );
    }

    /// @notice Debug function to get the infinity swap payload for reverse swap (BNB -> Sigma)
    function debugGetReverseInfinityPayload(uint256 bnbAmount) external view returns (
        bytes memory payload,
        PoolKey memory poolKey,
        bool zeroForOne,
        address currency0,
        address currency1
    ) {
        poolKey = MevSwapLib.getPoolKey(MevConstants.SIGMA_WBNB_POOL_ID);
        currency0 = Currency.unwrap(poolKey.currency0);
        currency1 = Currency.unwrap(poolKey.currency1);
        // BNB (address(0)) is currency0, sigma is currency1
        // We want BNB -> sigma, so zeroForOne = true (0 -> 1)
        zeroForOne = (currency0 != MevConstants.SIGMA);
        payload = MevSwapLib.buildInfinitySwapPayload(
            poolKey,
            zeroForOne,
            uint128(bnbAmount),
            0
        );
    }

    // ============ Internal Functions ============

    /// @notice Approve tokens for external contracts
    function _approveTokens() internal {
        // Approve bnbUSD for Curve Sigma/bnbUSD pool
        IERC20(MevConstants.BNBUSD).forceApprove(MevConstants.SIGMA_BNBUSD_POOL, type(uint256).max);
        // Approve bnbUSD for Curve USDT/bnbUSD pool (for reverse arbitrage)
        IERC20(MevConstants.BNBUSD).forceApprove(MevConstants.USDT_BNBUSD_POOL, type(uint256).max);
        
        // Approve Sigma for Permit2 first (ERC20 approval)
        IERC20(MevConstants.SIGMA).forceApprove(MevConstants.PERMIT2, type(uint256).max);
        // Then authorize Universal Router via Permit2 for Sigma
        IPermit2(MevConstants.PERMIT2).approve(MevConstants.SIGMA, MevConstants.PANCAKE_UNIVERSAL_ROUTER, type(uint160).max, type(uint48).max);
        // Approve Sigma for Curve pool (for reverse arbitrage)
        IERC20(MevConstants.SIGMA).forceApprove(MevConstants.SIGMA_BNBUSD_POOL, type(uint256).max);
        
        // Approve WBNB for Permit2 (needed for WBNB -> USDT swap)
        IERC20(MevConstants.WBNB).forceApprove(MevConstants.PERMIT2, type(uint256).max);
        // Then authorize Universal Router via Permit2 for WBNB
        IPermit2(MevConstants.PERMIT2).approve(MevConstants.WBNB, MevConstants.PANCAKE_UNIVERSAL_ROUTER, type(uint160).max, type(uint48).max);
        
        // Approve USDT for Curve USDT/bnbUSD pool
        IERC20(MevConstants.USDT).forceApprove(MevConstants.USDT_BNBUSD_POOL, type(uint256).max);
        // Approve USDT for Permit2 (for reverse arbitrage: USDT -> WBNB)
        IERC20(MevConstants.USDT).forceApprove(MevConstants.PERMIT2, type(uint256).max);
        // Then authorize Universal Router via Permit2 for USDT
        IPermit2(MevConstants.PERMIT2).approve(MevConstants.USDT, MevConstants.PANCAKE_UNIVERSAL_ROUTER, type(uint160).max, type(uint48).max);
    }

    /// @notice Allow contract to receive native BNB
    receive() external payable {}
}
