// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

interface IBaultFactory {
    function owner() external view returns (address);
    function pauser(address) external view returns (bool);
    function baults(address) external view returns (address);
    function baultsLength() external view returns (uint256);
    function treasury() external view returns (address);
    function bgtConverter() external view returns (address);
    function bgtWrapperToOperator(address bgtWrapper) external view returns (address);
    function isLegitBault(address bault) external view returns (bool);
}
