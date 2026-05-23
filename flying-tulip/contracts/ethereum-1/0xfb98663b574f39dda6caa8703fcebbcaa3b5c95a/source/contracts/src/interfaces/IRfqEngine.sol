// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.30;

interface IRfqEngine {
    struct DebtIn {
        address asset;
        uint256 amount;
    }

    struct CollOut {
        address asset;
        uint256 amount;
    }

    function rfqFill(address user, DebtIn[] calldata debtIn, CollOut[] calldata collOut) external;

    function rfqFillFlash(
        address user,
        DebtIn[] calldata debtIn,
        CollOut[] calldata collOut,
        bytes calldata data
    )
        external;

    function rfqFillFlash(
        address user,
        DebtIn[] calldata debtIn,
        CollOut[] calldata collOut,
        bytes calldata data,
        bool skipUnwind
    )
        external;

    function computeMinRepayment(
        uint256 equityUSDWad,
        uint256 rawCollUSDWad,
        uint256 maintUSDWad,
        uint256 hfTarget,
        uint256 liqBonusBps_
    )
        external
        pure
        returns (uint256 x);

    function computeMinRepaymentWithK(
        uint256 equityUSDWad,
        uint256 maintUSDWad,
        uint256 hfTarget,
        uint256 liqBonusBps_,
        uint256 kWad
    )
        external
        pure
        returns (uint256 x);

    function liqBonusBps() external view returns (uint256);
    function protocolLiqSplitBps() external view returns (uint256);
    function minRepayUSDWad() external view returns (uint256);
    function minResidualDebtUSDWad() external view returns (uint256);
    function minResidualCollateralUSDWad() external view returns (uint256);
    function privilegedAccounts(address account) external view returns (bool);

    function previewDistribution(
        address user,
        DebtIn[] calldata debtIn,
        CollOut[] calldata collOut
    )
        external
        view
        returns (uint256[] memory fillerAmounts, uint256[] memory protocolAmounts);
}
