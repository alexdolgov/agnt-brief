// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;

import {IVoterV5_GaugeLogic} from "./VoterV5_GaugeLogic.sol";

/// @title VoterV4_Storage
/// @notice This contract contains the storage variables for VoterV4.
/// @dev This contract is used to ensure both VoterV4 and VoterV4_GaugeLogic have access to the same storage variables
///  in the correct slots. They MUST both extend this.
contract VoterV5_Storage {
    bool internal initflag;

    address public _ve; // lynx ve token that governs these contracts
    address[] internal _factories; // Array with all the pair factories
    address public base; // $lynx token
    address public oLynx; // $lynx token
    address[] internal _gaugeFactories; // array with all the gauge factories
    address public bribefactory; // bribe factory (internal and external)
    address public minter; // minter mints $lynx each epoch
    address public permissionRegistry; // registry to check accesses
    address[] public pools; // all pools viable for incentives

    uint256 internal index; // gauge index
    uint256 internal DURATION; // rewards are released over 1 epoch
    uint256 public VOTE_DELAY; // delay between votes in seconds
    uint256 public MAX_VOTE_DELAY; // Max vote delay allowed

    mapping(address => uint256) internal supplyIndex; // gauge    => index
    mapping(address => uint256) public claimable; // gauge    => claimable $lynx
    mapping(address => address) public gauges; // pool     => gauge
    mapping(address => uint256) public gaugesDistributionTimestamp; // gauge    => last Distribution Time
    mapping(address => address) public poolForGauge; // gauge    => pool
    mapping(address => address) public internal_bribes; // gauge    => internal bribe (only fees)
    mapping(address => address) public external_bribes; // gauge    => external bribe (real bribes)
    mapping(address => mapping(address => uint256)) public votes; // nft      => pool     => votes
    mapping(address => address[]) public poolVote; // nft      => pools
    mapping(uint256 => mapping(address => uint256)) internal weightsPerEpoch; // timestamp => pool => weights
    mapping(uint256 => uint256) internal totalWeightsPerEpoch; // timestamp => total weights
    mapping(address => uint256) public lastVoted; // nft      => timestamp of last vote
    mapping(address => bool) public isGauge; // gauge    => boolean [is a gauge?]
    mapping(address => bool) public isWhitelisted; // token    => boolean [is an allowed token?]
    mapping(address => bool) public isWhitelistedPool; // token    => boolean [is an allowed token?]
    mapping(address => bool) public isAlive; // gauge    => boolean [is the gauge alive?]
    mapping(address => uint8) public isFactory; // factory  => boolean [the pair factory exists?]
    mapping(address => bool) public isGaugeFactory; // g.factory=> boolean [the gauge factory exists?]
    mapping(address => bool) public isGaugeDepositor; // g.factory=> boolean [the gauge factory exists?]

    IVoterV5_GaugeLogic public gaugeLogic; // gauge logic contract

    // Reserved space for future state variables
    uint256[50] private __gap;
}
