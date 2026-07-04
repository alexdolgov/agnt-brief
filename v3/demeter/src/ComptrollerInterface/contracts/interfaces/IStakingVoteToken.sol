// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.5.16;

import "../interfaces/IBEP20.sol";

interface IStakingVoteToken {

    function mint(address _recipient, uint256 _amount) external;

    function burn(address _recipient, uint256 _amount) external;

    function getHistoryBalance(address act, uint256 height) external view returns (uint256);

    function getHistoryTotalSupply(uint256 height) external view returns (uint256);

}
