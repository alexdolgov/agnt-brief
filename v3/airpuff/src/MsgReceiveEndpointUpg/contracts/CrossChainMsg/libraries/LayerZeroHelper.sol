// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.23;

library LayerZeroHelper {
    uint256 constant EVM_ADDRESS_SIZE = 20;

    function _getFirstAddressFromPath(bytes memory path) internal pure returns (address dst) {
        assembly {
            dst := mload(add(add(path, EVM_ADDRESS_SIZE), 0))
        }
    }

    //     function _getLayerZeroChainIds(uint256 chainId) internal pure returns (uint16) {
    //         //mainnet
    //         if (chainId == 1) return 101;
    //         //arb mainnet
    //         else if (chainId == 42161) return 110;
    //         //mode
    //         else if (chainId == 34443) return 260;
    //         //Base
    //         else if (chainId == 8453) return 184;
    //         //Blast
    //         else if (chainId == 238) return 243;
    //         // mantle
    //         else if (chainId == 5000) return 181;
    //         // optimism
    //         else if (chainId == 10) return 111;
    //         // BnB Chain
    //         else if (chainId == 56) return 102;
    //         assert(false);
    //     }
    //
    //     function _getOriginalChainIds(uint16 chainId) internal pure returns (uint256) {
    //         // Mainnet
    //         if (chainId == 101) return 1;
    //         // Arb Mainnet
    //         else if (chainId == 110) return 42161;
    //         // Matic
    //         else if (chainId == 260) return 34443;
    //         // Base
    //         else if (chainId == 184) return 8453;
    //         // Blast
    //         else if (chainId == 243) return 238;
    //         // Mantle
    //         else if (chainId == 181) return 5000;
    //         // Optimism
    //         else if (chainId == 111) return 10;
    //         // BNB Chain
    //         else if (chainId == 102) return 56;
    //         assert(false);
    //     }
}
