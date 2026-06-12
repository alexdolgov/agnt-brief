// SPDX-License-Identifier: BUSL-1.1

pragma solidity 0.8.12;

interface ISteerToken {
    function balanceOf(address account) external view returns (uint256);

    function transfer(address dst, uint256 rawAmount) external returns (bool);

    function delegate(address delegatee) external;
}

interface ITreasuryVester {
    function setRecipient(address _recipient) external;

    function claim() external;

    function cutOffFunds() external;

    function getVotingPowerForVestedTokens() external;
}
