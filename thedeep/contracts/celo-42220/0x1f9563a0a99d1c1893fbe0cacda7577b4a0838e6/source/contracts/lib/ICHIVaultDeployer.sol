// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.7.6;

import { ICHIVault } from "../ICHIVault.sol";
import { ICLFactory } from "@velodrome-finance/concentrated-liquidity/contracts/core/interfaces/ICLFactory.sol";

library ICHIVaultDeployer {
    function createICHIVault(
        address pool,
        address token0,
        bool allowToken0,
        address token1,
        bool allowToken1,
        int24 tickSpacing,
        uint32 twapPeriod
    ) public returns (address ichiVault) {
        ichiVault = address(
            new ICHIVault{
                salt: keccak256(
                    abi.encodePacked(msg.sender, token0, allowToken0, token1, allowToken1, tickSpacing)
                )
            }(pool, allowToken0, allowToken1, msg.sender, twapPeriod)
        );
    }
}
