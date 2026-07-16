// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import "./interfaces/external/uniswap/INonfungiblePositionManager.sol";
import "./Sickle.sol";

struct RebalanceKey {
    Sickle sickle;
    INonfungiblePositionManager nftManager;
    uint256 tokenId;
}

struct RebalanceConfig {
    int24 tickLow;
    int24 tickHigh;
    uint8 slippageBP;
}

abstract contract RebalanceRegistry {
    error OnlySickle();

    event RebalanceConfigSet(RebalanceKey key, RebalanceConfig config);

    event RebalanceConfigUnset(RebalanceKey key);

    mapping(bytes32 => RebalanceConfig) public rebalanceConfigs;

    function getRebalanceConfig(RebalanceKey memory key)
        public
        view
        returns (RebalanceConfig memory)
    {
        return rebalanceConfigs[keccak256(abi.encode(key))];
    }

    function _set_rebalance_config(
        RebalanceKey memory key,
        RebalanceConfig memory config
    ) internal {
        rebalanceConfigs[keccak256(abi.encode(key))] = config;
        emit RebalanceConfigSet(key, config);
    }

    function _unset_rebalance_config(RebalanceKey memory key) internal {
        delete rebalanceConfigs[keccak256(abi.encode(key))];
        emit RebalanceConfigUnset(key);
    }

    function resetRebalanceConfig(
        RebalanceKey calldata oldKey,
        RebalanceKey calldata newKey,
        RebalanceConfig calldata config
    ) external {
        Sickle sickle = Sickle(payable(msg.sender));

        if (oldKey.sickle != sickle || newKey.sickle != sickle) {
            revert OnlySickle();
        }

        _unset_rebalance_config(oldKey);

        _set_rebalance_config(newKey, config);
    }
}
