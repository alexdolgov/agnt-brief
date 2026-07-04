// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import {UUPSUpgradeable} from "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import {OwnableUpgradeable} from "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";

import {InterestDistributor} from "src/core/InterestDistributor.sol";

contract InterestDistributorOwner is UUPSUpgradeable, OwnableUpgradeable {
    InterestDistributor immutable DISTRIBUTOR;

    mapping(address => bool) public isOperator;

    event EnabledOperator(address indexed operator, bool enabled);

    error OnlyOperator();

    constructor(address _distributorAddress) {
        DISTRIBUTOR = InterestDistributor(_distributorAddress);

        _disableInitializers();
    }

    modifier onlyOperator() {
        if (!isOperator[msg.sender]) {
            revert OnlyOperator();
        }
        _;
    }

    function initialize(address _owner) external initializer {
        __UUPSUpgradeable_init();
        __Ownable_init(_owner);

        isOperator[_owner] = true;
        emit EnabledOperator(_owner, true);
    }

    function transferDistributorOwnership(address _newOwner) external onlyOwner {
        DISTRIBUTOR.transferOwnership(_newOwner);
    }

    function toggleOperator(address _operator, bool _enable) external onlyOwner {
        isOperator[_operator] = _enable;

        emit EnabledOperator(_operator, _enable);
    }

    function distribute() external onlyOperator {
        DISTRIBUTOR.claim();
    }

    function _authorizeUpgrade(address) internal override onlyOwner {}
}
