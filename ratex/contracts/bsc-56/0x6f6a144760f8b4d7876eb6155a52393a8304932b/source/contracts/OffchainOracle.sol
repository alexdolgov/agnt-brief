// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/access/Ownable.sol";

contract Oracle is Ownable {
    
    error RateTooLow();
    error EpochStartTsTooEarly();
    
    struct OracleData {
        address admin;         
        bytes32 name;          
        uint96 lastRate;       
        uint96 rate;              
        uint32 timestamp;           
        uint32 epochStartTs;    
        uint32 lastEpochStartTs;
    }

    OracleData public data;
    
    event NewValue(
        uint96 rate, 
        uint96 lastRate,
        uint32 epochStartTs,
        uint32 lastEpochStartTs
    );

    event NewValueSlisbnb(
        uint96 rate, 
        uint96 lastRate,
        uint32 epochStartTs,
        uint32 lastEpochStartTs,
        uint96 wrapSlisbnbRate,
        uint96 slisBnbRate
    );

    constructor(
        bytes32 name_
    ) {
        data.admin = msg.sender;
        data.name = name_;
    }

    function updateValue(
        uint96 rate_,
        uint32 epochStartTs_
    ) external onlyOwner {
        if (rate_ < data.rate) revert RateTooLow();
        if (epochStartTs_ < data.epochStartTs) revert EpochStartTsTooEarly();
        data.lastRate = data.rate;  
        data.rate = rate_;
        data.lastEpochStartTs = data.epochStartTs;
        data.epochStartTs = epochStartTs_;
        data.timestamp = uint32(block.timestamp);

        emit NewValue(
            data.rate,
            data.lastRate,
            data.epochStartTs,
            data.lastEpochStartTs
        );
    }

    function updateValueSlisbnb(
        uint96 rate_,
        uint32 epochStartTs_,
        uint96 wrapSlisbnbRate_,
        uint96 slisBnbRate_
    ) external onlyOwner {
        if (rate_ < data.rate) revert RateTooLow();
        if (epochStartTs_ < data.epochStartTs) revert EpochStartTsTooEarly();
        data.lastRate = data.rate;  
        data.rate = rate_;
        data.lastEpochStartTs = data.epochStartTs;
        data.epochStartTs = epochStartTs_;
        data.timestamp = uint32(block.timestamp);

        emit NewValueSlisbnb(
            data.rate,
            data.lastRate,
            data.epochStartTs,
            data.lastEpochStartTs,
            wrapSlisbnbRate_,
            slisBnbRate_
        );
    }


    function getValue() external view returns (uint96) {
        // Return current price as uint96
        return data.rate;
    }

    function getLastValue() external view returns (uint96) {
        return data.lastRate;
    }

    function epochStartTs() external view returns (uint32) {
        return data.epochStartTs;
    }

    function lastEpochStartTs() external view returns (uint32) {
        return data.lastEpochStartTs;
    }

}
