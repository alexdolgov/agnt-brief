// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

interface ITradingFeeClaimedRecord {
    function hasClaimedRebate(address _msgSender)
        external
        view
        returns (
            bool claimed
        );

    function hasClaimedTopTraders(address _msgSender)
        external
        view
        returns (
            bool claimed
        );

    /// @dev Update hasClaimed record from rebate contract
    /// @param _msgSender the address of user
    function updateHasClaimedRebate(address _msgSender) external;

    /// @dev Update hasClaimed record from topTraders contract
    /// @param _msgSender the address of user
    function updateHasClaimedTopTraders(address _msgSender) external;
}
