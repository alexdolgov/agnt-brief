// SPDX-License-Identifier: MIT
pragma solidity =0.8.26;

import {Owned}  from "solmate/src/auth/Owned.sol";
import {Errors} from "../lib/Errors.sol";

contract Oracle is Owned(msg.sender) {
    uint public utilizationRate;
    uint public updatedAt;

    mapping (address => bool) public isRelayer;

    modifier onlyRelayer() {
        require(isRelayer[msg.sender], Errors.NOT_RELAYER);
        _;
    }

    event UtilizationRateUpdated(uint newRate, uint timestamp);
    event RelayerAdded          (address relayer);
    event RelayerRemoved        (address relayer);

    function setUtilizationRate(uint _utilizationRate) external onlyRelayer {
        require(_utilizationRate > 0 && _utilizationRate <= 1 * 10**18, Errors.INVALID_UTILIZATION_RATE);
        utilizationRate = _utilizationRate;
        updatedAt       = block.timestamp;
        emit UtilizationRateUpdated(_utilizationRate, block.timestamp);
    }

    function addRelayer(address _relayer) external onlyOwner {
        isRelayer[_relayer] = true;
        emit RelayerAdded(_relayer);
    }

    function removeRelayer(address _relayer) external onlyOwner {
        isRelayer[_relayer] = false;
        emit RelayerRemoved(_relayer);
    }
}