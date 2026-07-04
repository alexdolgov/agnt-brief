// SPDX-License-Identifier: MIT

pragma solidity 0.6.11;

interface IFetchCaller {
    function getFetchCurrentValue(bytes32 _queryId) external returns (bool, uint256, uint256);
    function getFetchPreviousValue(bytes32 _queryId, uint timestamp) external returns (bool, uint256, uint256);
}
// 2025 Liquid Loans