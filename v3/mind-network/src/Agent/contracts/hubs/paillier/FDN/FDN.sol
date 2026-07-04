// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

import {AccessControlUpgradeable} from "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import {EnumerableSet} from "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";
import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";
import {FheKeyRegistry} from "../../../storage/FheKeyRegistry.sol";
import {IFDN} from "./IFDN.sol";
import {FDNGateway} from "./FDNGateway.sol";

contract FDN is IFDN, AccessControlUpgradeable {
    using EnumerableSet for EnumerableSet.UintSet;

    bytes32 private constant CONTRACT_ID = "Paillier FDN";

    bytes32 public constant MPC_ROLE = keccak256("MPC_ROLE");
    bytes32 public constant GATEWAY_ROLE = keccak256("GATEWAY_ROLE");

    FheKeyRegistry private fheKeyRegistry;
    FDNGateway private gateway;

    EnumerableSet.UintSet private pendingRequests;

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function initialize(address _owner) public initializer {
        __AccessControl_init();
        _grantRole(DEFAULT_ADMIN_ROLE, _owner);
    }

    function setup(FheKeyRegistry _fheKeyRegistry, FDNGateway _gateway) external onlyRole(DEFAULT_ADMIN_ROLE) {
        fheKeyRegistry = _fheKeyRegistry;
        gateway = _gateway;
        emit Setup(address(fheKeyRegistry), address(gateway));
    }

    function getPendingRequests() external view returns (uint256[] memory) {
        if (pendingRequests.length() < 1000) {
            return pendingRequests.values();
        } else {
            uint256[] memory result = new uint256[](1000);
            for (uint256 i; i < 1000; i++) {
                result[i] = pendingRequests.at(i);
            }
            return result;
        }
    }

    function serviceRequested(uint256 requestId) external onlyRole(GATEWAY_ROLE) {
        bool added = pendingRequests.add(requestId);
        if (!added) {
            revert GeneralError(CONTRACT_ID, 50001);
        }
    }

    function submitFheKeys(uint256 requestId, FheKeySet calldata generatedKeys) external onlyRole(MPC_ROLE) {
        if (pendingRequests.contains(requestId)) {
            bytes32 fheKeySetId = gateway.createFheKeySet(fheKeyRegistry, generatedKeys);
            gateway.completeRequest(requestId, abi.encode(fheKeySetId));
            bool removed = pendingRequests.remove(requestId);
            if (!removed) {
                revert GeneralError(CONTRACT_ID, 50002);
            }
            emit Submission(requestId, _msgSender(), true);
        } else {
            emit Submission(requestId, _msgSender(), false);
        }
    }

    function submitDecryptionResult(uint256 requestId, DecryptionResult calldata result) external onlyRole(MPC_ROLE) {
        if (pendingRequests.contains(requestId)) {
            gateway.completeRequest(requestId, abi.encode(result));
            bool removed = pendingRequests.remove(requestId);
            if (!removed) {
                revert GeneralError(CONTRACT_ID, 50003);
            }
            emit Submission(requestId, _msgSender(), true);
        } else {
            emit Submission(requestId, _msgSender(), false);
        }
    }
}
