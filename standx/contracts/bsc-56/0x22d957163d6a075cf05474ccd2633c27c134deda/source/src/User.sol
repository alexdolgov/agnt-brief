// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.28;
import {EnumerableSet} from "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";
import {IERC20} from "./interface/IERC20.sol";
import {IGateway} from "./interface/IGateway.sol";

library UserLib {
    uint256 public constant MAX_WITHDRAW_REQ = 16;

    struct WithdrawReq {
        bool enable;
        uint256 dusdAmount;
        IERC20 targetToken;
        uint256 createdAt;
        uint256 unlockAt;
        uint256[16] reserved;
    }

    struct User {
        address user;
        uint256 uid;
        uint256 claimNonce;
        WithdrawReq[MAX_WITHDRAW_REQ] withdrawReq;
        uint256 lastClaimedAt;
        bool enabled;
        bool canClaimReward;
        bool[254] reserved0;
        uint256[16] reserved1;
    }

    function initUser(
        address userAddress,
        uint256 uid
    ) internal pure returns (UserLib.User memory) {
        UserLib.User memory userInfo;
        userInfo.user = userAddress;
        userInfo.uid = uid;
        userInfo.claimNonce = 0;
        userInfo.enabled = true;
        userInfo.canClaimReward = true;
        for (uint256 i = 0; i < MAX_WITHDRAW_REQ; i++) {
            userInfo.withdrawReq[i].enable = false;
        }
        return userInfo;
    }

    function updateUser(
        UserMap.AddressToUserMap storage map,
        UserLib.User memory userInfo
    ) internal returns (bool) {
        return UserMap.set(map, userInfo.user, userInfo);
    }

    function getUser(
        UserMap.AddressToUserMap storage map,
        address userAddress
    ) internal view returns (UserLib.User storage) {
        return UserMap.get(map, userAddress);
    }

    function contains(
        UserMap.AddressToUserMap storage map,
        address key
    ) internal view returns (bool) {
        return UserMap.contains(map, key);
    }

    function set(
        UserMap.AddressToUserMap storage map,
        address key,
        UserLib.User memory value
    ) internal returns (bool) {
        return UserMap.set(map, key, value);
    }
}

// Note: Refer openzeppelin-contracts/contracts/utils/structs/EnumerableMap.sol
// Revised for UserMap
library UserMap {
    using EnumerableSet for EnumerableSet.AddressSet;

    error EnumerableMapNonexistentKey(address key);

    struct AddressToUserMap {
        // Storage of keys
        EnumerableSet.AddressSet _keys;
        mapping(address key => UserLib.User) _values;
    }

    function set(
        AddressToUserMap storage map,
        address key,
        UserLib.User memory value
    ) internal returns (bool) {
        map._values[key] = value;
        return map._keys.add(key);
    }

    function remove(
        AddressToUserMap storage map,
        address key
    ) internal returns (bool) {
        delete map._values[key];
        return map._keys.remove(key);
    }

    function contains(
        AddressToUserMap storage map,
        address key
    ) internal view returns (bool) {
        return map._keys.contains(key);
    }

    function length(
        AddressToUserMap storage map
    ) internal view returns (uint256) {
        return map._keys.length();
    }

    function at(
        AddressToUserMap storage map,
        uint256 index
    ) internal view returns (address key, UserLib.User storage value) {
        address atKey = map._keys.at(index);
        return (atKey, map._values[atKey]);
    }

    function get(
        AddressToUserMap storage map,
        address key
    ) internal view returns (UserLib.User storage) {
        UserLib.User storage value = map._values[key];
        if (value.user == address(0) && !contains(map, key)) {
            revert EnumerableMapNonexistentKey(key);
        }
        return value;
    }

    function keys(
        AddressToUserMap storage map
    ) internal view returns (address[] memory) {
        return map._keys.values();
    }
}
