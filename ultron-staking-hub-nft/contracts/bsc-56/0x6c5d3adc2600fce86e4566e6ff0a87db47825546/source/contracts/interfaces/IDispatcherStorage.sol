//SPDX-License-Identifier: UNLICENSED

pragma solidity >0.8.0 <0.9.0;

interface IDispatcherStorage {
    function getAddress() external view returns (address);

    function setAddress(address lib) external;
}
