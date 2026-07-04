// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import { ICurveStableSwapNG } from "./interfaces/ICurveStableSwapNG.sol";
import { IUniversalRouter } from "./interfaces/IUniversalRouter.sol";
import { IPermit2 } from "./interfaces/IPermit2.sol";
import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

/// @title SigmaMevV3
/// @notice MEV arbitrage contract for Sigma token swaps between Curve and PancakeSwap V3
/// @dev Simplified version - only uses Curve pool and PancakeSwap V3 pool for bnbusd/sigma arbitrage
contract SigmaMevV3 {
    using SafeERC20 for IERC20;

    // ============ Errors ============
    error InsufficientOutput(uint256 actual, uint256 minimum);

    // ============ Token Addresses ============
    address private constant BNBUSD = 0x5519a479Da8Ce3Af7f373c16f14870BbeaFDa265;
    address private constant SIGMA = 0x85375D3e9c4a39350f1140280a8b0De6890A40e7;

    // ============ Pool Addresses ============
    /// @notice Curve pool for Sigma/bnbUSD swaps
    address private constant SIGMA_BNBUSD_CURVE_POOL = 0xB84637aB9Be835580821A67823f414FFd0bbf625;
    /// @notice PancakeSwap V3 pool for bnbUSD/Sigma swaps
    /// @dev token0 = bnbusd (0x5519a479Da8Ce3Af7f373c16f14870BbeaFDa265)
    /// @dev token1 = sigma (0x85375D3e9c4a39350f1140280a8b0De6890A40e7)
    address private constant SIGMA_BNBUSD_V3_POOL = 0x3B2108D5db8A5fFF1bB902a6a0436649f9C83eFe;

    // ============ Router Addresses ============
    /// @notice PancakeSwap Universal Router
    address private constant PANCAKE_UNIVERSAL_ROUTER = 0xd9C500DfF816a1Da21A48A732d3498Bf09dc9AEB;
    /// @notice Permit2 contract for token approvals
    address private constant PERMIT2 = 0x31c2F6fcFf4F8759b3Bd5Bf0e1084A055615c768;

    // ============ Fee Tiers ============
    /// @notice Fee tier for bnbUSD/Sigma V3 pool (0.05% = 500 hundredths of basis points)
    uint24 private constant V3_FEE = 500;

    // ============ Universal Router Commands ============
    /// @notice Command for V3 exact input swap
    uint8 private constant V3_SWAP_EXACT_IN = 0x00;

    // ============ State Variables ============
    address private operator = 0x69691FFCea7a1d528a66BF2b1dd7080CDf7EFB1c;

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
    
    /// @notice Execute forward arbitrage: bnbUSD -> Curve -> Sigma -> V3 -> bnbUSD
    /// @param bnbusdAmount The amount of bnbUSD to start with
    /// @param minOutput The minimum amount of bnbUSD to receive back
    function execute(uint256 bnbusdAmount, uint256 minOutput) external onlyOperator {
        require(bnbusdAmount > 0, "bnbusdAmount must be greater than 0");
        require(minOutput >= bnbusdAmount, "minOutput must be greater than 0");
        
        // Step 1: Transfer bnbUSD from caller to this contract
        IERC20(BNBUSD).safeTransferFrom(msg.sender, address(this), bnbusdAmount);
        
        // Step 2: Swap bnbUSD -> Sigma via Curve
        uint256 sigmaAmount = _swapCurveBnbusdToSigma(bnbusdAmount);
        
        // Step 3: Swap Sigma -> bnbUSD via PancakeSwap V3
        uint256 bnbusdOut = _swapV3SigmaToBnbusd(sigmaAmount);
        
        // Step 4: Check slippage protection
        if (bnbusdOut < minOutput) {
            revert InsufficientOutput(bnbusdOut, minOutput);
        }
        
        // Step 5: Transfer bnbUSD back to caller
        IERC20(BNBUSD).safeTransfer(msg.sender, bnbusdOut);
    }

    /// @notice Execute reverse arbitrage: bnbUSD -> V3 -> Sigma -> Curve -> bnbUSD
    /// @param bnbusdAmount The amount of bnbUSD to start with
    /// @param minOutput The minimum amount of bnbUSD to receive back
    function executeReverse(uint256 bnbusdAmount, uint256 minOutput) external onlyOperator {
        require(bnbusdAmount > 0, "bnbusdAmount must be greater than 0");
        require(minOutput >= bnbusdAmount, "minOutput must be greater than 0");
        
        // Step 1: Transfer bnbUSD from caller to this contract
        IERC20(BNBUSD).safeTransferFrom(msg.sender, address(this), bnbusdAmount);
        
        // Step 2: Swap bnbUSD -> Sigma via PancakeSwap V3
        uint256 sigmaAmount = _swapV3BnbusdToSigma(bnbusdAmount);
        
        // Step 3: Swap Sigma -> bnbUSD via Curve
        uint256 bnbusdOut = _swapCurveSigmaToBnbusd(sigmaAmount);
        
        // Step 4: Check slippage protection
        if (bnbusdOut < minOutput) {
            revert InsufficientOutput(bnbusdOut, minOutput);
        }
        
        // Step 5: Transfer bnbUSD back to caller
        IERC20(BNBUSD).safeTransfer(msg.sender, bnbusdOut);
    }

    // ============ Internal Functions ============

    /// @notice Approve tokens for external contracts
    function _approveTokens() internal {
        // Approve bnbUSD for Curve Sigma/bnbUSD pool
        IERC20(BNBUSD).forceApprove(SIGMA_BNBUSD_CURVE_POOL, type(uint256).max);
        
        // Approve Sigma for Curve Sigma/bnbUSD pool
        IERC20(SIGMA).forceApprove(SIGMA_BNBUSD_CURVE_POOL, type(uint256).max);
        
        // Approve bnbUSD for Permit2 first (ERC20 approval)
        IERC20(BNBUSD).forceApprove(PERMIT2, type(uint256).max);
        // Then authorize Universal Router via Permit2 for bnbUSD
        IPermit2(PERMIT2).approve(BNBUSD, PANCAKE_UNIVERSAL_ROUTER, type(uint160).max, type(uint48).max);
        
        // Approve Sigma for Permit2 first (ERC20 approval)
        IERC20(SIGMA).forceApprove(PERMIT2, type(uint256).max);
        // Then authorize Universal Router via Permit2 for Sigma
        IPermit2(PERMIT2).approve(SIGMA, PANCAKE_UNIVERSAL_ROUTER, type(uint160).max, type(uint48).max);
    }

    /// @notice Swap bnbUSD to Sigma via Curve pool
    /// @param amount The amount of bnbUSD to swap
    /// @return sigmaAmount The amount of Sigma received
    function _swapCurveBnbusdToSigma(uint256 amount) internal returns (uint256 sigmaAmount) {
        // Curve pool: index 0 = bnbusd, index 1 = sigma
        sigmaAmount = ICurveStableSwapNG(SIGMA_BNBUSD_CURVE_POOL).exchange(
            uint256(0), uint256(1), amount, 0, address(this)
        );
    }

    /// @notice Swap Sigma to bnbUSD via Curve pool
    /// @param amount The amount of Sigma to swap
    /// @return bnbusdAmount The amount of bnbUSD received
    function _swapCurveSigmaToBnbusd(uint256 amount) internal returns (uint256 bnbusdAmount) {
        // Curve pool: index 0 = bnbusd, index 1 = sigma
        bnbusdAmount = ICurveStableSwapNG(SIGMA_BNBUSD_CURVE_POOL).exchange(
            uint256(1), uint256(0), amount, 0, address(this)
        );
    }

    /// @notice Swap bnbUSD to Sigma via PancakeSwap V3
    /// @param amount The amount of bnbUSD to swap
    /// @return sigmaAmount The amount of Sigma received
    function _swapV3BnbusdToSigma(uint256 amount) internal returns (uint256 sigmaAmount) {
        // Record Sigma balance before swap
        uint256 sigmaBefore = IERC20(SIGMA).balanceOf(address(this));
        
        // Build the V3 swap path: bnbUSD -> Sigma
        // token0 = bnbusd, token1 = sigma
        bytes memory path = abi.encodePacked(
            BNBUSD,
            V3_FEE,
            SIGMA
        );
        
        // Build command - V3_SWAP_EXACT_IN
        bytes memory commands = abi.encodePacked(uint8(V3_SWAP_EXACT_IN));
        
        // Build inputs for V3_SWAP_EXACT_IN
        bytes[] memory inputs = new bytes[](1);
        inputs[0] = abi.encode(
            address(this),  // recipient
            amount,         // amountIn
            0,              // amountOutMin (we check slippage at the end)
            path,           // path
            true            // payerIsUser = true, via Permit2
        );
        
        // Execute the swap
        IUniversalRouter(PANCAKE_UNIVERSAL_ROUTER).execute(
            commands,
            inputs,
            block.timestamp
        );
        
        // Calculate Sigma received
        sigmaAmount = IERC20(SIGMA).balanceOf(address(this)) - sigmaBefore;
    }

    /// @notice Swap Sigma to bnbUSD via PancakeSwap V3
    /// @param amount The amount of Sigma to swap
    /// @return bnbusdAmount The amount of bnbUSD received
    function _swapV3SigmaToBnbusd(uint256 amount) internal returns (uint256 bnbusdAmount) {
        // Record bnbUSD balance before swap
        uint256 bnbusdBefore = IERC20(BNBUSD).balanceOf(address(this));
        
        // Build the V3 swap path: Sigma -> bnbUSD
        // token0 = bnbusd, token1 = sigma
        bytes memory path = abi.encodePacked(
            SIGMA,
            V3_FEE,
            BNBUSD
        );
        
        // Build command - V3_SWAP_EXACT_IN
        bytes memory commands = abi.encodePacked(uint8(V3_SWAP_EXACT_IN));
        
        // Build inputs for V3_SWAP_EXACT_IN
        bytes[] memory inputs = new bytes[](1);
        inputs[0] = abi.encode(
            address(this),  // recipient
            amount,         // amountIn
            0,              // amountOutMin (we check slippage at the end)
            path,           // path
            true            // payerIsUser = true, via Permit2
        );
        
        // Execute the swap
        IUniversalRouter(PANCAKE_UNIVERSAL_ROUTER).execute(
            commands,
            inputs,
            block.timestamp
        );
        
        // Calculate bnbUSD received
        bnbusdAmount = IERC20(BNBUSD).balanceOf(address(this)) - bnbusdBefore;
    }
}
