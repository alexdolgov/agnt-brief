// Liquidity Market Bribes
// SPDX-License-Identifier: UNLICENSED

pragma solidity 0.8.9;

interface IVoter {
    function _ve() external view returns (address);
    function protocolFeesTaker() external view returns (address);
    function protocolFeesPerMillion() external view returns (uint);
    function distribute(address _gauge) external;
    function bribes(address _gauge) external view returns (address);
}