// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.28;

import { IWhitelist } from "./interfaces/IWhitelist.sol";
import { Ownable, Ownable2Step } from "@oz/access/Ownable2Step.sol";

contract Whitelist is IWhitelist, Ownable2Step {
    ////////////////////////////////////////////////////////////
    //                        Storage                         //
    ////////////////////////////////////////////////////////////

    /// @notice Mapping of addr addresses to their whitelisted status
    mapping(address addr => bool isAddressWhitelisted) public isWhitelisted;

    constructor(address initialOwner) Ownable(initialOwner) { }

    ////////////////////////////////////////////////////////////
    //              Public / External Functions               //
    ////////////////////////////////////////////////////////////

    /// @inheritdoc IWhitelist
    function setWhitelisted(address addr, bool isWhitelisted_) external onlyOwner {
        // Effects: set the address whitelisted status
        isWhitelisted[addr] = isWhitelisted_;

        // Log address whitelisted status
        emit WhitelistSet(addr, isWhitelisted_);
    }
}
