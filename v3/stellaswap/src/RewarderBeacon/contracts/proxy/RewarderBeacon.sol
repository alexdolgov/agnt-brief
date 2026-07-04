// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "@openzeppelin/contracts/proxy/beacon/IBeacon.sol";
import "@openzeppelin/contracts/utils/Address.sol";

import "../interfaces/IRewardRegistry.sol";

/**
 * @dev This contract is used in conjunction with one or more instances of {BeaconProxy} to determine their
 * implementation contract, which is where they will delegate all function calls.
 *
 * An ROLE_BEACON_MANAGER is able to change the implementation the beacon points to, thus upgrading the proxies that use this beacon.
 */
contract RewarderBeacon is IBeacon {
    address public REWARD_REGISTRY;

    // current revision index
    uint256 public currentRevision;

    // index of newest revision
    uint256 public latestRevision;

    // array of implementations
    address[] public revisionImplementation;

    // revision index for specific rewarder (if revision == 0 => current revision used)
    mapping(address => uint256) public rewarderRevision;

    // index of max revision for rewarder
    mapping(address => uint256) public rewarderMaxRevision;

    // Beacon manager role
    bytes32 internal constant ROLE_BEACON_MANAGER = keccak256("ROLE_BEACON_MANAGER");

    /**
     * @dev Emitted when new implementation revision added.
     */
    event NewRevision(address indexed implementation);

    /**
     * @dev Emitted when current revision updated.
     */
    event NewCurrentRevision(address indexed implementation);

    /**
     * @dev Emitted when rewarder current revision updated.
     */
    event NewRewarderRevision(address indexed rewarder, address indexed implementation);

    modifier auth(bytes32 role) {
        require(IRewardRegistry(REWARD_REGISTRY).hasRole(role, msg.sender), "REWARDER_BEACON: UNAUTHOROZED");
        _;
    }

    /**
     * @dev Sets the address of the initial implementation, and the deployer account as the owner who can upgrade the
     * beacon.
     */
    constructor(address implementation_, address _rewardRegistry) {
        _setImplementation(implementation_);
        currentRevision = latestRevision;
        REWARD_REGISTRY = _rewardRegistry;
    }

    /**
     * @dev Returns the current implementation address.
     */
    function implementation() public view virtual override returns (address) {
        if (rewarderRevision[msg.sender] != 0) {
            return revisionImplementation[rewarderRevision[msg.sender] - 1];
        }
        return revisionImplementation[currentRevision - 1];
    }

    /**
    * @dev Set rewarder revision to `_revision`
    */
    function setRewarderRevision(address _rewarder, uint256 _revision) external auth(ROLE_BEACON_MANAGER) {
        require(
            (rewarderRevision[_rewarder] == 0 && _revision > rewarderMaxRevision[_rewarder] && _revision <= latestRevision) || 
            (rewarderRevision[_rewarder] > 0 && _revision == 0), 
            "REWARDER_BEACON: INCORRECT_REVISION"
        );
        rewarderRevision[_rewarder] = _revision;

        if (_revision == 0) {
            _revision = currentRevision;
        }
        else {
            rewarderMaxRevision[_rewarder] = _revision;
        }
        emit NewRewarderRevision(_rewarder, revisionImplementation[_revision - 1]);
    }

    /**
    * @dev Update current revision
    */
    function setCurrentRevision(uint256 _newCurrentRevision) external auth(ROLE_BEACON_MANAGER) {
        require(_newCurrentRevision > currentRevision && _newCurrentRevision <= latestRevision, "REWARDER_BEACON: INCORRECT_REVISION");
        currentRevision = _newCurrentRevision;
        emit NewCurrentRevision(revisionImplementation[_newCurrentRevision - 1]);
    }

    /**
     * @dev Add new revision of implementation to beacon.
     *
     * Emits an {Upgraded} event.
     *
     * Requirements:
     *
     * - msg.sender must be the owner of the contract.
     * - `newImplementation` must be a contract.
     */
    function addImplementation(address newImplementation) public auth(ROLE_BEACON_MANAGER) {
        _setImplementation(newImplementation);
        emit NewRevision(newImplementation);
    }

    /**
     * @dev Sets the implementation contract address for this beacon
     *
     * Requirements:
     *
     * - `newImplementation` must be a contract.
     */
    function _setImplementation(address newImplementation) private {
        require(Address.isContract(newImplementation), "REWARDER_BEACON: implementation is not a contract");
        latestRevision += 1;
        revisionImplementation.push(newImplementation);
    }
}