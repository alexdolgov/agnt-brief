// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import { ICurveStableSwapNG } from "../interfaces/ICurveStableSwapNG.sol";
import { IUniversalRouter } from "../interfaces/IUniversalRouter.sol";
import { IPermit2 } from "../interfaces/IPermit2.sol";
import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import { Currency, CurrencyLibrary } from "../interfaces/PoolKey.sol";
import { PoolKey, IHooks, IPoolManager } from "../interfaces/IInfinityRouter.sol";
import { MevConstants } from "./MevConstants.sol";

/// @notice Interface for CLPoolManager to read PoolKey from chain
interface ICLPoolManager {
    function poolIdToPoolKey(bytes32 poolId) external view returns (
        Currency currency0,
        Currency currency1,
        IHooks hooks,
        IPoolManager poolManager,
        uint24 fee,
        bytes32 parameters
    );
}

/// @notice Interface for WBNB
interface IWBNB {
    function deposit() external payable;
    function withdraw(uint256) external;
}

/// @title MevSwapLib
/// @notice Library containing swap functions for MEV arbitrage
library MevSwapLib {
    using SafeERC20 for IERC20;

    // ============ Curve Swap Functions ============

    /// @notice Swap bnbUSD to Sigma via Curve pool
    /// @param amount The amount of bnbUSD to swap
    /// @return sigmaAmount The amount of Sigma received
    function swapCurveBnbusdToSigma(uint256 amount) internal returns (uint256 sigmaAmount) {
        sigmaAmount = ICurveStableSwapNG(MevConstants.SIGMA_BNBUSD_POOL).exchange(
            uint256(0), uint256(1), amount, 0, address(this)
        );
    }

    /// @notice Swap Sigma to bnbUSD via Curve pool
    /// @param amount The amount of Sigma to swap
    /// @return bnbusdAmount The amount of bnbUSD received
    function swapCurveSigmaToBnbusd(uint256 amount) internal returns (uint256 bnbusdAmount) {
        bnbusdAmount = ICurveStableSwapNG(MevConstants.SIGMA_BNBUSD_POOL).exchange(
            uint256(1), uint256(0), amount, 0, address(this)
        );
    }

    /// @notice Swap USDT to bnbUSD via Curve pool
    /// @param amount The amount of USDT to swap
    /// @return bnbusdAmount The amount of bnbUSD received
    function swapCurveUsdtToBnbusd(uint256 amount) internal returns (uint256 bnbusdAmount) {
        bnbusdAmount = ICurveStableSwapNG(MevConstants.USDT_BNBUSD_POOL).exchange(
            int128(0), int128(1), amount, 0, address(this)
        );
    }

    /// @notice Swap bnbUSD to USDT via Curve pool (for reverse arbitrage)
    /// @param amount The amount of bnbUSD to swap
    /// @return usdtAmount The amount of USDT received
    function swapCurveBnbusdToUsdt(uint256 amount) internal returns (uint256 usdtAmount) {
        usdtAmount = ICurveStableSwapNG(MevConstants.USDT_BNBUSD_POOL).exchange(
            int128(1), int128(0), amount, 0, address(this)
        );
    }


    // ============ Infinity CL Swap Functions ============

    /// @notice Get PoolKey from chain by poolId
    /// @param poolId The pool ID
    /// @return poolKey The PoolKey struct
    function getPoolKey(bytes32 poolId) internal view returns (PoolKey memory poolKey) {
        (
            Currency currency0,
            Currency currency1,
            IHooks hooks,
            IPoolManager poolManager,
            uint24 fee,
            bytes32 parameters
        ) = ICLPoolManager(MevConstants.INFINITY_CL_POOL_MANAGER).poolIdToPoolKey(poolId);
        
        poolKey = PoolKey({
            currency0: currency0,
            currency1: currency1,
            hooks: hooks,
            poolManager: poolManager,
            fee: fee,
            parameters: parameters
        });
    }

    /// @notice Build the Infinity swap payload for CL_SWAP_EXACT_IN_SINGLE
    /// @param poolKey The pool key (from chain)
    /// @param zeroForOne Direction of swap
    /// @param amountIn Amount to swap
    /// @param amountOutMinimum Minimum output amount
    /// @return payload The encoded payload for INFI_SWAP command
    function buildInfinitySwapPayload(
        PoolKey memory poolKey,
        bool zeroForOne,
        uint128 amountIn,
        uint128 amountOutMinimum
    ) internal pure returns (bytes memory payload) {
        // Determine input/output token addresses
        address inputToken = zeroForOne 
            ? Currency.unwrap(poolKey.currency0) 
            : Currency.unwrap(poolKey.currency1);
        address outputToken = zeroForOne 
            ? Currency.unwrap(poolKey.currency1) 
            : Currency.unwrap(poolKey.currency0);
        
        // 1. Build CL_SWAP_EXACT_IN_SINGLE params
        bytes memory swapParams = abi.encode(
            poolKey,
            zeroForOne,
            amountIn,
            amountOutMinimum,
            bytes("")  // hookData - empty bytes
        );
        
        // 2. Build SETTLE_ALL params: (address, uint256)
        bytes memory settleAllParams = abi.encode(
            inputToken,
            uint256(amountIn)
        );
        
        // 3. Build TAKE_ALL params: (address, uint256)
        bytes memory takeAllParams = abi.encode(
            outputToken,
            uint256(amountOutMinimum)
        );
        
        // 4. Build actions as raw bytes (3 bytes)
        bytes memory actions = new bytes(3);
        actions[0] = 0x06;  // CL_SWAP_EXACT_IN_SINGLE
        actions[1] = 0x0c;  // SETTLE_ALL
        actions[2] = 0x0f;  // TAKE_ALL
        
        // 5. Build params array
        bytes[] memory params = new bytes[](3);
        params[0] = swapParams;
        params[1] = settleAllParams;
        params[2] = takeAllParams;
        
        // 6. Final payload
        payload = abi.encode(actions, params);
    }

    /// @notice Swap Sigma to native BNB via Infinity CL pool
    /// @param sigmaAmount The amount of Sigma to swap
    /// @return bnbAmount The amount of native BNB received
    function swapSigmaToBnb(uint256 sigmaAmount) internal returns (uint256 bnbAmount) {
        // Record native BNB balance before swap
        uint256 bnbBefore = address(this).balance;
        
        // Get PoolKey from chain
        PoolKey memory poolKey = getPoolKey(MevConstants.SIGMA_WBNB_POOL_ID);
        
        // Determine swap direction: sigma -> native BNB
        // currency0 = address(0) = native BNB, currency1 = sigma
        // We're selling sigma (currency1) to get BNB (currency0)
        // So zeroForOne = false (we go from 1 to 0)
        bool zeroForOne = (Currency.unwrap(poolKey.currency0) == MevConstants.SIGMA);
        
        // Build the Infinity swap payload
        bytes memory infinityPayload = buildInfinitySwapPayload(
            poolKey,
            zeroForOne,
            uint128(sigmaAmount),
            0
        );
        
        // Build command - INFI_SWAP
        bytes memory commands = abi.encodePacked(uint8(MevConstants.INFI_SWAP));
        
        // Build inputs
        bytes[] memory inputs = new bytes[](1);
        inputs[0] = infinityPayload;
        
        // Execute the swap
        IUniversalRouter(MevConstants.PANCAKE_UNIVERSAL_ROUTER).execute(
            commands,
            inputs,
            block.timestamp
        );
        
        // Calculate native BNB received
        bnbAmount = address(this).balance - bnbBefore;
    }

    /// @notice Swap native BNB to Sigma via Infinity CL pool (for reverse arbitrage)
    /// @param bnbAmount The amount of native BNB to swap
    /// @return sigmaAmount The amount of Sigma received
    function swapBnbToSigma(uint256 bnbAmount) internal returns (uint256 sigmaAmount) {
        // Record Sigma balance before swap
        uint256 sigmaBefore = IERC20(MevConstants.SIGMA).balanceOf(address(this));
        
        // Get PoolKey from chain
        PoolKey memory poolKey = getPoolKey(MevConstants.SIGMA_WBNB_POOL_ID);
        
        // Determine swap direction: native BNB -> sigma
        // currency0 = address(0) = native BNB, currency1 = sigma
        // We're selling BNB (currency0) to get sigma (currency1)
        // So zeroForOne = true (we go from 0 to 1)
        bool zeroForOne = (Currency.unwrap(poolKey.currency0) != MevConstants.SIGMA);
        
        // Build the Infinity swap payload
        bytes memory infinityPayload = buildInfinitySwapPayload(
            poolKey,
            zeroForOne,
            uint128(bnbAmount),
            0
        );
        
        // Build command - INFI_SWAP
        bytes memory commands = abi.encodePacked(uint8(MevConstants.INFI_SWAP));
        
        // Build inputs
        bytes[] memory inputs = new bytes[](1);
        inputs[0] = infinityPayload;
        
        // Execute the swap with native BNB value
        IUniversalRouter(MevConstants.PANCAKE_UNIVERSAL_ROUTER).execute{value: bnbAmount}(
            commands,
            inputs,
            block.timestamp
        );
        
        // Calculate Sigma received
        sigmaAmount = IERC20(MevConstants.SIGMA).balanceOf(address(this)) - sigmaBefore;
    }


    // ============ PancakeSwap V3 Swap Functions ============

    /// @notice Swap WBNB to USDT via PancakeSwap V3
    /// @param wbnbAmount The amount of WBNB to swap
    /// @return usdtAmount The amount of USDT received
    function swapV3WbnbToUsdt(uint256 wbnbAmount) internal returns (uint256 usdtAmount) {
        // Record USDT balance before swap
        uint256 usdtBefore = IERC20(MevConstants.USDT).balanceOf(address(this));
        
        // Build the V3 swap path: WBNB -> USDT
        bytes memory path = abi.encodePacked(
            MevConstants.WBNB,
            MevConstants.V3_FEE,
            MevConstants.USDT
        );
        
        // Build command - V3_SWAP_EXACT_IN
        bytes memory commands = abi.encodePacked(uint8(MevConstants.V3_SWAP_EXACT_IN));
        
        // Build inputs for V3_SWAP_EXACT_IN
        bytes[] memory inputs = new bytes[](1);
        inputs[0] = abi.encode(
            address(this),  // recipient
            wbnbAmount,     // amountIn
            0,              // amountOutMin
            path,           // path
            true            // payerIsUser = true, via Permit2
        );
        
        // Execute the swap
        IUniversalRouter(MevConstants.PANCAKE_UNIVERSAL_ROUTER).execute(
            commands,
            inputs,
            block.timestamp
        );
        
        // Calculate USDT received
        usdtAmount = IERC20(MevConstants.USDT).balanceOf(address(this)) - usdtBefore;
    }

    /// @notice Swap USDT to WBNB via PancakeSwap V3 (for reverse arbitrage)
    /// @param usdtAmount The amount of USDT to swap
    /// @return wbnbAmount The amount of WBNB received
    function swapV3UsdtToWbnb(uint256 usdtAmount) internal returns (uint256 wbnbAmount) {
        // Record WBNB balance before swap
        uint256 wbnbBefore = IERC20(MevConstants.WBNB).balanceOf(address(this));
        
        // Build the V3 swap path: USDT -> WBNB
        bytes memory path = abi.encodePacked(
            MevConstants.USDT,
            MevConstants.V3_FEE,
            MevConstants.WBNB
        );
        
        // Build command - V3_SWAP_EXACT_IN
        bytes memory commands = abi.encodePacked(uint8(MevConstants.V3_SWAP_EXACT_IN));
        
        // Build inputs for V3_SWAP_EXACT_IN
        bytes[] memory inputs = new bytes[](1);
        inputs[0] = abi.encode(
            address(this),  // recipient
            usdtAmount,     // amountIn
            0,              // amountOutMin
            path,           // path
            true            // payerIsUser = true, via Permit2
        );
        
        // Execute the swap
        IUniversalRouter(MevConstants.PANCAKE_UNIVERSAL_ROUTER).execute(
            commands,
            inputs,
            block.timestamp
        );
        
        // Calculate WBNB received
        wbnbAmount = IERC20(MevConstants.WBNB).balanceOf(address(this)) - wbnbBefore;
    }

    // ============ WBNB Wrap/Unwrap Functions ============

    /// @notice Wrap native BNB to WBNB
    /// @param bnbAmount The amount of native BNB to wrap
    function wrapBnb(uint256 bnbAmount) internal {
        IWBNB(MevConstants.WBNB).deposit{value: bnbAmount}();
    }

    /// @notice Unwrap WBNB to native BNB (for reverse arbitrage)
    /// @param wbnbAmount The amount of WBNB to unwrap
    function unwrapWbnb(uint256 wbnbAmount) internal {
        IWBNB(MevConstants.WBNB).withdraw(wbnbAmount);
    }
}
