// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.19;

interface ITradingCompetitionManager {
       
    
    /// @notice Trading competition timestamp info
    struct TimestampInfo {
        uint startTimestamp;        // when it starts
        uint endTimestamp;          // when it ends

        uint registrationStart;     // when regisitration starts
        uint registrationEnd;       // when registration ends
    }

    /// @notice Competition rules structure
    struct CompetitionRules {
        uint starting_balance;      // if != 0, anyone MUST have this starting_balance. Eg.: starting_balance = 100 * 1e18 --> 100 USDT as start
        uint[] pairIds;             // SYMMIO Pair Ids
    }

    
    /// @notice Trading competition prize structure
    struct Prize {
        bool win_type;              // False == Higher PNL in n° of tokens wins | True == Higher % PNL wins (!only % for now)
        uint[] weights;             // weights for each placement. Eg.: weights = [10,70,20] --> sorted then [1st = 70, 2nd = 20, 3rd = 10] 
        uint[] totalPrize;          // total prize to win (counting owner_fee). 
        uint owner_fee;             // the creator fee on the prize. owner_fee <= 250 (25%).
        address[] token;            // prize token
    }

    /// @notice Trading competition info structure
    struct TC {
        uint id;
        uint[] entryFee;            // EntryFee to pay to enter the trading competition. Amount in prize.token
        uint MAX_PARTICIPANTS;      // Max number of participants

        address owner;              // Creator of the trading competition
        address tradingCompetition; // Trading Competition Contract. This field is filled on deployment, must be init to address(0)
        
        string name;                // Name of the trading competition (can be address(0) on create() )
        string description;         // Description of the trading competition
        
        TimestampInfo timestamp;    // See struct TimestampInfo
        Prize prize;                // See struct Prize
        CompetitionRules competitionRules; // See struct CompetitionsRules
    }

    /// @dev functions
    function create(TC calldata _tradingCompetition) external returns(address competition, uint idCounter);
    function idToTradingCompetition(uint _id) external view returns (TC memory);
    function idCounter() external view returns(uint);
    function rewarder() external view returns(address);
    function isAllowedPairId(uint) external view returns(bool);

    function PRECISION() external view returns(uint);
    
}