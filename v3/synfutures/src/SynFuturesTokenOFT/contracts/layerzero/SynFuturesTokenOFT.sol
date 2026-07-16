// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import { Ownable } from "@openzeppelin/contracts/access/Ownable.sol";
import { OFT } from "@layerzerolabs/oft-evm/contracts/OFT.sol";

/// @notice SynFuturesTokenOFT is an OFT contract for the SynFuturesToken, to be used with LayerZero's OFT.
contract SynFuturesTokenOFT is OFT {
    constructor(
        string memory _name,
        string memory _symbol,
        address _lzEndpoint,
        address _owner
    ) OFT(_name, _symbol, _lzEndpoint, _owner) Ownable() {
        // Ownable in OpenZeppelin V4 set the owner as msg.sender in ctor
        _transferOwnership(_owner);
    }
}