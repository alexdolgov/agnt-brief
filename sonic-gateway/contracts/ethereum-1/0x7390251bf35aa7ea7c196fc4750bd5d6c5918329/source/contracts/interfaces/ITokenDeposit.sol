// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.27;

/// Interface of a token deposit manageable (in case of the bridge death) by ExitAdministrator.
interface ITokenDeposit {
    function withdrawWhileDead(address recipient, address token, uint256 amount) external;
    function fetchDeadStatus() external returns (bool);
    function deadState() external view returns (bytes32);
    function proofVerifier() external view returns (address);
    function tokenPairs() external view returns (address);
}
