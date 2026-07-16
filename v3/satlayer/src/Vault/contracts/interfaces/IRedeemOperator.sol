// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.25;

interface IRedeemOperator {
    // Events for logging actions
    event RegisterWithdrawal(address indexed user, uint256 shares, bool isRapid);
    event ConfirmWithdrawal(address[] users, uint256[] amounts, bool isRapid);
    event UpdateOperator(address oldOperator, address newOperator);
    event UpdateFeeReceiver(address oldFeeReceiver, address newFeeReceiver);
    event Sweep(address token);
    event UpdateExchangePriceRate(uint256 oldRate, uint256 newRate);

    function registerWithdrawal(address _user, uint256 _shares, bool _isRapid, uint256 _epoch) external;

    function pendingWithdrawersCount(bool _isRapid, uint256 _epoch) external view returns (uint256);

    function pendingWithdrawers(uint256 _limit, uint256 _offset, bool _isRapid, uint256 _epoch) external view returns (address[] memory result_);

    function allPendingWithdrawers(bool _isRapid, uint256 _epoch) external view returns (address[] memory);

    function confirmWithdrawal(address[] calldata _Users, uint256 _totalGasTokenAmount, bool _isRapid, uint256 _epoch, uint256 _fairExchangePrice) external;

    function cancelWithdraw(address _user, bool _isRapid, uint256 _epoch) external;

    function updateExchangePriceRate(uint256 _newRate) external;
}