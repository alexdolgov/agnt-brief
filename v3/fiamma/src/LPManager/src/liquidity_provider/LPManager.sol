// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {LPInfo, LPStatus, LPRegister, ILPManager} from "./interface/ILPManager.sol";
import {OwnableUpgradeable} from "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import {ReentrancyGuardUpgradeable} from "@openzeppelin/contracts-upgradeable/utils/ReentrancyGuardUpgradeable.sol";

contract LPManager is ILPManager, OwnableUpgradeable, ReentrancyGuardUpgradeable {
    /// @notice Save LP info
    mapping(uint256 id => LPInfo lpInfo) public lpInfos;

    /// @dev Custom errors
    error InvalidOwnerAddress();
    error LPAlreadyRegistered();
    error InvalidLPID();
    error InvalidEvmAddress();
    error InvalidBitcoinAddress();

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function initialize(address _owner) external initializer {
        if (_owner == address(0)) revert InvalidOwnerAddress();

        __Ownable_init(_owner);
        __ReentrancyGuard_init();
    }

    function registerLP(LPRegister calldata _lp_register) external onlyOwner {
        if (_lp_register.evm_addr == address(0)) revert InvalidEvmAddress();
        if (bytes(_lp_register.bitcoin_addr).length == 0) revert InvalidBitcoinAddress();

        if (lpInfos[_lp_register.lp_id].status != LPStatus.UNREGISTERED) revert LPAlreadyRegistered();

        LPInfo memory newLPInfo = LPInfo({
            id: _lp_register.lp_id,
            bitcoin_addr: _lp_register.bitcoin_addr,
            evm_addr: _lp_register.evm_addr,
            fee: _lp_register.fee,
            status: LPStatus.ACTIVE
        });

        lpInfos[_lp_register.lp_id] = newLPInfo;

        emit LPRegistered(_lp_register.lp_id, _lp_register.evm_addr, _lp_register.bitcoin_addr, _lp_register.fee);
    }

    function updateLPStatus(uint256 _lp_id, LPStatus _newStatus) external onlyOwner {
        if (lpInfos[_lp_id].status == LPStatus.UNREGISTERED) revert InvalidLPID();

        lpInfos[_lp_id].status = _newStatus;

        emit LPStatusUpdated(_lp_id, _newStatus);
    }

    function isLPActive(uint256 _lp_id) external view returns (bool) {
        return lpInfos[_lp_id].status == LPStatus.ACTIVE;
    }

    function getLPInfo(uint256 _lp_id) external view returns (LPInfo memory) {
        return lpInfos[_lp_id];
    }

    function getLPStatus(uint256 _lp_id) external view returns (LPStatus) {
        return lpInfos[_lp_id].status;
    }
}
