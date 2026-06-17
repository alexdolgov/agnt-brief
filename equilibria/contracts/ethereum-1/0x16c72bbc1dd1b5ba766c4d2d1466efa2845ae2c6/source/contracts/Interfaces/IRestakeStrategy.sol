// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

interface IRestakeStrategy {
    function initialize(
        address _owner,
        address _lrtConfig,
        address _operatorDepositPool,
        address _operator
    ) external;

    function assetBalance(address _asset) external view returns (uint256);

    function depositAsset(address _asset, uint256 _amount) external;

    function depositAssetIntoStrategy(address _asset) external;

    function initiateUnstaking() external returns (bytes32 withdrawalRoot);

    function completeUnstaking()
        external
        returns (address[] memory, uint256[] memory);

    event AssetDeposited(address indexed _asset, uint256 _amount);

    event AssetDepositedToStrategy(
        address indexed _asset,
        address indexed _strategy,
        uint256 _amount
    );

    event WithdrawalQueued(uint256 _nonce, bytes32 _withdrawalRoot);

    event WithdrawalCompleted(uint256 _nonce);

    event Withdrawn(address[] _assets, uint256[] _amounts);
}
