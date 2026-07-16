// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.10;

import {AccessControlUpgradeable} from "openzeppelin-upgradeable/access/AccessControlUpgradeable.sol";

/**
 * @title cmETH powder mapping
 * @author mETH Protocol
 * @notice mapping the powders on a bybit custodial wallet into another delegator wallet
 * @dev record the mapping list for every bybit custodial wallet, which holds the powders,
 * and some corresponding query interfaces.
 */
contract PowderMapping is AccessControlUpgradeable{
    /// @notice switch to open delegate or close delegate
    bool public isDelegateOpen;

    /// @notice reserve all custodial wallets have executed for mapping.
    address[] internal _cWallets;

    /// @notice delegate() will increase the list.
    mapping(address cWallet => address[] delegators) internal _delegators;

    /// @notice the role to switch the delegate status
    bytes32 public constant MANAGER_ROLE = keccak256("MANAGER_ROLE");

    /// @notice Emitted when a mapping relation is applied.
    /// @param isRedelegate: indicate if cWallet call delegate more than once
    /// @param version: times cWallet has chosen to delegate
    event Delegated(address cWallet, address delegator, bool isRedelegate, uint version);

    /// @notice Emitted when delegate open status is set
    event IsDelegateOpenSet(bool newStatus);

    constructor(){
        _disableInitializers();
    }

    /**
     * @dev like a constructor, initialize should happen in some scenarios:
     * 1. certain or uncertain(use input as the values) storage set directly;
     * 2. complex storage set using functions with a certain authority;
     * 3. set msg.sender to certain authorities(admin_role at least) for the scenario two and further SafeWallet authority setting.
     */
    function initialize(address defaultAdmin, address manager) external initializer {
        _grantRole(DEFAULT_ADMIN_ROLE, defaultAdmin);
        _grantRole(MANAGER_ROLE, manager);
        isDelegateOpen = true;
    }

    /**
     * @notice used to mapping a custodial wallet(msg.sender)'s powder into delegator
     * @param delegator: another user owned wallet
     * @dev if the new delegator is different with the last one in the list, delegate() will process
     * and increase the list.
     */
    function delegate(address delegator) external {
        require(isDelegateOpen, "delegate is closed");
        address[] storage delegators = _delegators[msg.sender];
        if(delegators.length == 0) {
            _cWallets.push(msg.sender);
            delegators.push(delegator);
            emit Delegated(msg.sender, delegator, false, delegators.length);
        } else if(delegator != delegators[delegators.length - 1]) {
            delegators.push(delegator);
            emit Delegated(msg.sender, delegator, true, delegators.length);
        }
    }

    /**
     * @notice when PowderMapping is deployed, delegate is forbidden, need to open manually.
     */
    function setIsDelegateOpen(bool status) external onlyRole(MANAGER_ROLE) {
        require(isDelegateOpen != status, "status is set");
        isDelegateOpen = status;
        emit IsDelegateOpenSet(status);
    }

    /// @notice get a custodial wallet's delegator list
    function delegatorsOf(address cWallet) public view returns (address[] memory delegators) {
        return _delegators[cWallet];
    }

    /// @notice get a custodial wallet's in effect delegator
    function currentDelegator(address cWallet) public view returns (address delegator) {
        address[] memory delegators = delegatorsOf(cWallet);
        return delegators[delegators.length - 1];
    }

    /// @notice regarding of the cWallet list, query the corresponding in effect delegator
    function getCurrentDelegatorsFromCWallets(uint fromIndex, uint toIndex)
    external view returns(address[] memory cWallets, address[] memory delegators) {
        cWallets = getCWallets(fromIndex, toIndex);
        address[] memory currentDelegators = new address[](getSliceLength(fromIndex, toIndex));
        for(uint i; i < cWallets.length; i++) {
            currentDelegators[i] = currentDelegator(cWallets[i]);
        }
        delegators = currentDelegators;
    }

    /// @notice indicates the number of custodial wallets, which have chosen to delegate()
    function cWalletsLength() public view returns (uint256 length) {
        return _cWallets.length;
    }

    /// @notice get a slice of cWallet list, the index means the real index of that list.
    function getCWallets(uint fromIndex, uint toIndex) public view returns(address[] memory cWallets) {
        require(fromIndex <= toIndex && toIndex < cWalletsLength(), "invalid index");
        address[] memory wallets = new address[](getSliceLength(fromIndex, toIndex));
        for(uint i = fromIndex; i <= toIndex; i++) {
            wallets[i - fromIndex] = _cWallets[i];
        }
        return wallets;
    }
    /// @notice the start and the end are inclusive
    function getSliceLength(uint fromIndex, uint toIndex) internal pure returns (uint length) {
        return toIndex - fromIndex + 1;
    }
}
