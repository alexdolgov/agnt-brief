// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.0;

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
        address winning_token;      // User with more winning_token wins. must be in TradingTokens. Eg.: usdt
        address[] tradingTokens;    // tokens allowed for trading, at least 2! must contain winning_token. Eg.: usdt - wbnb
    }

    
    /// @notice Trading competition prize structure
    struct Prize {
        bool win_type;              // False == Higher PNL in n° of tokens wins | True == Higher % PNL wins
        uint owner_fee;             // the creator fee on the prize. owner_fee <= 250 (25%).
        uint[] weights;             // weights for each placement. Eg.: weights = [10,70,20] --> sorted then [1st = 70, 2nd = 20, 3rd = 10] 
        uint[] totalPrize;          // total prize to win (counting owner_fee). 
        address[] token;            // prize tokens
    }

    /// @notice Trading competition info structure
    struct TC {
        uint[] entryFee;             // EntryFee to pay to enter the trading competition. Amount in prize.token
        uint MAX_PARTICIPANTS;       // Max number of participants

        address owner;              // Creator of the trading competition
        address tradingCompetition; // Trading Competition Contract. This field is filled on deployment, must be init to address(0)
        
        string name;                // Name of the trading competition (can be address(0) on create() )
        string description;         // Description of the trading competition
        
        TimestampInfo timestamp;    // See struct TimestampInfo
        MarketType market;          // See enum MarketType
        Prize prize;                // See struct Prize
        CompetitionRules competitionRules; // See struct CompetitionsRules
    }

    /// @notice Define market types
    enum MarketType {SPOT, PERPETUALS}


    /// @dev functions
    function create(TC calldata _tradingCompetition) external returns(address competition, uint idCounter);
    function idToTradingCompetition(uint _id) external view returns (TC memory);
    
    function OORouter() external view returns(address);
    function OneInchRouter() external view returns(address);
    function AlgebraRouter() external view returns(address);
    function OdosRouter() external view returns(address);

    function idCounter() external view returns(uint);
    
}
