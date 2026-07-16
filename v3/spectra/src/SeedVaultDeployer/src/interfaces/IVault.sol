// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity 0.8.22;

interface IVault {
    function deposit(uint256 assets, address receiver) external returns (uint256);

    function withdraw(uint256 assets, address receiver, address owner) external returns (uint256);

    function mint(uint256 shares, address receiver) external returns (uint256);

    function redeem(uint256 shares, address receiver, address owner) external returns (uint256);

    function pause() external;

    function unpause() external;

    function owner() external view returns (address);

    function transferOwnership(address) external;

    function acceptOwnership() external;

    function open(uint256 assetReturned) external;

    function close() external;

    function setFee(uint16 newFee) external;

    function setMaxDrawdown(uint16 newMaxDrawdown) external;

    function vaultIsOpen() external view returns (bool);

    function feesInBps() external view returns (uint16);

    function asset() external view returns (address);

    function convertToShares(uint256 assets) external view returns (uint256);

    function convertToAssets(uint256 shares) external view returns (uint256);

    function sharesBalanceInAsset(address owner) external view returns (uint256);

    function maxDeposit(address receiver) external view returns (uint256);

    function maxMint(address receiver) external view returns (uint256);

    function maxWithdraw(address owner) external view returns (uint256);

    function maxRedeem(address owner) external view returns (uint256);

    function previewDeposit(uint256 assets) external view returns (uint256);

    function previewMint(uint256 shares) external view returns (uint256);

    function previewWithdraw(uint256 assets) external view returns (uint256);

    function previewRedeem(uint256 shares) external view returns (uint256);

    function totalAssets() external view returns (uint256);

    function decimals() external view returns (uint8);

    function epochId() external view returns (uint256);

    function treasury() external view returns (address);
}
