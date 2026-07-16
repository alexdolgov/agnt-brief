/*
        [....     [... [......  [.. ..
      [..    [..       [..    [..    [..
    [..        [..     [..     [..         [..       [..
    [..        [..     [..       [..     [.   [..  [..  [..
    [..        [..     [..          [.. [..... [..[..   [..
      [..     [..      [..    [..    [..[.        [..   [..
        [....          [..      [.. ..    [....     [.. [...

    https://otsea.io
    https://t.me/OTSeaPortal
    https://twitter.com/OTSeaERC20
*/

// SPDX-License-Identifier: MIT
pragma solidity =0.8.20;

import "contracts/helpers/ListHelper.sol";
import "contracts/libraries/OTSeaErrors.sol";

/**
 * @title Abstract whitelist helper contract
 * @dev Up to 500 addresses can be added or removed to/from the whitelist within a single TX.
 * This is to prevent the TX reverting due to running out of gas. If a user wishes to add or remove more than 500
 * addresses, they must do so by performing multiple transactions.
 */
abstract contract WhitelistHelper is ListHelper {
    struct WhitelistUpdate {
        address account;
        /// @dev "operation" represents whether or not to add (true) or remove (false) "account" to/from an order's whitelist.
        bool operation;
    }
    /**
     * @dev associated ID => wallet => whitelist ID
     * if whitelist ID > 0, then the wallet is whitelisted for the associated ID.
     */
    mapping(uint72 => mapping(address => uint256)) private _whitelistIDs;
    /// @dev associated ID => whitelist
    mapping(uint72 => address[]) private _whitelists;

    event WhitelistUpdated(uint72 indexed id, uint256 totalWhitelist);

    /**
     * @notice Update a whitelist associated with an ID
     * @param _id ID
     * @param _updates Updates to make to the whitelist associated with _id
     */
    function updateWhitelist(uint72 _id, WhitelistUpdate[] calldata _updates) external virtual;

    /**
     * @notice Get the total whitelisted accounts associated with an ID
     * @param _id ID
     * @return uint256 Total whitelisted
     */
    function getTotalWhitelisted(uint72 _id) external view returns (uint256) {
        _checkIDExists(_id);
        return _getTotalWhitelisted(_id);
    }

    /**
     * @notice Get a whitelist associated with an ID
     * @param _id ID
     * @param _start Start whitelist ID
     * @param _end End whitelist ID
     * @return whitelist An array of whitelisted accounts for _id within the range of _start and _end (inclusive)
     */
    function getWhitelist(
        uint72 _id,
        uint256 _start,
        uint256 _end
    )
        external
        view
        onlyValidSequence(_start, _end, _getTotalWhitelisted(_id), DISALLOW_ZERO)
        returns (address[] memory whitelist)
    {
        whitelist = new address[](_end - _start + 1);
        uint256 index;
        uint256 whitelistIndex = _start - 1;
        /// @dev whitelistIndex < _end is the same as whitelistIndex <= _end - 1
        for (whitelistIndex; whitelistIndex < _end; ) {
            whitelist[index] = _whitelists[_id][whitelistIndex];
            unchecked {
                index++;
                whitelistIndex++;
            }
        }
        return whitelist;
    }

    /**
     * @notice Check if an account is whitelisted for an associated ID
     * @param _account Account to check
     * @param _id ID
     * @return bool true if whitelisted, false if not
     */
    function checkIsWhitelisted(address _account, uint72 _id) external view returns (bool) {
        if (_account == address(0)) revert OTSeaErrors.InvalidAddress();
        _checkIDExists(_id);
        return _checkIsWhitelisted(_account, _id);
    }

    /**
     * @notice Check if an account is whitelisted for against many IDs
     * @param _account Account to check
     * @param _ids A list of IDs
     * @return isWhitelisted A list of booleans containing true if whitelisted, false if not, each index related to the index in _ids
     */
    function checkMultipleIsWhitelisted(
        address _account,
        uint72[] calldata _ids
    ) external view returns (bool[] memory isWhitelisted) {
        uint256 total = _ids.length;
        _validateListLength(total);
        if (_account == address(0)) revert OTSeaErrors.InvalidAddress();
        isWhitelisted = new bool[](total);
        uint256 i;
        for (i; i < total; ) {
            _checkIDExists(_ids[i]);
            isWhitelisted[i] = _checkIsWhitelisted(_account, _ids[i]);
            unchecked {
                i++;
            }
        }
        return isWhitelisted;
    }

    /**
     * @param _id ID
     * @param _whitelist A list of accounts to whitelist for the associated _id
     */
    function _initializeWhitelist(uint72 _id, address[] calldata _whitelist) internal {
        uint256 total = _whitelist.length;
        if (LOOP_LIMIT < total) revert OTSeaErrors.InvalidArrayLength();
        uint256 i;
        for (i; i < total; ) {
            if (_whitelist[i] == address(0)) revert OTSeaErrors.InvalidAddressAtIndex(i);
            if (_whitelistIDs[_id][_whitelist[i]] != 0)
                revert OTSeaErrors.DuplicateAddressAtIndex(i);
            _whitelistIDs[_id][_whitelist[i]] = i + 1;
            unchecked {
                i++;
            }
        }
        _whitelists[_id] = _whitelist;
        emit WhitelistUpdated(_id, total);
    }

    /**
     * @param _id ID
     * @param _updates A list of updates to make to the whitelist for the associated _id
     */
    function _updateWhitelist(uint72 _id, WhitelistUpdate[] calldata _updates) internal {
        uint256 total = _updates.length;
        _validateListLength(total);
        address[] storage orderWhitelist = _whitelists[_id];
        uint256 totalWhitelisted = _whitelists[_id].length;
        uint256 i;
        for (i; i < total; ) {
            if (_updates[i].account == address(0)) revert OTSeaErrors.InvalidAddressAtIndex(i);
            if (_updates[i].operation) {
                /// @dev add to whitelist, revert if there is a duplicate.
                if (_whitelistIDs[_id][_updates[i].account] != 0)
                    revert OTSeaErrors.DuplicateAddressAtIndex(i);
                _whitelistIDs[_id][_updates[i].account] = ++totalWhitelisted;
                orderWhitelist.push(_updates[i].account);
            } else {
                /// @dev remove from whitelist, revert if it doesn't exist.
                uint256 id = _whitelistIDs[_id][_updates[i].account];
                if (id == 0) revert OTSeaErrors.AddressNotFoundAtIndex(i);
                address lastAddress = orderWhitelist[totalWhitelisted - 1];
                if (_updates[i].account != lastAddress) {
                    /// @dev reshuffle array and mapping so that the last address is moved in to the current position.
                    orderWhitelist[id - 1] = lastAddress;
                    _whitelistIDs[_id][lastAddress] = id;
                }
                _whitelistIDs[_id][_updates[i].account] = 0;
                orderWhitelist.pop();
                totalWhitelisted--;
            }
            unchecked {
                i++;
            }
        }
        emit WhitelistUpdated(_id, totalWhitelisted);
    }

    /**
     * @param _id ID
     * @return uint256 Total whitelisted for _id
     */
    function _getTotalWhitelisted(uint72 _id) internal view returns (uint256) {
        return _whitelists[_id].length;
    }

    /**
     * @param _account Account to check
     * @param _id ID
     * @return bool true if whitelisted, false if not
     */
    function _checkIsWhitelisted(address _account, uint72 _id) internal view returns (bool) {
        return _whitelistIDs[_id][_account] != 0;
    }

    /**
     * @param _id ID
     * @dev _checkIDExists reverts if _id does not exist
     */
    function _checkIDExists(uint72 _id) internal view virtual;
}
