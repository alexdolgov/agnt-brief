// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity 0.8.26;

interface ICompoundErc20 {
    function exchangeRateStored() external view returns (uint256);

    function totalBorrows() external view returns (uint256);

    function borrowRatePerBlock() external view returns (uint256);

    function totalSupply() external view returns (uint256);

    function supplyRatePerBlock() external view returns (uint256);
}
