// SPDX-License-Identifier: None
pragma solidity ^0.8.19;

enum GasMode {
    VOID,
    CLAIMABLE
}

interface IGas {
    function readGasParams(address contractAddress) external view returns (uint, uint, uint, GasMode);
    function setGasMode(address contractAddress, GasMode mode) external;
    function claimGasAtMinClaimRate(address contractAddress, address recipient, uint minClaimRateBips)
        external
        returns (uint);
    function claimAll(address contractAddress, address recipient) external returns (uint);
    function claimMax(address contractAddress, address recipient) external returns (uint);
    function claim(address contractAddress, address recipient, uint gasToClaim, uint gasSecondsToConsume)
        external
        returns (uint);
}
