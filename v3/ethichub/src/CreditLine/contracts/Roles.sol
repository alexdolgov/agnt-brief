// SPDX-License-Identifier: GPLv3
pragma solidity ^0.8.24;

bytes32 constant DEFAULT_ADMIN_ROLE = bytes32(0);
bytes32 constant AUDITOR = keccak256("AUDITOR");
/*
 * TODO: This role should be set by AUDITOR through governance, the candidates should post their candidacy on the governance forum,
 * stake ETHIX, then pass a vote.
 * It should be revoked by ORIGINATOR if the candidate is not performing well, abusing power, etc
 */
bytes32 constant ORIGINATOR = keccak256("ORIGINATOR");
bytes32 constant TREASURY_MANAGER = keccak256("TREASURY_MANAGER");
// TODO: This role should be set creditline protocol constant params
bytes32 constant CREDITLINE_ADMIN = keccak256("CREDITLINE_ADMIN");
