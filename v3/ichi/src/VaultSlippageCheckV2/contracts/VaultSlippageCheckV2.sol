// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.7.6;

import { Ownable } from "@openzeppelin/contracts/access/Ownable.sol";
import { IUniswapV3Pool } from "@uniswap/v3-core/contracts/interfaces/IUniswapV3Pool.sol";
import { IGnosisSafe } from "./interfaces/IGnosisSafe.sol";
import { IICHIVault } from "./interfaces/IICHIVault.sol";
import { IVaultSlippageCheckV2 } from "./interfaces/IVaultSlippageCheckV2.sol";
import { Enum } from "./common/Enum.sol";

contract VaultSlippageCheckV2 is Ownable, IVaultSlippageCheckV2 {
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
        require(checkHysteresis(vault, expectedCurrentTick, range), "RB.swap: front runner");

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
     * @notice Checks if the last price change occurred in the current block and
     *         whether the current tick is within an allowed range of the expected tick.
     * @param vault Address of the vault.
     * @param expectedTick The expected current tick.
     * @param range The allowed range (+/-) around the expected tick.
     */
    function checkHysteresis(address vault, int24 expectedTick, int24 range) private view returns (bool) {
        address pool = IICHIVault(vault).pool();
        (, int24 currentTick, uint16 observationIndex, , , , ) = IUniswapV3Pool(pool).slot0();

        // Check if the current tick is within the allowed range
        bool isWithinRange = (currentTick >= (expectedTick - range)) && (currentTick <= (expectedTick + range));

        // Return false if the current tick is not within the allowed tick range
        if (!isWithinRange) return false;

        // Check if the last price change was in the current block
        (uint32 blockTimestamp, , , ) = IUniswapV3Pool(pool).observations(observationIndex);
        return (block.timestamp != blockTimestamp);
    }
}
