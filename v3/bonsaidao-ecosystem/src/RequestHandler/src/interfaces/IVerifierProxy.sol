// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.17;

interface IVerifierProxy {
    function verify(bytes calldata) external returns (bytes memory);

    function s_feeManager() external view returns (address);
}
