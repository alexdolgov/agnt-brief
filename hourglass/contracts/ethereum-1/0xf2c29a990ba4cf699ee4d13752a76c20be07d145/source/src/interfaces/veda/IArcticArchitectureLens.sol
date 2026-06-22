// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.4;

interface IArcticArchitectureLens {
    function balanceOf(address account, address boringVault) external view returns (uint256 shares);
    function balanceOfInAssets(address account, address boringVault, address accountant)
        external
        view
        returns (uint256 assets);
    function checkUserDeposit(
        address account,
        address depositAsset,
        uint256 depositAmount,
        address boringVault,
        address teller
    ) external view returns (bool);
    function checkUserDepositWithPermit(address account, address depositAsset, uint256 depositAmount, address teller)
        external
        view
        returns (bool);
    function exchangeRate(address accountant) external view returns (uint256 rate);
    function isTellerPaused(address teller) external view returns (bool);
    function previewDeposit(address depositAsset, uint256 depositAmount, address boringVault, address accountant)
        external
        view
        returns (uint256 shares);
    function totalAssets(address boringVault, address accountant)
        external
        view
        returns (address asset, uint256 assets);
    function userUnlockTime(address account, address teller) external view returns (uint256 time);
}
