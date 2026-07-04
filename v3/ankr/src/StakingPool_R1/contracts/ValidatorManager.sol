// SPDX-License-Identifier: MIT
pragma solidity ^0.8.14;

import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/security/ReentrancyGuardUpgradeable.sol";
import "./interfaces/IStakingPool.sol";
import "./interfaces/IProviderRegistry.sol";
import "./interfaces/IValidatorManager.sol";
import "./interfaces/ITipCollector.sol";
import "./interfaces/IRewardPool.sol";
import "./interfaces/IStakingConfig.sol";
import "./TipCollector.sol";
import "./RewardPool.sol";

contract ValidatorManager is OwnableUpgradeable, IValidatorManager, ReentrancyGuardUpgradeable {

    mapping(address => RewardPoolData) internal _pools;
    struct RewardPoolData {
        // claimed rewards by users
        mapping(address => uint128) claimed;
        IRewardPool rewardPool;
        uint128 commissionClaimed;
        // pendingReward stores rewards on beacon chain with 9 decimals
        uint64 pendingReward;
    }

    mapping(address => CollectorData) internal _collectors;
    struct CollectorData {
        // claimed rewards by users
        mapping(address => uint128) claimed;
        ITipCollector collector;
        uint128 providerClaimed;
    }

    IStakingConfig internal _config;

    modifier onlyRegistry() {
        require(msg.sender == address(_config.getProviderRegistry()), "ValidatorManager: only registry allowed");
        _;
    }

    modifier onlyConsensus() {
        require(msg.sender == _config.getConsensus(), "ValidatorManager: only consensus allowed");
        _;
    }

    function initialize(IStakingConfig config) public initializer {
        __Ownable_init();
        __ReentrancyGuard_init();
        _config = config;
    }

    // Deployment

    // @dev not used in Gnosis staking
    function deployCollector(address provider) external override onlyRegistry {
        _deployCollectorIfNotExist(provider);
    }

    function deployRewardPool(address provider) external override onlyRegistry {
        _deployRewardPoolIfNotExist(provider);
    }

    // TODO: use proxy?
    function _deployCollectorIfNotExist(address provider) internal {
        require(_config.isNative(), "ValidatorManager: tip collector not available for ERC20 staking");
        CollectorData storage data = _collectors[provider];
        if (address(data.collector) == address(0x00)) {
            TipCollector collector = new TipCollector();
            collector.initAndObtainOwnership();
            data.collector = collector;
            emit TipCollectorAdded(provider, address(collector));
        }
    }

    // TODO: use proxy?
    function _deployRewardPoolIfNotExist(address provider) internal {
        if (address(_pools[provider].rewardPool) == address(0x00)) {
            RewardPool rewardPool = new RewardPool();
            rewardPool.initAndObtainOwnership(_config);
            _pools[provider].rewardPool = rewardPool;
            emit RewardPoolAdded(provider, address(rewardPool));
        }
    }

    function getCollector(address provider) external view returns (address) {
        return address(_collectors[provider].collector);
    }

    function getRewardPool(address provider) external view returns (address) {
        return address(_pools[provider].rewardPool);
    }

    // Tip Collectors

    function getTotalTipReward(address provider) public override view returns (uint256) {
        return _collectors[provider].collector.getTotalRewarded();
    }

    // Reward Pools

    function publishPendingRewards(address[] calldata providers, uint64[] calldata rewards) external onlyConsensus {
        require(providers.length == rewards.length, "ValidatorManager: providers length should be equal to rewards");
        for (uint256 i = 0; i < providers.length; i++) {
            require(_pools[providers[i]].pendingReward <= rewards[i], "ValidatorManager: reward cannot be decreased");
            _pools[providers[i]].pendingReward = rewards[i];
        }
    }

    // mul for 1e9 needed to convert from 9 decimals to 18
    function getPendingReward(address provider) public override view returns (uint256) {
        return uint256(_pools[provider].pendingReward) * 1e9;
    }
}
