// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.27;

/// Circle's FiatToken interface.
interface ICircleFiatToken {
    function mint(address _to, uint256 _amount) external returns (bool);
    function burn(uint256 _amount) external;
    function transferFrom(address from, address to, uint256 value) external returns (bool);
}
