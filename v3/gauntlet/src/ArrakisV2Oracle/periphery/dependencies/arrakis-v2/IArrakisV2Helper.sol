// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.21;

import {IArrakisV2} from "./IArrakisV2.sol";

interface IArrakisV2Helper {
    /// @notice get underlying.
    /// @param vault_ Arrakis V2 vault to get underlying info about.
    /// @return amount0 amount of underlying of token 0 of LPs.
    /// @return amount1 amount of underlying of token 1 of LPs.
    function totalUnderlying(IArrakisV2 vault_)
        external
        view
        returns (uint256 amount0, uint256 amount1);
}
