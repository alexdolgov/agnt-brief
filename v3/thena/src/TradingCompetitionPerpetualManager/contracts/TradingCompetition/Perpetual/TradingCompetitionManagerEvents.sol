// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.19;

import "./interfaces/ITradingCompetitionManager.sol";

/// @title Event contract
/// @author Prometheus, Perseus - ThenaFinance
/// @notice Move events here to keep code clean. 

abstract contract TradingCompetitionManagerEvents is ITradingCompetitionManager {

    /*****************************************/
    /*-----         -----**-----        -----*/
    /*              USER EVENT               */
    /*-----         -----**-----        -----*/
    /*****************************************/

    event Create(address indexed competition, address indexed caller, uint indexed idCounter, uint blocktimestamp);


    /*****************************************/
    /*-----         -----**-----        -----*/
    /*              RESTRICTED EVENTS        */
    /*-----         -----**-----        -----*/
    /*****************************************/


    /*****************************************/
    /*-----         -----**-----        -----*/
    /*              ADMIN EVENTS             */
    /*-----         -----**-----        -----*/
    /*****************************************/

    /// @notice Emitted when a new treasury is set
    event SetTreasury(address indexed oldTreasury, address newTreasury, uint blocktimestamp);

    /// @notice Emitted when a new protocol fee is set
    event SetProtocolFee(uint indexed oldAmount, uint newAmount, uint blocktimestamp);

    /// @notice Emitted when a new fee token is set
    event SetProtocolFeeToken(address indexed oldtoken, address newToken, uint blocktimestamp);

    /// @notice Emitted when a new max amount of placements for the trading competitions is set
    event SetMaxPlacements(uint indexed oldAmount, uint newAmount, uint blocktimestamp);

    /// @notice Emitted when a new token is added 
    event AddPair(uint indexed pair, string indexed name, uint blocktimestamp);

    /// @notice Emitted when a new token is removed 
    event RemovePair(uint indexed pair, string indexed name, uint blocktimestamp);

    /// @notice Emitted when a new token is added 
    event AddToken(address indexed token, uint blocktimestamp);

    /// @notice Emitted when a new token is removed 
    event RemoveToken(address indexed token, uint blocktimestamp);

    /// @notice Emitted when a new creator is added 
    event AddCreator(address indexed creator, uint blocktimestamp);

    /// @notice Emitted when a creator is removed
    event RemoveCreator(address indexed creator, uint blocktimestamp);

    /// @notice Emitted when permissionless creation is set to true or false
    event SetPermissionlessCreation(bool indexed status, uint blocktimestamp);

    /// @notice Emitted when a perpetual factory is set
    event SetPerpetualFactory(address indexed old, address newFactory, uint blocktimestamp);

    /// @notice Emitted when a rewarder is set
    event SetRewarder(address indexed old, address rewarder, uint blocktimestamp);

    /// @notice Set new Account Implementation
    event SetAccountImplementation(bytes old_impl, bytes new_impl);


}