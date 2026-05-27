// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <0.9.0;

import { Ownable } from "@openzeppelin/contracts/access/Ownable.sol";
import { Ownable2Step } from "@openzeppelin/contracts/access/Ownable2Step.sol";

/**
 * @title Gauge Registry
 * @author Puffer Finance
 * @notice This contract is used to register and manage gauges for the Puffer Finance protocol.
 */
contract GaugeRegistry is Ownable2Step {
    error InvalidAddress();
    error GaugeDoesNotExist();
    error GaugeAlreadyExists();
    error GaugeActivationUnchanged();

    event GaugeRegistered(address indexed gauge, string metadataURI);
    event GaugeDeactivated(address indexed gauge);
    event GaugeActivated(address indexed gauge);
    event GaugeMetadataUpdated(address indexed gauge, string oldMetadataURI, string newMetadataURI);

    /**
     * @dev Gauge info
     * @param active Whether the gauge is active
     * @param created The timestamp when the gauge was created
     * @param metadataURI The URI of the gauge metadata
     */
    struct Gauge {
        bool active;
        uint48 created;
        string metadataURI;
    }

    mapping(address => Gauge) private _gauges;
    address[] private _gaugeList;

    modifier onlyExistingGauge(address gauge) {
        require(gaugeExists(gauge), GaugeDoesNotExist());
        _;
    }

    constructor(address _owner) Ownable(_owner) { }

    //// GAUGES MANAGEMENT ////

    /**
     * @notice Register a new gauge
     * @param gauge The address of the gauge to register
     * @param metadataURI The URI of the gauge metadata
     * @dev Can only be called by the contract owner
     */
    function registerGauge(address gauge, string calldata metadataURI) external onlyOwner {
        require(gauge != address(0), InvalidAddress());
        require(!gaugeExists(gauge), GaugeAlreadyExists());
        _gauges[gauge] = Gauge({ active: true, created: uint48(block.timestamp), metadataURI: metadataURI });
        _gaugeList.push(gauge);
        emit GaugeRegistered(gauge, metadataURI);
    }

    /**
     * @notice Deactivate a gauge
     * @param gauge The address of the gauge to deactivate
     * @dev Can only be called by the contract owner
     */
    function deactivateGauge(address gauge) external onlyOwner onlyExistingGauge(gauge) {
        require(isActive(gauge), GaugeActivationUnchanged());
        _gauges[gauge].active = false;
        emit GaugeDeactivated(gauge);
    }

    /**
     * @notice Activate a gauge
     * @param gauge The address of the gauge to activate
     * @dev Can only be called by the contract owner
     */
    function activateGauge(address gauge) external onlyOwner onlyExistingGauge(gauge) {
        require(!isActive(gauge), GaugeActivationUnchanged());
        _gauges[gauge].active = true;
        emit GaugeActivated(gauge);
    }

    /**
     * @notice Update the metadata of a gauge
     * @param gauge The address of the gauge to update
     * @param metadataURI The new URI of the gauge metadata
     * @dev Can only be called by the contract owner
     */
    function updateGaugeMetadata(address gauge, string calldata metadataURI)
        external
        onlyOwner
        onlyExistingGauge(gauge)
    {
        emit GaugeMetadataUpdated(gauge, _gauges[gauge].metadataURI, metadataURI);
        _gauges[gauge].metadataURI = metadataURI;
    }

    //// GAUGES GETTERS ////

    /**
     * @notice Check if a gauge exists
     * @param gauge The address of the gauge to check
     * @return True if the gauge exists, false otherwise
     */
    function gaugeExists(address gauge) public view returns (bool) {
        return _gauges[gauge].created != 0;
    }

    /**
     * @notice Check if a gauge is active
     * @param gauge The address of the gauge to check
     * @return True if the gauge is active, false otherwise
     */
    function isActive(address gauge) public view returns (bool) {
        return _gauges[gauge].active;
    }

    /**
     * @notice Get the list of all gauges addresses
     * @return The list of all gauges addresses
     */
    function getGaugeList() external view returns (address[] memory) {
        return _gaugeList;
    }

    /**
     * @notice Get the details of a gauge
     * @param gauge The address of the gauge to get the details of
     * @return The details of the gauge
     */
    function getGauge(address gauge) external view returns (Gauge memory) {
        return _gauges[gauge];
    }
}
