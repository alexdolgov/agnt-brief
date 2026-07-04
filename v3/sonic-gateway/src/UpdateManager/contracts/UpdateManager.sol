// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.27;

import {AccessControlUpgradeable} from "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import {IStateOracle} from "./interfaces/IStateOracle.sol";
import {IUpdateVerifier} from "./interfaces/IUpdateVerifier.sol";
import {IProvingContract} from "./interfaces/IProvingContract.sol";
import {IActivityMonitor} from "./interfaces/IActivityMonitor.sol";
import {OwnableUpgradeable} from "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import {UUPSUpgradeable} from "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";

/// Update manager controls updating the bridge contracts, especially the state oracle.
/// A state update needs to be verified by the update verifier, which checks validators signatures.
/// @custom:security-contact security@fantom.foundation
contract UpdateManager is AccessControlUpgradeable, UUPSUpgradeable {
    IStateOracle public immutable stateOracle;
    IUpdateVerifier public updateVerifier;
    IProvingContract public immutable provingContract;
    IActivityMonitor public activityMonitor;
    uint256 public heartbeat; // update period as a number of blocks
    uint256 public fastLanePadding;
    uint256 public fastLaneFee;
    bool public fastLaneInUse;

    bytes32 public constant HEARTBEAT_ROLE = keccak256("HEARTBEAT_ROLE");
    bytes32 public constant MONITOR_SETTER_ROLE = keccak256("MONITOR_SETTER_ROLE");
    bytes32 public constant FEE_SETTER_ROLE = keccak256("FEE_SETTER_ROLE");

    event FastLaneRequest(uint256 blockNum);
    event HeartbeatSet(uint256 heartbeat);
    event FastLanePaddingSet(uint256 padding);
    event FastLaneFeeSet(uint256 fee);
    event ActivityMonitorSet(IActivityMonitor activityMonitor);
    event UpdateVerifierSet(IUpdateVerifier updateVerifier);

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor(IStateOracle _stateOracle, IProvingContract _provingContract) {
        require(address(_stateOracle) != address(0), "StateOracle not set");
        require(address(_provingContract) != address(0), "ProvingContract not set");
        stateOracle = _stateOracle;
        provingContract = _provingContract;
        _disableInitializers();
    }

    /// Initialize contract after the deployment.
    function initialize(address admin, IUpdateVerifier _updateVerifier, uint256 _heartbeat) external initializer {
        require(admin != address(0), "Admin not set");
        require(address(_updateVerifier) != address(0), "UpdateVerifier not set");
        require(_heartbeat >= 1, "Heartbeat must be positive");
        __AccessControl_init();
        __UUPSUpgradeable_init();
        updateVerifier = _updateVerifier;
        heartbeat = _heartbeat;
        _grantRole(DEFAULT_ADMIN_ROLE, admin); // can grant roles and upgrade the contract
    }

    function _authorizeUpgrade(address newImplementation) internal override onlyRole(DEFAULT_ADMIN_ROLE) {}

    /// Update the state oracle and related stuff. Requires signatures of the bridge validators.
    function update(uint256 blockNum, bytes32 stateRoot, bytes calldata newValidators, address _proofVerifier, address _updateVerifier, address _exitAdmin, bytes[] calldata signatures) external {
        // verify update validity
        uint256 _chainId = stateOracle.chainId();
        uint256[] memory validators = updateVerifier.verifyUpdate(blockNum, stateRoot, _chainId, newValidators, _proofVerifier, _updateVerifier, _exitAdmin, signatures);

        // update
        stateOracle.update(blockNum, stateRoot);
        if (_proofVerifier != address(0)) {
            provingContract.setProofVerifier(_proofVerifier);
        }
        if (_exitAdmin != address(0)) {
            provingContract.setExitAdministrator(_exitAdmin);
        }
        if (_updateVerifier != address(0)) {
            // must be updated before the setValidators call
            updateVerifier = IUpdateVerifier(_updateVerifier);
            emit UpdateVerifierSet(IUpdateVerifier(_updateVerifier));
        }
        if (newValidators.length != 0) {
            updateVerifier.setValidators(newValidators);
        }
        if (address(activityMonitor) != address(0)) {
            activityMonitor.markActivity(validators);
        }
        if (fastLaneInUse) {
            fastLaneInUse = false;
            (bool success, ) = msg.sender.call{value: address(this).balance}("");
            require(success, "Failed to transfer update reward");
        }
    }

    /// Request faster state oracle update, new state root should include result of txs done in blockNum of the watched chain.
    /// Request needs to have fastLaneFee value attached to be accepted. It will cover additional oracle update gas fee.
    function payFastLane(uint256 blockNum) external payable {
        require(!fastLaneInUse, "Fast lane busy");
        require(msg.value >= fastLaneFee, "Insufficient fee value");
        uint256 lastStateUpdate = stateOracle.lastBlockNum();
        // get next periodic state update block number (ignore the fast lane updates)
        uint256 nextStateUpdate = lastStateUpdate - (lastStateUpdate % heartbeat) + heartbeat;
        require(blockNum > lastStateUpdate + fastLanePadding, "Block number too low");
        require(blockNum < nextStateUpdate - fastLanePadding, "Block number too high");

        fastLaneInUse = true;
        emit FastLaneRequest(blockNum);
    }

    /// Set period of regular state oracle updates in the number of watched chain blocks.
    function setHeartbeat(uint256 _heartbeat) onlyRole(HEARTBEAT_ROLE) external {
        require(_heartbeat >= 1, "Heartbeat must be positive");
        require(fastLanePadding < _heartbeat, "Heartbeat must be greater than fast lane padding");
        heartbeat = _heartbeat;
        emit HeartbeatSet(_heartbeat);
    }

    /// Set minimal spacing between two consequent state oracle update in the number of watched chain blocks.
    /// This restrict possibility of fast-lane update.
    function setFastLanePadding(uint256 _padding) onlyRole(HEARTBEAT_ROLE) external {
        require(_padding < heartbeat, "Padding must be less than heartbeat");
        fastLanePadding = _padding;
        emit FastLanePaddingSet(_padding);
    }

    /// Set fee for a single usage of fast lane. Should cover gas fees of the oracle update.
    function setFastLaneFee(uint256 _fee) onlyRole(FEE_SETTER_ROLE) external {
        fastLaneFee = _fee;
        emit FastLaneFeeSet(_fee);
    }

    /// Set a contract responsible for validators activity monitoring.
    /// The monitor contract will be notified everytime when a validator contribute to an update.
    function setActivityMonitor(IActivityMonitor _monitor) onlyRole(MONITOR_SETTER_ROLE) external {
        activityMonitor = _monitor;
        emit ActivityMonitorSet(_monitor);
    }

    /// Get chain id of the watched chain
    function chainId() external view returns(uint256) {
        return stateOracle.chainId();
    }

    /// Get last update block number
    function lastBlockNum() external view returns(uint256) {
        return stateOracle.lastBlockNum();
    }

    /// Get proof verifier of the bridge contract
    function proofVerifier() external view returns(address) {
        return provingContract.proofVerifier();
    }
}
