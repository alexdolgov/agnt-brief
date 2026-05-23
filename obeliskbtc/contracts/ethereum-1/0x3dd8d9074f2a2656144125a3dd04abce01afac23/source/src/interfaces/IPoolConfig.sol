// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.8;

interface IPoolConfig {
    struct Config {
        address lsdPoolImplementation;
        address noCustodialPoolImplementation;
        address depositContract;
        address dao;
        address poolOwner;
        address daoTreasury;
        address validatorManager;
        address validatorRegistry;
        address poolRegistry;
        address rateManager;
        uint256 defaultApr;
        uint256 commissionRate;
    }

    function getConfig() external view returns (Config memory);
    function getCommissionRate() external view returns (uint256, uint256);

    event PoolOwnerChanged(address _oldPoolOwner, address _poolOwner);
    event LsdPoolImplementationChanged(address _oldLsdPoolImplementation, address _lsdPoolImplementation);
    event NoCustodialPoolImplementationChanged(
        address _oldNoCustodialPoolImplementation, address _noCustodialPoolImplementation
    );
    event DaoTreasuryChanged(address _oldDaoTreasury, address _daoTreasury);
    event ValidatorManagerChanged(address _oldValidatorManager, address _validatorManager);
    event ValidatorRegistryChanged(address _oldValidatorRegistry, address _validatorRegistry);
    event PoolRegistryChanged(address _oldPoolRegistry, address _poolRegistry);
    event RateManagerChanged(address _oldRateManager, address _rateManager);
    event DefaultAprChanged(uint256 _oldDefaultApr, uint256 _defaultApr);
    event CommissionRateChanged(uint256 _oldCommissionRate, uint256 _commissionRate);
}
