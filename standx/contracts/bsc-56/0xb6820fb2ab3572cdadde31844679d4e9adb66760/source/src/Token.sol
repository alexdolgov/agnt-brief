// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.28;
import {EnumerableSet} from "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";
import {IERC20} from "./interface/IERC20.sol";

library TokenLib {
    struct Token {
        IERC20 token;
        bool enabled;
        uint256 feeBps;
        uint256[16] reserve;
    }

    function setToken(
        TokenMap.AddressToTokenMap storage map,
        Token memory token
    ) internal returns (bool) {
        return TokenMap.set(map, address(token.token), token);
    }

    function getToken(
        TokenMap.AddressToTokenMap storage map,
        address tokenAddress
    ) internal view returns (Token storage) {
        Token storage token = TokenMap.get(map, tokenAddress);
        require(address(token.token) == tokenAddress, "Invalid token");
        require(token.enabled, "Invalid token");
        return token;
    }

    function deleteToken(
        TokenMap.AddressToTokenMap storage map,
        address tokenAddress
    ) internal returns (bool) {
        return TokenMap.remove(map, tokenAddress);
    }

    function disableToken(
        TokenMap.AddressToTokenMap storage map,
        address tokenAddress
    ) internal returns (bool) {
        Token storage userInfo = getToken(map, tokenAddress);
        userInfo.enabled = false;
        return true;
    }

    function enableToken(
        TokenMap.AddressToTokenMap storage map,
        address tokenAddress
    ) internal returns (bool) {
        Token storage userInfo = getToken(map, tokenAddress);
        userInfo.enabled = true;
        return true;
    }
}

// Note: Refer openzeppelin-contracts/contracts/utils/structs/EnumerableMap.sol
// Revised for TokenMap
library TokenMap {
    using EnumerableSet for EnumerableSet.AddressSet;

    error EnumerableMapNonexistentKey(address key);

    struct AddressToTokenMap {
        // Storage of keys
        EnumerableSet.AddressSet _keys;
        mapping(address key => TokenLib.Token) _values;
    }

    function set(
        AddressToTokenMap storage map,
        address key,
        TokenLib.Token memory value
    ) internal returns (bool) {
        map._values[key] = value;
        return map._keys.add(key);
    }

    function remove(
        AddressToTokenMap storage map,
        address key
    ) internal returns (bool) {
        delete map._values[key];
        return map._keys.remove(key);
    }

    function contains(
        AddressToTokenMap storage map,
        address key
    ) internal view returns (bool) {
        return map._keys.contains(key);
    }

    function length(
        AddressToTokenMap storage map
    ) internal view returns (uint256) {
        return map._keys.length();
    }

    function at(
        AddressToTokenMap storage map,
        uint256 index
    ) internal view returns (address key, TokenLib.Token storage value) {
        address atKey = map._keys.at(index);
        return (atKey, map._values[atKey]);
    }

    function get(
        AddressToTokenMap storage map,
        address key
    ) internal view returns (TokenLib.Token storage) {
        TokenLib.Token storage value = map._values[key];
        if (address(value.token) == address(0) && !contains(map, key)) {
            revert EnumerableMapNonexistentKey(key);
        }
        return value;
    }

    function keys(
        AddressToTokenMap storage map
    ) internal view returns (address[] memory) {
        return map._keys.values();
    }
}
