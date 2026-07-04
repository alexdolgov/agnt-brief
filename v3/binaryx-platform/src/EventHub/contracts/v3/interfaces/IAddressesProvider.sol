// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface IAddressesProvider {
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
    event ResellPoolFactoryUpdated(address indexed newAddress);
    event OracleManagerUpdated(address indexed newAddress);
    event AddressUpdated(bytes32 name, address newAddress);

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

    function getResellPoolFactory() external view returns (address);

    function setResellPoolFactory(address _address) external;

    function getOracleManager() external view returns (address);

    function setOracleManager(address _address) external;

    function getOffPlanFactory() external view returns (address);
    function setOffPlanFactory(address _address) external;

    function getChainLinkUsdtOracle() external view returns (address);
    function setChainLinkUsdtOracle(address _address) external;

    function getOffPlanService() external view returns (address);
    function setOffPlanService(address _address) external;

    function getUsdt() external view returns (address);
    function setUsdt(address _address) external;

    function getOffPlanUiStorage() external view returns (address);
    function setOffPlanUiStorage(address _address) external;

    function getEventHub() external view returns (address);
    function setEventHub(address _address) external;
}
