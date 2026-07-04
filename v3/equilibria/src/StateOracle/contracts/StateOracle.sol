// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.27;

import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {IStateOracle} from "./interfaces/IStateOracle.sol";

/// Oracle providing the state hash of a monitored chain.
/// To be owned and updated by UpdateManager contract.
/// @custom:security-contact security@fantom.foundation
contract StateOracle is IStateOracle, Ownable {
    bytes32 public lastState;
    uint256 public lastBlockNum;
    uint256 public lastUpdateTime;
    uint256 public immutable chainId; // of the monitored chain

    constructor(address _ownedBy, uint256 _chainId) Ownable(_ownedBy) {
        require(_chainId != 0, "Chain id not set");
        chainId = _chainId;
    }

    /// Update the state. Callable by UpdateManager.
    function update(uint256 blockNum, bytes32 stateRoot) external onlyOwner {
        require(blockNum > lastBlockNum, "Unable to revert to older state");
        lastState = stateRoot;
        lastBlockNum = blockNum;
        lastUpdateTime = block.timestamp;
    }

}
