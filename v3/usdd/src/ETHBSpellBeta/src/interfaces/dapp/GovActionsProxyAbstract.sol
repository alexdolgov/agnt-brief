// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity >=0.5.12;

interface GovActionsProxyAbstract {
    function rely(address from, address to) external;
    function deny(address from, address to) external;
    function file(address who, bytes32 what, uint256 data) external;
    function file(address who, bytes32 what, address data) external;
    function file(address who, bytes32 ilk, bytes32 what, uint256 data) external;
    function file(address who, bytes32 ilk, bytes32 what, address data) external;
    function dripAndFile(address who, bytes32 what, uint256 data) external;
    function dripAndFile(address who, bytes32 ilk, bytes32 what, uint256 data) external;
    function cage(address end) external;
    function setAuthority(address pause, address newAuthority) external;
    function setDelay(address pause, uint256 newDelay) external;
    function setAuthorityAndDelay(address pause, address newAuthority, uint256 newDelay) external;
    function init(address who, bytes32 ilk) external;
    function customExec(address who, bytes calldata data) external;
    function execSpell(address who, bytes calldata data) external;
}