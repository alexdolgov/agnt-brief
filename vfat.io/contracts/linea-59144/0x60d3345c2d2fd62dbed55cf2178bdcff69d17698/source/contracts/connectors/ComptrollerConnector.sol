// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "../interfaces/IFarmConnector.sol";
import "../interfaces/external/compound-v2/CTokenInterfaces.sol";
import { SafeTransferLib } from "solmate/utils/SafeTransferLib.sol";

struct ComptrollerExtraData {
    address[] cTokens;
}

contract ComptrollerConnector is IFarmConnector {
    function deposit(
        address, // target
        address, // token
        bytes memory // extraData
    ) external payable virtual override {
        revert("ComptrollerConnector: Deposit not implemented");
    }

    function withdraw(
        address, // target
        uint256, // amount
        bytes memory // extraData
    ) external pure override {
        revert("ComptrollerConnector: Withdraw not implemented");
    }

    function claim(address target, bytes memory extraData) external override {
        ComptrollerExtraData memory comptrollerExtraData =
            abi.decode(extraData, (ComptrollerExtraData));
        ComptrollerInterface(target).claimComp(
            address(this), comptrollerExtraData.cTokens
        );
    }
}
