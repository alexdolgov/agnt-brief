// SPDX-License-Identifier: Apache-2.0
pragma solidity ^0.8.4;

interface IThrottledPool {
    event SetEmissionController(address emissionController);
    event SetTokensPerSeconds(uint64 emittedTokensPerSecond);

    function emissionController() external view returns (address);

    function setEmissionController(address _emissionController) external;
    function setTokensPerSeconds(uint64 _emittedTokensPerSecond) external;
}