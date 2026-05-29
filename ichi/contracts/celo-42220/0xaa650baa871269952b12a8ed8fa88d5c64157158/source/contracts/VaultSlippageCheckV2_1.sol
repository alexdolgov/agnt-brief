// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.7.6;

import { Ownable } from "@openzeppelin/contracts/access/Ownable.sol";
import { IUniswapV3Pool } from "@uniswap/v3-core/contracts/interfaces/IUniswapV3Pool.sol";
import { IGnosisSafe } from "./interfaces/IGnosisSafe.sol";
import { IICHIVault } from "./interfaces/IICHIVault.sol";
import { IVaultSlippageCheckV2 } from "./interfaces/IVaultSlippageCheckV2.sol";
import { Enum } from "./common/Enum.sol";

/// @dev a more permissive version of VaultSlippageCheckV2 which allows for observations in the current block
/// whereas VaultSlippageCheckV2 does check and disallow rebalances if there is an observation that occured previously in the current block
contract VaultSlippageCheckV2_1 is Ownable, IVaultSlippageCheckV2 {

    /// @inheritdoc IVaultSlippageCheckV2
    function rebalance(
        address gnosis,
        address vault,
        int24 expectedCurrentTick,
        int24 baseLower,
        int24 baseUpper,
        int24 limitLower,
        int24 limitUpper,
        int256 swapQuantity,
        int24 range
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
    }

    /**
     * @notice Checks if the pool's current tick is within the allowed range of the expected tick
     * @param vault Address of the vault.
     * @param expectedTick The expected current tick.
     * @param range The allowed range (+/-) around the expected tick.
     */
    function isWithinRange(address vault, int24 expectedTick, int24 range) private view returns (bool _isWithinRange) {
        address pool = IICHIVault(vault).pool();
        (, int24 currentTick, uint16 observationIndex, , , , ) = IUniswapV3Pool(pool).slot0();
        // Check if the current tick is within the allowed range
        _isWithinRange = (currentTick >= (expectedTick - range)) && (currentTick <= (expectedTick + range));
    }
}