// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {MulticallData, IPermit2} from "../interchain_router/IOrders.sol";

/// @title Position struct for margin escrow
/// @notice Represents a margin position between a taker (borrower) and filler (loaner)
struct Position {
    address taker;      // Original borrower address (for reference, NFT owner has rights)
    address filler;     // Original loaner address (for reference, NFT owner has rights)
    address token;      // Collateral token address (base token)
    address loanToken;  // Loan repayment token address (quote token)
    uint256 size;       // B_0 in the pdf – base token locked in escrow
    uint256 loanAmount; // Q_L in the pdf – remaining loan principal (quote token)
    uint256 liqPrice;   // P_liq(t_open) = Q_L / B_0 in WAD (computed on-chain)
}

struct PositionLifecycle {
    uint8 status;           // 0 = never opened, 1 = open, 2 = fully closed, 3 = liquidated
    uint256 openBlock;      // block where the position was opened
    uint256 terminalBlock;  // block where the position was fully closed or liquidated (0 while open)
}

/// @title IEscrow - NFT-Based Margin Position Escrow Interface
/// @notice Interface for the Escrow contract that wraps margin positions as NFTs
/// @dev Inspired by Uniswap V3's NonfungiblePositionManager
interface IEscrow {
    // ───────────────────── Admin ─────────────────────

    function setInterestRateBps(address loanToken, uint64 newRateBps) external;
    function setTokenInterestOverride(address loanToken, address token, int64 overrideBps) external;
    function setProtocolFeeCollector(address collector) external;
    function setProtocolFeeTenthBps(uint256 feeTenthBps) external;

    // ───────────────────── Position Management ─────────────────────

    /// @notice Open a new margin position, minting NFTs to taker and filler
    function open(address taker, address filler, address token, uint256 size, address loanToken, uint256 loanAmount, address oracle) external returns (uint128 positionId);
    
    /// @notice Close a position (partially or fully) by repaying the loan directly
    /// @dev Only the owner of the taker NFT can call this. Taker must have approved loanToken.
    function close(uint128 positionId, uint256 amt) external;
    function close(uint128 positionId, uint256 amt, IPermit2.PermitTransferFrom calldata permit, bytes calldata signature) external;
    
    /// @notice Close a position (partially or fully) by swapping via DEX with EIP-712 signature authorization
    /// @dev cashSettle=false: Base token settlement (swap partial, return remaining base token)
    ///      cashSettle=true: Cash settlement (swap fractionBps, return remaining loan token)
    /// @param fractionBps Fraction of position to close in basis points (10000 = 100%)
    /// @param authorized Address authorized to call this function (address(0) = anyone)
    /// @param nonce Unique nonce for replay protection (unordered bitmap scheme)
    function closeWithSwap(uint128 positionId, bool cashSettle, uint256 fractionBps, address authorized, uint256 nonce, uint256 minOut, MulticallData calldata arb, uint256 deadline, bytes calldata signature) external;
    
    /// @notice Liquidate a position when price drops below threshold
    /// @param oracleData Implementation-specific data forwarded to oracle.getPrice (empty if not needed)
    function liquidate(uint128 positionId, bytes calldata oracleData) external payable;

    // ───────────────────── Views ─────────────────────

    /// @notice Get position by position ID
    function positions(uint128 positionId) external view returns (Position memory);
    
    /// @notice Get position data by tokenId (works for both taker and filler tokens)
    function positionByTokenId(uint256 tokenId) external view returns (Position memory);

    /// @notice Get the oracle address associated with a position
    function positionOracle(uint128 positionId) external view returns (address);

    /// @notice Get lifecycle metadata for a position ID, including terminal status after deletion
    function positionLifecycle(uint128 positionId) external view returns (PositionLifecycle memory);
    
    /// @notice Check if a tokenId represents a filler (loaner) token
    function isFillerToken(uint256 tokenId) external pure returns (bool);
    
    /// @notice Get the corresponding paired tokenId (taker <-> filler)
    function pairedTokenId(uint256 tokenId) external pure returns (uint256);
    
    /// @notice Get the position ID from a tokenId
    function tokenIdToPositionId(uint256 tokenId) external pure returns (uint128);
    
    /// @notice Get the total number of positions ever opened
    function totalPositions() external view returns (uint128);
    
    /// @notice Get the nonce for a tokenId (for ERC721Permit)
    function nonces(uint256 tokenId) external view returns (uint256);
    function nonceBitmap(address account, uint256 wordPos) external view returns (uint256);

    // ───────────────────── Interest Views (position-level) ─────────────────────
    function accumulatedInterest(uint128 positionId) external view returns (uint256);
    function totalDebt(uint128 positionId) external view returns (uint256);
    function currentLiquidationPrice(uint128 positionId) external view returns (uint256);
    function debtState(uint128 positionId) external view returns (uint256 principal, uint256 accrued, uint256 indexRay);

    // ───────────────────── Debug Views (EIP-712) ─────────────────────

    function getCloseWithSwapTypehash() external pure returns (bytes32);
    function computeCloseWithSwapStructHash(uint128 positionId, bool cashSettle, uint256 fractionBps, address authorized, uint256 nonce, uint256 deadline) external pure returns (bytes32);
    function computeCloseWithSwapDigest(uint128 positionId, bool cashSettle, uint256 fractionBps, address authorized, uint256 nonce, uint256 deadline) external view returns (bytes32);
    function isNonceUsed(address account, uint256 nonce) external view returns (bool);
}