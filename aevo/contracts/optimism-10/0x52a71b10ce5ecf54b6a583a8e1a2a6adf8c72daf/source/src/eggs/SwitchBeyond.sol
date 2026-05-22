// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

import "./EggBase.sol";
import "../interfaces/ISocket.sol";

contract SwitchBeyond is EggBase {
    ISocket public immutable socket__;
    uint256 public immutable siblingChainSlug;

    constructor(address socket_, uint256 siblingChainSlug_) {
        socket__ = ISocket(socket_);
        siblingChainSlug = siblingChainSlug_;
    }

    function egg(
        address,
        bytes calldata data
    ) external view override returns (bool) {
        (address switchboard) = abi.decode(data, (address));
        if (socket__.capacitors__(switchboard, siblingChainSlug) == address(0)) return false;
        return true;
    }
}
