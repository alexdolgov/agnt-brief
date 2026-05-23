// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface IAddressesProvider {
    event AddressSet(bytes32 id, address indexed newAddress);
    event RewardDistributorUpdated(address indexed newAddress);
    event AssetPriceOracleUpdated(address indexed newAddress);
    event RewardDistributorAdminUpdated(address indexed newAddress);
    event EmergencyAdminUpdated(address indexed newAddress);
    event PropertyFactoryUpdated(address indexed newAddress);
    event PropertyFactoryAdminUpdated(address indexed newAddress);
    event CoreManagerUpdated(address indexed newAddress);
    event CoreManagerAdminUpdated(address indexed newAddress);
    event AccessManagerUpdated(address indexed newAddress);
    event CommissionsDistributorUpdated(address indexed newAddress);
    event KycStoreUpdated(address indexed newAddress);

    function setAddress(bytes32 id, address newAddress) external;

    function getAddress(bytes32 id) external view returns (address);

    function getRewardsDistributor() external view returns (address);

    function setRewardsDistributor(address _rewardDistributor) external;

    function getAssetPriceOracle() external view returns (address);

    function setAssetPriceOracle(address _assetPriceOracle) external;

    function getRewardsDistributorAdmin() external view returns (address);

    function setRewardsDistributorAdmin(address _rewardDistributorAdmin) external;

    function getEmergencyAdmin() external view returns (address);

    function setEmergencyAdmin(address _emergencyAdmin) external;

    function getPropertyFactory() external view returns (address);

    function setPropertyFactory(address _propertyFactory) external;

    function getPropertyFactoryAdmin() external view returns (address);

    function setPropertyFactoryAdmin(address _propertyFactoryAdmin) external;

    function getCoreManager() external view returns (address);

    function setCoreManager(address _coreManager) external;

    function setAccessManager(address _accessManager) external;

    function getAccessManager() external view returns (address);

    function setCommissionsDistributor(address _commissionsDistributor) external;

    function getCommissionsDistributor() external view returns (address);

    function setKycStore(address _address) external;

    function getKycStore() external view returns (address);
}
