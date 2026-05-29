// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.13;

import {EggBase} from "./EggBase.sol";

interface IPlug {
    function blockHashChain_blockHashes(
        address sender,
        uint256 srcChainSlug,
        uint256 blockNumber
    ) external view returns (bytes32);
}

contract BlockHashChain is EggBase {
    IPlug public immutable plug__;

    constructor(address plug_) {
        plug__ = IPlug(plug_);
    }

    function egg(
        address msgSender,
        bytes calldata data
    ) external view override returns (bool) {
        (
            uint256 bscBlockNumber,
            uint256 arbBlockNumber,
            uint256 polyBlockNumber,
            bytes32 blockChainHash
        ) = abi.decode(data, (uint256, uint256, uint256, bytes32));
        bytes32 bscBlockHash = plug__.blockHashChain_blockHashes(msgSender,56,bscBlockNumber);
        bytes32 arbBlockHash = plug__.blockHashChain_blockHashes(msgSender,42161,arbBlockNumber);
        bytes32 polyBlockHash = plug__.blockHashChain_blockHashes(msgSender,137,polyBlockNumber);
        bytes32 calculatedHash = keccak256(abi.encodePacked(bscBlockHash,arbBlockHash,polyBlockHash));
        return blockChainHash == calculatedHash;
    }
}
