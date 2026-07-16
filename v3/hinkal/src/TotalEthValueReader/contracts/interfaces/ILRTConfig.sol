// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.34;

interface ILRTConfig {
    // Errors
    error ValueAlreadyInUse();
    error AssetAlreadySupported();
    error AssetNotSupported();
    error ETHNotSupported();
    error CallerNotLRTConfigAdmin();
    error CallerNotLRTConfigManager();
    error CallerNotLRTConfigOperator();
    error CallerNotLRTConfigStaker();
    error CallerNotLRTConfigAssetTransferRole();
    error CallerNotLRTConfigManagerOrOperator();
    error CallerNotLRTConfigAllowedRole(string role);
    error CannotUpdateStrategyAsItHasFundsNDCFunds(address ndc, uint256 amount);
    error InvalidMaxRewardAmount();
    error ProtocolFeeExceedsLimit();
    error CannotRemoveAssetWithDeposits(address asset);
    error TokenNotFoundError();
    error InvalidDepositLimit();
    error InvalidAmount();
    error TopupAmountNotGweiAligned();

    // Events

    event SetToken(bytes32 key, address indexed tokenAddr);
    event SetContract(bytes32 key, address indexed contractAddr);
    event AddedNewSupportedAsset(address indexed asset, uint256 depositLimit);
    event RemovedSupportedAsset(address indexed asset);
    event AssetDepositLimitUpdate(address indexed asset, uint256 depositLimit);
    event AssetStrategyUpdate(address indexed asset, address indexed strategy);
    event SetRSETH(address indexed rsETH);
    event UpdateMaxRewardAmount(uint256 maxRewardAmount);
    event MaxNegligibleAmountUpdated(uint256 maxNegligibleAmount);
    event UpdateFee(uint256 newFee);
    event SetEigenLayerRewardReceiver(address indexed eigenLayerRewardReceiver);
    event MaxValidatorEffectiveBalanceUpdated(uint256 maxValidatorEffectiveBalance);
    event PausedAll(address indexed sender);

    // methods

    function rsETH() external view returns (address);

    function assetStrategy(address asset) external view returns (address);

    function isSupportedAsset(address asset) external view returns (bool);

    function getLSTToken(bytes32 tokenId) external view returns (address);

    function getContract(bytes32 contractId) external view returns (address);

    function getSupportedAssetList() external view returns (address[] memory);

    function depositLimitByAsset(address asset) external view returns (uint256);

    function protocolFeeInBPS() external view returns (uint256);

    function eigenLayerRewardReceiver() external view returns (address);

    function maxValidatorEffectiveBalance() external view returns (uint256);

    function setMaxValidatorEffectiveBalance(uint256 newMaxValidatorEffectiveBalance) external;
}
