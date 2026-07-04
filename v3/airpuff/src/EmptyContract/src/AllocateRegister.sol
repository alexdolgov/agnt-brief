// SPDX-License-Identifier: MIT LICENSE
pragma solidity 0.8.20;

import {EnumerableSet} from "openzeppelin/utils/structs/EnumerableSet.sol";
import {EnumerableMap} from "openzeppelin/utils/structs/EnumerableMap.sol";
import {AccessControlEnumerableUpgradeable} from "openzeppelin-upgradeable/access/extensions/AccessControlEnumerableUpgradeable.sol";

import {IAllocate, SupportedInterfaceId} from "./interfaces/IAllocate.sol";
import {IAllocateRegister} from "./interfaces/IAllocateRegister.sol";
import {IPauser} from "./interfaces/IPauser.sol";

contract AllocateRegister is AccessControlEnumerableUpgradeable, IAllocateRegister {
    using EnumerableSet for EnumerableSet.AddressSet;
    using EnumerableMap for EnumerableMap.AddressToUintMap;

    // Errors
    error RewardTrancheNotSupportInterface(bytes4 interfaceId);
    error RoleNotSet();
    error RepeatListTranche();
    error AllocatedFailed();
    error UnAllocatedFailed();
    error TrancheNotFound();
    error RemoveTrancheFailed();
    error Paused();

    /// @notice Role as the manager role in RewardTranche
    /// allows for the add / remove of Tranches.
    bytes32 public constant REGISTER_MANAGER_ROLE = keccak256("REGISTER_MANAGER_ROLE");

    /// @notice Role as the operator role in RewardTranche
    /// allows for the allocated / unallocated of Tranches.
    bytes32 public constant REGISTER_OPERATOR_ROLE = keccak256("REGISTER_OPERATOR_ROLE");

    /// @notice Keeps track of listed tranches.
    /// @dev This is common list array to find all tranches we listed.
    EnumerableSet.AddressSet internal trancheRegister;

    /// @notice Keeps track of user allocations.
    /// @dev This is common list map to find user's allocations.
    /// key -> value: tranche -> allocateMap(user -> amount)
    mapping( address => EnumerableMap.AddressToUintMap ) internal userAllocated;
    /// @dev This is common list map to find total allocations by tranche.
    /// total allocated amount by tranche; tranche -> amount
    mapping( address => uint256 ) public totalAllocated;
    // user total allocated aggregated by tranche; user -> total amount
    mapping( address => uint256 ) public userTotalAllocated;

    // The contract for indicating if staking is paused.
    IPauser public pauser;

    /// @notice Configuration for contract initialization.
    struct Init {
        address admin;
        address manager;
        address operator;
        address pauser;
    }

    constructor() {
        _disableInitializers();
    }

    /// @notice initialize the contract.
    /// @dev MUST be called during the contract upgrade to set up the proxies state.
    function initialize(Init memory init) external initializer {
        __AccessControlEnumerable_init();

        // set admin roles
        _setRoleAdmin(REGISTER_MANAGER_ROLE, DEFAULT_ADMIN_ROLE);
        _setRoleAdmin(REGISTER_OPERATOR_ROLE, DEFAULT_ADMIN_ROLE);

        // grant roles
        if (init.admin == address(0) || init.manager == address(0) || init.operator == address(0)) {
            revert RoleNotSet();
        }
        _grantRole(DEFAULT_ADMIN_ROLE, init.admin);
        _grantRole(REGISTER_MANAGER_ROLE, init.manager);
        _grantRole(REGISTER_OPERATOR_ROLE, init.operator);

        // set slot
        pauser = IPauser(init.pauser);
    }

    /// @inheritdoc IAllocateRegister
    /// @dev
    function listTranche(
        address tranche
    )
    external onlyRole(REGISTER_MANAGER_ROLE) returns (address, uint256) {
        if (pauser.isAllocationPaused()) {
            revert Paused();
        }

        // check interface
        if (!IAllocate(tranche).supportsInterface(SupportedInterfaceId)) {
            revert RewardTrancheNotSupportInterface(SupportedInterfaceId);
        }

        if (trancheRegister.contains(tranche)) {
            revert RepeatListTranche();
        }

        // update reward tranche list
        trancheRegister.add(tranche);

        emit TrancheListed(tranche);

        return (tranche, trancheRegister.length());
    }

    /// @inheritdoc IAllocateRegister
    /// @dev
    function removeTranche(
        address tranche
    )
    external onlyRole(REGISTER_MANAGER_ROLE) returns (address, uint256) {
        if (pauser.isAllocationPaused()) {
            revert Paused();
        }

        if (!trancheRegister.contains(tranche)) {
            revert TrancheNotFound();
        }

        // update reward tranche map
        bool ok = trancheRegister.remove(tranche);
        if (!ok) {
            revert RemoveTrancheFailed();
        }

        emit TrancheUnListed(tranche);

        return (tranche, trancheRegister.length());
    }

    /// @inheritdoc IAllocateRegister
    /// @dev
    function listTranches() external view returns (uint256, address[] memory) {
        return (trancheRegister.length(), trancheRegister.values());
    }

    /// @inheritdoc IAllocateRegister
    /// @dev
    function getAllocated(address tranche, address owner) external view returns (uint256) {
        (, uint256 amount) = userAllocated[tranche].tryGet(owner);
        return amount;
    }

    /// @inheritdoc IAllocateRegister
    /// @dev
    function getAllocatedUsers(address tranche) external view returns (address[] memory) {
        return userAllocated[tranche].keys();
    }

    /// @inheritdoc IAllocateRegister
    /// @dev
    function changeAllocate(AllocateMsg[] memory msgs) external onlyRole(REGISTER_OPERATOR_ROLE) {
        if (pauser.isAllocationPaused()) {
            revert Paused();
        }
        for (uint256 i; i < msgs.length; i++) {
            if (msgs[i].amount >= 0) {
                _allocate(msgs[i].tranche, msgs[i].owner, uint256(msgs[i].amount));
            } else {
                _unallocate(msgs[i].tranche, msgs[i].owner, uint256(-msgs[i].amount));
            }
        }
    }

    /// @inheritdoc IAllocateRegister
    /// @dev
    function allocate(
        address tranche,
        address owner,
        uint256 amount
    ) external onlyRole(REGISTER_OPERATOR_ROLE) returns (address, uint256, uint256, uint256) {
        if (pauser.isAllocationPaused()) {
            revert Paused();
        }
        if (!trancheRegister.contains(tranche)) {
            revert TrancheNotFound();
        }
        return _allocate(tranche, owner, amount);
    }

    /// @inheritdoc IAllocateRegister
    /// @dev
    function unallocate(
        address tranche,
        address owner,
        uint256 amount
    ) public onlyRole(REGISTER_OPERATOR_ROLE) returns (address, uint256, uint256, uint256) {
        if (pauser.isAllocationPaused()) {
            revert Paused();
        }
        if (!trancheRegister.contains(tranche)) {
            revert TrancheNotFound();
        }
        return _unallocate(tranche, owner, amount);
    }

    function _allocate(address tranche, address owner, uint256 amount) internal returns (address, uint256, uint256, uint256) {
        (, uint256 _amount) = userAllocated[tranche].tryGet(owner);

        userAllocated[tranche].set(owner, _amount + amount);
        totalAllocated[tranche] += amount;
        userTotalAllocated[owner] += amount;
        IAllocate(tranche).allocate(owner, amount);

        uint256 amount_ = userAllocated[tranche].get(owner);
        uint256 userTotalAllocated_ = userTotalAllocated[owner];
        emit Allocated(tranche, owner, amount, amount_, userTotalAllocated_);
        return (owner, amount, amount_, userTotalAllocated_);
    }

    function _unallocate(address tranche, address owner, uint256 amount) internal returns (address, uint256, uint256, uint256) {
        uint256 _amount = userAllocated[tranche].get(owner);
        if (_amount < amount) {
            revert UnAllocatedFailed();
        }
        if (_amount - amount == 0) {
            bool ok = userAllocated[tranche].remove(owner);
            if (!ok) {
                revert UnAllocatedFailed();
            }
        } else {
            userAllocated[tranche].set(owner, _amount - amount);
        }

        totalAllocated[tranche] -= amount;
        userTotalAllocated[owner] -= amount;
        IAllocate(tranche).unallocate(owner, amount);
        (, uint256 amount_) = userAllocated[tranche].tryGet(owner);
        emit UnAllocated(tranche, owner, amount, amount_, userTotalAllocated[owner]);
        return (owner, amount, amount_, userTotalAllocated[owner]);
    }
}
