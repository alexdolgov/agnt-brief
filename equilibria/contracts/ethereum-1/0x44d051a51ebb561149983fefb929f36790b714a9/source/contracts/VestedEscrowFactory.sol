// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

import "@openzeppelin/contracts/proxy/beacon/BeaconProxy.sol";
import "@openzeppelin/contracts/proxy/beacon/UpgradeableBeacon.sol";
import "@openzeppelin/contracts/utils/Create2.sol";
import "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";

import "./Interfaces/IVestedEscrow.sol";
import "./Utils/LRTConstants.sol";

contract VestedEscrowFactory is AccessControlUpgradeable {
    UpgradeableBeacon public vestedEscrowBeacon;

    event VestedEscrowCreated(address indexed _vestedEscrow);

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function initialize(address _vestedEscrowBeacon) public initializer {
        __AccessControl_init();

        vestedEscrowBeacon = UpgradeableBeacon(_vestedEscrowBeacon);

        _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
        _grantRole(LRTConstants.ADMIN_ROLE, msg.sender);
    }

    function createVestedEscrow(
        address _token,
        uint256 _startTime,
        uint256 _lockDuration,
        uint256 _lockPercent,
        uint256 _releaseDuration
    ) external onlyRole(LRTConstants.ADMIN_ROLE) returns (address) {
        address vestedEscrow = Create2.deploy(
            0,
            keccak256(abi.encode(msg.sender, block.timestamp)),
            abi.encodePacked(
                type(BeaconProxy).creationCode,
                abi.encode(address(vestedEscrowBeacon), "")
            )
        );

        IVestedEscrow(vestedEscrow).initialize(
            msg.sender,
            _token,
            _startTime,
            _lockDuration,
            _lockPercent,
            _releaseDuration
        );
        emit VestedEscrowCreated(vestedEscrow);
        return vestedEscrow;
    }
}
