// SPDX-License-Identifier: MIT
pragma solidity 0.8.21;

interface Stone {
    function mint(address _to, uint256 _amount) external;

    function burn(address _from, uint256 _amount) external;
}
