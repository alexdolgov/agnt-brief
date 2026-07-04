// SPDX-License-Identifier: MIT
pragma solidity ^0.8.14;

interface IProviderRegistry {

    event ProviderRegistered(address indexed provider, uint16 commission, uint256 providersCount);

    event KeysIncreased(address indexed provider, uint32 totalKeys, uint32 fromKey, uint32 toKey);

    event KeysUsed(address indexed provider, uint32 totalKeysUsed);

    event StakingPoolChanged(address newPool, address oldPool);

    event IssueLimitChanged(uint32 newLimit, uint32 oldLimit);

    event ValidatorManagerChanged(address sender, address oldManager, address newManager);

    function registerProvider(address provider, uint16 commission) external;

    function issueKeys(uint32 count) external;

    function useKeys(address provider, uint32 count) external;

    // @return tuple <commission, totalKeys, usedKeys, registered>
    function getProvider(address providerAddress) external view returns (uint16, uint32, uint32, bool);

    // @return tuple <available capacity, total capacity, available keys>
    function getProviderStats(address providerAddress) external view returns (uint128, uint128, uint32);

    // @return key count * 32 ether
    function getTotalCapacity(address provider) external view returns (uint128);

    function getProvidersCount() external view returns (uint32);

    function getProviders() external view returns (address[] memory);

    function getTotalCommission(address provider) external view returns (uint16);
}
