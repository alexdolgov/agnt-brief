// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

interface ILRTDepositPool {
    function getELETHAmountToMint(
        address _asset,
        uint256 _amount
    ) external view returns (uint256);

    function depositAsset(
        address _asset,
        uint256 _amount,
        uint256 _minELETHAmountToReceive,
        string calldata _referralId
    ) external payable returns (uint256);

    function getTotalAssetDeposits(
        address _asset
    ) external view returns (uint256);

    function getAssetDistributionData(
        address _asset
    )
        external
        view
        returns (
            uint256 assetLyingInDepositPool,
            uint256 assetLyingInProxy,
            uint256 assetStakedInEigenLayer,
            uint256 assetUnstakingFromEigenLayer,
            uint256 assetLyingUnstakingVault
        );

    event AssetDeposited(
        address indexed _user,
        address indexed _asset,
        uint256 _amount,
        uint256 _elETHAmount,
        string _referralId
    );
    event AssetTransferedToProxy(
        address indexed _asset,
        uint256 _amount,
        address indexed _proxy
    );
}
