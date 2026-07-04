// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.34;

library BoolValueLib {
    error InvalidState();

    // ================ VALUE GET =====================

    function getPauseStatus(mapping(bytes32 => bool) storage map, address haContract) internal view returns (bool) {
        return map[_pauseStatusKey(haContract)];
    }

    // ==================== KEY COMPUTATION ============
    function _pauseStatusKey(address haContract) internal pure returns (bytes32) {
        // forge-lint: disable-next-line(asm-keccak256)
        return keccak256(abi.encode("PAUSE_STATUS", haContract));
    }

    function getFunctionDisabled(mapping(bytes32 => bool) storage map, address haContract, bytes4 selector)
        internal
        view
        returns (bool)
    {
        return map[_functionDisabledKey(haContract, selector)];
    }

    function _functionDisabledKey(address haContract, bytes4 selector) internal pure returns (bytes32) {
        // forge-lint: disable-next-line(asm-keccak256)
        return keccak256(abi.encode("FUNCTION_DISABLED", haContract, selector));
    }
}
