// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.30;

interface ILendingLens {
    function userOverview(address user)
        external
        view
        returns (uint256 equityUSDWad, uint256 maintUSDWad, uint16 hfBps);

    function userPortfolio(address user)
        external
        view
        returns (
            address[] memory collAssets,
            uint256[] memory collAvail,
            uint256[] memory collHold,
            address[] memory debtAssets,
            uint256[] memory debtUnitsNow,
            uint256 equityUSDWad,
            uint256 maintUSDWad,
            uint16 hfBps
        );

    function userCollateralAssets(address user) external view returns (address[] memory);
    function userDebtAssets(address user) external view returns (address[] memory);
}
