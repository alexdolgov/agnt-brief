// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";

/**
 * @title WaveTracker
 * @author Veil Cash
 * @notice Tracks deposit incentives per wave - called by VeilETHQueue
 */
contract WaveTracker is Ownable {
    /// @notice Events
    event WaveStarted(uint256 indexed wave);
    event WaveStopped(uint256 indexed wave);
    event DepositTracked(uint256 indexed wave, address indexed depositor, uint256 amount);
    event QueueContractSet(address indexed queueContract);

    /// @notice Only queue contract modifier
    modifier onlyQueue() {
        require(msg.sender == queueContract, "Only queue");
        _;
    }

    /// @notice Queue contract that can record deposits
    address public queueContract;

    /// @notice Current wave number
    uint256 public currentWave;

    /// @notice Whether wave tracking is active
    bool public waveActive;

    /// @notice Tracking: wave => depositor => total volume
    mapping(uint256 => mapping(address => uint256)) public waveDeposits;

    /// @notice Tracking: wave => total deposit count
    mapping(uint256 => uint256) public waveDepositCount;

    constructor(address _owner) Ownable(_owner) {}

    ////// QUEUE HOOK //////

    /**
     * @dev Records a deposit for incentive tracking - called by queue contract
     * @param _depositor The depositor address
     * @param _amount The deposit amount (shieldAmount)
     */
    function recordDeposit(address _depositor, uint256 _amount) external onlyQueue {
        if (!waveActive) return;

        waveDeposits[currentWave][_depositor] += _amount;
        waveDepositCount[currentWave]++;

        emit DepositTracked(currentWave, _depositor, _amount);
    }

    ////// ADMIN FUNCTIONS //////

    /**
     * @dev Sets the queue contract address
     * @param _queueContract The queue contract address
     */
    function setQueueContract(address _queueContract) external onlyOwner {
        queueContract = _queueContract;
        emit QueueContractSet(_queueContract);
    }

    /**
     * @dev Starts a new wave for incentive tracking
     */
    function startWave() external onlyOwner {
        currentWave++;
        waveActive = true;
        emit WaveStarted(currentWave);
    }

    /**
     * @dev Stops the current wave
     */
    function stopWave() external onlyOwner {
        waveActive = false;
        emit WaveStopped(currentWave);
    }

    /**
     * @dev Toggles the wave active state
     */
    function toggleWave() external onlyOwner {
        waveActive = !waveActive;
        if (waveActive) {
            emit WaveStarted(currentWave);
        } else {
            emit WaveStopped(currentWave);
        }
    }

    ////// VIEW FUNCTIONS //////

    /**
     * @dev Returns the total deposit volume for a depositor in a specific wave
     * @param _wave The wave number to query
     * @param _depositor The depositor address to query
     * @return volume The total deposit volume
     */
    function getWaveDeposit(uint256 _wave, address _depositor) external view returns (uint256 volume) {
        return waveDeposits[_wave][_depositor];
    }

    /**
     * @dev Checks if a depositor has participated in a specific wave
     * @param _wave The wave number to query
     * @param _depositor The depositor address to query
     * @return True if the depositor has deposited in the wave
     */
    function hasDepositedInWave(uint256 _wave, address _depositor) external view returns (bool) {
        return waveDeposits[_wave][_depositor] > 0;
    }

    /**
     * @dev Returns the total deposit count for a specific wave
     * @param _wave The wave number to query
     * @return count The total number of deposits in the wave
     */
    function getWaveDepositCount(uint256 _wave) external view returns (uint256 count) {
        return waveDepositCount[_wave];
    }
}

