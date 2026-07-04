// SPDX-License-Identifier: MIT
pragma solidity ^0.8.14;

import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "./interfaces/IProviderRegistry.sol";
import "./interfaces/IInsurancePool.sol";
import "./interfaces/IStakingPool.sol";
import "./interfaces/IStakingConfig.sol";

contract StakingConfig is OwnableUpgradeable, IStakingConfig {

    IERC20 internal _stakeToken;
    address internal _governance;
    address internal _consensus;
    IProviderRegistry internal _registry;
    IStakingPool internal _stakingPool;
    IInsurancePool internal _insurancePool;
    IValidatorManager internal _validatorManager;
    uint16 internal _commission; // commission of system
    bool internal _native;

    function initialize(IERC20 stakeToken, address governance, uint16 commission, address consensus) public initializer {
        __Ownable_init();
        _stakeToken = stakeToken;
        _governance = governance;
        _consensus = consensus;
        _native = address(_stakeToken) == address(0x00);
        _commission = commission;
    }

    function changeStakingPool(IStakingPool stakingPool) external override onlyOwner {
        IStakingPool oldPool = _stakingPool;
        _stakingPool = stakingPool;
        emit StakingPoolChanged(oldPool, stakingPool);
    }

    function changeProviderRegistry(IProviderRegistry providerRegistry) external override onlyOwner {
        IProviderRegistry oldRegistry = _registry;
        _registry = providerRegistry;
        emit ProviderRegistryChanged(oldRegistry, providerRegistry);
    }

    function changeValidatorManager(IValidatorManager validatorManager) external override onlyOwner {
        IValidatorManager oldManager = _validatorManager;
        _validatorManager = validatorManager;
        emit ValidatorManagerChanged(oldManager, validatorManager);
    }

    function changeCommission(uint16 commission) external override onlyOwner {
        uint16 oldCommission = _commission;
        _commission = commission;
        emit CommissionChanged(oldCommission, commission);
    }

    function getStakingPool() external override view returns (IStakingPool) {
        return _stakingPool;
    }

    function getProviderRegistry() external override view returns (IProviderRegistry) {
        return _registry;
    }

    function getValidatorManager() external override view returns (IValidatorManager) {
        return _validatorManager;
    }

    function getCommission() external override view returns (uint16) {
        return _commission;
    }

    function getGovernance() external override view returns (address) {
        return _governance;
    }

    function getConsensus() external override view returns (address) {
        return _consensus;
    }

    function getStakeToken() external override view returns (IERC20) {
        return _stakeToken;
    }

    function isNative() external override view returns (bool) {
        return _native;
    }

}
