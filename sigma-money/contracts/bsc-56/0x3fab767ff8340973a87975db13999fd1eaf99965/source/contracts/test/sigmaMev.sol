// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import { ICurveStableSwapNG } from "./interfaces/ICurveStableSwapNG.sol";
import { IUniversalRouter } from "./interfaces/IUniversalRouter.sol";
import { IPermit2 } from "./interfaces/IPermit2.sol";
import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import { Currency, CurrencyLibrary } from "./interfaces/PoolKey.sol";
import { PoolKey, IHooks, IPoolManager, Actions, ActionConstants } from "./interfaces/IInfinityRouter.sol";

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

contract SigmaMev {
    using SafeERC20 for IERC20;

    // ============ Errors ============
    error InsufficientOutput(uint256 actual, uint256 minimum);

    // ============ Token Addresses ============
    address private constant bnbusd = 0x5519a479Da8Ce3Af7f373c16f14870BbeaFDa265;
    address private constant sigma = 0x85375D3e9c4a39350f1140280a8b0De6890A40e7;
    address private constant wbnb = 0xbb4CdB9CBd36B01bD1cBaEBF2De08d9173bc095c;
    address private constant usdt = 0x55d398326f99059fF775485246999027B3197955;
    address private constant NATIVE = address(0);  // Native BNB

    // ============ Pool Addresses ============
    address private constant SigmaBnbusdPool = 0xB84637aB9Be835580821A67823f414FFd0bbf625;
    address private constant UsdtBnbusdPool = 0xE6e2905F54BAF7625F4943B74c50338362741Cd4;

    // ============ Router Addresses ============
    address private constant pancakeUniversalRouter = 0xd9C500DfF816a1Da21A48A732d3498Bf09dc9AEB;
    address private constant permit2 = 0x31c2F6fcFf4F8759b3Bd5Bf0e1084A055615c768;

    // ============ Infinity Pool Manager ============
    address private constant infinityCLPoolManager = 0xa0FfB9c1CE1Fe56963B0321B32E7A0302114058b;
    
    // ============ Pool IDs (from chain) ============
    bytes32 private constant sigmaWbnbPoolId = 0x416e5132b7c80008cd32cf62439ea38e36c8eec0bbd16b78b3260a0fc5fa8c59;

    address private operator = 0x38EAF804d1C5C66b64Bb13A0E2A581249a6dDc72;

    // ============ Fee Tiers (hundredths of basis points) ============
    uint24 private constant V3_FEE = 100;           // 0.01% for WBNB/USDT V3 pool

    // ============ Universal Router Commands ============
    uint8 private constant V3_SWAP_EXACT_IN = 0x00;
    uint8 private constant INFI_SWAP = 0x10;        // Command for Infinity swap

    // ============ Debug Functions ============
    /// @notice Debug function to get the infinity swap payload
    function debugGetInfinityPayload(uint256 sigmaAmount) external view returns (
        bytes memory payload,
        PoolKey memory poolKey,
        bool zeroForOne,
        address currency0,
        address currency1
    ) {
        poolKey = _getPoolKey(sigmaWbnbPoolId);
        currency0 = Currency.unwrap(poolKey.currency0);
        currency1 = Currency.unwrap(poolKey.currency1);
        // sigma is currency1, BNB (address(0)) is currency0
        // We want sigma -> BNB, so zeroForOne = false (1 -> 0)
        zeroForOne = (currency0 == sigma);
        payload = _buildInfinitySwapPayload(
            poolKey,
            zeroForOne,
            uint128(sigmaAmount),
            0
        );
    }

    // ============ Constructor ============
    constructor() {
        _approveTokens();
    }

    // ============ External Functions ============
    
    /// @notice Execute the arbitrage: bnbUSD -> Sigma -> WBNB -> USDT -> bnbUSD
    /// @param bnbusdAmount The amount of bnbUSD to start with
    /// @param minOutput The minimum amount of bnbUSD to receive back
    function execute(uint256 bnbusdAmount, uint256 minOutput) external {
        require(bnbusdAmount > 0, "bnbusdAmount must be greater than 0");
        require(minOutput >= bnbusdAmount, "minOutput must be greater than 0");
        require(msg.sender == operator, "only operator");
        
        // Step 1: Transfer bnbUSD from caller to this contract
        IERC20(bnbusd).safeTransferFrom(msg.sender, address(this), bnbusdAmount);
        
        // Step 2: Swap bnbUSD -> Sigma via Curve
        uint256 sigmaAmount = ICurveStableSwapNG(SigmaBnbusdPool).exchange(
            uint256(0), uint256(1), bnbusdAmount, 0, address(this)
        );
        
        // Step 3: Swap Sigma -> WBNB via Infinity CL pool
        uint256 wbnbAmount = _swapSigmaToWbnb(sigmaAmount);
        
        // Step 4: Swap WBNB -> USDT via PancakeSwap V3
        uint256 usdtAmount = _swapWbnbToUsdt(wbnbAmount);
        
        // Step 5: Swap USDT -> bnbUSD via Curve
        uint256 bnbusdOut = ICurveStableSwapNG(UsdtBnbusdPool).exchange(
            int128(0), int128(1), usdtAmount, 0, address(this)
        );
        
        // Step 6: Check slippage protection
        if (bnbusdOut < minOutput) {
            revert InsufficientOutput(bnbusdOut, minOutput);
        }
        
        // Step 7: Transfer bnbUSD back to caller
        IERC20(bnbusd).safeTransfer(msg.sender, bnbusdOut);
    }

    // ============ Internal Functions ============

    /// @notice Approve tokens for external contracts
    function _approveTokens() internal {
        // Approve bnbUSD for Curve Sigma/bnbUSD pool
        IERC20(bnbusd).forceApprove(SigmaBnbusdPool, type(uint256).max);
        
        // Approve Sigma for Permit2 first (ERC20 approval)
        IERC20(sigma).forceApprove(permit2, type(uint256).max);
        // Then authorize Universal Router via Permit2 for Sigma
        IPermit2(permit2).approve(sigma, pancakeUniversalRouter, type(uint160).max, type(uint48).max);
        
        // Approve WBNB for Permit2 (needed for WBNB -> USDT swap)
        IERC20(wbnb).forceApprove(permit2, type(uint256).max);
        // Then authorize Universal Router via Permit2 for WBNB
        IPermit2(permit2).approve(wbnb, pancakeUniversalRouter, type(uint160).max, type(uint48).max);
        
        // Approve USDT for Curve USDT/bnbUSD pool
        IERC20(usdt).forceApprove(UsdtBnbusdPool, type(uint256).max);
    }

    /// @notice Get PoolKey from chain by poolId
    /// @param poolId The pool ID
    /// @return poolKey The PoolKey struct
    function _getPoolKey(bytes32 poolId) internal view returns (PoolKey memory poolKey) {
        (
            Currency currency0,
            Currency currency1,
            IHooks hooks,
            IPoolManager poolManager,
            uint24 fee,
            bytes32 parameters
        ) = ICLPoolManager(infinityCLPoolManager).poolIdToPoolKey(poolId);
        
        poolKey = PoolKey({
            currency0: currency0,
            currency1: currency1,
            hooks: hooks,
            poolManager: poolManager,
            fee: fee,
            parameters: parameters
        });
    }

    /// @notice Swap Sigma to native BNB via Infinity CL pool, then wrap to WBNB
    /// @param sigmaAmount The amount of Sigma to swap
    /// @return wbnbAmount The amount of WBNB received
    function _swapSigmaToWbnb(uint256 sigmaAmount) internal returns (uint256 wbnbAmount) {
        // Record native BNB balance before swap
        uint256 bnbBefore = address(this).balance;
        
        // Get PoolKey from chain (pool is BNB/Sigma, not WBNB/Sigma)
        PoolKey memory poolKey = _getPoolKey(sigmaWbnbPoolId);
        
        // Determine swap direction: sigma -> native BNB
        // currency0 = address(0) = native BNB
        // currency1 = sigma
        // We're selling sigma (currency1) to get BNB (currency0)
        // So zeroForOne = false (we go from 1 to 0)
        bool zeroForOne = (Currency.unwrap(poolKey.currency0) == sigma);
        
        // Build the Infinity swap payload
        bytes memory infinityPayload = _buildInfinitySwapPayload(
            poolKey,
            zeroForOne,
            uint128(sigmaAmount),
            0 // amountOutMinimum (we check at the end)
        );
        
        // Build command - INFI_SWAP
        bytes memory commands = abi.encodePacked(uint8(INFI_SWAP));
        
        // Build inputs
        bytes[] memory inputs = new bytes[](1);
        inputs[0] = infinityPayload;
        
        // Execute the swap
        IUniversalRouter(pancakeUniversalRouter).execute(
            commands,
            inputs,
            block.timestamp
        );
        
        // Calculate native BNB received
        uint256 bnbReceived = address(this).balance - bnbBefore;
        
        // Wrap native BNB to WBNB
        IWBNB(wbnb).deposit{value: bnbReceived}();
        
        wbnbAmount = bnbReceived;
    }
    
    /// @notice Allow contract to receive native BNB
    receive() external payable {}

    /// @notice Swap WBNB to USDT via PancakeSwap V3
    /// @param wbnbAmount The amount of WBNB to swap
    /// @return usdtAmount The amount of USDT received
    function _swapWbnbToUsdt(uint256 wbnbAmount) internal returns (uint256 usdtAmount) {
        // Record USDT balance before swap
        uint256 usdtBefore = IERC20(usdt).balanceOf(address(this));
        
        // Build the V3 swap path: WBNB -> USDT
        bytes memory path = abi.encodePacked(
            wbnb,    // token in
            V3_FEE,  // fee tier for WBNB/USDT pool (0.01%)
            usdt     // token out
        );
        
        // Build command - V3_SWAP_EXACT_IN
        bytes memory commands = abi.encodePacked(uint8(V3_SWAP_EXACT_IN));
        
        // Build inputs for V3_SWAP_EXACT_IN
        bytes[] memory inputs = new bytes[](1);
        inputs[0] = abi.encode(
            address(this),  // recipient - receive USDT to this contract
            wbnbAmount,     // amountIn
            0,              // amountOutMin (we check slippage at the end)
            path,           // path
            true            // payerIsUser = true, transfer token from sender (this contract) via Permit2
        );
        
        // Execute the swap
        IUniversalRouter(pancakeUniversalRouter).execute(
            commands,
            inputs,
            block.timestamp
        );
        
        // Calculate USDT received
        usdtAmount = IERC20(usdt).balanceOf(address(this)) - usdtBefore;
    }

    /// @notice Build the Infinity swap payload for CL_SWAP_EXACT_IN_SINGLE
    /// @dev Follows the exact encoding format from Go implementation
    /// @param poolKey The pool key (from chain)
    /// @param zeroForOne Direction of swap
    /// @param amountIn Amount to swap
    /// @param amountOutMinimum Minimum output amount
    /// @return payload The encoded payload for INFI_SWAP command
    function _buildInfinitySwapPayload(
        PoolKey memory poolKey,
        bool zeroForOne,
        uint128 amountIn,
        uint128 amountOutMinimum
    ) internal view returns (bytes memory payload) {
        // Determine input/output token addresses (not Currency type)
        address inputToken = zeroForOne 
            ? Currency.unwrap(poolKey.currency0) 
            : Currency.unwrap(poolKey.currency1);
        address outputToken = zeroForOne 
            ? Currency.unwrap(poolKey.currency1) 
            : Currency.unwrap(poolKey.currency0);
        
        // 1. Build CL_SWAP_EXACT_IN_SINGLE params
        // Go uses a nested tuple: ((address,address,address,address,uint24,bytes32), bool, uint128, uint128, bytes)
        // Solidity abi.encode with struct should produce the same encoding
        bytes memory swapParams = abi.encode(
            poolKey,           // This encodes as tuple(address,address,address,address,uint24,bytes32)
            zeroForOne,
            amountIn,
            amountOutMinimum,
            bytes("")          // hookData - empty bytes
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
        // Using new bytes(3) and assignment is equivalent to Go's []byte{0x06, 0x0c, 0x0f}
        bytes memory actions = new bytes(3);
        actions[0] = 0x06;  // CL_SWAP_EXACT_IN_SINGLE
        actions[1] = 0x0c;  // SETTLE_ALL
        actions[2] = 0x0f;  // TAKE_ALL
        
        // 5. Build params array
        bytes[] memory params = new bytes[](3);
        params[0] = swapParams;
        params[1] = settleAllParams;
        params[2] = takeAllParams;
        
        // 6. Final payload: abi.encode(bytes, bytes[])
        // This matches Go's abi.Arguments{{Type: TypeBytes}, {Type: TypeBytesSlice}}.Pack(...)
        payload = abi.encode(actions, params);
    }
}
