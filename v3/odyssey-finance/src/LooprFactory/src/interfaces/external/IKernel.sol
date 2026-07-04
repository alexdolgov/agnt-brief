// SPDX-License-Identifier: MIT
pragma solidity 0.8.29;

import {ValidationId} from "kernel/types/Types.sol";

/// @title Kernel V3
interface IKernel {
    function isValidSignature(bytes32 hash, bytes calldata signature) external view returns (bytes4);

    function initialize(
        ValidationId _rootValidator,
        address hook,
        bytes calldata validatorData,
        bytes calldata hookData,
        bytes[] calldata initConfig
    ) external;

    function installModule(uint256 moduleType, address module, bytes calldata initData) external payable;

    function changeRootValidator(
        ValidationId _rootValidator,
        address hook,
        bytes calldata validatorData,
        bytes calldata hookData
    ) external payable;
}

/// @title Kernel V3
interface IKernelFactory {
    function createAccount(bytes calldata data, bytes32 salt) external payable returns (address proxy);

    function getAddress(bytes calldata data, bytes32 salt) external view returns (address);
}
