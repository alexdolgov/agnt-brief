// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.30;

import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {IRelayerAuth} from "./interfaces/IRelayerAuth.sol";

contract RelayerAuth is IRelayerAuth, Ownable {
    mapping(address => bool) public relayers;

    error ZeroAddress();

    constructor(address owner_) Ownable(owner_) {}

    function setRelayer(address relayer, bool status) external onlyOwner {
        if (relayer == address(0)) revert ZeroAddress();
        relayers[relayer] = status;
    }

    function isRelayer(address relayer) external view override returns (bool) {
        return relayers[relayer];
    }
}
