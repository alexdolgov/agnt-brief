// SPDX-License-Identifier: BUSL-1.1
pragma solidity >=0.8.0;

import "@gammaswap/v1-core/contracts/libraries/AddressCalculator.sol";

import "../interfaces/IGammaVaultFactory.sol";

/// @title Library used calculate the deterministic addresses used to instantiate GammaVaults
/// @author Daniel D. Alcarraz (https://github.com/0xDanr)
/// @dev These algorithms are based on EIP-1014 (https://eips.ethereum.org/EIPS/eip-1014)
library VaultAddressCalculator {
    /// @dev calculate salt used to create deterministic address, the salt is also used as unique key identifier for the GammaVault
    /// @param assetToken - address of asset token the GammaVault is for
    /// @param lpPool - address of concentrated liquidity pool the GammaVault is for
    /// @param gsPool - address of GS pool the GammaVault is for
    /// @param protocolId - protocol id of instance address the GammaVault will use (version of GammaVault)
    /// @param strategyId - strategy id of instance address the GammaVault will use (version of GammaVault)
    /// @return key - key/salt used as unique identifier of GammaVault
    function getGammaVaultKey(address assetToken, address lpPool, address gsPool, uint16 protocolId, uint16 strategyId) internal pure returns(bytes32) {
        return keccak256(abi.encode(assetToken, lpPool, gsPool, protocolId, strategyId));
    }

    /// @dev calculate deterministic address to instantiate GammaVault minimal beacon proxy or minimal proxy contract
    /// @param factory - address of factory that will instantiate GammaVault proxy contract
    /// @param protocolId - protocol id of instance address the GammaVault will use (version of this GammaVault)
    /// @param key - salt used in address generation to assure its uniqueness
    /// @return _address - address of GammaVault that maps to protocolId and key
    function calcAddress(address factory, uint16 protocolId, bytes32 key) internal view returns (address) {
        return predictDeterministicAddress(IGammaVaultFactory(factory).getProtocolBeacon(protocolId), protocolId, key, factory);
    }
    /// @dev Compute bytecode of a minimal beacon proxy contract, excluding bytecode metadata hash
    /// @param beacon - address of beacon of minimal beacon proxy
    /// @param protocolId - id of protocol
    /// @param factory - address of factory that instantiated or will instantiate this contract
    /// @return bytecode - the calculated bytecode for minimal beacon proxy contract
    function calcMinimalBeaconProxyBytecode(
        address beacon,
        uint16 protocolId,
        address factory
    ) internal pure returns(bytes memory) {
        return AddressCalculator.calcMinimalBeaconProxyBytecode(beacon, protocolId, factory);
    }

    /// @dev Computes the address of a minimal beacon proxy contract
    /// @param protocolId - id of protocol
    /// @param salt - salt used in address generation to assure its uniqueness
    /// @param factory - address of factory that instantiated or will instantiate this contract
    /// @return predicted - the calculated address
    function predictDeterministicAddress(
        address beacon,
        uint16 protocolId,
        bytes32 salt,
        address factory
    ) internal pure returns (address) {
        return AddressCalculator.predictDeterministicAddress(beacon, protocolId, salt, factory);
    }
}