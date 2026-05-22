// SPDX-License-Identifier: MIT
pragma solidity 0.8.29;

import {MockOFT} from "./MockOFT.sol";

contract MockDstOFT is MockOFT {
    bool public isTransferEnabled;
    address public manager;
    mapping(address => bool) public canSendToAnyone;
    mapping(address => bool) public canSendToWhitelisted;
    mapping(address => bool) public canReceive;

    event TransferEnabled(bool enabled);
    event CanSendToAnyoneUpdated(address account, bool canSend);
    event CanSendToWhitelistedUpdated(address account, bool canSend);
    event CanReceiveUpdated(address account, bool canReceive);
    event ManagerUpdated(address oldManager, address newManager);

    error UnauthorizedAccount(address account);

    modifier onlyManager() {
        if (msg.sender != manager) revert UnauthorizedAccount(msg.sender);
        _;
    }

    constructor(
        string memory _name,
        string memory _symbol,
        address _lzEndpoint,
        address _owner,
        address _manager
    ) MockOFT(_name, _symbol, _lzEndpoint, _owner) {
        manager = _manager;
    }

    function _canTransfer(address from, address to) private view returns (bool) {
        if (isTransferEnabled) {
            return true;
        }

        if (canSendToAnyone[from]) {
            return true;
        }

        if (canSendToWhitelisted[from] && canReceive[to]) {
            return true;
        }

        return false;
    }

    function _update(address from, address to, uint256 amount) internal override {
        if (!_canTransfer(from, to)) revert("Token: Transfer is restricted");

        super._update(from, to, amount);
    }

    function updateTransferEnabled(bool enabled_) public onlyManager {
        isTransferEnabled = enabled_;
        emit TransferEnabled(enabled_);
    }

    function updateCanSendToAnyone(address account_, bool canSend_) external onlyManager {
        canSendToAnyone[account_] = canSend_;
        emit CanSendToAnyoneUpdated(account_, canSend_);
    }

    function updateCanSendToWhitelisted(address account_, bool canSend_) external onlyManager {
        canSendToWhitelisted[account_] = canSend_;
        emit CanSendToWhitelistedUpdated(account_, canSend_);
    }

    function updateCanReceive(address account_, bool canReceive_) external onlyManager {
        canReceive[account_] = canReceive_;
        emit CanReceiveUpdated(account_, canReceive_);
    }

    function updateManager(address newManager_) external onlyManager {
        emit ManagerUpdated(manager, newManager_);
        manager = newManager_;
    }

    function revokeManagement() external {
        // This function executes `onlyManager` modifier
        updateTransferEnabled(true);

        emit ManagerUpdated(manager, address(0));
        manager = address(0);
    }
}
