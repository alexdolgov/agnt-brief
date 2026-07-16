// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import { IEmissionController } from "../interfaces/IEmissionController.sol";

error InitializeVaultFailed();

contract MockEmissionController is IEmissionController {
    uint256 public initializeVaultCallCount;
    uint256 public lastInitializedTokenId;
    bool public shouldRevert;

    function setShouldRevert(bool value) external {
        shouldRevert = value;
    }

    function initializeVault(uint256 tokenId) external override {
        if (shouldRevert) revert InitializeVaultFailed();

        initializeVaultCallCount += 1;
        lastInitializedTokenId = tokenId;
    }
}
