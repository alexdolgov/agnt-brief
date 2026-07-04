// SPDX-License-Identifier: GPL-3.0-only

pragma solidity 0.8.18;

interface ILpManager {
    function depositRoundId(
        address poolAddress
    ) external view returns (uint256);

    function withdrawalRoundId(
        address poolAddress
    ) external view returns (uint256);

    function getCashLocked(
        address poolAddress,
        bool includePendingWithdrawals
    ) external view returns (uint256);

    function getUnfilledShares(
        address poolAddress
    ) external view returns (uint256);

    function getWithdrawalStatus(
        address poolAddress,
        address lpAddress
    )
        external
        view
        returns (
            uint256 sharesRedeemable,
            uint256 sharesOutstanding,
            uint256 cashRedeemable
        );

    function getDepositStatus(
        address poolAddress,
        address lpAddress
    ) external view returns (uint256 cashPending, uint256 sharesRedeemable);

    function closeWithdrawalRound(
        uint256 pricePerShare
    ) external returns (uint256 sharesRemoved);

    function closeDepositRound(
        uint256 pricePerShare
    ) external returns (uint256 sharesAdded);

    function addPendingCash(uint256 cashAmount) external;

    function addPricedCash(uint256 cashAmount, uint256 shareAmount) external;

    function requestWithdrawal(
        address lpAddress,
        uint256 sharesAmount
    ) external;

    function requestDeposit(address lpAddress, uint256 cashAmount) external;

    function redeemShares(address lpAddress) external returns (uint256);

    function withdrawCash(
        address lpAddress
    ) external returns (uint256, uint256);

    function cancelPendingDeposit(address lpAddress, uint256 amount) external;
}
