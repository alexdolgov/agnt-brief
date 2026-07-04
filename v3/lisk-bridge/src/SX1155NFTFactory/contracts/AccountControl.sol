// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import "./RoleManager.sol";
import "./ArrayLimiter.sol";

abstract contract AccountControl is ArrayLimiter, RoleManager {
    mapping(address => bool) private _frozen;
    mapping(address => bool) private _whitelist;
    mapping(address => bool) private _greylist;

    ///@dev Events for displaying freeze/unfreeze accounts
    event AccountFrozen(address indexed account);
    event AccountUnFrozen(address indexed account);

    ///@dev Events for displaying adding/removing accounts from the whitelist
    event AccountWhitelisted(address indexed account);
    event AccountUnWhitelisted(address indexed account);

    ///@dev Events for displaying adding/removing accounts from the greylist
    event AccountGreylisted(address indexed account);
    event AccountUnGreylisted(address indexed account);

    ///@dev Throws error if passed account is already listed
    modifier accNotListed(address account) {
        require(!isAccountFrozen(account), "AC: Account already frozen");
        require(!isWhitelisted(account), "AC: Account already whitelisted");
        require(!isGreylisted(account), "AC: Account already greylisted");
        _;
    }

    // Frozen list functions

    /**
     * @dev Freezes account.
     *
     * Requirements:
     * - `msg.sender` must be an issuer.
     * - `account` cannot be the zero address.
     *
     * Emits AccountFrozen event.
     */
    function freezeAccount(address account)
        external
        onlyRole(ISSUER_ROLE)
        isNotZeroAddress(account)
        accNotListed(account)
    {
        _frozen[account] = true;
        emit AccountFrozen(account);
    }

    /**
     * @dev Unfreezes account.
     *
     * Requirements:
     * - `msg.sender` must be an issuer.
     * - `account` cannot be the zero address.
     *
     * Emits AccountUnFrozen event.
     */
    function unFreezeAccount(address account) external onlyRole(ISSUER_ROLE) {
        require(isAccountFrozen(account), "AC: Account not frozen");

        _frozen[account] = false;
        emit AccountUnFrozen(account);
    }

    /**
     * @dev Checks if the specified account is frozen.
     * The token issuer may freeze any account at any time and stop account transfers.
     *
     * @return True if account is frozen.
     */
    function isAccountFrozen(address account) public view returns (bool) {
        return _frozen[account];
    }

    /**
     * @dev Checks if the specified accounts have been frozen.
     * The issuer of the token may freeze any accounts at any time and stop transferring accounts.
     *
     * @return frozen accounts that have been added to to frozenlist.
     */
    function frozenInArray(address[] calldata accounts) public view returns (address[] memory frozen) {
        address[] calldata _accounts = accounts;
        frozen = new address[](_accounts.length);
        uint256 frozenCounter = 0;
        for (uint256 i = 0; i < _accounts.length; i++) {
            if (isAccountFrozen(_accounts[i])) {
                frozen[frozenCounter] = _accounts[i];
                frozenCounter++;
            }
        }
    }

    //End of Frozenlist functions

    // Whitelist functions

    /**
     * @dev Adds an account to the whitelist.
     *
     * Requirements:
     * - `msg.sender` must be an issuer.
     * - `account` cannot be the zero address.
     *
     * Emits AccountWhitelisted event.
     */
    function whitelistAccount(address account)
        public
        onlyRole(ISSUER_ROLE)
        isNotZeroAddress(account)
        accNotListed(account)
    {
        _whitelist[account] = true;
        emit AccountWhitelisted(account);
    }

    /**
     * @dev Adds an array of accounts to the whitelist.
     *
     * Requirements:
     * - `msg.sender` must be an issuer.
     * - `accounts` cannot be the zero address.
     *
     * Emits AccountWhitelisted event.
     */
    function bulkWhitelistAccount(address[] calldata accounts) external arrayMaxSize(accounts.length) {
        address[] calldata _accounts = accounts;
        for (uint256 i = 0; i < _accounts.length; i++) {
            whitelistAccount(_accounts[i]);
        }
    }

    /**
     * @dev Removes an account from the whitelist.
     *
     * Requirements:
     * - `msg.sender` must be an issuer.
     * - `account` cannot be the zero address.
     *
     * Emits AccountUnWhitelisted event.
     */
    function unWhitelistAccount(address account) public onlyRole(ISSUER_ROLE) {
        require(isWhitelisted(account), "AC: Account not whitelisted");

        delete _whitelist[account];
        emit AccountUnWhitelisted(account);
    }

    /**
     * @dev Removes an array of accounts from the whitelist.
     *
     * Requirements:
     * - `msg.sender` must be an issuer.
     * - `accounts` cannot be the zero address.
     *
     * Emits AccountWhitelisted event.
     */
    function bulkUnWhitelistAccount(address[] calldata accounts) external arrayMaxSize(accounts.length) {
        address[] calldata _accounts = accounts;
        for (uint256 i = 0; i < _accounts.length; i++) {
            unWhitelistAccount(_accounts[i]);
        }
    }

    /**
     * @dev Checks if the specified account has been whitelisted.
     * The issuer of the token can add to the white list.
     *
     * @return True if account is added to whitelist.
     */
    function isWhitelisted(address account) public view returns (bool) {
        return _whitelist[account];
    }

    /**
     * @dev Checks if the specified accounts have been whitelisted.
     * The issuer of the token can add to the white list.
     *
     * @return whitelisted accounts that have been added to to whitelist.
     */
    function whitelistedInArray(address[] calldata accounts) public view returns (address[] memory whitelisted) {
        address[] calldata _accounts = accounts;
        whitelisted = new address[](_accounts.length);
        uint256 whitelistedCounter = 0;
        for (uint256 i = 0; i < _accounts.length; i++) {
            if (isWhitelisted(_accounts[i])) {
                whitelisted[whitelistedCounter] = _accounts[i];
                whitelistedCounter++;
            }
        }
    }

    // End of Whitelist functions

    // Greylist functions

    /**
     * @dev Adds an account to the greylist.
     *
     * Requirements:
     * - `msg.sender` must be an issuer.
     * - `account` cannot be the zero address.
     *
     * Emits AccountGreylisted event.
     */
    function greylistAccount(address account)
        public
        onlyRole(ISSUER_ROLE)
        isNotZeroAddress(account)
        accNotListed(account)
    {
        _greylist[account] = true;
        emit AccountGreylisted(account);
    }

    /**
     * @dev Adds an array of accounts to the greylist.
     *
     * Requirements:
     * - `msg.sender` must be an issuer.
     * - `accounts` cannot be the zero address.
     *
     * Emits AccountGreylisted event.
     */
    function bulkGreylistAccount(address[] calldata accounts) external arrayMaxSize(accounts.length) {
        address[] calldata _accounts = accounts;
        for (uint256 i = 0; i < _accounts.length; i++) {
            greylistAccount(_accounts[i]);
        }
    }

    /**
     * @dev Removes an account from the greylist.
     *
     * Requirements:
     * - `msg.sender` must be an issuer.
     * - `account` cannot be the zero address.
     *
     * Emits AccountGreylisted event.
     */
    function unGreylistAccount(address account) public onlyRole(ISSUER_ROLE) {
        require(isGreylisted(account), "AC: Account not greylisted");

        delete _greylist[account];
        emit AccountUnGreylisted(account);
    }

    /**
     * @dev Removes an array of accounts from the greylist.
     *
     * Requirements:
     * - `msg.sender` must be an issuer.
     * - `accounts` cannot be the zero address.
     *
     * Emits AccountGreylisted event.
     */
    function bulkUnGreylistAccount(address[] calldata accounts) external arrayMaxSize(accounts.length) {
        address[] calldata _accounts = accounts;
        for (uint256 i = 0; i < _accounts.length; i++) {
            unGreylistAccount(_accounts[i]);
        }
    }

    /**
     * @dev Checks if the specified account has been greylisted.
     * The issuer of the token can add to the grey list.
     *
     * @return True if account is added to greylist.
     */
    function isGreylisted(address account) public view returns (bool) {
        return _greylist[account];
    }

    /**
     * @dev Checks if the specified accounts have been greylisted.
     * The issuer of the token can add to the grey list.
     *
     * @return greylisted accounts that have been added to to greylist.
     */
    function greylistedInArray(address[] calldata accounts) public view returns (address[] memory greylisted) {
        address[] calldata _accounts = accounts;
        greylisted = new address[](_accounts.length);
        uint256 greylistedCounter = 0;
        for (uint256 i = 0; i < _accounts.length; i++) {
            if (isGreylisted(_accounts[i])) {
                greylisted[greylistedCounter] = _accounts[i];
                greylistedCounter++;
            }
        }
    }

    // End of Greylist functions
}
