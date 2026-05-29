// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity >=0.7.5;
pragma abicoder v2;

import {IERC20} from "@openzeppelin/token/ERC20/IERC20.sol";
import {IPancakeV3Pool} from "src/interfaces/pool/pancake/IPancakeV3Pool.sol";
import {INonfungiblePositionManager} from "src/interfaces/pool/pancake/INonfungiblePositionManager.sol";

interface IMasterChefV3 {
    struct IncreaseLiquidityParams {
        uint256 tokenId;
        uint256 amount0Desired;
        uint256 amount1Desired;
        uint256 amount0Min;
        uint256 amount1Min;
        uint256 deadline;
    }

    struct DecreaseLiquidityParams {
        uint256 tokenId;
        uint128 liquidity;
        uint256 amount0Min;
        uint256 amount1Min;
        uint256 deadline;
    }

    struct CollectParams {
        uint256 tokenId;
        address recipient;
        uint128 amount0Max;
        uint128 amount1Max;
    }

    function multicall(bytes[] calldata data) external payable returns (bytes[] memory results);
    function poolLength() external view returns (uint256);
    function poolInfo(uint256 tokenId)
        external
        view
        returns (
            uint256 allocPoint,
            // V3 pool address
            IPancakeV3Pool v3Pool,
            // V3 pool token0 address
            address token0,
            // V3 pool token1 address
            address token1,
            // V3 pool fee
            uint24 fee,
            // total liquidity staking in the pool
            uint256 totalLiquidity,
            // total boost liquidity staking in the pool
            uint256 totalBoostLiquidity
        );
    function userPositionInfos(uint256 tokenId)
        external
        view
        returns (
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
    function v3PoolAddressPid(address pool) external view returns (uint256);

    function nonfungiblePositionManager() external view returns (INonfungiblePositionManager);

    function WETH() external view returns (address);

    function CAKE() external view returns (IERC20);

    /// @notice View function for checking pending CAKE rewards.
    /// @dev The pending cake amount is based on the last state in LMPool. The actual amount will happen whenever liquidity changes or harvest.
    /// @param _tokenId Token Id of NFT.
    /// @return reward Pending reward.
    function pendingCake(uint256 _tokenId) external view returns (uint256 reward);

    struct DepositCache {
        address token0;
        address token1;
        uint24 fee;
        int24 tickLower;
        int24 tickUpper;
        uint128 liquidity;
    }

    /// @notice harvest cake from pool.
    /// @param _tokenId Token Id of NFT.
    /// @param _to Address to.
    /// @return reward Cake reward.
    function harvest(uint256 _tokenId, address _to) external returns (uint256 reward);

    /// @notice Withdraw LP tokens from pool.
    /// @param _tokenId Token Id of NFT to deposit.
    /// @param _to Address to which NFT token to withdraw.
    /// @return reward Cake reward.
    function withdraw(uint256 _tokenId, address _to) external returns (uint256 reward);

    /// @notice Update liquidity for the NFT position.
    /// @param _tokenId Token Id of NFT to update.
    function updateLiquidity(uint256 _tokenId) external;

    /// @notice Increases the amount of liquidity in a position, with tokens paid by the `msg.sender`
    /// @param params tokenId The ID of the token for which liquidity is being increased,
    /// amount0Desired The desired amount of token0 to be spent,
    /// amount1Desired The desired amount of token1 to be spent,
    /// amount0Min The minimum amount of token0 to spend, which serves as a slippage check,
    /// amount1Min The minimum amount of token1 to spend, which serves as a slippage check,
    /// deadline The time by which the transaction must be included to effect the change
    /// @return liquidity The new liquidity amount as a result of the increase
    /// @return amount0 The amount of token0 to acheive resulting liquidity
    /// @return amount1 The amount of token1 to acheive resulting liquidity
    function increaseLiquidity(IncreaseLiquidityParams memory params)
        external
        payable
        returns (uint128 liquidity, uint256 amount0, uint256 amount1);

    /// @notice Decreases the amount of liquidity in a position and accounts it to the position
    /// @param params tokenId The ID of the token for which liquidity is being decreased,
    /// amount The amount by which liquidity will be decreased,
    /// amount0Min The minimum amount of token0 that should be accounted for the burned liquidity,
    /// amount1Min The minimum amount of token1 that should be accounted for the burned liquidity,
    /// deadline The time by which the transaction must be included to effect the change
    /// @return amount0 The amount of token0 accounted to the position's tokens owed
    /// @return amount1 The amount of token1 accounted to the position's tokens owed
    function decreaseLiquidity(DecreaseLiquidityParams memory params)
        external
        returns (uint256 amount0, uint256 amount1);

    /// @notice Collects up to a maximum amount of fees owed to a specific position to the recipient
    /// @param params tokenId The ID of the NFT for which tokens are being collected,
    /// recipient The account that should receive the tokens,
    /// @dev Warning!!! Please make sure to use multicall to call unwrapWETH9 or sweepToken when set recipient address(0), or you will lose your funds.
    /// amount0Max The maximum amount of token0 to collect,
    /// amount1Max The maximum amount of token1 to collect
    /// @return amount0 The amount of fees collected in token0
    /// @return amount1 The amount of fees collected in token1
    function collect(CollectParams memory params) external returns (uint256 amount0, uint256 amount1);

    /// @notice Collects up to a maximum amount of fees owed to a specific position to the recipient, then refund.
    /// @param params CollectParams.
    /// @param to Refund recipent.
    /// @return amount0 The amount of fees collected in token0
    /// @return amount1 The amount of fees collected in token1
    function collectTo(CollectParams memory params, address to) external returns (uint256 amount0, uint256 amount1);

    /// @notice Burns a token ID, which deletes it from the NFT contract. The token must have 0 liquidity and all tokens
    /// must be collected first.
    /// @param _tokenId The ID of the token that is being burned
    function burn(uint256 _tokenId) external;
}
