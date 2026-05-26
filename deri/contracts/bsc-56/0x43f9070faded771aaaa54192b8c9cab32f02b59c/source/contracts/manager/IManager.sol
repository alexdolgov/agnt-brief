// SPDX-License-Identifier: MIT

pragma solidity >=0.8.0 <0.9.0;

interface IManager {

    function getGateway(uint256 gatewayIdx) external view returns (address);

    function smartAccountTemplate() external view returns (address);

    function smartAccountImplementation() external view returns (address);

    function isExecutor(address executor) external view returns (bool);

    function getSmartAccount(address owner) external view returns (address);

    function getOpGasTokens() external view returns (address[] memory);

    function getOpGases() external view returns(uint256[6][] memory);

    function getOpGas(uint256 bIndex, uint256 opIndex) external view returns (uint256);

    function setGateways(address[] memory gateways) external;

    function addExecutor(address executor) external;

    function removeExecutor(address executor) external;

    function setOpGasTokens(address[] memory tokens) external;

    function setOpGases(uint256[6][] memory opGases) external;

}
