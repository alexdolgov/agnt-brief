// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.20;

library LibStellarBridgeModule {
    event PTBridgeChange(address indexed previousPTBridge, address indexed newPTBridge);

    // EIP-7201: keccak256(abi.encode(uint256(keccak256("spectra.module.stellar.bridge")) - 1)) & ~bytes32(uint256(0xff))
    bytes32 constant STELLAR_BRIDGE_STORAGE_POSITION =
        keccak256(abi.encode(uint256(keccak256("spectra.module.stellar.bridge")) - 1)) & ~bytes32(uint256(0xff));

    struct StellarBridgeModuleStorage {
        // @dev: address of the PT bridge contract
        address ptBridge;
    }

    function stellarBridgeStorage() internal pure returns (StellarBridgeModuleStorage storage sbs) {
        bytes32 position = STELLAR_BRIDGE_STORAGE_POSITION;
        assembly {
            sbs.slot := position
        }
    }

    function setPTBridge(address _ptBridge) internal {
        emit PTBridgeChange(stellarBridgeStorage().ptBridge, _ptBridge);
        stellarBridgeStorage().ptBridge = _ptBridge;
    }
}
