// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

interface ILRTProxy {
    function depositAssetIntoStrategy(address _asset) external;

    function getAssetBalance(address _asset) external view returns (uint256);

    event EigenPodCreated(address indexed _eigenPod, address indexed _podOwner);

    event Delegated(address indexed _operator);

    event AssetDeposited(
        address indexed _asset,
        address indexed _strategy,
        uint256 _amount
    );

    event ETHStaked(bytes _pubKey, uint256 _amount);

    event ETHReceived(uint256 _amount);
    event ETHReceivedFromDepositPool(uint256 _amount);

    event WithdrawalQueued(uint256 _nonce, bytes32 _withdrawalRoot);

    event WithdrawalCompleted(uint256 _nonce);

    // errors
    error StrategyIsNotSetForAsset();
    error StrategyMustNotBeBeaconChain();
}
