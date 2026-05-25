// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/// @title IAerodromeCLFactory
/// @notice Interface for Aerodrome Slipstream concentrated liquidity factory
interface IAerodromeCLFactory {
    /// @notice Get pool address for token pair and tick spacing
    /// @param tokenA First token address
    /// @param tokenB Second token address
    /// @param tickSpacing The tick spacing for the pool
    /// @return pool The pool address, or address(0) if not found
    function getPool(
        address tokenA,
        address tokenB,
        int24 tickSpacing
    ) external view returns (address pool);
}

/// @title IAerodromeCLPool
/// @notice Interface for Aerodrome Slipstream concentrated liquidity pool
interface IAerodromeCLPool {
    /// @notice Get tick spacing for the pool
    function tickSpacing() external view returns (int24);

    /// @notice Get current pool state
    /// @return sqrtPriceX96 Current sqrt price
    /// @return tick Current tick
    /// @return observationIndex Current observation index
    /// @return observationCardinality Current observation cardinality
    /// @return observationCardinalityNext Next observation cardinality
    /// @return unlocked Whether pool is unlocked
    function slot0() external view returns (
        uint160 sqrtPriceX96,
        int24 tick,
        uint16 observationIndex,
        uint16 observationCardinality,
        uint16 observationCardinalityNext,
        bool unlocked
    );

    /// @notice Observe historical tick data for TWAP calculation
    /// @param secondsAgos Array of seconds ago to observe
    /// @return tickCumulatives Cumulative tick values
    /// @return secondsPerLiquidityCumulativeX128s Seconds per liquidity values
    function observe(uint32[] calldata secondsAgos) external view returns (
        int56[] memory tickCumulatives,
        uint160[] memory secondsPerLiquidityCumulativeX128s
    );
}

/// @title IAerodromeNonfungiblePositionManager
/// @notice Interface for Aerodrome Slipstream position manager
interface IAerodromeNonfungiblePositionManager {
    /// @notice Parameters for minting a new position
    struct MintParams {
        address token0;
        address token1;
        int24 tickSpacing;
        int24 tickLower;
        int24 tickUpper;
        uint256 amount0Desired;
        uint256 amount1Desired;
        uint256 amount0Min;
        uint256 amount1Min;
        address recipient;
        uint256 deadline;
        uint160 sqrtPriceX96;
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

    /// @notice Parameters for decreasing liquidity
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

    /// @notice Parameters for collecting tokens
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

    /// @notice Burn a position NFT
    /// @param tokenId The token ID to burn
    function burn(uint256 tokenId) external payable;

    /// @notice Get position details
    /// @param tokenId The token ID
    /// @return nonce Position nonce
    /// @return operator Approved operator
    /// @return token0 First token address
    /// @return token1 Second token address
    /// @return tickSpacing Tick spacing
    /// @return tickLower Lower tick
    /// @return tickUpper Upper tick
    /// @return liquidity Current liquidity
    /// @return feeGrowthInside0LastX128 Fee growth token0
    /// @return feeGrowthInside1LastX128 Fee growth token1
    /// @return tokensOwed0 Tokens owed token0
    /// @return tokensOwed1 Tokens owed token1
    function positions(uint256 tokenId) external view returns (
        uint96 nonce,
        address operator,
        address token0,
        address token1,
        int24 tickSpacing,
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

/// @title ICLGauge
/// @notice Interface for Aerodrome concentrated liquidity gauge
interface ICLGauge {
    /// @notice Deposit a position NFT to earn emissions
    /// @param tokenId The NFT token ID to stake
    function deposit(uint256 tokenId) external;

    /// @notice Withdraw a position NFT
    /// @param tokenId The NFT token ID to unstake
    function withdraw(uint256 tokenId) external;

    /// @notice Claim rewards for a position
    /// @param tokenId The NFT token ID
    function getReward(uint256 tokenId) external;

    /// @notice Get pending rewards for a position
    /// @param account The account that staked
    /// @param tokenId The NFT token ID
    /// @return The pending reward amount
    function earned(address account, uint256 tokenId) external view returns (uint256);

    /// @notice Get the pool this gauge is for
    /// @return The pool address
    function pool() external view returns (address);

    /// @notice Check if an account has a specific token staked
    /// @param depositor The account address
    /// @param tokenId The token ID
    /// @return True if staked
    function stakedContains(address depositor, uint256 tokenId) external view returns (bool);

    /// @notice Get all token IDs staked by an account
    /// @param depositor The account address
    /// @return Array of staked token IDs
    function stakedValues(address depositor) external view returns (uint256[] memory);
}

/// @title IVoter
/// @notice Interface for Aerodrome voter contract
interface IVoter {
    /// @notice Get gauge address for a pool
    /// @param pool The pool address
    /// @return The gauge address
    function gauges(address pool) external view returns (address);

    /// @notice Check if a gauge is alive (receiving emissions)
    /// @param gauge The gauge address
    /// @return True if alive
    function isAlive(address gauge) external view returns (bool);
}
