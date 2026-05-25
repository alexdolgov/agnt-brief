// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

interface ILRTConfig {
    function getContract(bytes32 _contractKey) external view returns (address);

    function isSupportedAsset(address _asset) external view returns (bool);

    function getSupportedAssets() external view returns (address[] memory);

    function getStrategy(address _asset) external view returns (address);

    function getAssetSwitch(
        address _asset,
        bytes32 _switchKey
    ) external view returns (bool);

    function getGlobalDepositLimitByAsset(
        address _asset
    ) external view returns (uint256);

    function getUserDepositLimitByAsset(
        address _user,
        address _asset
    ) external view returns (uint256);

    event ContractSet(
        bytes32 indexed _contractKey,
        address indexed _contractAddress
    );
    event SupportedAssetAdded(address indexed _asset);
    event SupportedAssetRemoved(address indexed _asset);
    event AssetStrategySet(address indexed _asset, address indexed _strategy);
    event AssetSwitchSet(
        address indexed _asset,
        bytes32 indexed _switchKey,
        bool _value
    );
    event GlobalDepositLimitByAssetSet(address indexed _asset, uint256 _limit);
    event UserDepositLimitByAssetSet(
        address indexed _user,
        address indexed _asset,
        uint256 _limit
    );
}
