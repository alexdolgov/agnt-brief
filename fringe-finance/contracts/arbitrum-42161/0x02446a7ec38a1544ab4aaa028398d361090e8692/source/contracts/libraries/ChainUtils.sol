// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

import "../interfaces/IArbSys.sol";

/**
 * @custom:version 6.4.3
 */
library ChainUtils {
    uint256 private constant ARBITRUM_MAINNET = 42161;
    uint256 private constant ARBITRUM_GOERLI = 421613;
    IArbSys private constant ARB_SYS = IArbSys(address(100));

    function getBlockNumber() internal view returns (uint256) {
        if (block.chainid == ARBITRUM_MAINNET || block.chainid == ARBITRUM_GOERLI) {
            return ARB_SYS.arbBlockNumber();
        }

        return block.number;
    }

    function getUint48BlockNumber(uint256 blockNumber) internal pure returns (uint48) {
        require(blockNumber <= type(uint48).max, "OVERFLOW");
        return uint48(blockNumber);
    }
}
