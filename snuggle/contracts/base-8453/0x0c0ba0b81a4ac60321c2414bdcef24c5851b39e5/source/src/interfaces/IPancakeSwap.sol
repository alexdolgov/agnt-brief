// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/// @title IPancakeSwapV3Factory
/// @notice Interface for PancakeSwap V3 factory
interface IPancakeSwapV3Factory {
    /// @notice Get pool address for token pair and fee tier
    /// @param tokenA First token address
    /// @param tokenB Second token address
    /// @param fee The fee tier (500, 2500, 10000 = 0.05%, 0.25%, 1%)
    /// @return pool The pool address, or address(0) if not found
    function getPool(
        address tokenA,
        address tokenB,
        uint24 fee
    ) external view returns (address pool);
}

/// @title IPancakeSwapV3Pool
/// @notice Interface for PancakeSwap V3 pool
interface IPancakeSwapV3Pool {
    /// @notice Get tick spacing for the pool
    function tickSpacing() external view returns (int24);

    /// @notice Get current pool state
    /// @return sqrtPriceX96 Current sqrt price
    /// @return tick Current tick
    /// @return observationIndex Current observation index
    /// @return observationCardinality Current observation cardinality
    /// @return observationCardinalityNext Next observation cardinality
    /// @return feeProtocol Protocol fee (uint32 on PancakeSwap V3, unlike Uniswap's uint8)
    /// @return unlocked Whether pool is unlocked
    function slot0() external view returns (
        uint160 sqrtPriceX96,
        int24 tick,
        uint16 observationIndex,
        uint16 observationCardinality,
        uint16 observationCardinalityNext,
        uint32 feeProtocol,
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

/// @title IPancakeSwapNonfungiblePositionManager
/// @notice Interface for PancakeSwap V3 position manager (nearly identical to Uniswap V3)
interface IPancakeSwapNonfungiblePositionManager {
    /// @notice Parameters for minting a new position
    struct MintParams {
        address token0;
        address token1;
        uint24 fee;
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
    /// @return fee Fee tier
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
        uint24 fee,
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

/// @title IMasterChefV3
/// @notice Interface for PancakeSwap MasterChef V3 staking contract
interface IMasterChefV3 {
    /// @notice Deposit NFT position to earn CAKE rewards
    /// @param tokenId The NFT token ID to stake
    function deposit(uint256 tokenId) external;

    /// @notice Withdraw NFT position and claim rewards
    /// @param tokenId The NFT token ID to unstake
    /// @param to Address to receive the NFT
    function withdraw(uint256 tokenId, address to) external;

    /// @notice Harvest CAKE rewards without withdrawing
    /// @param tokenId The NFT token ID
    /// @param to Address to receive rewards
    /// @return reward Amount of CAKE harvested
    function harvest(uint256 tokenId, address to) external returns (uint256 reward);

    /// @notice View pending CAKE rewards for a position
    /// @param tokenId The NFT token ID
    /// @return reward Pending CAKE amount
    function pendingCake(uint256 tokenId) external view returns (uint256 reward);

    /// @notice Get staked position info
    /// @param tokenId The NFT token ID
    /// @return liquidity Position liquidity
    /// @return boostLiquidity Boosted liquidity (if veCake boost active)
    /// @return tickLower Lower tick
    /// @return tickUpper Upper tick
    /// @return rewardGrowthInside Reward growth inside position
    /// @return reward Unclaimed reward
    /// @return user Owner of the staked position
    /// @return pid Pool ID
    /// @return boostMultiplier Boost multiplier from veCake
    function userPositionInfos(uint256 tokenId) external view returns (
        uint128 liquidity,
        uint128 boostLiquidity,
        int24 tickLower,
        int24 tickUpper,
        uint256 rewardGrowthInside,
        uint256 reward,
        address user,
        uint256 pid,
        uint256 boostMultiplier
    );

    /// @notice Get pool info for a pool ID
    /// @param pid Pool ID
    /// @return allocPoint Allocation points for rewards
    /// @return v3Pool The V3 pool address
    /// @return token0 First token
    /// @return token1 Second token
    /// @return fee Fee tier
    /// @return totalLiquidity Total liquidity staked
    /// @return totalBoostLiquidity Total boosted liquidity
    function poolInfo(uint256 pid) external view returns (
        uint256 allocPoint,
        address v3Pool,
        address token0,
        address token1,
        uint24 fee,
        uint256 totalLiquidity,
        uint256 totalBoostLiquidity
    );

    /// @notice Get pool ID from pool address
    /// @param pool The V3 pool address
    /// @return pid The pool ID (0 if not registered)
    function v3PoolAddressPid(address pool) external view returns (uint256 pid);

    /// @notice Get the total number of pools
    /// @return Number of pools registered
    function poolLength() external view returns (uint256);

    /// @notice Get the NFT position manager address
    /// @return The position manager address
    function nonfungiblePositionManager() external view returns (address);

    /// @notice Get the CAKE token address
    /// @return The CAKE token address
    function CAKE() external view returns (address);

    /// @notice Collect trading fees from a staked position
    /// @dev Allows fee collection without unstaking the position
    /// @param params Collection parameters (tokenId, recipient, amount0Max, amount1Max)
    /// @param to Address to receive any refunds
    /// @return amount0 Amount of token0 collected
    /// @return amount1 Amount of token1 collected
    function collectTo(
        IPancakeSwapNonfungiblePositionManager.CollectParams calldata params,
        address to
    ) external returns (uint256 amount0, uint256 amount1);
}
