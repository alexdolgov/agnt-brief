// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.7.6;

import { Ownable } from "@openzeppelin/contracts/access/Ownable.sol";
import { IUniswapV3Pool } from "@uniswap/v3-core/contracts/interfaces/IUniswapV3Pool.sol";
import { IGnosisSafe } from "./interfaces/IGnosisSafe.sol";
import { IICHIVault } from "./interfaces/IICHIVault.sol";
import { IVaultSlippageCheckV3 } from "./interfaces/IVaultSlippageCheckV3.sol";
import { Enum } from "./common/Enum.sol";

/// @dev VaultSlippageCheckV2_1 with an additional check for post-rebalance current tick
contract VaultSlippageCheckV3 is Ownable, IVaultSlippageCheckV3 {
    /**
    @notice rebalances an ICHIVault uses hysteresis to detect if rebalance is risky and reverts calls gnosis execTransactionFromModule
    @param gnosis Gnosis safe that owns the vault
    @param vault ICHIVault address
    @param expectedCurrentTick Expected current tick before the rebalance
    @param range The allowed range (+/-) around the expected current tick
    @param baseLower The lower tick of the base position
    @param baseUpper The upper tick of the base position
    @param limitLower The lower tick of the limit position
    @param limitUpper The upper tick of the limit position
    @param swapQuantity Quantity of tokens to swap; if quantity is positive, `swapQuantity` token0 are swapped for token1, if negative, `swapQuantity` token1 is swapped for token0
    @param expectedPostRebalanceTick Expected tick after the rebalance
    @param postRebalanceRange The allowed range (+/-) around the expected post-rebalance tick
    */
    function rebalance(
        address gnosis,
        address vault,
        int24 expectedCurrentTick,
        int24 range,
        int24 baseLower,
        int24 baseUpper,
        int24 limitLower,
        int24 limitUpper,
        int256 swapQuantity,
        int24 expectedPostRebalanceTick,
        int24 postRebalanceRange
    ) external override onlyOwner {
        require(isWithinRange(vault, expectedCurrentTick, range), "RB.swap: front runner");

        IGnosisSafe(gnosis).execTransactionFromModule(
            vault,
            0,
            abi.encodeWithSelector(
                IICHIVault.rebalance.selector,
                baseLower,
                baseUpper,
                limitLower,
                limitUpper,
                swapQuantity
            ),
            Enum.Operation.Call
        );

        require(isWithinRange(vault, expectedPostRebalanceTick, postRebalanceRange), "RB.swap: unexpected current tick");
    }

    /**
     * @notice Checks if the pool's current tick is within the allowed range of the expected tick
     * @param vault Address of the vault.
     * @param expectedTick The expected current tick.
     * @param range The allowed range (+/-) around the expected tick.
     */
    function isWithinRange(address vault, int24 expectedTick, int24 range) private view returns (bool _isWithinRange) {
        address pool = IICHIVault(vault).pool();
        (, int24 currentTick, , , , , ) = IUniswapV3Pool(pool).slot0();
        // Check if the current tick is within the allowed range
        _isWithinRange = (currentTick >= (expectedTick - range)) && (currentTick <= (expectedTick + range));
    }
}