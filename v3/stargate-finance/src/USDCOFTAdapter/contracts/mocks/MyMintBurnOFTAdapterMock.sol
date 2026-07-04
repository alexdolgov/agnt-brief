// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.22;

import { BridgedUSDCMintBurnOFTAdapter } from "../BridgedUSDCMintBurnOFTAdapter.sol";

import { IMintableBurnable } from "@layerzerolabs/oft-evm/contracts/interfaces/IMintableBurnable.sol";

// @dev WARNING: This is for testing purposes only
contract BridgedUSDCMintBurnOFTAdapterMock is BridgedUSDCMintBurnOFTAdapter {
    constructor(
        address _token,
        IMintableBurnable _minterBurner,
        address _lzEndpoint,
        address _delegate
    ) BridgedUSDCMintBurnOFTAdapter(_token, _minterBurner, _lzEndpoint, _delegate) {}
}
