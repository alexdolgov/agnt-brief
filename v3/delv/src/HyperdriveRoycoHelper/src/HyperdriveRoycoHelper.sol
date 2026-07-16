// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

struct Options {
    address destination;
    bool asBase;
    bytes extraData;
}

contract HyperdriveRoycoHelper {
    function returnOptionsTuple(address _addr, bool _flag) public pure returns (address, bool, bytes memory) {
        bytes memory emptyBytes = "";
        return (_addr, _flag, emptyBytes);
    }

    function returnStructAsBytes(address _addr, bool _flag) public pure returns (bytes memory) {
        Options memory opts = Options({
            destination: _addr,
            asBase: _flag,
            extraData: ""
        });
        return abi.encode(opts);
    }
}
