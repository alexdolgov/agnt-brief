// SPDX-License-Identifier: MIT
pragma solidity ^0.8.14;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

import "./IProviderRegistry.sol";
import "./IStakingPool.sol";
import "./IValidatorManager.sol";

interface IStakingConfig {

    event StakingPoolChanged(IStakingPool oldPool, IStakingPool newPool);

    event ProviderRegistryChanged(IProviderRegistry oldRegistry, IProviderRegistry newRegistry);

    event ValidatorManagerChanged(IValidatorManager oldManager, IValidatorManager newManager);

    event CommissionChanged(uint16 oldCommission, uint16 newCommission);

    function changeStakingPool(IStakingPool pool) external;

    function changeProviderRegistry(IProviderRegistry registry) external;

    function changeValidatorManager(IValidatorManager validatorManager) external;

    function changeCommission(uint16 commission) external;

    function getStakingPool() external view returns (IStakingPool);

    function getProviderRegistry() external view returns (IProviderRegistry);

    function getValidatorManager() external view returns (IValidatorManager);

    function getCommission() external view returns (uint16);

    function getGovernance() external view returns (address);

    function getConsensus() external view returns (address);

    function getStakeToken() external view returns (IERC20);

    function isNative() external view returns (bool);
}
