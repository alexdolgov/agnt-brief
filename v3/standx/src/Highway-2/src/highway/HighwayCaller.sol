// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.28;
import {EnumerableSet} from "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";
import {IERC20} from "../interface/IERC20.sol";
import {HighwayLib} from "./HighwayLib.sol";

library HighwayCallerLib {
    uint8 public constant HIGHWAY_MAX_MSG_BUFFER = 16;

    struct Caller {
        address caller;
        bool enabled;
        uint256 lastNonce;
        HighwayLib.WithdrawMessage[HIGHWAY_MAX_MSG_BUFFER] withdrawBuffer;
        uint256[16] reserved;
    }

    function initCaller(
        address callerAddress
    ) internal pure returns (Caller memory) {
        Caller memory callerInfo;
        callerInfo.caller = callerAddress;
        callerInfo.lastNonce = 0;
        callerInfo.enabled = true;
        for (uint8 i = 0; i < HIGHWAY_MAX_MSG_BUFFER; i++) {
            callerInfo.withdrawBuffer[i].status = HighwayLib.MessageStatus.Ok;
            callerInfo.withdrawBuffer[i].message.nonce = 0;
        }
        return callerInfo;
    }

    function updateCaller(
        HighwayCallerMap.AddressToCallerMap storage map,
        Caller memory callerInfo
    ) internal returns (bool) {
        return HighwayCallerMap.set(map, callerInfo.caller, callerInfo);
    }

    function getCaller(
        HighwayCallerMap.AddressToCallerMap storage map,
        address callerAddress
    ) internal view returns (Caller storage) {
        return HighwayCallerMap.get(map, callerAddress);
    }

    function getOrInitCaller(
        HighwayCallerMap.AddressToCallerMap storage map,
        address callerAddress
    ) internal returns (Caller storage) {
        if (!contains(map, callerAddress)) {
            set(map, callerAddress, HighwayCallerLib.initCaller(callerAddress));
        }
        return HighwayCallerMap.get(map, callerAddress);
    }

    function contains(
        HighwayCallerMap.AddressToCallerMap storage map,
        address key
    ) internal view returns (bool) {
        return HighwayCallerMap.contains(map, key);
    }

    function set(
        HighwayCallerMap.AddressToCallerMap storage map,
        address key,
        Caller memory value
    ) internal returns (bool) {
        return HighwayCallerMap.set(map, key, value);
    }

    function amount(
        HighwayCallerMap.AddressToCallerMap storage map
    ) internal view returns (uint256) {
        return HighwayCallerMap.length(map);
    }

    function getCallerByIndex(
        HighwayCallerMap.AddressToCallerMap storage map,
        uint256 index
    ) internal view returns (Caller storage) {
        (, Caller storage value) = HighwayCallerMap.at(map, index);
        return value;
    }
}

library HighwayCallerMap {
    using EnumerableSet for EnumerableSet.AddressSet;

    error EnumerableMapNonexistentKey(address key);

    struct AddressToCallerMap {
        // Storage of keys
        EnumerableSet.AddressSet _keys;
        mapping(address key => HighwayCallerLib.Caller) _values;
    }

    function set(
        AddressToCallerMap storage map,
        address key,
        HighwayCallerLib.Caller memory value
    ) internal returns (bool) {
        map._values[key] = value;
        return map._keys.add(key);
    }

    function remove(
        AddressToCallerMap storage map,
        address key
    ) internal returns (bool) {
        delete map._values[key];
        return map._keys.remove(key);
    }

    function contains(
        AddressToCallerMap storage map,
        address key
    ) internal view returns (bool) {
        return map._keys.contains(key);
    }

    function length(
        AddressToCallerMap storage map
    ) internal view returns (uint256) {
        return map._keys.length();
    }

    function at(
        AddressToCallerMap storage map,
        uint256 index
    )
        internal
        view
        returns (address key, HighwayCallerLib.Caller storage value)
    {
        address atKey = map._keys.at(index);
        return (atKey, map._values[atKey]);
    }

    function get(
        AddressToCallerMap storage map,
        address key
    ) internal view returns (HighwayCallerLib.Caller storage) {
        HighwayCallerLib.Caller storage value = map._values[key];
        if (value.caller == address(0) && !contains(map, key)) {
            revert EnumerableMapNonexistentKey(key);
        }
        return value;
    }

    function keys(
        AddressToCallerMap storage map
    ) internal view returns (address[] memory) {
        return map._keys.values();
    }
}
