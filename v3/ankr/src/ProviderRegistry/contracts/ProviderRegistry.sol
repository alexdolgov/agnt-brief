// SPDX-License-Identifier: MIT
pragma solidity ^0.8.14;

import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/utils/math/MathUpgradeable.sol";

import "./interfaces/IProviderRegistry.sol";
import "./interfaces/IStakingConfig.sol";

// @dev manage providers, issued and used key count
contract ProviderRegistry is IProviderRegistry, OwnableUpgradeable {

    using MathUpgradeable for uint256;

    uint72 public constant KEY_CAPACITY = 32 ether;

    // limit the issue in one transaction to prevent spending of all available key indexes
    uint32 internal _issueLimit;
    uint32 internal _totalKeys;
    uint32 internal _usedKeys;
    IStakingConfig internal _config;

    Registry internal _registry;
    struct Registry {
        address[] providers;
        mapping(address => Provider) values;
        mapping(address => uint32) indexOf;
        mapping(address => bool) registered;
    }

    struct Provider {
        uint32 totalKeys;
        uint32 usedKeys;
        // scale is 2; 0-100.00%, not changeable
        uint16 commission;
    }

    modifier onlyStakingPool() {
        require(msg.sender == address(_config.getStakingPool()), "ProviderRegistry: pool not allowed");
        _;
    }

    modifier onlyGovernance() {
        require(msg.sender == _config.getGovernance(), "ProviderRegistry: governance not allowed");
        _;
    }

    modifier onlyRegisteredProvider() {
        require(_registry.registered[msg.sender], "ProviderRegistry: provider not registered");
        _;
    }

    function initialize(IStakingConfig config) public initializer {
        __Ownable_init();
        _config = config;
        _issueLimit = 2000;
    }

    // register new provider by governance
    function registerProvider(address provider, uint16 commission) external override onlyGovernance {
        require(commission <= 10000, "ProviderRegistry: commission must be not greater than 10000");
        require(!_registry.registered[provider], "ProviderRegistry: provider already registered");

        Provider memory providerData = Provider(0, 0, commission);
        _setProvider(provider, providerData);

        if (_config.isNative()) {
            _config.getValidatorManager().deployCollector(provider);
        }
        _config.getValidatorManager().deployRewardPool(provider);
        emit ProviderRegistered(provider, commission, _registry.providers.length);
    }

    // issue N keys for provider, to increase capacity
    function issueKeys(uint32 count) external override onlyRegisteredProvider {
        require(count <= _issueLimit, "ProviderRegistry: key issue limit reach");
        uint32 fromKey = _totalKeys;
        _registry.values[msg.sender].totalKeys += count;
        _totalKeys += count;
        emit KeysIncreased(msg.sender, _registry.values[msg.sender].totalKeys, fromKey, _totalKeys);
    }

    // mark N keys as used, this keys should be deposited to beacon chain by backend
    function useKeys(address provider, uint32 count) external override onlyStakingPool {
        _registry.values[provider].usedKeys += count;
        _usedKeys += count;
        require(_registry.values[provider].usedKeys <= _registry.values[provider].totalKeys, "ProviderRegistry: provider keys overflow");
        require(_usedKeys <= _totalKeys, "ProviderRegistry: contract keys overflow");
        emit KeysUsed(provider, _registry.values[provider].usedKeys);
    }

    function changeIssueLimit(uint32 limit) external onlyGovernance {
        uint32 oldLimit = _issueLimit;
        _issueLimit = limit;
        emit IssueLimitChanged(limit, oldLimit);
    }

    // @return provider data such as commission, total keys, used keys, register status
    function getProvider(address providerAddress) public override view returns (uint16 commission, uint32 totalKeys, uint32 usedKeys, bool registered) {
        Provider storage provider = _get(providerAddress);
        return (provider.commission, provider.totalKeys, provider.usedKeys, _getRegistered(providerAddress));
    }

    // @returns total staking capacity of provider
    function getTotalCapacity(address provider) external override view returns (uint128) {
        (,uint32 totalKeys,,) = getProvider(provider);
        return uint128(totalKeys) * KEY_CAPACITY;
    }

    // @returns available capacity, total capacity, not used keys count
    function getProviderStats(address providerAddress) external override view returns (uint128 availableCap, uint128 totalCap, uint32 availableKeys) {
        (,uint32 totalKeys, uint32 usedKeys,) = getProvider(providerAddress);
        uint32 notUsed = totalKeys - usedKeys;

        return (uint128(notUsed) * KEY_CAPACITY, uint128(totalKeys) * KEY_CAPACITY, notUsed);
    }

    function getProvidersCount() public override view returns (uint32) {
        return uint32(_registry.providers.length);
    }

    function getProviders() public override view returns (address[] memory) {
        return _registry.providers;
    }

    function getTotalCommission(address provider) external override view returns (uint16) {
        return _config.getCommission() + _get(provider).commission;
    }

    function _get(address key) internal view returns (Provider storage) {
        return _registry.values[key];
    }

    function _getRegistered(address key) internal view returns (bool) {
        return _registry.registered[key];
    }

    function _getProviderAtIndex(uint32 index) internal view returns (address) {
        return _registry.providers[index];
    }

    function _setProvider(address provider, Provider memory val) internal {
        if (_registry.registered[provider]) {
            _registry.values[provider] = val;
        } else {
            _registry.registered[provider] = true;
            _registry.values[provider] = val;
            _registry.indexOf[provider] = uint32(_registry.providers.length);
            _registry.providers.push(provider);
        }
    }

    // to support remove of bad providers in future
    function _removeProvider(address provider) internal {
        if (!_registry.registered[provider]) {
            return;
        }

        delete _registry.registered[provider];
        delete _registry.values[provider];

        uint256 index = _registry.indexOf[provider];
        uint256 lastIndex = _registry.providers.length - 1;
        address lastProvider = _registry.providers[lastIndex];

        _registry.indexOf[lastProvider] = uint32(index);
        delete _registry.indexOf[provider];

        _registry.providers[index] = lastProvider;
        _registry.providers.pop();
    }
}
