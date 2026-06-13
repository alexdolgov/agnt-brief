// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.25;

interface IGmxDAO {
    function balanceOf(address _user) external view returns (uint256);
    function delegate(address _delegatee) external;
}
