// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/// @title IAlgebraFactory
/// @notice Interface for Camelot V3 (Algebra V1.9) factory
/// @dev Camelot uses ONE pool per token pair (no fee tiers). Dynamic fees set per-pool.
interface IAlgebraFactory {
    /// @notice Get pool address for a token pair
    /// @dev Unlike Uniswap V3, there is only one pool per pair (no fee parameter)
    /// @param tokenA First token address
    /// @param tokenB Second token address
    /// @return pool The pool address, or address(0) if not found
    function poolByPair(
        address tokenA,
        address tokenB
    ) external view returns (address pool);
}

/// @title IAlgebraPool
/// @notice Interface for Camelot V3 (Algebra V1.9) pool
/// @dev Key differences from Uniswap V3:
///      - globalState() instead of slot0()
///      - getTimepoints() instead of observe()
///      - Dynamic fees (can change per swap)
interface IAlgebraPool {
    /// @notice Get current pool state
    /// @dev Algebra V1.9 on Camelot Arbitrum uses globalState() instead of Uniswap's slot0().
    ///      Returns TWO directional fees (zero-to-one and one-to-zero).
    /// @return price Current sqrt price as Q64.96
    /// @return tick Current tick
    /// @return feeZtO Fee for zero-to-one swaps in hundredths of a bip
    /// @return feeOtZ Fee for one-to-zero swaps in hundredths of a bip
    /// @return timepointIndex Index of the last written timepoint
    /// @return communityFeeToken0 Community fee for token0
    /// @return communityFeeToken1 Community fee for token1
    /// @return unlocked Whether the pool is currently unlocked
    function globalState() external view returns (
        uint160 price,
        int24 tick,
        uint16 feeZtO,
        uint16 feeOtZ,
        uint16 timepointIndex,
        uint16 communityFeeToken0,
        uint16 communityFeeToken1,
        bool unlocked
    );

    /// @notice Get tick spacing for the pool
    /// @return The tick spacing
    function tickSpacing() external view returns (int24);

    /// @notice Observe historical data for TWAP calculation
    /// @dev Algebra V1.9 uses getTimepoints() instead of Uniswap's observe().
    ///      Returns 4 arrays instead of 2. Extra arrays (volatility, volume) are ignored for TWAP.
    /// @param secondsAgos Array of seconds ago to observe
    /// @return tickCumulatives Cumulative tick values (same as Uni V3)
    /// @return secondsPerLiquidityCumulatives Cumulative seconds per liquidity (same as Uni V3)
    /// @return volatilityCumulatives Cumulative volatility values (Algebra-specific, unused)
    /// @return volumePerAvgLiquiditys Volume per avg liquidity values (Algebra-specific, unused)
    function getTimepoints(uint32[] calldata secondsAgos) external view returns (
        int56[] memory tickCumulatives,
        uint160[] memory secondsPerLiquidityCumulatives,
        uint112[] memory volatilityCumulatives,
        uint256[] memory volumePerAvgLiquiditys
    );
}

/// @title IAlgebraNonfungiblePositionManager
/// @notice Interface for Camelot V3 (Algebra V1.9) position manager
/// @dev Key differences from Uniswap V3 NPM:
///      - MintParams has NO fee field (10 fields instead of 11)
///      - positions() returns 11 values instead of 12 (no fee, nonce is uint88)
///      - DecreaseLiquidityParams, CollectParams, burn() are IDENTICAL to Uni V3
interface IAlgebraNonfungiblePositionManager {
    /// @notice Parameters for minting a new position
    /// @dev NO fee field — Algebra has one pool per pair with dynamic fees
    struct MintParams {
        address token0;
        address token1;
        int24 tickLower;
        int24 tickUpper;
        uint256 amount0Desired;
        uint256 amount1Desired;
        uint256 amount0Min;
        uint256 amount1Min;
        address recipient;
        uint256 deadline;
    }

    /// @notice Mint a new position
    /// @param params The mint parameters
    /// @return tokenId The NFT token ID
    /// @return liquidity The liquidity minted
    /// @return amount0 Amount of token0 used
    /// @return amount1 Amount of token1 used
    function mint(MintParams calldata params) external payable returns (
        uint256 tokenId,
        uint128 liquidity,
        uint256 amount0,
        uint256 amount1
    );

    /// @notice Parameters for decreasing liquidity (identical to Uni V3)
    struct DecreaseLiquidityParams {
        uint256 tokenId;
        uint128 liquidity;
        uint256 amount0Min;
        uint256 amount1Min;
        uint256 deadline;
    }

    /// @notice Decrease liquidity in a position
    /// @param params The decrease parameters
    /// @return amount0 Amount of token0 received
    /// @return amount1 Amount of token1 received
    function decreaseLiquidity(DecreaseLiquidityParams calldata params) external payable returns (
        uint256 amount0,
        uint256 amount1
    );

    /// @notice Parameters for collecting tokens (identical to Uni V3)
    struct CollectParams {
        uint256 tokenId;
        address recipient;
        uint128 amount0Max;
        uint128 amount1Max;
    }

    /// @notice Collect tokens owed to a position
    /// @param params The collect parameters
    /// @return amount0 Amount of token0 collected
    /// @return amount1 Amount of token1 collected
    function collect(CollectParams calldata params) external payable returns (
        uint256 amount0,
        uint256 amount1
    );

    /// @notice Burn a position NFT (identical to Uni V3)
    /// @param tokenId The token ID to burn
    function burn(uint256 tokenId) external payable;

    /// @notice Get position details
    /// @dev Returns 11 values instead of Uni V3's 12 (no fee field, nonce is uint88)
    /// @param tokenId The token ID
    /// @return nonce Position nonce (uint88 in Algebra, uint96 in Uni V3)
    /// @return operator Approved operator
    /// @return token0 First token address
    /// @return token1 Second token address
    /// @return tickLower Lower tick
    /// @return tickUpper Upper tick
    /// @return liquidity Current liquidity
    /// @return feeGrowthInside0LastX128 Fee growth token0
    /// @return feeGrowthInside1LastX128 Fee growth token1
    /// @return tokensOwed0 Tokens owed token0
    /// @return tokensOwed1 Tokens owed token1
    function positions(uint256 tokenId) external view returns (
        uint88 nonce,
        address operator,
        address token0,
        address token1,
        int24 tickLower,
        int24 tickUpper,
        uint128 liquidity,
        uint256 feeGrowthInside0LastX128,
        uint256 feeGrowthInside1LastX128,
        uint128 tokensOwed0,
        uint128 tokensOwed1
    );

    /// @notice Approve an address to manage a token
    /// @param to Address to approve
    /// @param tokenId Token ID to approve
    function approve(address to, uint256 tokenId) external;

    /// @notice Set approval for all tokens
    /// @param operator Address to approve
    /// @param approved Whether to approve
    function setApprovalForAll(address operator, bool approved) external;

    /// @notice Get owner of a token
    /// @param tokenId Token ID
    /// @return owner The owner address
    function ownerOf(uint256 tokenId) external view returns (address owner);

    /// @notice Safe transfer a token
    /// @param from Current owner
    /// @param to New owner
    /// @param tokenId Token ID
    function safeTransferFrom(address from, address to, uint256 tokenId) external;
}
