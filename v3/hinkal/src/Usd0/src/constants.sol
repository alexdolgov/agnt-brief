// SPDX-License-Identifier: Apache-2.0
pragma solidity 0.8.20;

bytes32 constant ADMIN = keccak256("ADMIN");
bytes32 constant DEFAULT_ADMIN_ROLE = 0x00;
bytes32 constant DAO_COLLATERAL = keccak256("DAO_COLLATERAL_CONTRACT");
bytes32 constant USD0_MINT = keccak256("USD0_MINT");
bytes32 constant USD0_BURN = keccak256("USD0_BURN");
bytes32 constant ALLOWLISTED = keccak256("ALLOWLISTED");
bytes32 constant ALLOWLISTED_ADMIN = keccak256("ALLOWLISTED_ADMIN");

/* Contracts */

bytes32 constant CONTRACT_REGISTRY_ACCESS = keccak256("CONTRACT_REGISTRY_ACCESS");
bytes32 constant CONTRACT_DAO_COLLATERAL = keccak256("CONTRACT_DAO_COLLATERAL");
bytes32 constant CONTRACT_TOKEN_MAPPING = keccak256("CONTRACT_TOKEN_MAPPING");
bytes32 constant CONTRACT_ORACLE = keccak256("CONTRACT_ORACLE");
bytes32 constant CONTRACT_TREASURY = keccak256("CONTRACT_TREASURY");

/* Contract tokens */
bytes32 constant CONTRACT_USD0 = keccak256("CONTRACT_USD0");

/* Constants */
uint256 constant SCALAR_ONE = 1e18;
uint256 constant SCALAR_TEN_KWEI = 10_000;
uint256 constant MAX_REDEEM_FEE = 2500;
uint256 constant MAX_CANCEL_FEE = 2500;
uint256 constant BASIS_POINT_BASE = 10_000;
uint64 constant ONE_WEEK = 604_800;
uint256 constant WAD_MINIMUM_RWA_CONSTRUCTOR = 10e18;
uint256 constant REDEEM_FEE = 10;

uint256 constant INITIAL_MAX_DEPEG_THRESHOLD = 100;

/* Maximum number of RWA tokens that can be associated with USD0 */
uint256 constant MAX_RWA_COUNT = 10;
