// SPDX-License-Identifier: Unlicensed
pragma solidity ^0.8.25;

abstract contract Blacklistable {
    address public blacklister;
    mapping(address => bool) internal blacklisted;

    event Blacklisted(address indexed _account);
    event UnBlacklisted(address indexed _account);
    event BlacklisterChanged(address indexed newBlacklister);

    /**
     * @dev Throws if called by any account other than the blacklister
     */
    modifier onlyBlacklister() virtual {
        require(msg.sender == blacklister, "caller is not the blacklister");
        _;
    }

    /**
     * @dev Throws if argument account is blacklisted
     * @param _account The address to check
     */
    modifier notBlacklisted(address _account) virtual {
        require(!blacklisted[_account], "blacklisted");
        _;
    }

    /**
     * @dev Checks if account is blacklisted
     * @param _account The address to check
     * @return bool indicating if the account is blacklisted
     */
    function isBlacklisted(address _account) public view virtual returns (bool) {
        return blacklisted[_account];
    }

    /**
     * @dev Adds account to blacklist
     * @param _account The address to blacklist
     */
    function blacklist(address _account) public onlyBlacklister {
        blacklisted[_account] = true;
        emit Blacklisted(_account);
    }

    /**
     * @dev Removes account from blacklist
     * @param _account The address to remove from the blacklist
     */
    function unBlacklist(address _account) public onlyBlacklister {
        blacklisted[_account] = false;
        emit UnBlacklisted(_account);
    }

    /**
     * @dev Updates the blacklister address. Can only be called by the owner.
     * @param newBlacklister The new blacklister address.
     */
    function updateBlacklister(address newBlacklister) public virtual {
        require(onlyOwnerCallback(), "caller is not the owner");
        require(newBlacklister != address(0), "invalid blacklister address");
        blacklister = newBlacklister;
        emit BlacklisterChanged(newBlacklister);
    }

    /**
    * @dev Callback function to be implemented by inheriting contracts to enforce ownership check.
    */
    function onlyOwnerCallback() internal view virtual returns (bool);
}
