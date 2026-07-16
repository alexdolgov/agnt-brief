// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity 0.8.19;

import {ERC20} from "solady/tokens/ERC20.sol";
import {SafeTransferLib} from "solady/utils/SafeTransferLib.sol";
import {GovernanceHandler} from "herdaddy/utils/GovernanceHandler.sol";

/// @title OTCRegistry
/// @notice Contract to deposit and register OTC made for vote incentives distribution
/// @notice Useable only by authorized addresses
/// @dev Owned by AllMight to swap funds into protocol sdToken
contract OTCRegistry is GovernanceHandler {
    ////////////////////////////////////////////////////////////
    /// --- STRUCTS
    ////////////////////////////////////////////////////////////

    /// @notice OTC struct
    /// @param depositor Address of the depositor
    /// @param protocolName Protocol id of the protocol
    /// @param rewardToken Reward token address
    /// @param gauge Gauge address
    /// @param chainId Chain id of the protocol
    /// @param amount Total amount deposited
    /// @param startTimestamp Timestamp of the OTC to start
    /// @param totalPeriods Number of periods to distribute the reward
    /// @param withdrawPerPeriod Amount to withdraw per period
    /// @dev Each withdraw = 1 period
    struct OTCData {
        address depositor;
        string protocolName;
        address rewardToken;
        address gauge;
        uint256 chainId;
        uint256 amount;
        uint256 startTimestamp;
        uint256 totalPeriods;
        uint256 withdrawPerPeriod;
    }

    ////////////////////////////////////////////////////////////
    /// --- STORAGE VARS
    ////////////////////////////////////////////////////////////

    /// @notice OTCs counter
    uint256 public nextID;
    /// @notice Is protocol registered
    mapping(string => bool) public isProtocol;
    /// @notice OTCs Data
    mapping(uint256 => OTCData) public otcs;
    /// @notice OTCs Balance
    mapping(uint256 => uint256) public balances;
    /// @notice OTCs Periods Left
    mapping(uint256 => uint256) public periodsLeft;

    ////////////////////////////////////////////////////////////
    /// --- EVENTS
    ////////////////////////////////////////////////////////////

    event ProtocolAdded(string protocol);
    event ProtocolRemoved(string protocol);
    event OTCDeposited(uint256 id, OTCData otc);
    event OTCWithdrawn(uint256 id, address withdrawer, uint256 amount);

    ////////////////////////////////////////////////////////////
    /// --- ERRORS
    ////////////////////////////////////////////////////////////
    error INVALID_DEPOSITOR_ADDRESS();
    error INVALID_AMOUNT();
    error INVALID_PROTOCOL();
    error INVALID_START_TIMESTAMP();
    error INVALID_PERIODS_LEFT();
    error PROTOCOL_NOT_REGISTERED();
    error OTC_NOT_STARTED();
    error OTC_HAS_ENDED();

    ////////////////////////////////////////////////////////////
    /// --- CONSTRUCTOR
    ////////////////////////////////////////////////////////////

    constructor(address governance) GovernanceHandler(governance) {}

    function depositOTC(
        address _depositor,
        string calldata _protocolName,
        address _rewardToken,
        address _gauge,
        uint256 _chainId,
        uint256 _amount,
        uint256 _startTimestamp,
        uint256 _totalPeriods
    ) external returns (uint256 newId) {
        if (_depositor == address(0)) revert INVALID_DEPOSITOR_ADDRESS();
        if (_amount == 0) revert INVALID_AMOUNT();
        if (_startTimestamp < block.timestamp) revert INVALID_START_TIMESTAMP();
        if (_totalPeriods == 0 || _totalPeriods >= 60) revert INVALID_PERIODS_LEFT();
        if (!isProtocol[_protocolName]) revert INVALID_PROTOCOL();

        unchecked {
            // Get the ID for that new Bounty and increment the nextID counter.
            newId = nextID;
            ++nextID;
        }

        SafeTransferLib.safeTransferFrom(_rewardToken, msg.sender, address(this), _amount);

        OTCData memory _otc = OTCData({
            depositor: _depositor,
            protocolName: _protocolName,
            rewardToken: _rewardToken,
            gauge: _gauge,
            chainId: _chainId,
            amount: _amount,
            startTimestamp: _startTimestamp,
            totalPeriods: _totalPeriods,
            withdrawPerPeriod: _amount / _totalPeriods
        });

        otcs[newId] = _otc;
        balances[newId] = _amount;
        periodsLeft[newId] = _totalPeriods;

        emit OTCDeposited(newId, _otc);
    }

    ////////////////////////////////////////////////////////////
    /// --- ONLY ALLOWED
    ////////////////////////////////////////////////////////////

    /// @notice Withdraw the reward token from the OTC to the owner, based on periods
    /// @dev Withdraw if block.timestamp > otc._startTimestamp, amount = otc._amount/otc._periodsLeft
    /// @param _id OTC id
    function pull(uint256 _id) external onlyGovernanceOrAllowed {
        OTCData memory _otc = otcs[_id];
        if (block.timestamp < _otc.startTimestamp) revert OTC_NOT_STARTED();
        if (periodsLeft[_id] == 0) revert OTC_HAS_ENDED();

        // Transfer the reward token to the puller
        SafeTransferLib.safeTransfer(_otc.rewardToken, msg.sender, otcs[_id].withdrawPerPeriod);

        periodsLeft[_id] -= 1;
        balances[_id] -= otcs[_id].withdrawPerPeriod;

        emit OTCWithdrawn(_id, msg.sender, otcs[_id].withdrawPerPeriod);
    }

    /// @notice Add a protocol to the registry (keccak256(protocol) => true)
    /// @param protocol Protocol name
    function addProtocol(string memory protocol) external onlyGovernanceOrAllowed {
        if (isProtocol[protocol]) revert INVALID_PROTOCOL();

        isProtocol[protocol] = true;

        emit ProtocolAdded(protocol);
    }

    /// @notice Remove a protocol from the registry (keccak256(protocol) => false)
    /// @param protocol Protocol name
    function removeProtocol(string memory protocol) external onlyGovernanceOrAllowed {
        if (!isProtocol[protocol]) revert INVALID_PROTOCOL();

        isProtocol[protocol] = false;

        emit ProtocolRemoved(protocol);
    }

    ////////////////////////////////////////////////////////////
    /// --- ONLY GOVERNANCE
    ////////////////////////////////////////////////////////////

    /// @notice Emergency withdraw all the reward token from the OTC to the owner, bypass and reset completely the OTC
    /// @param _id OTC id
    function emergencyWithdraw(uint256 _id) external onlyGovernance {
        OTCData memory _otc = otcs[_id];
        uint256 amountToWithdraw = balances[_id]; // Store the amount to withdraw based on the current balance
        SafeTransferLib.safeTransfer(_otc.rewardToken, msg.sender, amountToWithdraw);
        // Reset the OTC
        delete otcs[_id];
        delete balances[_id];
        delete periodsLeft[_id];

        emit OTCWithdrawn(_id, msg.sender, amountToWithdraw);
    }
}
