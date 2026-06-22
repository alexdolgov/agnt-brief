// SPDX-License-Identifier: UNLICENSED

pragma solidity 0.6.12;

interface IRouteStorage {
    function setRouterPath(address inputToken, address outputToken, address[] memory _path, bool overwrite) external;
    function getRouterPath(address inputToken, address outputToken) external view returns (address[] memory);
}
