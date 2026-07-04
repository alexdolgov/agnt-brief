// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface IVault {
    function getVaultUSDBalance() external view returns (uint256);
}

interface ISettingsManager {
    function openInterestPerAssetPerSide(uint256 _tokenId, bool _isLong) external view returns (uint256);

    function setMaxOpenInterestPerAsset(uint256 _tokenId, uint256 _maxAmount) external;
}

contract OpenInterestManager {
    IVault public immutable vault;
    ISettingsManager public immutable settingsManager;

    mapping(address => bool) public isAdmin;

    modifier onlyAdmin() {
        require(isAdmin[msg.sender], "!admin");
        _;
    }

    constructor(address _vault, address _settingsManager) {
        vault = IVault(_vault);
        settingsManager = ISettingsManager(_settingsManager);

        isAdmin[msg.sender] = true;
    }

    function setAdmin(address _account, bool _isAdmin) external onlyAdmin {
        isAdmin[_account] = _isAdmin;
    }

    function getTotalUsd() external view returns (uint256) {
        return vault.getVaultUSDBalance();
    }

    function getOpenInterests(
        uint256[] calldata assetIds
    ) external view returns (uint256[] memory longOpenInterests, uint256[] memory shortOpenInterests) {
        uint256 length = assetIds.length;
        longOpenInterests = new uint256[](length);
        shortOpenInterests = new uint256[](length);

        for (uint256 i; i < length; ++i) {
            uint256 assetId = assetIds[i];
            longOpenInterests[i] = settingsManager.openInterestPerAssetPerSide(assetId, true);
            shortOpenInterests[i] = settingsManager.openInterestPerAssetPerSide(assetId, false);
        }
    }

    function setMaxOpenInterests(uint256[] calldata assetIds, uint256[] calldata maxOpenInterests) external onlyAdmin {
        uint256 length = assetIds.length;
        require(length == maxOpenInterests.length, "!length");

        for (uint256 i; i < length; ++i) {
            settingsManager.setMaxOpenInterestPerAsset(assetIds[i], maxOpenInterests[i]);
        }
    }
}
