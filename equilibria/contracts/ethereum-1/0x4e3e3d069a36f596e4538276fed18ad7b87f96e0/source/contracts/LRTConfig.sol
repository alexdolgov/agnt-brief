// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

import "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";
import "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";

import "./Interfaces/ILRTConfig.sol";
import "./Interfaces/EigenLayer/IStrategy.sol";
import "./Utils/LRTConstants.sol";

contract LRTConfig is ILRTConfig, AccessControlUpgradeable {
    using EnumerableSet for EnumerableSet.AddressSet;

    mapping(bytes32 => address) public contractMap;

    mapping(address => address) public assetStrategy;

    EnumerableSet.AddressSet private supportedAssets;

    // asset => key => switch
    mapping(address => mapping(bytes32 => bool)) public assetSwitchMap;

    // asset => limit
    mapping(address => uint256) public globalDepositLimitByAsset;

    // user => asset => limit
    mapping(address => mapping(address => uint256))
        public userDepositLimitByAsset;

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function initialize() public initializer {
        __AccessControl_init();

        _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
        _grantRole(LRTConstants.ADMIN_ROLE, msg.sender);
    }

    modifier onlySupportedAsset(address _asset) {
        require(isSupportedAsset(_asset), "asset not supported!");

        _;
    }

    function setContract(
        bytes32 _contractKey,
        address _contractAddress
    ) external onlyRole(DEFAULT_ADMIN_ROLE) {
        require(_contractAddress != address(0), "invalid _contractAddress!");
        require(
            contractMap[_contractKey] != _contractAddress,
            "_contractAddress already set!"
        );

        contractMap[_contractKey] = _contractAddress;
        emit ContractSet(_contractKey, _contractAddress);
    }

    function addSupportedAsset(
        address _asset
    ) external onlyRole(LRTConstants.ADMIN_ROLE) {
        require(_asset != address(0), "invalid _asset!");
        require(!supportedAssets.contains(_asset), "asset already added!");

        supportedAssets.add(_asset);

        emit SupportedAssetAdded(_asset);
    }

    function removeSupportedAsset(
        address _asset
    ) external onlyRole(LRTConstants.ADMIN_ROLE) {
        require(supportedAssets.contains(_asset), "asset not added!");

        supportedAssets.remove(_asset);

        emit SupportedAssetRemoved(_asset);
    }

    function updateAssetStrategy(
        address _asset,
        address _strategy
    ) external onlyRole(LRTConstants.ADMIN_ROLE) onlySupportedAsset(_asset) {
        require(_strategy != address(0), "zero address");
        require(
            address(IStrategy(_strategy).underlyingToken()) == _asset,
            "invalid _strategy"
        );
        require(_strategy != assetStrategy[_asset], "same strategy");

        // if strategy is already set, check if it has any funds
        if (assetStrategy[_asset] != address(0)) {
            address lrtProxy = getContract(LRTConstants.LRT_PROXY);
            require(
                IStrategy(assetStrategy[_asset]).userUnderlyingView(lrtProxy) ==
                    0,
                "current strategy has funds"
            );
        }

        assetStrategy[_asset] = _strategy;
        emit AssetStrategySet(_asset, _strategy);
    }

    function setAssetSwitch(
        address _asset,
        bytes32 _switchKey,
        bool _value
    ) external onlyRole(LRTConstants.ADMIN_ROLE) onlySupportedAsset(_asset) {
        assetSwitchMap[_asset][_switchKey] = _value;
        emit AssetSwitchSet(_asset, _switchKey, _value);
    }

    function setGlobalDepositLimitByAsset(
        address _asset,
        uint256 _limit
    ) external onlyRole(LRTConstants.ADMIN_ROLE) onlySupportedAsset(_asset) {
        globalDepositLimitByAsset[_asset] = _limit;
        emit GlobalDepositLimitByAssetSet(_asset, _limit);
    }

    function setUserDepositLimitByAsset(
        address _user,
        address _asset,
        uint256 _limit
    ) external onlyRole(LRTConstants.ADMIN_ROLE) onlySupportedAsset(_asset) {
        userDepositLimitByAsset[_user][_asset] = _limit;
        emit UserDepositLimitByAssetSet(_user, _asset, _limit);
    }

    function getContract(
        bytes32 _contractKey
    ) public view override returns (address) {
        return contractMap[_contractKey];
    }

    function isSupportedAsset(
        address _asset
    ) public view override returns (bool) {
        return supportedAssets.contains(_asset);
    }

    function getSupportedAssets()
        external
        view
        override
        returns (address[] memory)
    {
        return supportedAssets.values();
    }

    function getStrategy(
        address _asset
    ) external view override returns (address) {
        return assetStrategy[_asset];
    }

    function getAssetSwitch(
        address _asset,
        bytes32 _switchKey
    ) external view override returns (bool) {
        return assetSwitchMap[_asset][_switchKey];
    }

    function getGlobalDepositLimitByAsset(
        address _asset
    ) external view override returns (uint256) {
        return globalDepositLimitByAsset[_asset];
    }

    function getUserDepositLimitByAsset(
        address _user,
        address _asset
    ) external view override returns (uint256) {
        return userDepositLimitByAsset[_user][_asset];
    }
}
