// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity >=0.8.0;


// lib/frax-standard-solidity/lib/forge-std/src/console2.sol

/// @dev The original console.sol uses `int` and `uint` for computing function selectors, but it should
/// use `int256` and `uint256`. This modified version fixes that. This version is recommended
/// over `console.sol` if you don't need compatibility with Hardhat as the logs will show up in
/// forge stack traces. If you do need compatibility with Hardhat, you must use `console.sol`.
/// Reference: https://github.com/NomicFoundation/hardhat/issues/2178
library console2 {
    address constant CONSOLE_ADDRESS = address(0x000000000000000000636F6e736F6c652e6c6f67);

    function _castLogPayloadViewToPure(
        function(bytes memory) internal view fnIn
    ) internal pure returns (function(bytes memory) internal pure fnOut) {
        assembly {
            fnOut := fnIn
        }
    }

    function _sendLogPayload(bytes memory payload) internal pure {
        _castLogPayloadViewToPure(_sendLogPayloadView)(payload);
    }

    function _sendLogPayloadView(bytes memory payload) private view {
        uint256 payloadLength = payload.length;
        address consoleAddress = CONSOLE_ADDRESS;
        /// @solidity memory-safe-assembly
        assembly {
            let payloadStart := add(payload, 32)
            let r := staticcall(gas(), consoleAddress, payloadStart, payloadLength, 0, 0)
        }
    }

    function log() internal pure {
        _sendLogPayload(abi.encodeWithSignature("log()"));
    }

    function logInt(int256 p0) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(int256)", p0));
    }

    function logUint(uint256 p0) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256)", p0));
    }

    function logString(string memory p0) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string)", p0));
    }

    function logBool(bool p0) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool)", p0));
    }

    function logAddress(address p0) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address)", p0));
    }

    function logBytes(bytes memory p0) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bytes)", p0));
    }

    function logBytes1(bytes1 p0) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bytes1)", p0));
    }

    function logBytes2(bytes2 p0) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bytes2)", p0));
    }

    function logBytes3(bytes3 p0) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bytes3)", p0));
    }

    function logBytes4(bytes4 p0) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bytes4)", p0));
    }

    function logBytes5(bytes5 p0) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bytes5)", p0));
    }

    function logBytes6(bytes6 p0) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bytes6)", p0));
    }

    function logBytes7(bytes7 p0) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bytes7)", p0));
    }

    function logBytes8(bytes8 p0) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bytes8)", p0));
    }

    function logBytes9(bytes9 p0) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bytes9)", p0));
    }

    function logBytes10(bytes10 p0) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bytes10)", p0));
    }

    function logBytes11(bytes11 p0) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bytes11)", p0));
    }

    function logBytes12(bytes12 p0) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bytes12)", p0));
    }

    function logBytes13(bytes13 p0) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bytes13)", p0));
    }

    function logBytes14(bytes14 p0) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bytes14)", p0));
    }

    function logBytes15(bytes15 p0) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bytes15)", p0));
    }

    function logBytes16(bytes16 p0) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bytes16)", p0));
    }

    function logBytes17(bytes17 p0) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bytes17)", p0));
    }

    function logBytes18(bytes18 p0) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bytes18)", p0));
    }

    function logBytes19(bytes19 p0) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bytes19)", p0));
    }

    function logBytes20(bytes20 p0) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bytes20)", p0));
    }

    function logBytes21(bytes21 p0) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bytes21)", p0));
    }

    function logBytes22(bytes22 p0) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bytes22)", p0));
    }

    function logBytes23(bytes23 p0) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bytes23)", p0));
    }

    function logBytes24(bytes24 p0) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bytes24)", p0));
    }

    function logBytes25(bytes25 p0) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bytes25)", p0));
    }

    function logBytes26(bytes26 p0) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bytes26)", p0));
    }

    function logBytes27(bytes27 p0) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bytes27)", p0));
    }

    function logBytes28(bytes28 p0) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bytes28)", p0));
    }

    function logBytes29(bytes29 p0) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bytes29)", p0));
    }

    function logBytes30(bytes30 p0) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bytes30)", p0));
    }

    function logBytes31(bytes31 p0) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bytes31)", p0));
    }

    function logBytes32(bytes32 p0) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bytes32)", p0));
    }

    function log(uint256 p0) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256)", p0));
    }

    function log(int256 p0) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(int256)", p0));
    }

    function log(string memory p0) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string)", p0));
    }

    function log(bool p0) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool)", p0));
    }

    function log(address p0) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address)", p0));
    }

    function log(uint256 p0, uint256 p1) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,uint256)", p0, p1));
    }

    function log(uint256 p0, string memory p1) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,string)", p0, p1));
    }

    function log(uint256 p0, bool p1) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,bool)", p0, p1));
    }

    function log(uint256 p0, address p1) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,address)", p0, p1));
    }

    function log(string memory p0, uint256 p1) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint256)", p0, p1));
    }

    function log(string memory p0, int256 p1) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,int256)", p0, p1));
    }

    function log(string memory p0, string memory p1) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,string)", p0, p1));
    }

    function log(string memory p0, bool p1) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,bool)", p0, p1));
    }

    function log(string memory p0, address p1) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,address)", p0, p1));
    }

    function log(bool p0, uint256 p1) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,uint256)", p0, p1));
    }

    function log(bool p0, string memory p1) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,string)", p0, p1));
    }

    function log(bool p0, bool p1) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,bool)", p0, p1));
    }

    function log(bool p0, address p1) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,address)", p0, p1));
    }

    function log(address p0, uint256 p1) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,uint256)", p0, p1));
    }

    function log(address p0, string memory p1) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,string)", p0, p1));
    }

    function log(address p0, bool p1) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,bool)", p0, p1));
    }

    function log(address p0, address p1) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,address)", p0, p1));
    }

    function log(uint256 p0, uint256 p1, uint256 p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,uint256,uint256)", p0, p1, p2));
    }

    function log(uint256 p0, uint256 p1, string memory p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,uint256,string)", p0, p1, p2));
    }

    function log(uint256 p0, uint256 p1, bool p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,uint256,bool)", p0, p1, p2));
    }

    function log(uint256 p0, uint256 p1, address p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,uint256,address)", p0, p1, p2));
    }

    function log(uint256 p0, string memory p1, uint256 p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,string,uint256)", p0, p1, p2));
    }

    function log(uint256 p0, string memory p1, string memory p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,string,string)", p0, p1, p2));
    }

    function log(uint256 p0, string memory p1, bool p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,string,bool)", p0, p1, p2));
    }

    function log(uint256 p0, string memory p1, address p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,string,address)", p0, p1, p2));
    }

    function log(uint256 p0, bool p1, uint256 p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,bool,uint256)", p0, p1, p2));
    }

    function log(uint256 p0, bool p1, string memory p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,bool,string)", p0, p1, p2));
    }

    function log(uint256 p0, bool p1, bool p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,bool,bool)", p0, p1, p2));
    }

    function log(uint256 p0, bool p1, address p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,bool,address)", p0, p1, p2));
    }

    function log(uint256 p0, address p1, uint256 p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,address,uint256)", p0, p1, p2));
    }

    function log(uint256 p0, address p1, string memory p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,address,string)", p0, p1, p2));
    }

    function log(uint256 p0, address p1, bool p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,address,bool)", p0, p1, p2));
    }

    function log(uint256 p0, address p1, address p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,address,address)", p0, p1, p2));
    }

    function log(string memory p0, uint256 p1, uint256 p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint256,uint256)", p0, p1, p2));
    }

    function log(string memory p0, uint256 p1, string memory p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint256,string)", p0, p1, p2));
    }

    function log(string memory p0, uint256 p1, bool p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint256,bool)", p0, p1, p2));
    }

    function log(string memory p0, uint256 p1, address p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint256,address)", p0, p1, p2));
    }

    function log(string memory p0, string memory p1, uint256 p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,string,uint256)", p0, p1, p2));
    }

    function log(string memory p0, string memory p1, string memory p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,string,string)", p0, p1, p2));
    }

    function log(string memory p0, string memory p1, bool p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,string,bool)", p0, p1, p2));
    }

    function log(string memory p0, string memory p1, address p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,string,address)", p0, p1, p2));
    }

    function log(string memory p0, bool p1, uint256 p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,bool,uint256)", p0, p1, p2));
    }

    function log(string memory p0, bool p1, string memory p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,bool,string)", p0, p1, p2));
    }

    function log(string memory p0, bool p1, bool p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,bool,bool)", p0, p1, p2));
    }

    function log(string memory p0, bool p1, address p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,bool,address)", p0, p1, p2));
    }

    function log(string memory p0, address p1, uint256 p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,address,uint256)", p0, p1, p2));
    }

    function log(string memory p0, address p1, string memory p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,address,string)", p0, p1, p2));
    }

    function log(string memory p0, address p1, bool p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,address,bool)", p0, p1, p2));
    }

    function log(string memory p0, address p1, address p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,address,address)", p0, p1, p2));
    }

    function log(bool p0, uint256 p1, uint256 p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,uint256,uint256)", p0, p1, p2));
    }

    function log(bool p0, uint256 p1, string memory p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,uint256,string)", p0, p1, p2));
    }

    function log(bool p0, uint256 p1, bool p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,uint256,bool)", p0, p1, p2));
    }

    function log(bool p0, uint256 p1, address p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,uint256,address)", p0, p1, p2));
    }

    function log(bool p0, string memory p1, uint256 p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,string,uint256)", p0, p1, p2));
    }

    function log(bool p0, string memory p1, string memory p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,string,string)", p0, p1, p2));
    }

    function log(bool p0, string memory p1, bool p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,string,bool)", p0, p1, p2));
    }

    function log(bool p0, string memory p1, address p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,string,address)", p0, p1, p2));
    }

    function log(bool p0, bool p1, uint256 p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,bool,uint256)", p0, p1, p2));
    }

    function log(bool p0, bool p1, string memory p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,bool,string)", p0, p1, p2));
    }

    function log(bool p0, bool p1, bool p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,bool,bool)", p0, p1, p2));
    }

    function log(bool p0, bool p1, address p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,bool,address)", p0, p1, p2));
    }

    function log(bool p0, address p1, uint256 p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,address,uint256)", p0, p1, p2));
    }

    function log(bool p0, address p1, string memory p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,address,string)", p0, p1, p2));
    }

    function log(bool p0, address p1, bool p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,address,bool)", p0, p1, p2));
    }

    function log(bool p0, address p1, address p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,address,address)", p0, p1, p2));
    }

    function log(address p0, uint256 p1, uint256 p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,uint256,uint256)", p0, p1, p2));
    }

    function log(address p0, uint256 p1, string memory p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,uint256,string)", p0, p1, p2));
    }

    function log(address p0, uint256 p1, bool p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,uint256,bool)", p0, p1, p2));
    }

    function log(address p0, uint256 p1, address p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,uint256,address)", p0, p1, p2));
    }

    function log(address p0, string memory p1, uint256 p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,string,uint256)", p0, p1, p2));
    }

    function log(address p0, string memory p1, string memory p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,string,string)", p0, p1, p2));
    }

    function log(address p0, string memory p1, bool p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,string,bool)", p0, p1, p2));
    }

    function log(address p0, string memory p1, address p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,string,address)", p0, p1, p2));
    }

    function log(address p0, bool p1, uint256 p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,bool,uint256)", p0, p1, p2));
    }

    function log(address p0, bool p1, string memory p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,bool,string)", p0, p1, p2));
    }

    function log(address p0, bool p1, bool p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,bool,bool)", p0, p1, p2));
    }

    function log(address p0, bool p1, address p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,bool,address)", p0, p1, p2));
    }

    function log(address p0, address p1, uint256 p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,address,uint256)", p0, p1, p2));
    }

    function log(address p0, address p1, string memory p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,address,string)", p0, p1, p2));
    }

    function log(address p0, address p1, bool p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,address,bool)", p0, p1, p2));
    }

    function log(address p0, address p1, address p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,address,address)", p0, p1, p2));
    }

    function log(uint256 p0, uint256 p1, uint256 p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,uint256,uint256,uint256)", p0, p1, p2, p3));
    }

    function log(uint256 p0, uint256 p1, uint256 p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,uint256,uint256,string)", p0, p1, p2, p3));
    }

    function log(uint256 p0, uint256 p1, uint256 p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,uint256,uint256,bool)", p0, p1, p2, p3));
    }

    function log(uint256 p0, uint256 p1, uint256 p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,uint256,uint256,address)", p0, p1, p2, p3));
    }

    function log(uint256 p0, uint256 p1, string memory p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,uint256,string,uint256)", p0, p1, p2, p3));
    }

    function log(uint256 p0, uint256 p1, string memory p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,uint256,string,string)", p0, p1, p2, p3));
    }

    function log(uint256 p0, uint256 p1, string memory p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,uint256,string,bool)", p0, p1, p2, p3));
    }

    function log(uint256 p0, uint256 p1, string memory p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,uint256,string,address)", p0, p1, p2, p3));
    }

    function log(uint256 p0, uint256 p1, bool p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,uint256,bool,uint256)", p0, p1, p2, p3));
    }

    function log(uint256 p0, uint256 p1, bool p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,uint256,bool,string)", p0, p1, p2, p3));
    }

    function log(uint256 p0, uint256 p1, bool p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,uint256,bool,bool)", p0, p1, p2, p3));
    }

    function log(uint256 p0, uint256 p1, bool p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,uint256,bool,address)", p0, p1, p2, p3));
    }

    function log(uint256 p0, uint256 p1, address p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,uint256,address,uint256)", p0, p1, p2, p3));
    }

    function log(uint256 p0, uint256 p1, address p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,uint256,address,string)", p0, p1, p2, p3));
    }

    function log(uint256 p0, uint256 p1, address p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,uint256,address,bool)", p0, p1, p2, p3));
    }

    function log(uint256 p0, uint256 p1, address p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,uint256,address,address)", p0, p1, p2, p3));
    }

    function log(uint256 p0, string memory p1, uint256 p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,string,uint256,uint256)", p0, p1, p2, p3));
    }

    function log(uint256 p0, string memory p1, uint256 p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,string,uint256,string)", p0, p1, p2, p3));
    }

    function log(uint256 p0, string memory p1, uint256 p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,string,uint256,bool)", p0, p1, p2, p3));
    }

    function log(uint256 p0, string memory p1, uint256 p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,string,uint256,address)", p0, p1, p2, p3));
    }

    function log(uint256 p0, string memory p1, string memory p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,string,string,uint256)", p0, p1, p2, p3));
    }

    function log(uint256 p0, string memory p1, string memory p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,string,string,string)", p0, p1, p2, p3));
    }

    function log(uint256 p0, string memory p1, string memory p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,string,string,bool)", p0, p1, p2, p3));
    }

    function log(uint256 p0, string memory p1, string memory p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,string,string,address)", p0, p1, p2, p3));
    }

    function log(uint256 p0, string memory p1, bool p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,string,bool,uint256)", p0, p1, p2, p3));
    }

    function log(uint256 p0, string memory p1, bool p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,string,bool,string)", p0, p1, p2, p3));
    }

    function log(uint256 p0, string memory p1, bool p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,string,bool,bool)", p0, p1, p2, p3));
    }

    function log(uint256 p0, string memory p1, bool p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,string,bool,address)", p0, p1, p2, p3));
    }

    function log(uint256 p0, string memory p1, address p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,string,address,uint256)", p0, p1, p2, p3));
    }

    function log(uint256 p0, string memory p1, address p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,string,address,string)", p0, p1, p2, p3));
    }

    function log(uint256 p0, string memory p1, address p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,string,address,bool)", p0, p1, p2, p3));
    }

    function log(uint256 p0, string memory p1, address p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,string,address,address)", p0, p1, p2, p3));
    }

    function log(uint256 p0, bool p1, uint256 p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,bool,uint256,uint256)", p0, p1, p2, p3));
    }

    function log(uint256 p0, bool p1, uint256 p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,bool,uint256,string)", p0, p1, p2, p3));
    }

    function log(uint256 p0, bool p1, uint256 p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,bool,uint256,bool)", p0, p1, p2, p3));
    }

    function log(uint256 p0, bool p1, uint256 p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,bool,uint256,address)", p0, p1, p2, p3));
    }

    function log(uint256 p0, bool p1, string memory p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,bool,string,uint256)", p0, p1, p2, p3));
    }

    function log(uint256 p0, bool p1, string memory p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,bool,string,string)", p0, p1, p2, p3));
    }

    function log(uint256 p0, bool p1, string memory p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,bool,string,bool)", p0, p1, p2, p3));
    }

    function log(uint256 p0, bool p1, string memory p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,bool,string,address)", p0, p1, p2, p3));
    }

    function log(uint256 p0, bool p1, bool p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,bool,bool,uint256)", p0, p1, p2, p3));
    }

    function log(uint256 p0, bool p1, bool p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,bool,bool,string)", p0, p1, p2, p3));
    }

    function log(uint256 p0, bool p1, bool p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,bool,bool,bool)", p0, p1, p2, p3));
    }

    function log(uint256 p0, bool p1, bool p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,bool,bool,address)", p0, p1, p2, p3));
    }

    function log(uint256 p0, bool p1, address p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,bool,address,uint256)", p0, p1, p2, p3));
    }

    function log(uint256 p0, bool p1, address p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,bool,address,string)", p0, p1, p2, p3));
    }

    function log(uint256 p0, bool p1, address p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,bool,address,bool)", p0, p1, p2, p3));
    }

    function log(uint256 p0, bool p1, address p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,bool,address,address)", p0, p1, p2, p3));
    }

    function log(uint256 p0, address p1, uint256 p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,address,uint256,uint256)", p0, p1, p2, p3));
    }

    function log(uint256 p0, address p1, uint256 p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,address,uint256,string)", p0, p1, p2, p3));
    }

    function log(uint256 p0, address p1, uint256 p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,address,uint256,bool)", p0, p1, p2, p3));
    }

    function log(uint256 p0, address p1, uint256 p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,address,uint256,address)", p0, p1, p2, p3));
    }

    function log(uint256 p0, address p1, string memory p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,address,string,uint256)", p0, p1, p2, p3));
    }

    function log(uint256 p0, address p1, string memory p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,address,string,string)", p0, p1, p2, p3));
    }

    function log(uint256 p0, address p1, string memory p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,address,string,bool)", p0, p1, p2, p3));
    }

    function log(uint256 p0, address p1, string memory p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,address,string,address)", p0, p1, p2, p3));
    }

    function log(uint256 p0, address p1, bool p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,address,bool,uint256)", p0, p1, p2, p3));
    }

    function log(uint256 p0, address p1, bool p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,address,bool,string)", p0, p1, p2, p3));
    }

    function log(uint256 p0, address p1, bool p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,address,bool,bool)", p0, p1, p2, p3));
    }

    function log(uint256 p0, address p1, bool p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,address,bool,address)", p0, p1, p2, p3));
    }

    function log(uint256 p0, address p1, address p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,address,address,uint256)", p0, p1, p2, p3));
    }

    function log(uint256 p0, address p1, address p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,address,address,string)", p0, p1, p2, p3));
    }

    function log(uint256 p0, address p1, address p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,address,address,bool)", p0, p1, p2, p3));
    }

    function log(uint256 p0, address p1, address p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,address,address,address)", p0, p1, p2, p3));
    }

    function log(string memory p0, uint256 p1, uint256 p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint256,uint256,uint256)", p0, p1, p2, p3));
    }

    function log(string memory p0, uint256 p1, uint256 p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint256,uint256,string)", p0, p1, p2, p3));
    }

    function log(string memory p0, uint256 p1, uint256 p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint256,uint256,bool)", p0, p1, p2, p3));
    }

    function log(string memory p0, uint256 p1, uint256 p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint256,uint256,address)", p0, p1, p2, p3));
    }

    function log(string memory p0, uint256 p1, string memory p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint256,string,uint256)", p0, p1, p2, p3));
    }

    function log(string memory p0, uint256 p1, string memory p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint256,string,string)", p0, p1, p2, p3));
    }

    function log(string memory p0, uint256 p1, string memory p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint256,string,bool)", p0, p1, p2, p3));
    }

    function log(string memory p0, uint256 p1, string memory p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint256,string,address)", p0, p1, p2, p3));
    }

    function log(string memory p0, uint256 p1, bool p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint256,bool,uint256)", p0, p1, p2, p3));
    }

    function log(string memory p0, uint256 p1, bool p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint256,bool,string)", p0, p1, p2, p3));
    }

    function log(string memory p0, uint256 p1, bool p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint256,bool,bool)", p0, p1, p2, p3));
    }

    function log(string memory p0, uint256 p1, bool p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint256,bool,address)", p0, p1, p2, p3));
    }

    function log(string memory p0, uint256 p1, address p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint256,address,uint256)", p0, p1, p2, p3));
    }

    function log(string memory p0, uint256 p1, address p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint256,address,string)", p0, p1, p2, p3));
    }

    function log(string memory p0, uint256 p1, address p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint256,address,bool)", p0, p1, p2, p3));
    }

    function log(string memory p0, uint256 p1, address p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint256,address,address)", p0, p1, p2, p3));
    }

    function log(string memory p0, string memory p1, uint256 p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,string,uint256,uint256)", p0, p1, p2, p3));
    }

    function log(string memory p0, string memory p1, uint256 p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,string,uint256,string)", p0, p1, p2, p3));
    }

    function log(string memory p0, string memory p1, uint256 p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,string,uint256,bool)", p0, p1, p2, p3));
    }

    function log(string memory p0, string memory p1, uint256 p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,string,uint256,address)", p0, p1, p2, p3));
    }

    function log(string memory p0, string memory p1, string memory p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,string,string,uint256)", p0, p1, p2, p3));
    }

    function log(string memory p0, string memory p1, string memory p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,string,string,string)", p0, p1, p2, p3));
    }

    function log(string memory p0, string memory p1, string memory p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,string,string,bool)", p0, p1, p2, p3));
    }

    function log(string memory p0, string memory p1, string memory p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,string,string,address)", p0, p1, p2, p3));
    }

    function log(string memory p0, string memory p1, bool p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,string,bool,uint256)", p0, p1, p2, p3));
    }

    function log(string memory p0, string memory p1, bool p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,string,bool,string)", p0, p1, p2, p3));
    }

    function log(string memory p0, string memory p1, bool p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,string,bool,bool)", p0, p1, p2, p3));
    }

    function log(string memory p0, string memory p1, bool p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,string,bool,address)", p0, p1, p2, p3));
    }

    function log(string memory p0, string memory p1, address p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,string,address,uint256)", p0, p1, p2, p3));
    }

    function log(string memory p0, string memory p1, address p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,string,address,string)", p0, p1, p2, p3));
    }

    function log(string memory p0, string memory p1, address p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,string,address,bool)", p0, p1, p2, p3));
    }

    function log(string memory p0, string memory p1, address p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,string,address,address)", p0, p1, p2, p3));
    }

    function log(string memory p0, bool p1, uint256 p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,bool,uint256,uint256)", p0, p1, p2, p3));
    }

    function log(string memory p0, bool p1, uint256 p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,bool,uint256,string)", p0, p1, p2, p3));
    }

    function log(string memory p0, bool p1, uint256 p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,bool,uint256,bool)", p0, p1, p2, p3));
    }

    function log(string memory p0, bool p1, uint256 p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,bool,uint256,address)", p0, p1, p2, p3));
    }

    function log(string memory p0, bool p1, string memory p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,bool,string,uint256)", p0, p1, p2, p3));
    }

    function log(string memory p0, bool p1, string memory p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,bool,string,string)", p0, p1, p2, p3));
    }

    function log(string memory p0, bool p1, string memory p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,bool,string,bool)", p0, p1, p2, p3));
    }

    function log(string memory p0, bool p1, string memory p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,bool,string,address)", p0, p1, p2, p3));
    }

    function log(string memory p0, bool p1, bool p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,bool,bool,uint256)", p0, p1, p2, p3));
    }

    function log(string memory p0, bool p1, bool p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,bool,bool,string)", p0, p1, p2, p3));
    }

    function log(string memory p0, bool p1, bool p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,bool,bool,bool)", p0, p1, p2, p3));
    }

    function log(string memory p0, bool p1, bool p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,bool,bool,address)", p0, p1, p2, p3));
    }

    function log(string memory p0, bool p1, address p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,bool,address,uint256)", p0, p1, p2, p3));
    }

    function log(string memory p0, bool p1, address p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,bool,address,string)", p0, p1, p2, p3));
    }

    function log(string memory p0, bool p1, address p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,bool,address,bool)", p0, p1, p2, p3));
    }

    function log(string memory p0, bool p1, address p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,bool,address,address)", p0, p1, p2, p3));
    }

    function log(string memory p0, address p1, uint256 p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,address,uint256,uint256)", p0, p1, p2, p3));
    }

    function log(string memory p0, address p1, uint256 p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,address,uint256,string)", p0, p1, p2, p3));
    }

    function log(string memory p0, address p1, uint256 p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,address,uint256,bool)", p0, p1, p2, p3));
    }

    function log(string memory p0, address p1, uint256 p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,address,uint256,address)", p0, p1, p2, p3));
    }

    function log(string memory p0, address p1, string memory p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,address,string,uint256)", p0, p1, p2, p3));
    }

    function log(string memory p0, address p1, string memory p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,address,string,string)", p0, p1, p2, p3));
    }

    function log(string memory p0, address p1, string memory p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,address,string,bool)", p0, p1, p2, p3));
    }

    function log(string memory p0, address p1, string memory p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,address,string,address)", p0, p1, p2, p3));
    }

    function log(string memory p0, address p1, bool p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,address,bool,uint256)", p0, p1, p2, p3));
    }

    function log(string memory p0, address p1, bool p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,address,bool,string)", p0, p1, p2, p3));
    }

    function log(string memory p0, address p1, bool p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,address,bool,bool)", p0, p1, p2, p3));
    }

    function log(string memory p0, address p1, bool p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,address,bool,address)", p0, p1, p2, p3));
    }

    function log(string memory p0, address p1, address p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,address,address,uint256)", p0, p1, p2, p3));
    }

    function log(string memory p0, address p1, address p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,address,address,string)", p0, p1, p2, p3));
    }

    function log(string memory p0, address p1, address p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,address,address,bool)", p0, p1, p2, p3));
    }

    function log(string memory p0, address p1, address p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,address,address,address)", p0, p1, p2, p3));
    }

    function log(bool p0, uint256 p1, uint256 p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,uint256,uint256,uint256)", p0, p1, p2, p3));
    }

    function log(bool p0, uint256 p1, uint256 p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,uint256,uint256,string)", p0, p1, p2, p3));
    }

    function log(bool p0, uint256 p1, uint256 p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,uint256,uint256,bool)", p0, p1, p2, p3));
    }

    function log(bool p0, uint256 p1, uint256 p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,uint256,uint256,address)", p0, p1, p2, p3));
    }

    function log(bool p0, uint256 p1, string memory p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,uint256,string,uint256)", p0, p1, p2, p3));
    }

    function log(bool p0, uint256 p1, string memory p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,uint256,string,string)", p0, p1, p2, p3));
    }

    function log(bool p0, uint256 p1, string memory p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,uint256,string,bool)", p0, p1, p2, p3));
    }

    function log(bool p0, uint256 p1, string memory p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,uint256,string,address)", p0, p1, p2, p3));
    }

    function log(bool p0, uint256 p1, bool p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,uint256,bool,uint256)", p0, p1, p2, p3));
    }

    function log(bool p0, uint256 p1, bool p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,uint256,bool,string)", p0, p1, p2, p3));
    }

    function log(bool p0, uint256 p1, bool p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,uint256,bool,bool)", p0, p1, p2, p3));
    }

    function log(bool p0, uint256 p1, bool p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,uint256,bool,address)", p0, p1, p2, p3));
    }

    function log(bool p0, uint256 p1, address p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,uint256,address,uint256)", p0, p1, p2, p3));
    }

    function log(bool p0, uint256 p1, address p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,uint256,address,string)", p0, p1, p2, p3));
    }

    function log(bool p0, uint256 p1, address p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,uint256,address,bool)", p0, p1, p2, p3));
    }

    function log(bool p0, uint256 p1, address p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,uint256,address,address)", p0, p1, p2, p3));
    }

    function log(bool p0, string memory p1, uint256 p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,string,uint256,uint256)", p0, p1, p2, p3));
    }

    function log(bool p0, string memory p1, uint256 p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,string,uint256,string)", p0, p1, p2, p3));
    }

    function log(bool p0, string memory p1, uint256 p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,string,uint256,bool)", p0, p1, p2, p3));
    }

    function log(bool p0, string memory p1, uint256 p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,string,uint256,address)", p0, p1, p2, p3));
    }

    function log(bool p0, string memory p1, string memory p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,string,string,uint256)", p0, p1, p2, p3));
    }

    function log(bool p0, string memory p1, string memory p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,string,string,string)", p0, p1, p2, p3));
    }

    function log(bool p0, string memory p1, string memory p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,string,string,bool)", p0, p1, p2, p3));
    }

    function log(bool p0, string memory p1, string memory p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,string,string,address)", p0, p1, p2, p3));
    }

    function log(bool p0, string memory p1, bool p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,string,bool,uint256)", p0, p1, p2, p3));
    }

    function log(bool p0, string memory p1, bool p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,string,bool,string)", p0, p1, p2, p3));
    }

    function log(bool p0, string memory p1, bool p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,string,bool,bool)", p0, p1, p2, p3));
    }

    function log(bool p0, string memory p1, bool p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,string,bool,address)", p0, p1, p2, p3));
    }

    function log(bool p0, string memory p1, address p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,string,address,uint256)", p0, p1, p2, p3));
    }

    function log(bool p0, string memory p1, address p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,string,address,string)", p0, p1, p2, p3));
    }

    function log(bool p0, string memory p1, address p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,string,address,bool)", p0, p1, p2, p3));
    }

    function log(bool p0, string memory p1, address p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,string,address,address)", p0, p1, p2, p3));
    }

    function log(bool p0, bool p1, uint256 p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,bool,uint256,uint256)", p0, p1, p2, p3));
    }

    function log(bool p0, bool p1, uint256 p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,bool,uint256,string)", p0, p1, p2, p3));
    }

    function log(bool p0, bool p1, uint256 p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,bool,uint256,bool)", p0, p1, p2, p3));
    }

    function log(bool p0, bool p1, uint256 p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,bool,uint256,address)", p0, p1, p2, p3));
    }

    function log(bool p0, bool p1, string memory p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,bool,string,uint256)", p0, p1, p2, p3));
    }

    function log(bool p0, bool p1, string memory p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,bool,string,string)", p0, p1, p2, p3));
    }

    function log(bool p0, bool p1, string memory p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,bool,string,bool)", p0, p1, p2, p3));
    }

    function log(bool p0, bool p1, string memory p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,bool,string,address)", p0, p1, p2, p3));
    }

    function log(bool p0, bool p1, bool p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,bool,bool,uint256)", p0, p1, p2, p3));
    }

    function log(bool p0, bool p1, bool p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,bool,bool,string)", p0, p1, p2, p3));
    }

    function log(bool p0, bool p1, bool p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,bool,bool,bool)", p0, p1, p2, p3));
    }

    function log(bool p0, bool p1, bool p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,bool,bool,address)", p0, p1, p2, p3));
    }

    function log(bool p0, bool p1, address p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,bool,address,uint256)", p0, p1, p2, p3));
    }

    function log(bool p0, bool p1, address p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,bool,address,string)", p0, p1, p2, p3));
    }

    function log(bool p0, bool p1, address p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,bool,address,bool)", p0, p1, p2, p3));
    }

    function log(bool p0, bool p1, address p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,bool,address,address)", p0, p1, p2, p3));
    }

    function log(bool p0, address p1, uint256 p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,address,uint256,uint256)", p0, p1, p2, p3));
    }

    function log(bool p0, address p1, uint256 p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,address,uint256,string)", p0, p1, p2, p3));
    }

    function log(bool p0, address p1, uint256 p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,address,uint256,bool)", p0, p1, p2, p3));
    }

    function log(bool p0, address p1, uint256 p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,address,uint256,address)", p0, p1, p2, p3));
    }

    function log(bool p0, address p1, string memory p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,address,string,uint256)", p0, p1, p2, p3));
    }

    function log(bool p0, address p1, string memory p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,address,string,string)", p0, p1, p2, p3));
    }

    function log(bool p0, address p1, string memory p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,address,string,bool)", p0, p1, p2, p3));
    }

    function log(bool p0, address p1, string memory p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,address,string,address)", p0, p1, p2, p3));
    }

    function log(bool p0, address p1, bool p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,address,bool,uint256)", p0, p1, p2, p3));
    }

    function log(bool p0, address p1, bool p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,address,bool,string)", p0, p1, p2, p3));
    }

    function log(bool p0, address p1, bool p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,address,bool,bool)", p0, p1, p2, p3));
    }

    function log(bool p0, address p1, bool p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,address,bool,address)", p0, p1, p2, p3));
    }

    function log(bool p0, address p1, address p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,address,address,uint256)", p0, p1, p2, p3));
    }

    function log(bool p0, address p1, address p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,address,address,string)", p0, p1, p2, p3));
    }

    function log(bool p0, address p1, address p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,address,address,bool)", p0, p1, p2, p3));
    }

    function log(bool p0, address p1, address p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,address,address,address)", p0, p1, p2, p3));
    }

    function log(address p0, uint256 p1, uint256 p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,uint256,uint256,uint256)", p0, p1, p2, p3));
    }

    function log(address p0, uint256 p1, uint256 p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,uint256,uint256,string)", p0, p1, p2, p3));
    }

    function log(address p0, uint256 p1, uint256 p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,uint256,uint256,bool)", p0, p1, p2, p3));
    }

    function log(address p0, uint256 p1, uint256 p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,uint256,uint256,address)", p0, p1, p2, p3));
    }

    function log(address p0, uint256 p1, string memory p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,uint256,string,uint256)", p0, p1, p2, p3));
    }

    function log(address p0, uint256 p1, string memory p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,uint256,string,string)", p0, p1, p2, p3));
    }

    function log(address p0, uint256 p1, string memory p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,uint256,string,bool)", p0, p1, p2, p3));
    }

    function log(address p0, uint256 p1, string memory p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,uint256,string,address)", p0, p1, p2, p3));
    }

    function log(address p0, uint256 p1, bool p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,uint256,bool,uint256)", p0, p1, p2, p3));
    }

    function log(address p0, uint256 p1, bool p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,uint256,bool,string)", p0, p1, p2, p3));
    }

    function log(address p0, uint256 p1, bool p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,uint256,bool,bool)", p0, p1, p2, p3));
    }

    function log(address p0, uint256 p1, bool p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,uint256,bool,address)", p0, p1, p2, p3));
    }

    function log(address p0, uint256 p1, address p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,uint256,address,uint256)", p0, p1, p2, p3));
    }

    function log(address p0, uint256 p1, address p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,uint256,address,string)", p0, p1, p2, p3));
    }

    function log(address p0, uint256 p1, address p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,uint256,address,bool)", p0, p1, p2, p3));
    }

    function log(address p0, uint256 p1, address p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,uint256,address,address)", p0, p1, p2, p3));
    }

    function log(address p0, string memory p1, uint256 p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,string,uint256,uint256)", p0, p1, p2, p3));
    }

    function log(address p0, string memory p1, uint256 p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,string,uint256,string)", p0, p1, p2, p3));
    }

    function log(address p0, string memory p1, uint256 p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,string,uint256,bool)", p0, p1, p2, p3));
    }

    function log(address p0, string memory p1, uint256 p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,string,uint256,address)", p0, p1, p2, p3));
    }

    function log(address p0, string memory p1, string memory p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,string,string,uint256)", p0, p1, p2, p3));
    }

    function log(address p0, string memory p1, string memory p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,string,string,string)", p0, p1, p2, p3));
    }

    function log(address p0, string memory p1, string memory p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,string,string,bool)", p0, p1, p2, p3));
    }

    function log(address p0, string memory p1, string memory p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,string,string,address)", p0, p1, p2, p3));
    }

    function log(address p0, string memory p1, bool p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,string,bool,uint256)", p0, p1, p2, p3));
    }

    function log(address p0, string memory p1, bool p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,string,bool,string)", p0, p1, p2, p3));
    }

    function log(address p0, string memory p1, bool p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,string,bool,bool)", p0, p1, p2, p3));
    }

    function log(address p0, string memory p1, bool p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,string,bool,address)", p0, p1, p2, p3));
    }

    function log(address p0, string memory p1, address p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,string,address,uint256)", p0, p1, p2, p3));
    }

    function log(address p0, string memory p1, address p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,string,address,string)", p0, p1, p2, p3));
    }

    function log(address p0, string memory p1, address p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,string,address,bool)", p0, p1, p2, p3));
    }

    function log(address p0, string memory p1, address p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,string,address,address)", p0, p1, p2, p3));
    }

    function log(address p0, bool p1, uint256 p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,bool,uint256,uint256)", p0, p1, p2, p3));
    }

    function log(address p0, bool p1, uint256 p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,bool,uint256,string)", p0, p1, p2, p3));
    }

    function log(address p0, bool p1, uint256 p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,bool,uint256,bool)", p0, p1, p2, p3));
    }

    function log(address p0, bool p1, uint256 p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,bool,uint256,address)", p0, p1, p2, p3));
    }

    function log(address p0, bool p1, string memory p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,bool,string,uint256)", p0, p1, p2, p3));
    }

    function log(address p0, bool p1, string memory p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,bool,string,string)", p0, p1, p2, p3));
    }

    function log(address p0, bool p1, string memory p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,bool,string,bool)", p0, p1, p2, p3));
    }

    function log(address p0, bool p1, string memory p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,bool,string,address)", p0, p1, p2, p3));
    }

    function log(address p0, bool p1, bool p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,bool,bool,uint256)", p0, p1, p2, p3));
    }

    function log(address p0, bool p1, bool p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,bool,bool,string)", p0, p1, p2, p3));
    }

    function log(address p0, bool p1, bool p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,bool,bool,bool)", p0, p1, p2, p3));
    }

    function log(address p0, bool p1, bool p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,bool,bool,address)", p0, p1, p2, p3));
    }

    function log(address p0, bool p1, address p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,bool,address,uint256)", p0, p1, p2, p3));
    }

    function log(address p0, bool p1, address p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,bool,address,string)", p0, p1, p2, p3));
    }

    function log(address p0, bool p1, address p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,bool,address,bool)", p0, p1, p2, p3));
    }

    function log(address p0, bool p1, address p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,bool,address,address)", p0, p1, p2, p3));
    }

    function log(address p0, address p1, uint256 p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,address,uint256,uint256)", p0, p1, p2, p3));
    }

    function log(address p0, address p1, uint256 p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,address,uint256,string)", p0, p1, p2, p3));
    }

    function log(address p0, address p1, uint256 p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,address,uint256,bool)", p0, p1, p2, p3));
    }

    function log(address p0, address p1, uint256 p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,address,uint256,address)", p0, p1, p2, p3));
    }

    function log(address p0, address p1, string memory p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,address,string,uint256)", p0, p1, p2, p3));
    }

    function log(address p0, address p1, string memory p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,address,string,string)", p0, p1, p2, p3));
    }

    function log(address p0, address p1, string memory p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,address,string,bool)", p0, p1, p2, p3));
    }

    function log(address p0, address p1, string memory p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,address,string,address)", p0, p1, p2, p3));
    }

    function log(address p0, address p1, bool p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,address,bool,uint256)", p0, p1, p2, p3));
    }

    function log(address p0, address p1, bool p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,address,bool,string)", p0, p1, p2, p3));
    }

    function log(address p0, address p1, bool p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,address,bool,bool)", p0, p1, p2, p3));
    }

    function log(address p0, address p1, bool p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,address,bool,address)", p0, p1, p2, p3));
    }

    function log(address p0, address p1, address p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,address,address,uint256)", p0, p1, p2, p3));
    }

    function log(address p0, address p1, address p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,address,address,string)", p0, p1, p2, p3));
    }

    function log(address p0, address p1, address p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,address,address,bool)", p0, p1, p2, p3));
    }

    function log(address p0, address p1, address p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,address,address,address)", p0, p1, p2, p3));
    }

}

// node_modules/@openzeppelin/contracts/security/ReentrancyGuard.sol

// OpenZeppelin Contracts v4.4.1 (security/ReentrancyGuard.sol)

/**
 * @dev Contract module that helps prevent reentrant calls to a function.
 *
 * Inheriting from `ReentrancyGuard` will make the {nonReentrant} modifier
 * available, which can be applied to functions to make sure there are no nested
 * (reentrant) calls to them.
 *
 * Note that because there is a single `nonReentrant` guard, functions marked as
 * `nonReentrant` may not call one another. This can be worked around by making
 * those functions `private`, and then adding `external` `nonReentrant` entry
 * points to them.
 *
 * TIP: If you would like to learn more about reentrancy and alternative ways
 * to protect against it, check out our blog post
 * https://blog.openzeppelin.com/reentrancy-after-istanbul/[Reentrancy After Istanbul].
 */
abstract contract ReentrancyGuard {
    // Booleans are more expensive than uint256 or any type that takes up a full
    // word because each write operation emits an extra SLOAD to first read the
    // slot's contents, replace the bits taken up by the boolean, and then write
    // back. This is the compiler's defense against contract upgrades and
    // pointer aliasing, and it cannot be disabled.

    // The values being non-zero value makes deployment a bit more expensive,
    // but in exchange the refund on every call to nonReentrant will be lower in
    // amount. Since refunds are capped to a percentage of the total
    // transaction's gas, it is best to keep them low in cases like this one, to
    // increase the likelihood of the full refund coming into effect.
    uint256 private constant _NOT_ENTERED = 1;
    uint256 private constant _ENTERED = 2;

    uint256 private _status;

    constructor() {
        _status = _NOT_ENTERED;
    }

    /**
     * @dev Prevents a contract from calling itself, directly or indirectly.
     * Calling a `nonReentrant` function from another `nonReentrant`
     * function is not supported. It is possible to prevent this from happening
     * by making the `nonReentrant` function external, and making it call a
     * `private` function that does the actual work.
     */
    modifier nonReentrant() {
        // On the first call to nonReentrant, _notEntered will be true
        require(_status != _ENTERED, "ReentrancyGuard: reentrant call");

        // Any calls to nonReentrant after this point will fail
        _status = _ENTERED;

        _;

        // By storing the original value once again, a refund is triggered (see
        // https://eips.ethereum.org/EIPS/eip-2200)
        _status = _NOT_ENTERED;
    }
}

// node_modules/@openzeppelin/contracts/token/ERC20/IERC20.sol

// OpenZeppelin Contracts (last updated v4.6.0) (token/ERC20/IERC20.sol)

/**
 * @dev Interface of the ERC20 standard as defined in the EIP.
 */
interface IERC20 {
    /**
     * @dev Emitted when `value` tokens are moved from one account (`from`) to
     * another (`to`).
     *
     * Note that `value` may be zero.
     */
    event Transfer(address indexed from, address indexed to, uint256 value);

    /**
     * @dev Emitted when the allowance of a `spender` for an `owner` is set by
     * a call to {approve}. `value` is the new allowance.
     */
    event Approval(address indexed owner, address indexed spender, uint256 value);

    /**
     * @dev Returns the amount of tokens in existence.
     */
    function totalSupply() external view returns (uint256);

    /**
     * @dev Returns the amount of tokens owned by `account`.
     */
    function balanceOf(address account) external view returns (uint256);

    /**
     * @dev Moves `amount` tokens from the caller's account to `to`.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * Emits a {Transfer} event.
     */
    function transfer(address to, uint256 amount) external returns (bool);

    /**
     * @dev Returns the remaining number of tokens that `spender` will be
     * allowed to spend on behalf of `owner` through {transferFrom}. This is
     * zero by default.
     *
     * This value changes when {approve} or {transferFrom} are called.
     */
    function allowance(address owner, address spender) external view returns (uint256);

    /**
     * @dev Sets `amount` as the allowance of `spender` over the caller's tokens.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * IMPORTANT: Beware that changing an allowance with this method brings the risk
     * that someone may use both the old and the new allowance by unfortunate
     * transaction ordering. One possible solution to mitigate this race
     * condition is to first reduce the spender's allowance to 0 and set the
     * desired value afterwards:
     * https://github.com/ethereum/EIPs/issues/20#issuecomment-263524729
     *
     * Emits an {Approval} event.
     */
    function approve(address spender, uint256 amount) external returns (bool);

    /**
     * @dev Moves `amount` tokens from `from` to `to` using the
     * allowance mechanism. `amount` is then deducted from the caller's
     * allowance.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * Emits a {Transfer} event.
     */
    function transferFrom(
        address from,
        address to,
        uint256 amount
    ) external returns (bool);
}

// node_modules/@openzeppelin/contracts/utils/Context.sol

// OpenZeppelin Contracts v4.4.1 (utils/Context.sol)

/**
 * @dev Provides information about the current execution context, including the
 * sender of the transaction and its data. While these are generally available
 * via msg.sender and msg.data, they should not be accessed in such a direct
 * manner, since when dealing with meta-transactions the account sending and
 * paying for execution may not be the actual sender (as far as an application
 * is concerned).
 *
 * This contract is only required for intermediate, library-like contracts.
 */
abstract contract Context {
    function _msgSender() internal view virtual returns (address) {
        return msg.sender;
    }

    function _msgData() internal view virtual returns (bytes calldata) {
        return msg.data;
    }
}

// src/contracts/VestedFXS-and-Flox/FPISLocker/IlFPISEvents.sol

// @version 0.2.8

/**
 * ====================================================================
 * |     ______                   _______                             |
 * |    / _____________ __  __   / ____(_____  ____ _____  ________   |
 * |   / /_  / ___/ __ `| |/_/  / /_  / / __ \/ __ `/ __ \/ ___/ _ \  |
 * |  / __/ / /  / /_/ _>  <   / __/ / / / / / /_/ / / / / /__/  __/  |
 * | /_/   /_/   \__,_/_/|_|  /_/   /_/_/ /_/\__,_/_/ /_/\___/\___/   |
 * |                                                                  |
 * ====================================================================
 * ========================= lFPISEvents ==============================
 * ====================================================================
 * Events for FPISLockere (lFPIS)
 * Frax Finance: https://github.com/FraxFinance
 */
interface IlFPISEvents {
    // ==============================================================================
    // Events
    // ==============================================================================
    /// @notice When the new prospective admin accepts being the admin.
    /// @param admin The address of the new admin
    event ApplyOwnership(address admin);

    /// @notice When a new admin is proposed by the existing admin. The prospective new admin will still have to accept via acceptTransferOwnership
    /// @param admin The prospective new admin
    event CommitOwnership(address admin);

    /// @notice When key functions are paused or unpaused
    /// @param isPaused The pause status that was set
    event ContractPause(bool isPaused);

    /// @notice When a lock is convertev to veFXS
    /// @param staker The address of the staker
    /// @param fpisAmount The amount of FPIS locked in the lock that was migrated
    /// @param fxsAmount The amount of FXS deposited to the new lock
    /// @param lFpisLockIndex The index of the lock in the lFPIS contract
    /// @param veFxsLockIndex The index of the lock in the veFXS contract
    event ConvertLockToVeFxs(
        address indexed staker,
        uint256 fpisAmount,
        uint256 fxsAmount,
        uint128 lFpisLockIndex,
        uint128 veFxsLockIndex
    );

    /// @notice When a deposit of FPIS has occured
    /// @param staker The address where the deposit is credited to
    /// @param payor The address actually paying for the deposit
    /// @param endingTimestamp The ending timestamp of the lock
    /// @param value The amount of FPIS to add
    /// @param depositType The type of the traction. DEPOSIT_FOR_TYPE = 0, CREATE_LOCK_TYPE = 1, INCREASE_LOCK_AMOUNT = 2, INCREASE_UNLOCK_TIME = 3;
    /// @param txTimestamp The timestamp that the deposit occured
    event Deposit(
        address indexed staker,
        address indexed payor,
        uint256 indexed endingTimestamp,
        uint256 value,
        uint128 depositType,
        uint256 txTimestamp
    );

    /// @notice When the emergency unlock is activated
    event EmergencyUnlockActivated();

    /// @notice When an address is set, or unset, as a Flox Contributor
    /// @param contributor The address
    /// @param isContributor If the address is or is not a Flox Contributor
    event FloxContributorUpdate(address indexed contributor, bool isContributor);

    /// @notice When the FPIS supply changes
    /// @param prevSupply The previous FPIS
    /// @param supply The new FPIS
    event Supply(uint256 prevSupply, uint256 supply);

    /// @notice When the address of a FPISLockerUtils contract is changed
    /// @param lFpisUtilsAddr Address of the FPISLockerUtils contract
    event LFpisUtilsContractUpdated(address lFpisUtilsAddr);

    /// @notice When FPIS is withdrawn
    /// @param staker The address of the staker that is withdrawing
    /// @param recipient The recipient of the withdrawn tokens
    /// @param value The amount of FPIS withdrawn
    /// @param ts The timestamp of the withdrawal
    event Withdraw(address indexed staker, address indexed recipient, uint256 value, uint256 ts);

    /// @notice When lFPIS is withdrawn as FXS
    /// @param staker The address of the staker that is withdrawing
    /// @param recipient The recipient of the withdrawn tokens
    /// @param fpisValue The amount of FPIS that was deposited in the lock
    /// @param fxsValue The amount of FXS that was withdrawn
    event WithdrawAsFxs(address indexed staker, address indexed recipient, uint256 fpisValue, uint256 fxsValue);
}

// src/contracts/VestedFXS-and-Flox/FPISLocker/IlFPISStructs.sol

// @version 0.2.8

/**
 * ====================================================================
 * |     ______                   _______                             |
 * |    / _____________ __  __   / ____(_____  ____ _____  ________   |
 * |   / /_  / ___/ __ `| |/_/  / /_  / / __ \/ __ `/ __ \/ ___/ _ \  |
 * |  / __/ / /  / /_/ _>  <   / __/ / / / / / /_/ / / / / /__/  __/  |
 * | /_/   /_/   \__,_/_/|_|  /_/   /_/_/ /_/\__,_/_/ /_/\___/\___/   |
 * |                                                                  |
 * ====================================================================
 * ======================== lFPISStructs ==============================
 * ====================================================================
 * Structs of lFPIS contracts (lFPIS)
 * Frax Finance: https://github.com/FraxFinance
 */
interface IlFPISStructs {
    /// @notice Detailed lock info for a user
    /// @param user Address of the user
    /// @param allLocks All of the locks of the user
    /// @param numberOfLocks The total number of locks that the user has
    /// @param activeLocks Only the active locks of the user
    /// @param expiredLocks Only the expired locks of the user
    /// @param totalFpis The total amount of FPIS that the user has for all, active, and expired locks respectively
    struct DetailedUserLockInfo {
        address user;
        uint256 numberOfLocks;
        LockedBalanceExtended[] allLocks;
        LockedBalanceExtended[] activeLocks;
        LockedBalanceExtended[] expiredLocks;
        int128[3] totalFpis;
    }

    /// @notice Basic information about a lock
    /// @param amount The amount that is locked
    /// @param end The ending timestamp for the lock
    /// @dev We cannot really do block numbers per se b/c slope is per time, not per block and per block could be fairly bad b/c Ethereum changes blocktimes. What we can do is to extrapolate ***At functions
    struct LockedBalance {
        int128 amount;
        uint128 end; // This should more than suffice for our needs and allows the struct to be packed
    }

    /// @notice Extended information about a lock
    /// @param id The ID of the lock
    /// @param index The index of the lock. If index is 0, do not trust it unless isInUse is also true
    /// @param amount The amount that is locked
    /// @param end The ending timestamp for the lock
    /// @param isInUse If the lock ID is currently in use
    struct LockedBalanceExtended {
        uint256 id;
        uint128 index;
        int128 amount;
        uint128 end;
    }

    /// @notice Lock ID Info. Cannot be a simple mapping because lock indeces are in constant flux and index 0 vs null is ambiguous.
    /// @param id The ID of the lock
    /// @param index The index of the lock. If index is 0, do not trust it unless isInUse is also true
    /// @param isInUse If the lock ID is currently in use
    struct LockIdIdxInfo {
        uint256 id;
        uint128 index;
        bool isInUse;
    }

    /// @notice Point in a user's lock
    /// @param bias The bias of the point
    /// @param slope The slope of the point
    /// @param ts The timestamp of the point
    /// @param blk The block of the point
    /// @param fpisAmt The amount of FPIS at the point
    struct Point {
        int128 bias;
        int128 slope; // - dweight / dt
        uint256 ts;
        uint256 blk; // block
        uint256 fpisAmt;
    }

    /// @notice Longest lock info for a user
    /// @param lock The longest lock of the user
    /// @param lockIndex The index of the longest lock
    /// @param user The address of the user
    struct LongestLock {
        LockedBalance lock;
        uint128 lockIndex;
        address user;
    }
}

// src/contracts/VestedFXS-and-Flox/VestedFXS/IveFXSStructs.sol

// @version 0.2.8

/**
 * ====================================================================
 * |     ______                   _______                             |
 * |    / _____________ __  __   / ____(_____  ____ _____  ________   |
 * |   / /_  / ___/ __ `| |/_/  / /_  / / __ \/ __ `/ __ \/ ___/ _ \  |
 * |  / __/ / /  / /_/ _>  <   / __/ / / / / / /_/ / / / / /__/  __/  |
 * | /_/   /_/   \__,_/_/|_|  /_/   /_/_/ /_/\__,_/_/ /_/\___/\___/   |
 * |                                                                  |
 * ====================================================================
 * =============================== veFXS ==============================
 * ====================================================================
 * Structs VestedFXS (veFXS)
 * Frax Finance: https://github.com/FraxFinance
 */
interface IveFXSStructs {
    /// @notice Detailed lock info for a user
    /// @param user Address of the user
    /// @param allLocks All of the locks of the user
    /// @param numberOfLocks The total number of locks that the user has
    /// @param activeLocks Only the active locks of the user
    /// @param expiredLocks Only the expired locks of the user
    /// @param totalFxs The total amount of FXS that the user has for all, active, and expired locks respectively
    struct DetailedUserLockInfo {
        address user;
        uint256 numberOfLocks;
        LockedBalanceExtended[] allLocks;
        LockedBalanceExtended[] activeLocks;
        LockedBalanceExtended[] expiredLocks;
        int128[3] totalFxs;
    }

    /// @notice Basic information about a lock
    /// @param amount The amount that is locked
    /// @param end The ending timestamp for the lock
    /// @dev We cannot really do block numbers per se b/c slope is per time, not per block and per block could be fairly bad b/c Ethereum changes blocktimes. What we can do is to extrapolate ***At functions
    struct LockedBalance {
        int128 amount;
        uint128 end; // This should more than suffice for our needs and allows the struct to be packed
    }

    /// @notice Extended information about a lock
    /// @param id The ID of the lock
    /// @param index The index of the lock. If index is 0, do not trust it unless isInUse is also true
    /// @param amount The amount that is locked
    /// @param end The ending timestamp for the lock
    /// @param isInUse If the lock ID is currently in use
    struct LockedBalanceExtended {
        uint256 id;
        uint128 index;
        int128 amount;
        uint128 end;
    }

    /// @notice Lock ID Info. Cannot be a simple mapping because lock indeces are in constant flux and index 0 vs null is ambiguous.
    /// @param id The ID of the lock
    /// @param index The index of the lock. If index is 0, do not trust it unless isInUse is also true
    /// @param isInUse If the lock ID is currently in use
    struct LockIdIdxInfo {
        uint256 id;
        uint128 index;
        bool isInUse;
    }

    /// @notice Point in a user's lock
    /// @param bias The bias of the point
    /// @param slope The slope of the point
    /// @param ts The timestamp of the point
    /// @param blk The block of the point
    /// @param fxsAmt The amount of FXS at the point
    struct Point {
        int128 bias;
        int128 slope; // - dweight / dt
        uint256 ts;
        uint256 blk; // block
        uint256 fxsAmt;
    }

    /// @notice Longest lock info for a user
    /// @param lock The longest lock of the user
    /// @param lockIndex The index of the longest lock
    /// @param user The address of the user
    struct LongestLock {
        LockedBalance lock;
        uint128 lockIndex;
        address user;
    }
}

// node_modules/@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol

// OpenZeppelin Contracts v4.4.1 (token/ERC20/extensions/IERC20Metadata.sol)

/**
 * @dev Interface for the optional metadata functions from the ERC20 standard.
 *
 * _Available since v4.1._
 */
interface IERC20Metadata is IERC20 {
    /**
     * @dev Returns the name of the token.
     */
    function name() external view returns (string memory);

    /**
     * @dev Returns the symbol of the token.
     */
    function symbol() external view returns (string memory);

    /**
     * @dev Returns the decimals places of the token.
     */
    function decimals() external view returns (uint8);
}

// src/contracts/VestedFXS-and-Flox/interfaces/IFPISLocker.sol

// @version 0.2.8

/**
 * ====================================================================
 * |     ______                   _______                             |
 * |    / _____________ __  __   / ____(_____  ____ _____  ________   |
 * |   / /_  / ___/ __ `| |/_/  / /_  / / __ \/ __ `/ __ \/ ___/ _ \  |
 * |  / __/ / /  / /_/ _>  <   / __/ / / / / / /_/ / / / / /__/  __/  |
 * | /_/   /_/   \__,_/_/|_|  /_/   /_/_/ /_/\__,_/_/ /_/\___/\___/   |
 * |                                                                  |
 * ====================================================================
 * ============================ IFPISLocker ============================
 * ====================================================================
 * Frax Finance: https://github.com/FraxFinance
 */

interface IFPISLocker is IlFPISStructs {
    function MAXTIME_INT128() external view returns (int128);

    function MAXTIME_UINT256() external view returns (uint256);

    function MAX_CONTRIBUTOR_LOCKS() external view returns (uint8);

    function MAX_USER_LOCKS() external view returns (uint8);

    function MULTIPLIER_UINT256() external view returns (uint256);

    function VOTE_WEIGHT_MULTIPLIER_INT128() external view returns (int128);

    function VOTE_WEIGHT_MULTIPLIER_UINT256() external view returns (uint256);

    function VOTE_END_POWER_BASIS_POINTS_INT128() external view returns (int128);

    function VOTE_END_POWER_BASIS_POINTS_UINT256() external view returns (uint256);

    function MAX_BASIS_POINTS_INT128() external view returns (int128);

    function MAX_BASIS_POINTS_UINT256() external view returns (uint256);

    function FXS_CONVERSION_START_TIMESTAMP() external view returns (uint256);

    function WEEK_UINT128() external view returns (uint128);

    function WEEK_UINT256() external view returns (uint256);

    function acceptTransferOwnership() external;

    function admin() external view returns (address);

    function balanceOf(address _addr) external view returns (uint256 _balance);

    function balanceOfAllLocksAtBlock(address _addr, uint256 _block) external view returns (uint256 _balance);

    function balanceOfAllLocksAtTime(address _addr, uint256 _timestamp) external view returns (uint256 _balance);

    function balanceOfAt(address _addr, uint256 _block) external view returns (uint256 _balance);

    function balanceOfOneLockAtBlock(
        address _addr,
        uint128 _lockIndex,
        uint256 _block
    ) external view returns (uint256 _balance);

    function balanceOfOneLockAtTime(
        address _addr,
        uint128 _lockIndex,
        uint256 _timestamp
    ) external view returns (uint256 _balance);

    function checkpoint() external;

    function commitTransferOwnership(address _addr) external;

    function createLock(address _addr, uint256 _value, uint128 _unlockTime) external returns (uint128);

    function decimals() external view returns (uint256);

    function depositFor(address _addr, uint256 _value, uint128 _lockIndex) external;

    function emergencyUnlockActive() external view returns (bool);

    function epoch() external view returns (uint256);

    function findBlockEpoch(uint256 _block, uint256 _maxEpoch) external view returns (uint256);

    function floxContributors(address) external view returns (bool);

    function futureAdmin() external view returns (address);

    function getLastUserSlope(address _addr, uint128 _lockIndex) external view returns (int128);

    function increaseAmount(uint256 _value, uint128 _lockIndex) external;

    function increaseUnlockTime(uint128 _unlockTime, uint128 _lockIndex) external;

    function indicesToIds(address, uint128) external view returns (uint256);

    function isPaused() external view returns (bool);

    function locked(address, uint256) external view returns (int128 amount, uint128 end);

    function lockedById(address _addr, uint256 _id) external view returns (LockedBalance memory _lockInfo);

    function lockedByIndex(address _addr, uint128 _index) external view returns (LockedBalance memory _lockInfo);

    function lockedEnd(address _addr, uint128 _index) external view returns (uint256);

    function name() external view returns (string memory);

    function nextId(address) external view returns (uint256);

    function numLocks(address) external view returns (uint128);

    function pointHistory(
        uint256
    ) external view returns (int128 bias, int128 slope, uint256 ts, uint256 blk, uint256 fpisAmt);

    function recoverIERC20(address _tokenAddr, uint256 _amount) external;

    function setFloxContributor(address _floxContributor, bool _isFloxContributor) external;

    function setLVPIDUtils(address _lFpisUtilsAddr) external;

    function slopeChanges(uint256) external view returns (int128);

    function supply() external view returns (uint256);

    function supplyAt(Point memory _point, uint256 _t) external view returns (uint256);

    function symbol() external view returns (string memory);

    function toggleContractPause() external;

    function activateEmergencyUnlock() external;

    function fpis() external view returns (address);

    function totalFPISSupply() external view returns (uint256);

    function totalFPISSupplyAt(uint256 _block) external view returns (uint256);

    function totalSupply() external view returns (uint256);

    function totalSupply(uint256 _timestamp) external view returns (uint256);

    function totalSupplyAt(uint256 _block) external view returns (uint256);

    function userPointEpoch(address, uint256) external view returns (uint256);

    function userPointHistory(
        address,
        uint256,
        uint256
    ) external view returns (int128 bias, int128 slope, uint256 ts, uint256 blk, uint256 fpisAmt);

    function userPointHistoryTs(address _addr, uint128 _lockIndex, uint256 _idx) external view returns (uint256);

    function lFpisUtils() external view returns (address);

    function version() external view returns (string memory);

    function withdraw(uint128 _lockIndex) external;
}

// src/contracts/VestedFXS-and-Flox/interfaces/IVestedFXS.sol

// @version 0.2.8

/**
 * ====================================================================
 * |     ______                   _______                             |
 * |    / _____________ __  __   / ____(_____  ____ _____  ________   |
 * |   / /_  / ___/ __ `| |/_/  / /_  / / __ \/ __ `/ __ \/ ___/ _ \  |
 * |  / __/ / /  / /_/ _>  <   / __/ / / / / / /_/ / / / / /__/  __/  |
 * | /_/   /_/   \__,_/_/|_|  /_/   /_/_/ /_/\__,_/_/ /_/\___/\___/   |
 * |                                                                  |
 * ====================================================================
 * ============================ IVestedFXS ============================
 * ====================================================================
 * Frax Finance: https://github.com/FraxFinance
 */

interface IVestedFXS is IveFXSStructs {
    function MAXTIME_INT128() external view returns (int128);

    function MAXTIME_UINT256() external view returns (uint256);

    function MAX_CONTRIBUTOR_LOCKS() external view returns (uint8);

    function MAX_USER_LOCKS() external view returns (uint8);

    function MULTIPLIER_UINT256() external view returns (uint256);

    function VOTE_WEIGHT_MULTIPLIER_INT128() external view returns (int128);

    function VOTE_WEIGHT_MULTIPLIER_UINT256() external view returns (uint256);

    function WEEK_UINT128() external view returns (uint128);

    function WEEK_UINT256() external view returns (uint256);

    function acceptTransferOwnership() external;

    function admin() external view returns (address);

    function balanceOf(address _addr) external view returns (uint256 _balance);

    function balanceOfAllLocksAtBlock(address _addr, uint256 _block) external view returns (uint256 _balance);

    function balanceOfAllLocksAtTime(address _addr, uint256 _timestamp) external view returns (uint256 _balance);

    function balanceOfAt(address _addr, uint256 _block) external view returns (uint256 _balance);

    function balanceOfOneLockAtBlock(
        address _addr,
        uint128 _lockIndex,
        uint256 _block
    ) external view returns (uint256 _balance);

    function balanceOfOneLockAtTime(
        address _addr,
        uint128 _lockIndex,
        uint256 _timestamp
    ) external view returns (uint256 _balance);

    function checkpoint() external;

    function commitTransferOwnership(address _addr) external;

    function createLock(address _addr, uint256 _value, uint128 _unlockTime) external returns (uint128, uint256);

    function decimals() external view returns (uint256);

    function depositFor(address _addr, uint256 _value, uint128 _lockIndex) external;

    function emergencyUnlockActive() external view returns (bool);

    function epoch() external view returns (uint256);

    function findBlockEpoch(uint256 _block, uint256 _maxEpoch) external view returns (uint256);

    function floxContributors(address) external view returns (bool);

    function futureAdmin() external view returns (address);

    function getLastUserSlope(address _addr, uint128 _lockIndex) external view returns (int128);

    function increaseAmount(uint256 _value, uint128 _lockIndex) external;

    function increaseUnlockTime(uint128 _unlockTime, uint128 _lockIndex) external;

    function indicesToIds(address, uint128) external view returns (uint256);

    function isPaused() external view returns (bool);

    function locked(address, uint256) external view returns (int128 amount, uint128 end);

    function lockedById(address _addr, uint256 _id) external view returns (LockedBalance memory _lockInfo);

    function lockedByIndex(address _addr, uint128 _index) external view returns (LockedBalance memory _lockInfo);

    function lockedEnd(address _addr, uint128 _index) external view returns (uint256);

    function name() external view returns (string memory);

    function nextId(address) external view returns (uint256);

    function numLocks(address) external view returns (uint128);

    function pointHistory(
        uint256
    ) external view returns (int128 bias, int128 slope, uint256 ts, uint256 blk, uint256 fxsAmt);

    function recoverIERC20(address _tokenAddr, uint256 _amount) external;

    function setFloxContributor(address _floxContributor, bool _isFloxContributor) external;

    function setVeFXSUtils(address _veFxsUtilsAddr) external;

    function slopeChanges(uint256) external view returns (int128);

    function supply() external view returns (uint256);

    function supplyAt(Point memory _point, uint256 _t) external view returns (uint256);

    function symbol() external view returns (string memory);

    function toggleContractPause() external;

    function activateEmergencyUnlock() external;

    function token() external view returns (address);

    function totalFXSSupply() external view returns (uint256);

    function totalFXSSupplyAt(uint256 _block) external view returns (uint256);

    function totalSupply() external view returns (uint256);

    function totalSupply(uint256 _timestamp) external view returns (uint256);

    function totalSupplyAt(uint256 _block) external view returns (uint256);

    function userPointEpoch(address, uint256) external view returns (uint256);

    function userPointHistory(
        address,
        uint256,
        uint256
    ) external view returns (int128 bias, int128 slope, uint256 ts, uint256 blk, uint256 fxsAmt);

    function userPointHistoryTs(address _addr, uint128 _lockIndex, uint256 _idx) external view returns (uint256);

    function veFxsUtils() external view returns (address);

    function version() external view returns (string memory);

    function withdraw(uint128 _lockIndex) external;

    function numberOfFloxContributorCreatedLocks(address _user) external view returns (uint256);
}

// node_modules/@openzeppelin/contracts/token/ERC20/ERC20.sol

// OpenZeppelin Contracts (last updated v4.7.0) (token/ERC20/ERC20.sol)

/**
 * @dev Implementation of the {IERC20} interface.
 *
 * This implementation is agnostic to the way tokens are created. This means
 * that a supply mechanism has to be added in a derived contract using {_mint}.
 * For a generic mechanism see {ERC20PresetMinterPauser}.
 *
 * TIP: For a detailed writeup see our guide
 * https://forum.zeppelin.solutions/t/how-to-implement-erc20-supply-mechanisms/226[How
 * to implement supply mechanisms].
 *
 * We have followed general OpenZeppelin Contracts guidelines: functions revert
 * instead returning `false` on failure. This behavior is nonetheless
 * conventional and does not conflict with the expectations of ERC20
 * applications.
 *
 * Additionally, an {Approval} event is emitted on calls to {transferFrom}.
 * This allows applications to reconstruct the allowance for all accounts just
 * by listening to said events. Other implementations of the EIP may not emit
 * these events, as it isn't required by the specification.
 *
 * Finally, the non-standard {decreaseAllowance} and {increaseAllowance}
 * functions have been added to mitigate the well-known issues around setting
 * allowances. See {IERC20-approve}.
 */
contract ERC20 is Context, IERC20, IERC20Metadata {
    mapping(address => uint256) private _balances;

    mapping(address => mapping(address => uint256)) private _allowances;

    uint256 private _totalSupply;

    string private _name;
    string private _symbol;

    /**
     * @dev Sets the values for {name} and {symbol}.
     *
     * The default value of {decimals} is 18. To select a different value for
     * {decimals} you should overload it.
     *
     * All two of these values are immutable: they can only be set once during
     * construction.
     */
    constructor(string memory name_, string memory symbol_) {
        _name = name_;
        _symbol = symbol_;
    }

    /**
     * @dev Returns the name of the token.
     */
    function name() public view virtual override returns (string memory) {
        return _name;
    }

    /**
     * @dev Returns the symbol of the token, usually a shorter version of the
     * name.
     */
    function symbol() public view virtual override returns (string memory) {
        return _symbol;
    }

    /**
     * @dev Returns the number of decimals used to get its user representation.
     * For example, if `decimals` equals `2`, a balance of `505` tokens should
     * be displayed to a user as `5.05` (`505 / 10 ** 2`).
     *
     * Tokens usually opt for a value of 18, imitating the relationship between
     * Ether and Wei. This is the value {ERC20} uses, unless this function is
     * overridden;
     *
     * NOTE: This information is only used for _display_ purposes: it in
     * no way affects any of the arithmetic of the contract, including
     * {IERC20-balanceOf} and {IERC20-transfer}.
     */
    function decimals() public view virtual override returns (uint8) {
        return 18;
    }

    /**
     * @dev See {IERC20-totalSupply}.
     */
    function totalSupply() public view virtual override returns (uint256) {
        return _totalSupply;
    }

    /**
     * @dev See {IERC20-balanceOf}.
     */
    function balanceOf(address account) public view virtual override returns (uint256) {
        return _balances[account];
    }

    /**
     * @dev See {IERC20-transfer}.
     *
     * Requirements:
     *
     * - `to` cannot be the zero address.
     * - the caller must have a balance of at least `amount`.
     */
    function transfer(address to, uint256 amount) public virtual override returns (bool) {
        address owner = _msgSender();
        _transfer(owner, to, amount);
        return true;
    }

    /**
     * @dev See {IERC20-allowance}.
     */
    function allowance(address owner, address spender) public view virtual override returns (uint256) {
        return _allowances[owner][spender];
    }

    /**
     * @dev See {IERC20-approve}.
     *
     * NOTE: If `amount` is the maximum `uint256`, the allowance is not updated on
     * `transferFrom`. This is semantically equivalent to an infinite approval.
     *
     * Requirements:
     *
     * - `spender` cannot be the zero address.
     */
    function approve(address spender, uint256 amount) public virtual override returns (bool) {
        address owner = _msgSender();
        _approve(owner, spender, amount);
        return true;
    }

    /**
     * @dev See {IERC20-transferFrom}.
     *
     * Emits an {Approval} event indicating the updated allowance. This is not
     * required by the EIP. See the note at the beginning of {ERC20}.
     *
     * NOTE: Does not update the allowance if the current allowance
     * is the maximum `uint256`.
     *
     * Requirements:
     *
     * - `from` and `to` cannot be the zero address.
     * - `from` must have a balance of at least `amount`.
     * - the caller must have allowance for ``from``'s tokens of at least
     * `amount`.
     */
    function transferFrom(
        address from,
        address to,
        uint256 amount
    ) public virtual override returns (bool) {
        address spender = _msgSender();
        _spendAllowance(from, spender, amount);
        _transfer(from, to, amount);
        return true;
    }

    /**
     * @dev Atomically increases the allowance granted to `spender` by the caller.
     *
     * This is an alternative to {approve} that can be used as a mitigation for
     * problems described in {IERC20-approve}.
     *
     * Emits an {Approval} event indicating the updated allowance.
     *
     * Requirements:
     *
     * - `spender` cannot be the zero address.
     */
    function increaseAllowance(address spender, uint256 addedValue) public virtual returns (bool) {
        address owner = _msgSender();
        _approve(owner, spender, allowance(owner, spender) + addedValue);
        return true;
    }

    /**
     * @dev Atomically decreases the allowance granted to `spender` by the caller.
     *
     * This is an alternative to {approve} that can be used as a mitigation for
     * problems described in {IERC20-approve}.
     *
     * Emits an {Approval} event indicating the updated allowance.
     *
     * Requirements:
     *
     * - `spender` cannot be the zero address.
     * - `spender` must have allowance for the caller of at least
     * `subtractedValue`.
     */
    function decreaseAllowance(address spender, uint256 subtractedValue) public virtual returns (bool) {
        address owner = _msgSender();
        uint256 currentAllowance = allowance(owner, spender);
        require(currentAllowance >= subtractedValue, "ERC20: decreased allowance below zero");
        unchecked {
            _approve(owner, spender, currentAllowance - subtractedValue);
        }

        return true;
    }

    /**
     * @dev Moves `amount` of tokens from `from` to `to`.
     *
     * This internal function is equivalent to {transfer}, and can be used to
     * e.g. implement automatic token fees, slashing mechanisms, etc.
     *
     * Emits a {Transfer} event.
     *
     * Requirements:
     *
     * - `from` cannot be the zero address.
     * - `to` cannot be the zero address.
     * - `from` must have a balance of at least `amount`.
     */
    function _transfer(
        address from,
        address to,
        uint256 amount
    ) internal virtual {
        require(from != address(0), "ERC20: transfer from the zero address");
        require(to != address(0), "ERC20: transfer to the zero address");

        _beforeTokenTransfer(from, to, amount);

        uint256 fromBalance = _balances[from];
        require(fromBalance >= amount, "ERC20: transfer amount exceeds balance");
        unchecked {
            _balances[from] = fromBalance - amount;
        }
        _balances[to] += amount;

        emit Transfer(from, to, amount);

        _afterTokenTransfer(from, to, amount);
    }

    /** @dev Creates `amount` tokens and assigns them to `account`, increasing
     * the total supply.
     *
     * Emits a {Transfer} event with `from` set to the zero address.
     *
     * Requirements:
     *
     * - `account` cannot be the zero address.
     */
    function _mint(address account, uint256 amount) internal virtual {
        require(account != address(0), "ERC20: mint to the zero address");

        _beforeTokenTransfer(address(0), account, amount);

        _totalSupply += amount;
        _balances[account] += amount;
        emit Transfer(address(0), account, amount);

        _afterTokenTransfer(address(0), account, amount);
    }

    /**
     * @dev Destroys `amount` tokens from `account`, reducing the
     * total supply.
     *
     * Emits a {Transfer} event with `to` set to the zero address.
     *
     * Requirements:
     *
     * - `account` cannot be the zero address.
     * - `account` must have at least `amount` tokens.
     */
    function _burn(address account, uint256 amount) internal virtual {
        require(account != address(0), "ERC20: burn from the zero address");

        _beforeTokenTransfer(account, address(0), amount);

        uint256 accountBalance = _balances[account];
        require(accountBalance >= amount, "ERC20: burn amount exceeds balance");
        unchecked {
            _balances[account] = accountBalance - amount;
        }
        _totalSupply -= amount;

        emit Transfer(account, address(0), amount);

        _afterTokenTransfer(account, address(0), amount);
    }

    /**
     * @dev Sets `amount` as the allowance of `spender` over the `owner` s tokens.
     *
     * This internal function is equivalent to `approve`, and can be used to
     * e.g. set automatic allowances for certain subsystems, etc.
     *
     * Emits an {Approval} event.
     *
     * Requirements:
     *
     * - `owner` cannot be the zero address.
     * - `spender` cannot be the zero address.
     */
    function _approve(
        address owner,
        address spender,
        uint256 amount
    ) internal virtual {
        require(owner != address(0), "ERC20: approve from the zero address");
        require(spender != address(0), "ERC20: approve to the zero address");

        _allowances[owner][spender] = amount;
        emit Approval(owner, spender, amount);
    }

    /**
     * @dev Updates `owner` s allowance for `spender` based on spent `amount`.
     *
     * Does not update the allowance amount in case of infinite allowance.
     * Revert if not enough allowance is available.
     *
     * Might emit an {Approval} event.
     */
    function _spendAllowance(
        address owner,
        address spender,
        uint256 amount
    ) internal virtual {
        uint256 currentAllowance = allowance(owner, spender);
        if (currentAllowance != type(uint256).max) {
            require(currentAllowance >= amount, "ERC20: insufficient allowance");
            unchecked {
                _approve(owner, spender, currentAllowance - amount);
            }
        }
    }

    /**
     * @dev Hook that is called before any transfer of tokens. This includes
     * minting and burning.
     *
     * Calling conditions:
     *
     * - when `from` and `to` are both non-zero, `amount` of ``from``'s tokens
     * will be transferred to `to`.
     * - when `from` is zero, `amount` tokens will be minted for `to`.
     * - when `to` is zero, `amount` of ``from``'s tokens will be burned.
     * - `from` and `to` are never both zero.
     *
     * To learn more about hooks, head to xref:ROOT:extending-contracts.adoc#using-hooks[Using Hooks].
     */
    function _beforeTokenTransfer(
        address from,
        address to,
        uint256 amount
    ) internal virtual {}

    /**
     * @dev Hook that is called after any transfer of tokens. This includes
     * minting and burning.
     *
     * Calling conditions:
     *
     * - when `from` and `to` are both non-zero, `amount` of ``from``'s tokens
     * has been transferred to `to`.
     * - when `from` is zero, `amount` tokens have been minted for `to`.
     * - when `to` is zero, `amount` of ``from``'s tokens have been burned.
     * - `from` and `to` are never both zero.
     *
     * To learn more about hooks, head to xref:ROOT:extending-contracts.adoc#using-hooks[Using Hooks].
     */
    function _afterTokenTransfer(
        address from,
        address to,
        uint256 amount
    ) internal virtual {}
}

// node_modules/@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol

// OpenZeppelin Contracts (last updated v4.5.0) (token/ERC20/extensions/ERC20Burnable.sol)

/**
 * @dev Extension of {ERC20} that allows token holders to destroy both their own
 * tokens and those that they have an allowance for, in a way that can be
 * recognized off-chain (via event analysis).
 */
abstract contract ERC20Burnable is Context, ERC20 {
    /**
     * @dev Destroys `amount` tokens from the caller.
     *
     * See {ERC20-_burn}.
     */
    function burn(uint256 amount) public virtual {
        _burn(_msgSender(), amount);
    }

    /**
     * @dev Destroys `amount` tokens from `account`, deducting from the caller's
     * allowance.
     *
     * See {ERC20-_burn} and {ERC20-allowance}.
     *
     * Requirements:
     *
     * - the caller must have allowance for ``accounts``'s tokens of at least
     * `amount`.
     */
    function burnFrom(address account, uint256 amount) public virtual {
        _spendAllowance(account, _msgSender(), amount);
        _burn(account, amount);
    }
}

// src/contracts/VestedFXS-and-Flox/FPISLocker/FPISLockerUtils.sol

// @version 0.2.8

/**
 * ====================================================================
 * |     ______                   _______                             |
 * |    / _____________ __  __   / ____(_____  ____ _____  ________   |
 * |   / /_  / ___/ __ `| |/_/  / /_  / / __ \/ __ `/ __ \/ ___/ _ \  |
 * |  / __/ / /  / /_/ _>  <   / __/ / / / / / /_/ / / / / /__/  __/  |
 * | /_/   /_/   \__,_/_/|_|  /_/   /_/_/ /_/\__,_/_/ /_/\___/\___/   |
 * |                                                                  |
 * ====================================================================
 * ========================= FPISLockerUtils ==========================
 * ====================================================================
 * Helper and utility functions for VestedFXS
 * Frax Finance: https://github.com/FraxFinance
 */

/**
 *
 * Voting escrow to have time-weighted votes
 * Votes have a weight depending on time, so that users are committed
 * to the future of (whatever they are voting for).
 * The weight in this implementation is linear, and lock cannot be more than maxtime:
 * w ^
 * 1 +        /
 *   |      /
 *   |    /
 *   |  /
 *   |/
 * 0 +--------+------> time
 *       maxtime (4 years?)
 */

/**
 * @title FPISLockerUtils
 * @author Frax Finance
 * @notice This utility smart contract provides functions to get extended information from the FPISLocker contract.
 */
contract FPISLockerUtils is IlFPISStructs {
    IFPISLocker public immutable lFPIS;
    IERC20Metadata public immutable fpis;

    /**
     * @notice Contract constructor
     * @param _FPISLocker Address of the FPISLocker contract
     */
    constructor(address _FPISLocker) {
        lFPIS = IFPISLocker(_FPISLocker);
        fpis = IERC20Metadata(lFPIS.fpis());
    }

    /**
     * @notice Used to get all of the locks of a given user.
     * @dev The locks are retrieved indiscriminately, regardless of whether they are active or expired.
     * @param _user Address of the user
     * @return _userLockInfo DetailedUserLockInfo for the user. Includes _allLocks, _activeLocks, _expiredLocks, and FXS totals for these respectively
     * @dev This lives on Fraxtal and will mostly be read-called in UIs, so gas not really an issue here
     */
    function getDetailedUserLockInfo(address _user) public view returns (DetailedUserLockInfo memory _userLockInfo) {
        // Get the total number of locks
        uint256 _totalLocks = lFPIS.numLocks(_user);
        uint128 _numberOfActiveLocks;

        // Set the number locks for the user
        _userLockInfo.numberOfLocks = _totalLocks;

        // Set the user
        _userLockInfo.user = _user;

        // Initialize _allLocks
        _userLockInfo.allLocks = new LockedBalanceExtended[](_totalLocks);

        // Initial _isActive, which tracks if a given index is active
        bool[] memory _isActive = new bool[](_totalLocks);

        // Loop through all of the locks
        for (uint256 i; i < _userLockInfo.allLocks.length; ) {
            // Update the _allLocks return data
            LockedBalance memory _thisLock = lFPIS.lockedByIndex(_user, uint128(i));
            _userLockInfo.allLocks[i].id = lFPIS.indicesToIds(_user, uint128(i));
            _userLockInfo.allLocks[i].index = uint128(i);
            _userLockInfo.allLocks[i].amount = _thisLock.amount;
            _userLockInfo.allLocks[i].end = _thisLock.end;
            _userLockInfo.totalFpis[0] += _thisLock.amount;

            // Determine whether it is active or expired
            if (_thisLock.end > block.timestamp) {
                // Update isActive tracking
                _isActive[i] = true;

                // Update _totalFxs for active locks
                _userLockInfo.totalFpis[1] += _thisLock.amount;

                unchecked {
                    ++_numberOfActiveLocks;
                }
            } else {
                // Update _totalFxs for expired locks
                _userLockInfo.totalFpis[2] += _thisLock.amount;
            }
            unchecked {
                ++i;
            }
        }

        // Initialize _activeLocks and _expiredLocks
        _userLockInfo.activeLocks = new LockedBalanceExtended[](_numberOfActiveLocks);
        _userLockInfo.expiredLocks = new LockedBalanceExtended[](_totalLocks - _numberOfActiveLocks);

        // Loop through all of the locks again, this time for assigning to _activeLocks and _expiredLocks
        uint128 _activeCounter;
        uint128 _expiredCounter;
        for (uint256 i; i < _userLockInfo.allLocks.length; ) {
            // Get the lock info
            LockedBalanceExtended memory _thisLock = _userLockInfo.allLocks[i];

            // Sort the lock as either active or expired
            if (_isActive[i]) {
                // Active
                _userLockInfo.activeLocks[_activeCounter] = _thisLock;

                unchecked {
                    ++_activeCounter;
                }
            } else {
                // Expired
                _userLockInfo.expiredLocks[_expiredCounter] = _thisLock;

                unchecked {
                    ++_expiredCounter;
                }
            }

            unchecked {
                ++i;
            }
        }
    }

    /**
     * @notice Used to get all of the locks of the given users. Same underlying code as getDetailedUserLockInfo
     * @dev The locks are retrieved indiscriminately, regardless of whether they are active or expired.
     * @param _users Addresses of the users
     * @return _userLockInfos DetailedUserLockInfo[] for the users. Includes _allLocks, _activeLocks, _expiredLocks, and FXS totals for these respectively
     * @dev This lives on Fraxtal and will mostly be read-called in UIs, so gas not really an issue here
     */
    function getDetailedUserLockInfoBulk(
        address[] memory _users
    ) public view returns (DetailedUserLockInfo[] memory _userLockInfos) {
        // Save the number of user addresses
        uint256 _numUsers = _users.length;

        // Initialize the return array
        _userLockInfos = new DetailedUserLockInfo[](_numUsers);

        // Loop through all of the users and get their detailed lock info
        for (uint256 i = 0; i < _numUsers; ) {
            _userLockInfos[i] = getDetailedUserLockInfo(_users[i]);

            unchecked {
                i++;
            }
        }
    }

    /**
     * @notice Used to get the longest lock of a given user.
     * @dev The longest lock is the lock with the timestamp furthest in the future (can also be in the past if there are no active locks).
     * @param user Address of the user
     * @return The longest lock of the user
     * @return The index of the longest lock
     */
    function getLongestLock(address user) public view returns (LockedBalance memory, uint128) {
        LockedBalance[] memory locks = new LockedBalance[](lFPIS.numLocks(user));
        LockedBalance memory longestLock;
        uint128 longestLockIndex;

        for (uint256 i = 0; i < locks.length; ) {
            uint128 currentEnd = lFPIS.lockedByIndex(user, uint128(i)).end;
            if (currentEnd > longestLock.end) {
                longestLock.end = currentEnd;
                longestLock.amount = lFPIS.lockedByIndex(user, uint128(i)).amount;
                longestLockIndex = uint128(i);
            }

            unchecked {
                i++;
            }
        }

        return (longestLock, longestLockIndex);
    }

    /**
     * @notice Used to get longest locks of muliple users.
     * @dev This returns the longest lock indiscriminately, regardless of whether it is active or expired.
     * @dev The return value is an array of LongestLock structs, which contain the lock, the index of the lock, and the user.
     * @param users Array of addresses of the users
     * @return The LongestLocks of the users
     */
    function getLongestLockBulk(address[] memory users) public view returns (LongestLock[] memory) {
        LongestLock[] memory longestLocks = new LongestLock[](users.length);
        LockedBalance memory longestLock;
        uint128 longestLockIndex;

        for (uint256 i = 0; i < users.length; ) {
            for (uint256 j; j < lFPIS.numLocks(users[i]); ) {
                uint128 currentEnd = lFPIS.lockedByIndex(users[i], uint128(j)).end;
                if (currentEnd > longestLock.end) {
                    longestLock.end = currentEnd;
                    longestLock.amount = lFPIS.lockedByIndex(users[i], uint128(j)).amount;
                    longestLockIndex = uint128(j);
                }

                unchecked {
                    ++j;
                }
            }

            longestLocks[i] = LongestLock({ lock: longestLock, lockIndex: longestLockIndex, user: users[i] });

            delete longestLock;
            delete longestLockIndex;

            unchecked {
                ++i;
            }
        }

        return longestLocks;
    }

    /**
     * @notice Calculate the APPROXIMATE amount of lFPIS, given an FPIS amount and a lock length. Cruder version of balanceOf math. Useful for sanity checks.
     * @param _fpisAmount The amount of FPIS
     * @param _lockSecsU128 The length of the lock
     * @return _expectedLFPIS The expected amount of lFPIS. May be slightly off from actual (~1%)
     * @dev Useful to compare to the slope/bias-based balancedOf to make sure the math is working
     */
    function getCrudeExpectedLFPISOneLock(
        int128 _fpisAmount,
        uint128 _lockSecsU128
    ) public view returns (uint256 _expectedLFPIS) {
        // lFPIS = FPIS in emergency unlock situation
        if (lFPIS.emergencyUnlockActive()) return uint256(int256(_fpisAmount));

        // Truncate _timeLeft down to the nearest week
        int128 _lockSecsI128 = int128((_lockSecsU128 / lFPIS.WEEK_UINT128()) * lFPIS.WEEK_UINT128());

        // Calculate the expected lFPIS
        _expectedLFPIS = uint256(
            uint128(
                ((_fpisAmount * lFPIS.VOTE_END_POWER_BASIS_POINTS_INT128()) / lFPIS.MAX_BASIS_POINTS_INT128()) +
                    ((_fpisAmount * _lockSecsI128) / lFPIS.MAXTIME_INT128())
            )
        );
    }

    /**
     * @notice Calculate the APPROXIMATE amount of lFPIS, given FPIS amounts and lock lengths. Cruder version of balanceOf math. Useful for sanity checks.
     * @param _fpisAmounts The amounts of FPIS
     * @param _lockSecsU128 The length of the locks
     * @return _expectedLFPIS The expected amount of lFPIS (summed). May be slightly off from actual (~1%)
     * @dev Useful to compare to the slope/bias-based balancedOf to make sure the math is working
     */
    function getCrudeExpectedLFPISMultiLock(
        int128[] memory _fpisAmounts,
        uint128[] memory _lockSecsU128
    ) public view returns (uint256 _expectedLFPIS) {
        // See if you are in an emergency unlock situation
        bool _isEmergencyUnlockActive = lFPIS.emergencyUnlockActive();

        // Loop through the locks
        for (uint128 i = 0; i < _fpisAmounts.length; ++i) {
            // lFPIS = FPIS in emergency unlock situation
            if (_isEmergencyUnlockActive) _expectedLFPIS += uint256(int256(_fpisAmounts[i]));
            else _expectedLFPIS += getCrudeExpectedLFPISOneLock(_fpisAmounts[i], _lockSecsU128[i]);
        }
    }

    /**
     * @notice Calculate the APPROXIMATE amount of lFPIS a specific user should have. Cruder version of balanceOf math. Useful for sanity checks.
     * @param _user The address of the user
     * @return _expectedLFPIS The expected amount of lFPIS (summed). May be slightly off from actual (~1%)
     * @dev Useful to compare to the slope/bias-based balancedOf to make sure the math is working
     */
    function getCrudeExpectedLFPISUser(address _user) public view returns (uint256 _expectedLFPIS) {
        // Get all of the user's locks
        DetailedUserLockInfo memory _userLockInfo = getDetailedUserLockInfo(_user);

        // See if you are in an emergency unlock situation
        bool _isEmergencyUnlockActive = lFPIS.emergencyUnlockActive();

        // Loop through all of the user's locks
        for (uint128 i = 0; i < _userLockInfo.numberOfLocks; ) {
            // Get the lock info
            LockedBalanceExtended memory _lockInfo = _userLockInfo.allLocks[i];

            // For the emergency unlock situation, lFPIS = FPIS
            if (_isEmergencyUnlockActive) {
                _expectedLFPIS += uint256(int256(_lockInfo.amount));
            } else {
                // Get the lock time to use
                uint128 _lockSecsToUse;
                if (_lockInfo.end < uint128(block.timestamp)) {
                    _lockSecsToUse = 0;
                } else {
                    _lockSecsToUse = _lockInfo.end - uint128(block.timestamp);
                }

                // Get the approximate lFPIS
                _expectedLFPIS += getCrudeExpectedLFPISOneLock(_lockInfo.amount, _lockSecsToUse);
            }

            unchecked {
                ++i;
            }
        }
    }
}

// src/contracts/VestedFXS-and-Flox/FPISLocker/FPISLocker.sol

// @version 0.2.8

/**
 * ====================================================================
 * |     ______                   _______                             |
 * |    / _____________ __  __   / ____(_____  ____ _____  ________   |
 * |   / /_  / ___/ __ `| |/_/  / /_  / / __ \/ __ `/ __ \/ ___/ _ \  |
 * |  / __/ / /  / /_/ _>  <   / __/ / / / / / /_/ / / / / /__/  __/  |
 * | /_/   /_/   \__,_/_/|_|  /_/   /_/_/ /_/\__,_/_/ /_/\___/\___/   |
 * |                                                                  |
 * ====================================================================
 * ============================ FPISLocker ============================
 * ====================================================================
 * Locking contract for FPIS
 * Frax Finance: https://github.com/FraxFinance
 */

/**
 *
 * Voting escrow to have time-weighted votes
 * Votes have a weight depending on time, so that users are committed
 * to the future of (whatever they are voting for).
 * The weight in this implementation is linear, and lock cannot be more than maxtime:
 * w ^
 * 1 +        /
 *   |      /
 *   |    /
 *   |  /
 *   |/
 * 0 +--------+------> time
 *       maxtime (4 years?)
 */
/* solhint-disable max-line-length, not-rely-on-time */

/**
 * @title FPISLocker (lFPIS)
 * @author Frax Finance
 * @notice Votes have a weight depending on time, so that users are committed to the future of (whatever they are voting
 *  for)
 * @dev Vote weight decays linearly over time. Lock time cannot be more than `MAXTIME_INT128` (4 years).
 * @dev Original idea and credit:
 * Curve Finance's veCRV
 * https://resources.curve.fi/faq/vote-locking-boost
 * https://github.com/curvefi/curve-dao-contracts/blob/master/contracts/VotingEscrow.vy
 * lFPIS is basically a fork, with the key difference that 1 FPIS locked for 1 second would be ~ 0.333 lFPIS,
 * As opposed to ~ 0 veCRV (as it is with veCRV)
 * @dev Frax Reviewer(s) / Contributor(s)
 * Jan Turk: https://github.com/ThunderDeliverer
 * Travis Moore: https://github.com/FortisFortuna
 * Sam Kazemian: https://github.com/samkazemian
 * Carter Carlson: https://github.com/pegahcarter
 */
contract FPISLocker is ReentrancyGuard, IlFPISStructs, IlFPISEvents {
    // ==============================================================================
    // Constants
    // ==============================================================================

    // _depositFor codes
    // -------------------------------------------

    /// @notice _depositFor code for depositFor
    uint128 private constant DEPOSIT_FOR_TYPE = 0;

    /// @notice _depositFor code for createLock
    uint128 private constant CREATE_LOCK_TYPE = 1;

    /// @notice _depositFor code for increaseAmount
    uint128 private constant INCREASE_LOCK_AMOUNT = 2;

    /// @notice _depositFor code for increaseUnlockTime
    uint128 private constant INCREASE_UNLOCK_TIME = 3;

    // Other constants
    // -------------------------------------------

    /// @notice Minimum size you can createLock or increaseAmount
    /// @dev Meant to help prevent rounding issues
    uint256 public constant MIN_LOCK_AMOUNT = 1000 gwei; // 0.000001e18

    /// @notice Multiplier used in various math operations
    uint256 public constant MULTIPLIER_UINT256 = 10 ** 18;

    /// @notice One week, in uint256 seconds
    uint256 public constant WEEK_UINT256 = 7 * 86_400; // all future times are rounded by week

    /// @notice One week, in uint128 seconds
    uint128 public constant WEEK_UINT128 = 7 * 86_400; // all future times are rounded by week

    /// @notice Maximum lock time, in int128 seconds
    int128 public constant MAXTIME_INT128 = 4 * 365 * 86_400; // 4 years

    /// @notice Maximum lock time, in uint256 seconds
    uint256 public constant MAXTIME_UINT256 = 4 * 365 * 86_400; // 4 years

    /// @notice Vote weight multiplier, in int128
    /// @dev The multiplier is represented as basis points, so 10000 is 100%
    int128 public constant VOTE_WEIGHT_MULTIPLIER_INT128 = 13_330 - 3330; // 13330x gives 133.3% boost at 4 years

    /// @notice Vote weight multiplier, in uint256
    /// @dev The multiplier is represented as basis points, so 10000 is 100%
    uint256 public constant VOTE_WEIGHT_MULTIPLIER_UINT256 = 13_330 - 3330; // 13330x gives 133.3% boost at 4 years

    /// @notice Base wote weigth
    /// @dev The voting power should decay to 0.333 at the end of locking period
    int128 public constant VOTE_END_POWER_BASIS_POINTS_INT128 = 3330;

    /// @notice Base wote weigth
    /// @dev The voting power should decay to 0.333 at the end of locking period
    uint256 public constant VOTE_END_POWER_BASIS_POINTS_UINT256 = 3330;

    uint256 public constant FPS_TO_FXS_CONVERSION_CONSTANT_BASIS_POINTS = 25_000;

    int128 public constant MAX_BASIS_POINTS_INT128 = 10_000;

    uint256 public constant MAX_BASIS_POINTS_UINT256 = 10_000;

    uint256 public constant FXS_CONVERSION_START_TIMESTAMP = 1_850_342_400; // 30th of March 2028 Unix timestamp in seconds

    /// @notice The maximum active locks a user can create for themselves
    /// @dev If the user already has 8 locks (and some are created by Flox contributors), they can still create a new lock
    uint8 public constant MAX_USER_LOCKS = 8;

    /// @notice The maximum total number of active locks Flox contributors can create for a single user
    /// @dev If the user already has 8 locks (and some are created by the user), the Flox contributor can still create a new lock
    uint8 public constant MAX_CONTRIBUTOR_LOCKS = 8;

    // ==============================================================================
    // MUTABLE STATE VARIABLES
    // ==============================================================================

    /// @notice The FPISLockerUtils contract with extra helper functions
    FPISLockerUtils public lFpisUtils;

    /// @notice The VestedFXS contract
    IVestedFXS public veFxs;

    /// @notice Whether key functions are paused
    bool public isPaused;

    /// @notice FPIS token
    IERC20Metadata public fpis;

    /// @notice FXS token
    IERC20Metadata public fxs;

    /// @notice The address of the FPIS post FXS conversion aggregator
    address public fpisAggregator;

    /// @notice The total FPIS supply being locked. NOT the total lFPIS. Use totalSupply() for that
    uint256 public supply;

    /// @notice Lock info for a given user and lock id. user -> ID -> LockedBalance
    mapping(address user => mapping(uint256 id => LockedBalance lockedInfo)) public locked;

    /// @notice Helper function to get a lock ID from a lock index. user -> index -> ID
    mapping(address user => mapping(uint128 index => uint256 id)) public indicesToIds;

    /// @notice Helper function to get a lock index from a lock ID. user -> ID -> LockIdInfo.
    /// @dev Be careful and check isInUse beforehand to avoid index 0 vs null. If in doubt, use getLockIndexById
    mapping(address user => mapping(uint256 id => LockIdIdxInfo info)) private idsToIndices;

    /// @notice The indicator of whether a lock was created by a Flox contributor (`true`) or the user (`false`)
    mapping(address user => mapping(uint256 id => bool createdByFloxContributor)) public isLockCreatedByFloxContributor;

    /// @notice The number of user's currently active locks created by the user
    mapping(address user => uint8 numberOfLocks) public numberOfUserCreatedLocks;

    /// @notice The number of user's currently active locks created by Flox contributors
    mapping(address user => uint8 numberOfLocks) public numberOfFloxContributorCreatedLocks;

    /// @notice The next lock ID to use for a given user. user -> next ID
    mapping(address user => uint256 nextId) public nextId;

    // TODO: Check numLocks = 0 wrong assertions and weird scenarios
    /// @notice The number of locks a user has
    mapping(address user => uint128 numLocks) public numLocks;

    /// @notice The current epoch you are in.
    uint256 public epoch;

    /// @notice The contract's Point information at a given epoch. epoch -> Point
    mapping(uint256 epoch => Point) public pointHistory;

    /// @notice A user's Point information at a given lock id and epoch. user -> ID -> epoch -> Point
    mapping(address user => mapping(uint256 id => mapping(uint256 epoch => Point point))) public userPointHistory;

    /// @notice A user's epoch for a given lock id. user address -> ID -> user's epoch
    mapping(address user => mapping(uint256 id => uint256 epoch)) public userPointEpoch;

    /// @notice Slope changes at a given time. time -> signed slope change
    mapping(uint256 time => int128 slopeChange) public slopeChanges;

    /// @notice If the emergency unlock is active
    bool public emergencyUnlockActive;

    // ERC20 related
    string public name;
    string public symbol;
    string public version;
    uint256 public decimals;

    /// @notice Admin of this contract
    address public admin;

    /// @notice Future admin of this contract, if applicable
    address public futureAdmin;

    /// @notice If a given address is a Flox Contributor. contributor => isContributor
    mapping(address contributor => bool isContributor) public floxContributors;

    /// @dev reserve extra storage for future upgrades
    uint256[30] private __gap;

    // ==============================================================================
    // CONSTRUCTOR
    // ==============================================================================

    constructor() {}

    /**
     * @notice Initialize contract
     * @dev Same values are set to proxy and implementation.
     * @param _admin Initial admin of the smart contract
     * @param _tokenAddr `FPIS` token address
     * @param _name Token name
     * @param _symbol Token symbol
     * @param _version Contract version - required for Aragon compatibility
     */
    function initialize(
        address _admin,
        address _fpisAggregator,
        address _tokenAddr,
        address _fxs,
        address _veFxs,
        string memory _name,
        string memory _symbol,
        string memory _version
    ) public {
        // Safety checks - no validation on admin in case this is initialized without admin
        if (
            _tokenAddr == address(0) ||
            _fpisAggregator == address(0) ||
            _fxs == address(0) ||
            _veFxs == address(0) ||
            address(fpis) != address(0)
        ) {
            revert InitializeFailed();
        }

        admin = _admin;

        // Initialize the 0th pointHistory
        pointHistory[0].blk = block.number;
        pointHistory[0].ts = block.timestamp;
        pointHistory[0].fpisAmt = 0;

        // Initialize other variables
        name = _name;
        symbol = _symbol;
        version = _version;

        // Set up decimals
        uint256 _decimals = IERC20Metadata(_tokenAddr).decimals();
        if (_decimals > 255) revert DecimalsExceedMaximumValue();
        decimals = uint8(_decimals);

        // Set up other instances
        veFxs = IVestedFXS(_veFxs);
        fxs = IERC20Metadata(_fxs);
        fpisAggregator = _fpisAggregator;
        fpis = IERC20Metadata(_tokenAddr);
    }

    // ==============================================================================
    // PUBLIC/EXTERNAL VIEWS
    // ==============================================================================

    /**
     * The following ERC20/minime-compatible methods are not real balanceOf and supply!
     * They measure the weights for the purpose of voting, so they don't represent
     * real coins.
     * FRAX adds minimal 1-1 FPIS/lFPIS, as well as a voting multiplier
     */

    /**
     * @notice Get current voting power (lFPIS) of `_addr`. Uses all locks.
     * @dev If `emergencyUnlock` is active, the FPIS locked in all of the `_addr`'s locks is returned. If an external
     *  smart contract is using this function, make sure that it can handle this case.
     * @param _addr Address of the user
     * @return _balance Total voting power (lFPIS) of the user
     */
    function balanceOf(address _addr) public view returns (uint256 _balance) {
        return balanceOfAllLocksAtTime(_addr, block.timestamp);
    }

    /**
     * @notice Same as balanceOfAllLocksAtBlock for backwards compatibility. Measures the total voting power (lFPIS) of
     *  `_addr` at `_block`.
     * @dev If `emergencyUnlock` is active, the FPIS locked in all of the `_addr`'s locks is returned. If an external
     *  smart contract is using this function, make sure that it can handle this case.
     * @param _addr Address of the user
     * @param _block Block number at which to measure voting power
     * @return _balance Total voting power (lFPIS) of the user
     */
    function balanceOfAt(address _addr, uint256 _block) public view returns (uint256 _balance) {
        return balanceOfAllLocksAtBlock(_addr, _block);
    }

    /**
     * @notice Measure the total voting power (lFPIS) of `_addr` at `_block`.
     * @dev If `emergencyUnlock` is active, the FPIS locked in all of the `_addr`'s locks is returned. If an external
     *  smart contract is using this function, make sure that it can handle this case.
     * @param _addr Address of the user
     * @param _block Block number at which to measure voting power
     * @return _balance Total voting power (lFPIS) of the user
     */
    function balanceOfAllLocksAtBlock(address _addr, uint256 _block) public view returns (uint256 _balance) {
        // Get the total number of locks
        uint128 _numLocks = numLocks[_addr];

        // Loop through all of the locks
        for (uint128 i = 0; i < _numLocks; ) {
            _balance += balanceOfOneLockAtBlock(_addr, i, _block);

            unchecked {
                ++i;
            }
        }
    }

    /**
     * @notice Get voting power (lFPIS) of `_addr` at a specific time.
     * @dev If `emergencyUnlock` is active, the FPIS locked in all of the `_addr`'s locks is returned. If an external
     *  smart contract is using this function, make sure that it can handle this case.
     * @param _addr Address of the user
     * @param _timestamp Epoch time to return the voting power at
     * @return _balance Total voting power (lFPIS) of the user
     */
    function balanceOfAllLocksAtTime(address _addr, uint256 _timestamp) public view returns (uint256 _balance) {
        // Get the total number of locks
        uint128 _numLocks = numLocks[_addr];

        // Loop through all of the locks
        for (uint128 i = 0; i < _numLocks; ) {
            _balance += balanceOfOneLockAtTime(_addr, i, _timestamp);

            unchecked {
                ++i;
            }
        }
    }

    /**
     * @notice Measure voting power (lFPIS) of `addr`'s specific lock at block height `_block`
     * @dev If `emergencyUnlock` is active, the FPIS locked in the lock is returned. If an external smart contract is
     *  using this function, make sure that it can handle this case.
     * @param _addr User's wallet address
     * @param _lockIndex Index of the user's lock that is getting measured
     * @param _block Block to calculate the voting power at
     * @return _balance Total voting power (lFPIS) of the user
     */
    function balanceOfOneLockAtBlock(
        address _addr,
        uint128 _lockIndex,
        uint256 _block
    ) public view returns (uint256 _balance) {
        if (emergencyUnlockActive) {
            return uint256(uint128(locked[_addr][indicesToIds[_addr][_lockIndex]].amount));
        }
        if (_block > block.number) revert InvalidBlockNumber();

        uint256 lockId = indicesToIds[_addr][_lockIndex];

        // Binary search
        uint256 _min = 0;
        uint256 _max = userPointEpoch[_addr][lockId];
        for (uint256 i; i < 128; ) {
            // Will be always enough for 128-bit numbers
            if (_min >= _max) {
                break;
            }
            uint256 _mid = (_min + _max + 1) / 2;
            if (userPointHistory[_addr][lockId][_mid].blk <= _block) {
                _min = _mid;
            } else {
                _max = _mid - 1;
            }

            unchecked {
                ++i;
            }
        }

        Point memory upoint = userPointHistory[_addr][lockId][_min];

        uint256 maxEpoch = epoch;
        uint256 _epoch = findBlockEpoch(_block, maxEpoch);
        Point memory point0 = pointHistory[_epoch];
        uint256 dBlock = 0;
        uint256 dT = 0;
        if (_epoch < maxEpoch) {
            Point memory point1 = pointHistory[_epoch + 1];
            dBlock = point1.blk - point0.blk;
            dT = point1.ts - point0.ts;
        } else {
            dBlock = block.number - point0.blk;
            dT = block.timestamp - point0.ts;
        }
        uint256 blockTime = point0.ts;
        if (dBlock != 0) {
            blockTime += (dT * (_block - point0.blk)) / dBlock;
        }

        upoint.bias -= upoint.slope * int128(int256(blockTime - upoint.ts));

        // Check bias
        if (upoint.bias < int256((upoint.fpisAmt * VOTE_END_POWER_BASIS_POINTS_UINT256) / MAX_BASIS_POINTS_UINT256)) {
            _balance = ((upoint.fpisAmt * VOTE_END_POWER_BASIS_POINTS_UINT256) / MAX_BASIS_POINTS_UINT256);
        } else {
            _balance = uint256(uint128(upoint.bias));
        }
    }

    /**
     * @notice Find the latest epoch at a past timestamp
     * @param _addr User wallet address
     * @param _lockId ID of the user's lock that is getting measured
     * @param _ts The timestamp to check at
     * @return _min The latest user's epoch assume you traveled back in time to the timestamp
     */
    function findUserTimestampEpoch(address _addr, uint256 _lockId, uint256 _ts) public view returns (uint256 _min) {
        // Get the most current user's epoch (not the contract epoch)
        uint256 _max = userPointEpoch[_addr][_lockId];

        // Find the latest epoch as of the time _ts
        for (uint256 i; i < 128; ) {
            if (_min >= _max) {
                break;
            }
            uint256 mid = (_min + _max + 1) / 2;
            if (userPointHistory[_addr][_lockId][mid].ts <= _ts) {
                _min = mid;
            } else {
                _max = mid - 1;
            }

            unchecked {
                ++i;
            }
        }
        return _min;
    }

    /**
     * @notice Get the voting power (lFPIS) for `addr`'s specific lock at the specified time
     * @dev If `emergencyUnlock` is active, the FPIS locked in the lock is returned. If an external smart contract is
     *  using this function, make sure that it can handle this case.
     * @param _addr User wallet address
     * @param _lockIndex Index of the user's lock that is getting measured
     * @param _timestamp Epoch time to return voting power at
     * @return _balance Total voting power (lFPIS) of the user
     */
    function balanceOfOneLockAtTime(
        address _addr,
        uint128 _lockIndex,
        uint256 _timestamp
    ) public view returns (uint256 _balance) {
        if (emergencyUnlockActive) {
            return uint256(uint128(locked[_addr][indicesToIds[_addr][_lockIndex]].amount));
        }

        _timestamp = _timestamp == 0 ? block.timestamp : _timestamp; // Default to current timestamp if _timestamp is 0
        uint256 _lockId = indicesToIds[_addr][_lockIndex];
        // uint256 _epoch = userPointEpoch[_addr][_lockId];
        uint256 _epoch = findUserTimestampEpoch(_addr, _lockId, _timestamp);

        // if (_epoch == 0 || locked[_addr][_lockId].end == 0) {
        //     return 0;
        // } else {
        if (_epoch == 0) {
            return 0;
        } else {
            // Yearn Fix: https://etherscan.io/address/0x90c1f9220d90d3966fbee24045edd73e1d588ad5#code
            // Extra Finance: https://optimistic.etherscan.io/address/0xe0bec4f45aef64cec9dcb9010d4beffb13e91466#code
            // Point memory lastPoint = userPointHistory[_addr][_lockId][_epoch];
            Point memory lastPoint;
            // {
            //     uint256 _min = 0;
            //     uint256 _max = userPointEpoch[_addr][_lockId];
            //     for (uint256 i; i < 128; ) {
            //         // Will be always enough for 128-bit numbers
            //         if (_min >= _max) {
            //             break;
            //         }
            //         uint256 _mid = (_min + _max + 1) / 2;
            //         if (userPointHistory[_addr][_lockId][_mid].ts <= _timestamp) {
            //             _min = _mid;
            //         } else {
            //             _max = _mid - 1;
            //         }

            //         unchecked {
            //             ++i;
            //         }
            //     }
            //     lastPoint = userPointHistory[_addr][_lockId][_min];
            lastPoint = userPointHistory[_addr][_lockId][_epoch];
            // }

            lastPoint.bias -= lastPoint.slope * int128(uint128(_timestamp - lastPoint.ts));
            if (lastPoint.bias < 0) {
                lastPoint.bias = 0;
            }

            _balance = uint256(uint128(lastPoint.bias)); // Original from veCRV
            if (_balance < (lastPoint.fpisAmt * VOTE_END_POWER_BASIS_POINTS_UINT256) / MAX_BASIS_POINTS_UINT256) {
                _balance = (lastPoint.fpisAmt * VOTE_END_POWER_BASIS_POINTS_UINT256) / MAX_BASIS_POINTS_UINT256;
            }
        }
    }

    /**
     * @notice Get the total amount of FPIS locked for a user
     * @param _addr User account address
     * @return _balanceOfLockedFpis The total amount of FPIS locked for the user
     */
    function balanceOfLockedFxs(address _addr) public view returns (uint256 _balanceOfLockedFpis) {
        uint128 _numLocks = numLocks[_addr];

        for (uint128 i = 0; i < _numLocks; ) {
            _balanceOfLockedFpis += uint256(uint128(locked[_addr][indicesToIds[_addr][i]].amount));

            unchecked {
                ++i;
            }
        }
    }

    /**
     * @notice Binary search to estimate timestamp for block number
     * @param _block Block to find
     * @param _maxEpoch Don't go beyond this epoch
     * @return Approximate timestamp for block
     */
    function findBlockEpoch(uint256 _block, uint256 _maxEpoch) public view returns (uint256) {
        // Binary search
        uint256 _min = 0;
        uint256 _max = _maxEpoch;
        uint256 _mid;
        for (uint256 i; i < 128; ) {
            // Will be always enough for 128-bit numbers
            if (_min >= _max) {
                break;
            }
            _mid = (_min + _max + 1) / 2;
            if (pointHistory[_mid].blk <= _block) {
                _min = _mid;
            } else {
                _max = _mid - 1;
            }

            unchecked {
                ++i;
            }
        }
        return _min;
    }

    /**
     * @notice Get the earliest and latest timestamps createLock can use
     * @return _earliestLockEnd Earliest timestamp
     * @return _latestLockEnd Latest timestamp
     * @dev The truncation in these operations is desired
     */
    function getCreateLockTsBounds() external view returns (uint128 _earliestLockEnd, uint128 _latestLockEnd) {
        _earliestLockEnd = WEEK_UINT128 + ((uint128(block.timestamp) / WEEK_UINT128) * WEEK_UINT128); // Cannot be in the current epoch week
        // _latestLockEnd = (WEEK_UINT128 * (uint128(block.timestamp) + uint128(MAXTIME_UINT256))) / WEEK_UINT128;
        _latestLockEnd = ((uint128(block.timestamp) + uint128(MAXTIME_UINT256)) / WEEK_UINT128) * WEEK_UINT128;
    }

    /**
     * @notice Get the earliest and latest timestamps increaseUnlockTime can use
     * @dev If this is called in the first week after the lock is created and if the lock duration is for maximum time,
     *  the returned `_latestLockEnd` will be the same as the lock's end time. This will cause the extension of the lock
     *  to revert. If a smart contract is using this function, make sure that it can handle this case.
     * @return _earliestLockEnd Earliest timestamp
     * @return _latestLockEnd Latest timestamp
     * @dev The truncation in these operations is desired
     */
    function getIncreaseUnlockTimeTsBounds(
        address _user,
        uint256 _id
    ) external view returns (uint128 _earliestLockEnd, uint128 _latestLockEnd) {
        // Calculate the earliest end (current end + leftover time to get into next epoch week)
        _earliestLockEnd = WEEK_UINT128 + ((locked[_user][_id].end / WEEK_UINT128) * WEEK_UINT128); // Cannot be in the current epoch week

        // Calculate the latest end (same as getCreateLockTsBounds result)
        _latestLockEnd = (WEEK_UINT128 * (uint128(block.timestamp) + uint128(MAXTIME_UINT256))) / WEEK_UINT128;

        // Corner case near expiry
        if (_earliestLockEnd >= _latestLockEnd) _earliestLockEnd = _latestLockEnd;
    }

    /**
     * @return _lastPoint The most recent point for this specific lock index
     */
    function getLastGlobalPoint() external view returns (Point memory _lastPoint) {
        _lastPoint = pointHistory[epoch];
    }

    /**
     * @notice Get the user's Point for `_addr` at the specified epoch
     * @param _addr Address of the user wallet
     * @param _lockIndex Index of the user's lock that is getting measured
     * @param _uepoch The epoch of the user to get the point at
     * @return _lastPoint The most recent point for this specific lock index
     */
    function getUserPointAtEpoch(
        address _addr,
        uint128 _lockIndex,
        uint256 _uepoch
    ) external view returns (Point memory _lastPoint) {
        uint256 lockId = indicesToIds[_addr][_lockIndex];
        _lastPoint = userPointHistory[_addr][lockId][_uepoch];
    }

    /**
     * @notice Get the most recently recorded Point for `_addr`
     * @param _addr Address of the user wallet
     * @param _lockIndex Index of the user's lock that is getting measured
     * @return _lastPoint The most recent point for this specific lock index
     */
    function getLastUserPoint(address _addr, uint128 _lockIndex) external view returns (Point memory _lastPoint) {
        uint256 lockId = indicesToIds[_addr][_lockIndex];
        uint256 uepoch = userPointEpoch[_addr][lockId];
        _lastPoint = userPointHistory[_addr][lockId][uepoch];
    }

    /**
     * @notice Get the most recently recorded rate of voting power decrease for `_addr`
     * @param _addr Address of the user wallet
     * @param _lockIndex Index of the user's lock that is getting measured
     * @return Value of the slope
     */
    function getLastUserSlope(address _addr, uint128 _lockIndex) external view returns (int128) {
        uint256 lockId = indicesToIds[_addr][_lockIndex];
        uint256 uepoch = userPointEpoch[_addr][lockId];
        return userPointHistory[_addr][lockId][uepoch].slope;
    }

    /**
     * @notice Get locked amount and ending timestamp for a specific user and lock ID (not lock index). Same as locked()
     * @param _addr User address
     * @param _id User lock ID (not lock index)
     * @return _amount The amount locked
     * @return _end The timestamp when the lock expires/ends
     */
    function lockedById(address _addr, uint256 _id) public view returns (int128 _amount, uint128 _end) {
        LockedBalance memory _lockInfo = locked[_addr][_id];
        _amount = _lockInfo.amount;
        _end = _lockInfo.end;
    }

    /**
     * @notice Get locked amount and ending timestamp for a specific user and lock index (not lock ID)
     * @param _addr User address
     * @param _index User lock index (not lock ID)
     * @return _amount The amount locked
     * @return _end The timestamp when the lock expires/ends
     */
    function lockedByIndex(address _addr, uint128 _index) public view returns (int128 _amount, uint128 _end) {
        LockedBalance memory _lockInfo = locked[_addr][indicesToIds[_addr][_index]];
        _amount = _lockInfo.amount;
        _end = _lockInfo.end;
    }

    /**
     * @notice Same as lockedById but returns a LockedBalanceExtended struct. Will revert if the ID is not in use
     * @param _addr User address
     * @param _id User lock ID (not lock index)
     * @return _extendedLockInfo The LockedBalanceExtended
     */
    function lockedByIdExtended(
        address _addr,
        uint256 _id
    ) public view returns (LockedBalanceExtended memory _extendedLockInfo) {
        LockedBalance memory _lockInfo = locked[_addr][_id];
        _extendedLockInfo.id = _id;
        _extendedLockInfo.index = getLockIndexById(_addr, _id);
        _extendedLockInfo.amount = _lockInfo.amount;
        _extendedLockInfo.end = _lockInfo.end;
    }

    /**
     * @notice Get timestamp when `_addr`'s lock finishes
     * @dev If the emergency unlock is active, the current timestamp is returned. If an external smart contract is using
     *  this function, make sure that it can handle this case.
     * @param _addr User wallet
     * @param _index User lock index
     * @return Epoch time of the lock end
     */
    function lockedEnd(address _addr, uint128 _index) external view returns (uint256) {
        if (emergencyUnlockActive) {
            return block.timestamp;
        }

        uint256 lockId = indicesToIds[_addr][_index];
        return locked[_addr][lockId].end;
    }

    /**
     * @notice Get the lock index given a lock id. Reverts if the ID is not in use
     * @param _addr User address
     * @param _id User lock ID (not lock index)
     * @return _index The index of the lock
     */
    function getLockIndexById(address _addr, uint256 _id) public view returns (uint128 _index) {
        // Get the lock ID info
        LockIdIdxInfo memory _info = idsToIndices[_addr][_id];
        if (!_info.isInUse) revert LockIDNotInUse();

        // Set the index to return
        _index = _info.index;
    }

    /**
     * @notice Calculate total voting power at some point in the past
     * @dev If `emergencyUnlock` is active, the total FPIS supply is returned. If an external smart contract is using
     *  this function, make sure that it can handle this case.
     * @param _point The point (bias/slope) to start search from
     * @param _t Time to calculate the total voting power at
     * @return Total voting power at that time
     */
    function supplyAt(Point memory _point, uint256 _t) public view returns (uint256) {
        if (emergencyUnlockActive) {
            return totalFPISSupply();
        }

        Point memory lastPoint = _point;
        uint256 tI = (lastPoint.ts / WEEK_UINT256) * WEEK_UINT256;

        if (lastPoint.ts > _t) revert InvalidTimestamp();

        for (uint256 i; i < 255; ) {
            tI += WEEK_UINT256;
            int128 dSlope = 0;
            if (tI > _t) {
                tI = _t;
            } else {
                dSlope = slopeChanges[tI];
            }
            lastPoint.bias -= lastPoint.slope * int128(uint128(tI - lastPoint.ts));
            if (tI == _t) {
                break;
            }
            lastPoint.slope += dSlope;
            lastPoint.ts = tI;

            unchecked {
                ++i;
            }
        }

        if (lastPoint.bias < 0) {
            lastPoint.bias = 0;
        }
        uint256 weightedSupply = uint256(uint128(lastPoint.bias));
        if (weightedSupply < lastPoint.fpisAmt) {
            weightedSupply = lastPoint.fpisAmt;
        }

        return weightedSupply;
    }

    /**
     * @notice Calculates FPIS supply of lFPIS contract.
     * @dev Adheres to the ERC20 `totalSupply` interface.
     * @return Total FPIS supply
     */
    function totalFPISSupply() public view returns (uint256) {
        return fpis.balanceOf(address(this));
    }

    /**
     * @notice Calculate total FPIS at some point in the past
     * @param _block Block to calculate the total voting power at
     * @return Total FPIS supply at `_block`
     */
    function totalFPISSupplyAt(uint256 _block) external view returns (uint256) {
        if (_block > block.number) revert InvalidBlockNumber();

        uint256 targetEpoch = findBlockEpoch(_block, epoch);

        Point memory point = pointHistory[targetEpoch];
        return point.fpisAmt;
    }

    /**
     * @notice Calculate total voting power at the current time
     * @dev Adheres to the ERC20 `totalSupply` interface for Aragon compatibility
     * @return Total voting power
     */
    function totalSupply() external view returns (uint256) {
        return totalSupply(block.timestamp);
    }

    /**
     * @notice Calculate total voting power
     * @dev Adheres to the ERC20 `totalSupply` interface for Aragon compatibility
     * @dev If `emergencyUnlock` is active, the total FPIS supply is returned. If an external smart contract is using
     *  this function, make sure that it can handle this case.
     * @param _timestamp Time to calculate the total voting power at (default: block.timestamp)
     * @return Total voting power
     */
    function totalSupply(uint256 _timestamp) public view returns (uint256) {
        if (emergencyUnlockActive) {
            return totalFPISSupply();
        }

        _timestamp = _timestamp == 0 ? block.timestamp : _timestamp; // Default to current timestamp if t is 0

        uint256 _min = 0;
        uint256 _max = epoch;
        uint256 _mid;
        for (uint256 i; i < 128; ) {
            // Will be always enough for 128-bit numbers
            if (_min >= _max) {
                break;
            }
            _mid = (_min + _max + 1) / 2;
            if (pointHistory[_mid].ts <= _timestamp) {
                _min = _mid;
            } else {
                _max = _mid - 1;
            }

            unchecked {
                ++i;
            }
        }

        Point memory lastPoint = pointHistory[_min];
        return supplyAt(lastPoint, _timestamp);
    }

    /**
     * @notice Calculate total voting power at some point in the past
     * @dev If `emergencyUnlock` is active, the total FPIS supply is returned. If an external smart contract is using
     *  this function, make sure that it can handle this case.
     * @param _block Block to calculate the total voting power at
     * @return Total voting power at `_block`
     */
    function totalSupplyAt(uint256 _block) external view returns (uint256) {
        if (_block > block.number) revert InvalidBlockNumber();

        uint256 targetEpoch = findBlockEpoch(_block, epoch);

        Point memory point = pointHistory[targetEpoch];
        uint256 dt = 0;
        if (targetEpoch < epoch) {
            Point memory pointNext = pointHistory[targetEpoch + 1];
            if (point.blk != pointNext.blk) {
                dt = ((_block - point.blk) * (pointNext.ts - point.ts)) / (pointNext.blk - point.blk);
            }
        } else {
            if (point.blk != block.number) {
                dt = ((_block - point.blk) * (block.timestamp - point.ts)) / (block.number - point.blk);
            }
        }
        // Now dt contains info on how far are we beyond point
        return supplyAt(point, point.ts + dt);
    }

    /**
     * @notice Get the timestamp for checkpoint `_idx` for `_addr`
     * @param _addr User wallet address
     * @param _lockIndex Index of the user's lock that is getting measured
     * @param _idx User epoch number
     * @return Timestamp of the checkpoint
     */
    function userPointHistoryTs(address _addr, uint128 _lockIndex, uint256 _idx) external view returns (uint256) {
        uint256 lockId = indicesToIds[_addr][_lockIndex];
        return userPointHistory[_addr][lockId][_idx].ts;
    }

    // ==============================================================================
    // INTERNAL FUNCTIONS
    // ==============================================================================

    /**
     * @notice Record global and per-user data to checkpoint
     * @param _addr User's wallet address. No user checkpoint if 0x0
     * @param _oldLocked Previous locked amount / end lock time for the user
     * @param _newLocked New locked amount / end lock time for the user
     * @param _lockIndex Index of a lock being modified
     */
    function _checkpoint(
        address _addr,
        LockedBalance memory _oldLocked,
        LockedBalance memory _newLocked,
        uint128 _lockIndex
    ) internal {
        Point memory uOld = Point({ bias: 0, slope: 0, ts: 0, blk: 0, fpisAmt: 0 });
        Point memory uNew = Point({ bias: 0, slope: 0, ts: 0, blk: 0, fpisAmt: 0 });
        int128 oldGlobalDslope;
        int128 newGlobalDslope;
        uint256 _epoch = epoch;

        if (_addr != address(0)) {
            // Calculate slopes and biases
            // Kept at zero when they have to

            if (_oldLocked.end > block.timestamp && _oldLocked.amount > 0) {
                uOld.slope =
                    (_oldLocked.amount * VOTE_WEIGHT_MULTIPLIER_INT128) /
                    MAXTIME_INT128 /
                    MAX_BASIS_POINTS_INT128;
                // @dev: Cannot overflow as _newLocked maximum cannot exceed 4 years.
                uOld.bias =
                    (_oldLocked.amount * VOTE_END_POWER_BASIS_POINTS_INT128) /
                    MAX_BASIS_POINTS_INT128 +
                    uOld.slope *
                    int128(uint128(_oldLocked.end - block.timestamp));
            }

            if (_newLocked.end > block.timestamp && _newLocked.amount > 0) {
                uNew.slope =
                    (_newLocked.amount * VOTE_WEIGHT_MULTIPLIER_INT128) /
                    MAXTIME_INT128 /
                    MAX_BASIS_POINTS_INT128;
                // @dev: Cannot overflow as _newLocked maximum cannot exceed 4 years.
                uNew.bias =
                    (_newLocked.amount * VOTE_END_POWER_BASIS_POINTS_INT128) /
                    MAX_BASIS_POINTS_INT128 +
                    uNew.slope *
                    int128(uint128(_newLocked.end - block.timestamp));
            }

            // Read values of scheduled changes in the slope
            // _oldLocked.end can be in the past and in the future
            // _newLocked.end can ONLY be in the FUTURE unless everything expired: than zeros
            oldGlobalDslope = slopeChanges[_oldLocked.end];
            if (_newLocked.end != 0) {
                if (_newLocked.end == _oldLocked.end) {
                    newGlobalDslope = oldGlobalDslope;
                } else {
                    newGlobalDslope = slopeChanges[_newLocked.end];
                }
            }
        }

        Point memory lastPoint = Point({ bias: 0, slope: 0, ts: block.timestamp, blk: block.number, fpisAmt: 0 });
        if (_epoch > 0) {
            lastPoint = pointHistory[_epoch];
        }
        uint128 lastCheckpoint = uint128(lastPoint.ts);

        // initialLastPoint is used for extrapolation to calculate block number
        // (approximately, for *At methods) and save them
        // as we cannot figure that out exactly from inside the contract
        Point memory initialLastPoint = Point({
            bias: lastPoint.bias,
            slope: lastPoint.slope,
            ts: lastPoint.ts,
            blk: lastPoint.blk,
            fpisAmt: lastPoint.fpisAmt
        });
        uint256 blockSlope = 0; // dblock/dt
        if (block.timestamp > lastPoint.ts) {
            blockSlope = (MULTIPLIER_UINT256 * (block.number - lastPoint.blk)) / (block.timestamp - lastCheckpoint);
        }
        // If the last point is already recorded in this block, slope=0
        // But that's ok b/c we know the block in such case

        // Go over weeks to fill history and calculate what the current point is
        lastPoint = _fillHistoryAndCalculateCurrentPoint(
            lastCheckpoint,
            lastPoint,
            initialLastPoint,
            blockSlope,
            _epoch
        );
        // Now pointHistory is filled until t=now

        if (_addr != address(0)) {
            // If the last point was in this block, the slope change has been applied already
            // But in such case we have 0 slope(s)
            lastPoint.slope += (uNew.slope - uOld.slope);
            lastPoint.bias += (uNew.bias - uOld.bias);

            if (_newLocked.amount > _oldLocked.amount) {
                lastPoint.fpisAmt += uint256(uint128(_newLocked.amount - _oldLocked.amount));
            }
            if (_newLocked.amount < _oldLocked.amount) {
                lastPoint.fpisAmt -= uint256(uint128(_oldLocked.amount - _newLocked.amount));

                // if (_newLocked.amount == 0 && !emergencyUnlockActive) {
                if (_newLocked.amount == 0 && _oldLocked.end <= block.timestamp) {
                    lastPoint.bias -= _oldLocked.amount;
                }
            }

            if (lastPoint.slope < 0) {
                lastPoint.slope = 0;
            }
            if (lastPoint.bias < 0) {
                lastPoint.bias = 0;
            }
        }

        // Record the changed point into history
        pointHistory[epoch] = lastPoint;

        if (_addr != address(0)) {
            // Schedule the slope changes (slope is going down)
            // We subtract new_user_slope from [_newLocked.end]
            // and add old_user_slope to [_oldLocked.end]
            if (_oldLocked.end > block.timestamp) {
                // old_dslope was <something> - uOld.slope, so we cancel that
                oldGlobalDslope += uOld.slope;
                if (_newLocked.end == _oldLocked.end) {
                    oldGlobalDslope -= uNew.slope; // It was a new deposit, not an extension
                }
                slopeChanges[_oldLocked.end] = oldGlobalDslope;
            }

            if (_newLocked.end > block.timestamp) {
                if (_newLocked.end > _oldLocked.end) {
                    newGlobalDslope -= uNew.slope; // old slope disappeared at this point
                    slopeChanges[_newLocked.end] = newGlobalDslope;
                } // The alternative is already recorded in the old_dslope
            }

            // Now handle every user
            _fillUserPointHistory(_addr, uNew, _lockIndex);
        }
    }

    /**
     * @notice Deposit `_value` tokens for `_addr` and add to the lock
     * @dev Anyone (even a smart contract) can deposit for someone else, but cannot extend their locktime and deposit for a brand new user
     * @dev WARNING: Since the `_value` is of `uint256` type and the `amount` in `LockedBalance` is of `int128` type,
     *  there is a risk of overflow. This does not impact lFPIS as the maximum supply of FPIS is 100M, but it could
     *  provide a risk for protocols forking this smart contract if their maximum supply is higher than maximum value of
     *  `int128`.
     * @param _addr User's wallet address
     * @param _value Amount to add to user's lock
     * @param _unlockTime Unix timestamp of when the lock expires
     * @param _lockedBalance The user's current locked balance
     * @param _depositType The type of deposit being made
     * @param _lockIdx The index of the user's lock that the deposit is being made to
     */
    function _depositFor(
        address _addr,
        uint256 _value,
        uint128 _unlockTime,
        LockedBalance memory _lockedBalance,
        uint128 _depositType,
        uint128 _lockIdx
    ) internal {
        // Revert if you are in an emergency
        if (emergencyUnlockActive) revert EmergencyUnlockActive();

        // Pull the tokens before modifying state
        require(fpis.transferFrom(msg.sender, address(this), _value));

        LockedBalance memory oldLocked = _lockedBalance;
        uint256 supplyBefore = supply;

        LockedBalance memory newLocked = LockedBalance({ amount: oldLocked.amount, end: oldLocked.end });

        supply = supplyBefore + _value;
        // Adding to existing lock, or if a lock is expired - creating a new one
        // WARNING: If you are forking this smart contract, make sure that the downcast from uint256 to uint128, and to
        //  int128, is safe
        newLocked.amount += int128(uint128(_value));
        if (_unlockTime != 0) {
            newLocked.end = _unlockTime;
        }
        locked[_addr][indicesToIds[_addr][_lockIdx]] = newLocked;

        // Possibilities:
        // Both oldLocked.end could be current or expired (>/< block.timestamp)
        // value == 0 (extend lock) or value > 0 (add to lock or extend lock)
        // _locked.end > block.timestamp (always)
        _checkpoint(_addr, oldLocked, newLocked, _lockIdx);

        emit Deposit(_addr, msg.sender, newLocked.end, _value, _depositType, block.timestamp);
        emit Supply(supplyBefore, supplyBefore + _value);
    }

    /**
     * @notice Go over weeks to fill history and calculate what the current point is
     * @param _lastCheckpoint Timestamp of the last checkpoint
     * @param _lastPoint Last point object
     * @param _initialLastPoint Initial last point object
     * @param _blockSlope Block slope
     * @param _epoch Epoch
     * @return The latest `Point` object
     */
    function _fillHistoryAndCalculateCurrentPoint(
        uint128 _lastCheckpoint,
        Point memory _lastPoint,
        Point memory _initialLastPoint,
        uint256 _blockSlope,
        uint256 _epoch
    ) private returns (Point memory) {
        uint128 tI = uint128((uint256(_lastCheckpoint) / WEEK_UINT256) * WEEK_UINT256);
        for (uint256 i; i < 255; ) {
            tI += WEEK_UINT128;
            int128 dSlope = 0;

            // Ensure that tI does not exceed the current block timestamp
            if (uint256(tI) > block.timestamp) {
                tI = uint128(block.timestamp);
            } else {
                dSlope = slopeChanges[tI];
            }

            _lastPoint.bias -= _lastPoint.slope * int128(tI - _lastCheckpoint);
            _lastPoint.slope += dSlope;

            // Ensure non-negativity of bias and slope
            if (_lastPoint.bias < 0) {
                _lastPoint.bias = 0;
            }
            if (_lastPoint.slope < 0) {
                _lastPoint.slope = 0;
            }

            _lastCheckpoint = tI;
            _lastPoint.ts = tI;

            _lastPoint.blk =
                _initialLastPoint.blk +
                (uint128(_blockSlope) * (tI - _initialLastPoint.ts)) /
                MULTIPLIER_UINT256;

            // TODO: does _epoch get incremented every single time checkpoint is called, or some other weird math?
            _epoch += 1;

            if (tI == uint128(block.timestamp)) {
                _lastPoint.blk = block.number;
                break;
            } else {
                // Store the point in history
                pointHistory[_epoch] = _lastPoint;
            }

            unchecked {
                ++i;
            }
        }

        epoch = _epoch;
        return _lastPoint;
    }

    /**
     * @notice Fill user point history
     * @param _addr User's wallet address
     * @param _point Latest user's point
     * @param _lockIndex Index of a lock being modified
     */
    function _fillUserPointHistory(address _addr, Point memory _point, uint128 _lockIndex) internal {
        uint256 lockId = indicesToIds[_addr][_lockIndex];
        uint256 userEpoch = userPointEpoch[_addr][lockId] + 1;

        userPointEpoch[_addr][lockId] = userEpoch;
        _point.ts = block.timestamp;
        _point.blk = block.number;
        _point.fpisAmt = uint256(uint128(locked[_addr][lockId].amount));
        userPointHistory[_addr][lockId][userEpoch] = _point;
    }

    /**
     * @notice Withdraw all tokens for `msg.sender`'s lock with the given `_lockIndex`
     * @dev Only possible if the lock has expired or if the emergency unlock is active
     * @param _staker The user address being withdrawn.
     * @param _recipient The recipient of the withdrawn tokens.
     * @param _lockIndex Index of the user's lock that is getting withdrawn
     * @return _value How much FPIS was withdrawn
     */
    function _withdraw(
        address _staker,
        address _recipient,
        uint128 _lockIndex
    ) internal nonReentrant returns (uint256 _value) {
        // Revert if it would be an array out-of-bounds
        if (_lockIndex >= numLocks[_staker]) revert InvalidLockIndex();

        // Revert if paused
        if (isPaused) revert OperationIsPaused();

        // Get old lock information
        uint256 lockId = indicesToIds[_staker][_lockIndex];
        LockedBalance memory oldLocked = locked[_staker][lockId];

        // Revert if the lock is not expired yet, unless you are in an emergency unlock
        if ((uint128(block.timestamp) < oldLocked.end) && !emergencyUnlockActive) {
            revert LockDidNotExpire();
        }

        // Instantiate new lock info
        _value = uint256(uint128(oldLocked.amount));
        LockedBalance memory newLocked = LockedBalance({ amount: 0, end: 0 });

        // oldLocked can have either expired <= timestamp or zero end
        // newLocked has only 0 end
        // Both can have >= 0 amount
        _checkpoint(_staker, oldLocked, newLocked, _lockIndex);

        /**
         * This effectively moves the last lock to the place of the one being withdrawn. Doing so allows for keeping all
         * of the active indices without the gaps and allows for easier tracking of locks and the data attached to them.
         * The shift is done by moving the ID of the last lock and the accompanying userPointHistory and userPointEpoch
         * to the index of the lock being withdrawn.
         */

        // Example (indicesToIds): [4, 2, 1, 10, 5]

        // Withdraw lock ID 2 at index 1
        // lockIndex = 1
        // lastLockId = 5, at index 4
        // -->>
        // indicesToIds becomes: [4, 5, 1, 10]
        // idsToIndices for ID 5 updated to index 1
        // idsToIndices for ID 2 deleted

        // Update indicesToIds
        uint256 lastLockId = indicesToIds[_staker][numLocks[_staker] - 1];
        indicesToIds[_staker][_lockIndex] = lastLockId;
        delete indicesToIds[_staker][numLocks[_staker] - 1];

        // Update idsToIndices
        idsToIndices[_staker][lastLockId].index = _lockIndex;
        idsToIndices[_staker][lastLockId].isInUse = true;
        delete idsToIndices[_staker][lockId]; // If lastLockId = lockId, like in the case of numLocks = 1, then isInUse will become false here too

        // Update numLocks
        numLocks[_staker] -= 1;

        // Update lock creator tracking
        if (!isLockCreatedByFloxContributor[_staker][lockId]) {
            // NOTE: Negation is used, so that if the user is also Flox contributor, the behaviour of lock creation tracking is inverse of the one in the `createLock`
            numberOfUserCreatedLocks[_staker] -= 1;
        } else {
            numberOfFloxContributorCreatedLocks[_staker] -= 1;
        }

        uint256 supplyBefore = supply;
        supply = supplyBefore - _value;

        require(fpis.transfer(_recipient, _value), "Transfer failed");

        // Global checkpoint if the emergency unlock is active
        if (emergencyUnlockActive) {
            _checkpoint(address(0), LockedBalance(0, 0), LockedBalance(0, 0), 2 ** 128 - 1);
        }

        emit Withdraw(_staker, _recipient, _value, block.timestamp);
        emit Supply(supplyBefore, supply);
    }

    // ==============================================================================
    // PUBLIC/EXTERNAL MUTABLE FUNCTIONS
    // ==============================================================================

    /**
     * @notice Record global data to checkpoint
     */
    function checkpoint() external {
        // Revert if the contract is paused
        if (isPaused) revert OperationIsPaused();

        // Revert if you are in an emergency
        if (emergencyUnlockActive) revert EmergencyUnlockActive();

        // Do the checkpoint
        _checkpoint(address(0), LockedBalance(0, 0), LockedBalance(0, 0), 2 ** 128 - 1);
    }

    /**
     * @notice Deposit `_value` tokens for `msg.sender` and lock until `_unlockTime`
     * @dev Users should only be allowed to create locks for themselves, the only exemption being Flow contributors that
     *  can create locks for other users.
     * @dev Flox contributors can only create 8 locks for themselves. Even if they are Flox contributors, they cannot
     *  create contributor locks for themselves.
     * @param _addr Address of the user for which the lock is being created
     * @param _value Amount to deposit
     * @param _unlockTime Epoch time when tokens unlock, rounded down to whole weeks
     * @return _index Index of the user's lock that was created
     * @return _newLockId ID of the user's lock that was created
     */
    function createLock(
        address _addr,
        uint256 _value,
        uint128 _unlockTime
    ) external nonReentrant returns (uint128 _index, uint256 _newLockId) {
        if (isPaused) revert OperationIsPaused();
        if (_value < MIN_LOCK_AMOUNT) revert MinLockAmount();
        if (msg.sender != _addr && !floxContributors[msg.sender]) revert NotLockingForSelfOrFloxContributor();
        if (msg.sender == _addr && numberOfUserCreatedLocks[_addr] >= MAX_USER_LOCKS) revert MaximumUserLocksReached();
        if (
            floxContributors[msg.sender] &&
            msg.sender != _addr &&
            numberOfFloxContributorCreatedLocks[_addr] >= MAX_CONTRIBUTOR_LOCKS
        ) {
            revert MaximumFloxContributorLocksReached();
        }

        nextId[_addr] += 1; // This is done so that the lock with ID 0 is always empty. It allows for checking if a lock exists by checking if the ID is 0
        _newLockId = nextId[_addr];

        uint128 unlockTime = (_unlockTime / WEEK_UINT128) * WEEK_UINT128; // Locktime is rounded down to weeks
        LockedBalance storage _locked = locked[_addr][_newLockId];

        if (uint256(unlockTime) <= block.timestamp) revert MustBeInAFutureEpochWeek();
        if (uint256(unlockTime) > block.timestamp + MAXTIME_UINT256) {
            revert LockCanOnlyBeUpToFourYears();
        }

        // Using numLocks[_addr] (original)
        {
            // Update indicesToIds
            indicesToIds[_addr][numLocks[_addr]] = _newLockId;

            // Update idsToIndices
            idsToIndices[_addr][_newLockId].id = _newLockId;
            idsToIndices[_addr][_newLockId].index = numLocks[_addr];
            idsToIndices[_addr][_newLockId].isInUse = true;
        }

        numLocks[_addr] += 1;

        // Update the information about lock creator
        if (msg.sender == _addr) {
            // NOTE: If the user is also Flox contributor, the lock will be counted as user's lock
            numberOfUserCreatedLocks[_addr] += 1;
        } else {
            numberOfFloxContributorCreatedLocks[_addr] += 1;
            isLockCreatedByFloxContributor[_addr][_newLockId] = true;
        }

        _depositFor(_addr, _value, unlockTime, _locked, CREATE_LOCK_TYPE, numLocks[_addr] - 1);

        return (numLocks[_addr] - 1, _newLockId);
    }

    /**
     * @notice Deposit `_value` tokens for `_addr` and add to the lock
     * @dev Anyone (even a smart contract) can deposit for someone else, but
     * cannot extend their locktime and deposit for a brand new user
     * @param _addr User's wallet address
     * @param _value Amount to add to user's lock
     * @param _lockIndex Index of the user's lock that the deposit is being made to
     */
    function depositFor(address _addr, uint256 _value, uint128 _lockIndex) external nonReentrant {
        if (isPaused) revert OperationIsPaused();
        if (_value < MIN_LOCK_AMOUNT) revert MinLockAmount();
        uint256 lockId = indicesToIds[_addr][_lockIndex];
        LockedBalance storage _locked = locked[_addr][lockId];

        if (_locked.amount <= 0) revert NoExistingLockFound();
        if (_locked.end <= block.timestamp) revert LockExpired(); // Withdraw instead

        _depositFor(_addr, _value, 0, locked[_addr][lockId], DEPOSIT_FOR_TYPE, _lockIndex);
    }

    /**
     * @notice Deposit `_value` additional tokens for `msg.sender`
     *         without modifying the unlock time
     * @param _value Amount of tokens to deposit and add to the lock
     * @param _lockIndex Index of the user's lock that getting the increased amount
     */
    function increaseAmount(uint256 _value, uint128 _lockIndex) external nonReentrant {
        if (isPaused) revert OperationIsPaused();
        if (_value < MIN_LOCK_AMOUNT) revert MinLockAmount();
        uint256 lockId = indicesToIds[msg.sender][_lockIndex];
        LockedBalance storage _locked = locked[msg.sender][lockId];

        if (_locked.amount <= 0) revert NoExistingLockFound();
        if (_locked.end <= uint128(block.timestamp)) revert LockExpired(); // Withdraw instead

        _depositFor(msg.sender, _value, 0, _locked, INCREASE_LOCK_AMOUNT, _lockIndex);
    }

    /**
     * @notice Extend the unlock time for `msg.sender` to `_unlockTime`
     * @param _unlockTime New epoch time for unlocking
     * @param _lockIndex Index of the user's lock that is getting the increased unlock time
     */
    function increaseUnlockTime(uint128 _unlockTime, uint128 _lockIndex) external nonReentrant {
        if (isPaused) revert OperationIsPaused();
        uint256 lockId = indicesToIds[msg.sender][_lockIndex];
        LockedBalance storage _locked = locked[msg.sender][lockId];
        uint128 unlockTime = (_unlockTime / WEEK_UINT128) * WEEK_UINT128; // Locktime is rounded down to weeks

        if (uint256(_locked.end) <= block.timestamp) revert LockExpired();
        if (_locked.amount <= 0) revert NoExistingLockFound(); // TODO: This might be unreachable because of the validation above
        if (unlockTime <= _locked.end) revert MustBeInAFutureEpochWeek();
        if (uint256(unlockTime) > block.timestamp + MAXTIME_UINT256) {
            revert LockCanOnlyBeUpToFourYears();
        }

        _depositFor(msg.sender, 0, unlockTime, _locked, INCREASE_UNLOCK_TIME, _lockIndex);
    }

    /**
     * @notice Withdraw all tokens for `msg.sender`'s lock with the given `_lockIndex`
     * @dev Only possible if the lock has expired or if the emergency unlock is active
     * @param _lockIndex Index of the user's lock that is getting withdrawn
     * @return _value How much FPIS was withdrawn
     */
    function withdraw(uint128 _lockIndex) external returns (uint256 _value) {
        _value = _withdraw(msg.sender, msg.sender, _lockIndex);
    }

    // ==============================================================================
    // MIGRATION ACTIONS
    // ==============================================================================

    /**
     * @notice Migrate the FPIS lock to Vested FXS lock
     * @dev This is only callable after 30th of March 2028
     * @dev If the `_createNewLock` is set to true, the `_veFxsLockIndex` will be ignored
     * @dev If the user already has the maximum number of contributor locks, they can only migrate to an existing veFXS
     *  lock; attempting to create a new lock in this case will result in transaction being reverted
     * @dev Only locks that haven't expired yet can be migrated
     * @param _createNewLock If true, the lFPIS lock will be migrated to a new veFXS lock with the same end time
     * @param _lFpisLockIndex Index of the user's lFPIS lock that is getting migrated
     * @param _veFxsLockIndex Index of the user's veFXS lock that should receive the migrated FXS (converted from FPIS)
     * @return _lockIndex Index of the user's veFXS lock that received the migrated assets
     */
    function convertToFXSAndLockInVeFXS(
        bool _createNewLock,
        uint128 _lFpisLockIndex,
        uint128 _veFxsLockIndex
    ) public returns (uint128 _lockIndex, uint256 _fxsGenerated) {
        // Revert if operations are paused
        if (isPaused) revert OperationIsPaused();

        // Make sure conversions are active
        _isFxsConversionActive();

        // Get the lock information
        uint256 lFpisLockId = indicesToIds[msg.sender][_lFpisLockIndex];
        LockedBalance storage lFpisLock = locked[msg.sender][lFpisLockId];

        // Revert if the lock is empty or expired
        if (lFpisLock.amount <= 0) revert NoExistingLockFound();
        if (lFpisLock.end <= block.timestamp) revert LockExpired();

        // Either create a new lock or add to an existing one
        if (_createNewLock) {
            // Create a new lock
            // =========================

            // Make sure you are able to create a new lock
            if (veFxs.numberOfFloxContributorCreatedLocks(msg.sender) >= veFxs.MAX_CONTRIBUTOR_LOCKS()) {
                revert MaximumVeFxsContributorLocksReached();
            }

            // Get the current end timestamp for the FPIS lock
            uint128 veFxsLockEnd = lFpisLock.end;

            // Withdraw the FPIS to the aggregator contract
            _withdrawActiveLock(msg.sender, fpisAggregator, _lFpisLockIndex);

            // Credit the staker with 1 FXS per 2.5 FPIS and create a new VestedFXS lock
            // Reuse the lock amount and ending timestamp
            (_lockIndex, _fxsGenerated) = _createVeFxsLock(
                msg.sender,
                uint256(uint128(lFpisLock.amount)),
                veFxsLockEnd,
                _lFpisLockIndex
            );
        } else {
            // Reuse an existing lock
            // =========================

            // Get the lock info
            uint256 veFxsLockId = veFxs.indicesToIds(msg.sender, _veFxsLockIndex);
            IveFXSStructs.LockedBalance memory veFxsLock;
            (veFxsLock.amount, veFxsLock.end) = veFxs.locked(msg.sender, veFxsLockId);

            // Cannot deposit into an existing VestedFXS lock that is shorter than the LockedFPIS lock
            if (veFxsLock.end < lFpisLock.end) {
                revert VeFxsLockCannotBeShorterThanLFpisLock(veFxsLock.end, lFpisLock.end);
            }

            // Withdraw the FPIS to the aggregator contract
            _withdrawActiveLock(msg.sender, fpisAggregator, _lFpisLockIndex);

            // Credit the staker with 1 FXS per 2.5 FPIS and depositing into an existing VestedFXS lock
            _fxsGenerated = _depositToVeFxsLock(
                msg.sender,
                uint256(uint128(lFpisLock.amount)),
                _veFxsLockIndex,
                _lFpisLockIndex
            );
        }
    }

    /**
     * @notice Migrate multiple FPIS locks to Vested FXS locks
     * @dev This is only callable after 30th of March 2028
     * @dev If the `_createNewLock` is set to true, the `_veFxsLockIndices` will be ignored
     * @dev If the user already has the maximum number of contributor locks, they can only migrate to an existing veFXS
     *  lock; attempting to create a new lock in this case will result in transaction being reverted
     * @dev Only locks that haven't expired yet can be migrated
     * @param _createNewLock If true, the lFPIS locks will be migrated to new veFXS locks with the same end time
     * @param _lFpisLockIndices Indices of the user's lFPIS locks that are getting migrated
     * @param _veFxsLockIndices Indices of the user's veFXS locks that should receive the migrated FXS (converted from FPIS)
     */
    function bulkConvertToFXSAndLockInVeFXS(
        bool _createNewLock,
        uint128[] calldata _lFpisLockIndices,
        uint128[] calldata _veFxsLockIndices
    ) external returns (uint128[] memory _createdVeFxsLockIndices, uint256[] memory _fxsGenerated) {
        // Revert if operations are paused
        if (isPaused) revert OperationIsPaused();

        // Make sure conversions are active
        _isFxsConversionActive();

        // Make sure the supplied params match length
        if (_lFpisLockIndices.length != _veFxsLockIndices.length) revert ArrayLengthMismatch();

        // Get the lock information
        uint256[] memory lockIds = new uint256[](_lFpisLockIndices.length);
        for (uint256 i; i < _lFpisLockIndices.length; ) {
            lockIds[i] = indicesToIds[msg.sender][_lFpisLockIndices[i]];

            unchecked {
                ++i;
            }
        }

        // Prep the lock index return array
        _createdVeFxsLockIndices = _createNewLock ? new uint128[](_lFpisLockIndices.length) : _veFxsLockIndices;

        // Prep the _fxsGenerated return array
        _fxsGenerated = _createNewLock
            ? new uint256[](_lFpisLockIndices.length)
            : new uint256[](_veFxsLockIndices.length);

        // Loop through and process the locks
        for (uint256 i; i < _lFpisLockIndices.length; ) {
            (_createdVeFxsLockIndices[i], _fxsGenerated[i]) = convertToFXSAndLockInVeFXS(
                _createNewLock,
                idsToIndices[msg.sender][lockIds[i]].index,
                _veFxsLockIndices[i]
            );

            unchecked {
                ++i;
            }
        }
    }

    /**
     * @notice Withdraw all tokens for caller's lock with the given `_lockIndex` as FXS
     * @dev This is only callable after 30th of March 2028
     * @dev In order to withdraw as FXS, the lock must be expired
     * @param _lockIndex Index of the user's lock that is getting withdrawn
     */
    function withdrawLockAsFxs(uint128 _lockIndex) public returns (uint256 _fpisAmount, uint256 _fxsAmount) {
        // Revert if operations are paused
        if (isPaused) revert OperationIsPaused();

        // Make sure conversions are active
        _isFxsConversionActive();

        // Withdraw the FPIS to the aggregator contract
        _fpisAmount = _withdraw(msg.sender, fpisAggregator, _lockIndex);

        // See how much FXS the user is entitled to at the 1 FXS per 2.5 FPIS conversion rate
        _fxsAmount = convertFpisToFxs(_fpisAmount);

        // Make sure this contract has enough FXS
        if (fxs.balanceOf(address(this)) < _fxsAmount) revert InsufficientFxsBalance();

        // Make sure the transfer was successful
        if (!fxs.transfer(msg.sender, _fxsAmount)) revert FxsTransferFailed();

        emit WithdrawAsFxs(msg.sender, msg.sender, _fpisAmount, _fxsAmount);
    }

    /**
     * @notice Withdraw all tokens for caller's locks with the given `_lockIndices` as FXS
     * @dev This is only callable after 30th of March 2028
     * @dev In order to withdraw as FXS, the lock must be expired
     * @param _lockIndices Indices of the user's locks that are getting withdrawn
     */
    function bulkWithdrawLockAsFxs(uint128[] memory _lockIndices) external {
        // Revert if operations are paused
        if (isPaused) revert OperationIsPaused();

        // Make sure conversions are active
        _isFxsConversionActive();

        // Get the lock information
        uint256[] memory lockIds = new uint256[](_lockIndices.length);

        // Loop and get the lock IDs
        for (uint256 i; i < _lockIndices.length; ) {
            lockIds[i] = indicesToIds[msg.sender][_lockIndices[i]];

            unchecked {
                ++i;
            }
        }

        // Loop through and withdraw the locks
        for (uint256 i; i < _lockIndices.length; ) {
            withdrawLockAsFxs(idsToIndices[msg.sender][lockIds[i]].index);

            unchecked {
                ++i;
            }
        }
    }

    /**
     * @notice Calculate the amount of FXS that can be redeemed for given FPIS amount
     * @param _fpisAmount Amount of FPIS to convert
     * @return _fxsAmount Amount of FXS that can be redeemed
     */
    function convertFpisToFxs(uint256 _fpisAmount) internal pure returns (uint256 _fxsAmount) {
        return (_fpisAmount * MAX_BASIS_POINTS_UINT256) / FPS_TO_FXS_CONVERSION_CONSTANT_BASIS_POINTS;
    }

    /**
     * @notice Check if the FPIS to FXS conversion is active
     * @dev This will revert before the 30th of March 2028
     */
    function _isFxsConversionActive() internal view {
        if (block.timestamp < FXS_CONVERSION_START_TIMESTAMP) {
            revert FxsConversionNotActive(block.timestamp, FXS_CONVERSION_START_TIMESTAMP);
        }
    }

    /**
     * @notice Withdraw all tokens for `_addr`'s lock with the given `_lockIndex` when it's still active
     * @dev This is used to bypass the end time check in the `_withdraw` function
     * @param _addr Address of the user for which the lock is being withdrawn
     * @param _recipient Address of the recipient of the withdrawn tokens
     * @param _lockIndex Index of the user's lock that is getting withdrawn
     */
    function _withdrawActiveLock(address _addr, address _recipient, uint128 _lockIndex) internal {
        // Get the lock ID
        uint256 lockId = indicesToIds[msg.sender][_lockIndex];

        // Set the lock end time to now
        locked[msg.sender][lockId].end = uint128(block.timestamp); // Downcasting uint256 to uint128 should be safe in this case, as the lock end times are always in uint128

        // Withdraw the lock
        _withdraw(_addr, _recipient, _lockIndex);
    }

    /**
     * @notice Create a new veFXS lock for the user from the FPIS lock
     * @param _user Address of the user for which the lock is being created
     * @param _fpisValue Amount of FPIS to convert
     * @param _unlockTime Unix timestamp of when the lock expires
     * @param _lFpisLockIndex Index of the user's lFPIS lock that is getting migrated
     * @return _newLockIndex Index of the user's veFXS lock that was created
     * @return _fxsGenerated The amount of FXS generated from the FPIS conversion
     */
    function _createVeFxsLock(
        address _user,
        uint256 _fpisValue,
        uint128 _unlockTime,
        uint128 _lFpisLockIndex
    ) internal returns (uint128 _newLockIndex, uint256 _fxsGenerated) {
        // Calculate the amount of FXS that can be converted from FPIS
        _fxsGenerated = convertFpisToFxs(_fpisValue);

        // Make sure this contract has enough FXS
        if (fxs.balanceOf(address(this)) < _fxsGenerated) revert InsufficientFxsBalance();

        // Create the VestedFXS lock
        (_newLockIndex, ) = veFxs.createLock(_user, _fxsGenerated, _unlockTime);

        emit ConvertLockToVeFxs(_user, _fpisValue, _fxsGenerated, _lFpisLockIndex, _newLockIndex);
    }

    /**
     * @notice Deposit the converted FPIS to the user's veFXS lock
     * @param _user Address of the user for which the lock is being created
     * @param _fpisValue Amount of FPIS to convert
     * @param _veFxsLockIndex Index of the user's veFXS lock that should receive the migrated FXS (converted from FPIS)
     * @param _lFpisLockIndex Index of the user's lFPIS lock that is getting migrated
     * @return _fxsGenerated The amount of FXS generated from the FPIS conversion
     */
    function _depositToVeFxsLock(
        address _user,
        uint256 _fpisValue,
        uint128 _veFxsLockIndex,
        uint128 _lFpisLockIndex
    ) internal returns (uint256 _fxsGenerated) {
        // Calculate the amount of FXS that can be converted from FPIS
        _fxsGenerated = convertFpisToFxs(_fpisValue);

        // Make sure this contract has enough FXS
        if (fxs.balanceOf(address(this)) < _fxsGenerated) revert InsufficientFxsBalance();

        // Deposit into an existing VestedFXS lock
        veFxs.depositFor(_user, _fxsGenerated, _veFxsLockIndex);

        emit ConvertLockToVeFxs(_user, _fpisValue, _fxsGenerated, _lFpisLockIndex, _veFxsLockIndex);
    }

    // ==============================================================================
    // ADMIN / PERMISSIONED ACTIONS
    // ==============================================================================

    /**
     * @notice Apply ownership transfer. Only callable by the future admin. Do commitTransferOwnership first
     */
    function acceptTransferOwnership() external {
        if (msg.sender != futureAdmin) revert FutureAdminOnly();
        address _admin = futureAdmin;
        if (_admin == address(0)) revert AdminNotSet(); // This is now unreachable, but I don't mind leaving it for the extremely remote chance that someone figures out a way to execute calls from 0x0
        admin = _admin;
        futureAdmin = address(0);
        emit ApplyOwnership(_admin);
    }

    /**
     * @notice Transfer ownership of VotingEscrow contract to `addr`
     * @param _addr Address to have ownership transferred to
     */
    function commitTransferOwnership(address _addr) external {
        if (msg.sender != admin) revert AdminOnly();
        futureAdmin = _addr;
        emit CommitOwnership(_addr);
    }

    /**
     * @notice Used to recover non-FPIS ERC20 tokens
     * @param _tokenAddr Address of the ERC20 token to recover
     * @param _amount Amount of tokens to recover
     */
    function recoverIERC20(address _tokenAddr, uint256 _amount) external {
        if (msg.sender != admin) revert AdminOnly();
        if (_tokenAddr == address(fpis)) revert UnableToRecoverFPIS(); // Use `activateEmergencyUnlock` instead and have users pull theirs out individually
        require(IERC20Metadata(_tokenAddr).transfer(admin, _amount));
    }

    /**
     * @notice Set the address of a Flox contributor
     * @param _floxContributor Address of a Flox contributor
     * @param _isFloxContributor Boolean indicating if the address is a Flox contributor or not
     */
    function setFloxContributor(address _floxContributor, bool _isFloxContributor) external {
        if (msg.sender != admin) revert AdminOnly();
        floxContributors[_floxContributor] = _isFloxContributor;

        emit FloxContributorUpdate(_floxContributor, _isFloxContributor);
    }

    /**
     * @notice Set the address of a FPISLockerUtils contract
     * @param _lFpisUtilsAddr Address of the FPISLockerUtils contract
     */
    function setLFPISUtils(address _lFpisUtilsAddr) external {
        if (msg.sender != admin) revert AdminOnly();

        // Set the utils contract
        lFpisUtils = FPISLockerUtils(_lFpisUtilsAddr);

        emit LFpisUtilsContractUpdated(_lFpisUtilsAddr);
    }

    /**
     * @notice Pause/Unpause critical functions
     */
    function toggleContractPause() external {
        if (msg.sender != admin) revert AdminOnly();
        isPaused = !isPaused;
        emit ContractPause(isPaused);
    }

    /**
     * @notice Used to allow early withdrawals of lFPIS back into FPIS, in case of an emergency. Only users themselves can pull out the FPIS, not the admin. Once toggled, cannot be undone as slope/bias math will be permanently off going forward.
     */
    function activateEmergencyUnlock() external {
        if (msg.sender != admin) revert AdminOnly();
        if (emergencyUnlockActive) revert EmergencyUnlockActive();
        emergencyUnlockActive = true;
        emit EmergencyUnlockActivated();
    }

    /**
     * @notice Update the allowance of FXS for veFXS to maximum value
     */
    function updateVeFXSAllowance() external {
        if (msg.sender != admin) revert AdminOnly();
        fxs.approve(address(veFxs), type(uint256).max);
    }

    // ==============================================================================
    // Errors
    // ==============================================================================

    /// @notice If the admin was never set
    error AdminNotSet();

    /// @notice Only the admin can call this function
    error AdminOnly();

    /// @notice If the array lengths do not match
    error ArrayLengthMismatch();

    /// @notice You cannot merge a lock with itself
    error CannotMergeLockWithItself();

    /// @notice Your veToken cannot have more than 255 decimals
    error DecimalsExceedMaximumValue();

    /// @notice If you are in an emergency unlock
    error EmergencyUnlockActive();

    /// @notice Only the future admin can call this function
    error FutureAdminOnly();

    /// @notice If the FXS conversion start timestamp has not been reached
    /// @param currentTimestamp The current timestamp
    /// @param conversionStartTimestamp The FXS conversion start timestamp
    error FxsConversionNotActive(uint256 currentTimestamp, uint256 conversionStartTimestamp);

    /// @notice If the transfer of FXS has failed
    error FxsTransferFailed();

    /// @notice Cannot initialize twice
    error InitializeFailed();

    /// @notice If the contract's balance is insufficient to create the desired lock
    error InsufficientFxsBalance();

    /// @notice When you are trying to balanceOfAt for a future block
    error InvalidBlockNumber();

    /// @notice When the lock index is invalid
    error InvalidLockIndex();

    /// @notice When the timestamp is invalid (attempting to backwards extrapolate supplyAt)
    error InvalidTimestamp();

    /// @notice When you are trying to lock for more than 4 years. See getCreateLockTsBounds()
    error LockCanOnlyBeUpToFourYears();

    /// @notice When you are trying to withdraw before the lock expires
    error LockDidNotExpire();

    /// @notice If you are trying to extend or add to an already expired lock. Withdraw that lock and create a new one instead
    error LockExpired();

    /// @notice When you call getLockIdByIndex when the ID supplied is not in use
    error LockIDNotInUse();

    /// @notice When the operation would cause too many locks to be produced by the Flox contributors
    error MaximumFloxContributorLocksReached();

    /// @notice When the operation would cause too many locks to be produced by the user
    error MaximumUserLocksReached();

    /// @notice When the operation would cause the number of veFXS locks to exceed the maximum allowed contributor locks
    error MaximumVeFxsContributorLocksReached();

    /// @notice When you are not locking enough
    error MinLockAmount();

    /// @notice The new lock end timestamp needs to at least be in the next epoch week. See getCreateLockTsBounds()
    error MustBeInAFutureEpochWeek();

    /// @notice No existing lock found when you are trying to depositFor or increaseAmount
    error NoExistingLockFound();

    /// @notice You can only create a lock for yourself, unless you are a Flox Contributor
    error NotLockingForSelfOrFloxContributor();

    /// @notice When the function is paused
    error OperationIsPaused();

    /// @notice Admin is specifically not allowed to recover FPIS. Users must pull it out themselves after activateEmergencyUnlock is called
    error UnableToRecoverFPIS();

    /// @notice When the veFXS lock is shorter than the lFPIS lock
    /// @param veFxsLockEnd The end time of the veFXS lock
    /// @param lFpisLockEnd The end time of the lFPIS lock
    error VeFxsLockCannotBeShorterThanLFpisLock(uint128 veFxsLockEnd, uint128 lFpisLockEnd);
}