// SPDX-License-Identifier: AGPL-3.0-or-later

pragma solidity >=0.5.0;

interface IBasePoolMinimal {
    function token0() external view returns (address);
    function token1() external view returns (address);
    function poolType() external view returns (uint16);
}