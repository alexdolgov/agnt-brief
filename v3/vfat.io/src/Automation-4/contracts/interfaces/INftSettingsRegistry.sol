// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import { IUniswapV3Pool } from
    "contracts/interfaces/external/uniswap/IUniswapV3Pool.sol";
import { INonfungiblePositionManager } from
    "contracts/interfaces/external/uniswap/INonfungiblePositionManager.sol";
import { Sickle } from "contracts/Sickle.sol";

struct NftKey {
    Sickle sickle;
    INonfungiblePositionManager nftManager;
    uint256 tokenId;
}

/**
 * @notice Settings for automatic rebalancing
 * @param diffToRebalanceBelowTick: Difference from position tickLower to
 * rebalance below
 * Default: 0 (always rebalance if tick < tickLower)
 * @param diffToRebalanceAboveTick: Difference from position tickUpper to
 * rebalance above
 * Default: 0 (always rebalance if tick >= tickUpper)
 * @param slippageBP: Slippage in basis points
 * Used for price impact as well
 * @param stopLossTickLow: stop rebalancing below this tick
 * default: MIN_TICK (no stop loss)
 * @param stopLossTickHigh: stop rebalancing above this tick
 * default: MAX_TICK (no stop loss)
 * @param delayMin: delay in minutes before rebalancing
 */
struct RebalanceConfig {
    uint24 diffToRebalanceBelowTick;
    uint24 diffToRebalanceAboveTick;
    uint256 slippageBP;
    int24 stopLossTickLow;
    int24 stopLossTickHigh;
    uint8 delayMin;
}

enum RewardBehavior {
    Compound,
    Harvest
}

struct NftSettings {
    bool autoRebalance;
    RewardBehavior rewardBehavior;
    address harvestTokenOut;
    RebalanceConfig rebalanceConfig;
}

struct NftInfo {
    IUniswapV3Pool pool;
    INonfungiblePositionManager nftManager;
    uint256 tokenId;
}

interface INftSettingsRegistry {
    function getNftSettings(NftKey calldata key)
        external
        view
        returns (NftSettings memory);

    function resetNftSettings(
        NftKey calldata oldKey,
        NftKey calldata newKey,
        NftSettings calldata settings
    ) external;
}
