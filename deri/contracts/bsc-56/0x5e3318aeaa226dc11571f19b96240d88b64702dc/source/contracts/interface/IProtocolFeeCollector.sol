// SPDX-License-Identifier: MIT

pragma solidity >=0.8.0 <0.9.0;

interface IProtocolFeeCollector {

    function getBurner() external view returns (address);

    function setBurner(address burner) external;

    function transferToken(address token) external;

}
