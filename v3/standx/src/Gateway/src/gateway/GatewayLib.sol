// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.28;

import {SignatureChecker} from "@openzeppelin/contracts/utils/cryptography/SignatureChecker.sol";
import {AccessControlUpgradeable} from "@openzeppelin-upgradeable/access/AccessControlUpgradeable.sol";
import {Initializable} from "@openzeppelin-upgradeable/proxy/utils/Initializable.sol";
import {PausableUpgradeable} from "@openzeppelin-upgradeable/utils/PausableUpgradeable.sol";
import {ReentrancyGuardUpgradeable} from "@openzeppelin-upgradeable/utils/ReentrancyGuardUpgradeable.sol";
import {UUPSUpgradeable} from "../proxy/UUPSUpgradeable.sol";
import {IERC20} from "../interface/IERC20.sol";
import {IGateway} from "../interface/IGateway.sol";
import {Settler} from "../Settler.sol";
import {UserLib, UserMap} from "../User.sol";
import {TokenLib, TokenMap} from "../Token.sol";
import {PriceOracle} from "../PriceOracle.sol";

library GatewayLib {
    error InvalidToken();
    error InvalidTokenDecimals();
    error InvalidAmount();
    error InputTooSmall();
    error TokenBalance();
    error TokenAllowance();
    error WithdrawListFull();
    error InvalidId();
    error Timeout();
    error Timein();
    error InvalidSignature();
    error InvalidUser();
    error InvalidChainId();
    error InvalidNonce();
    error NotClaimable();
    error UserDisabled();

    /// @notice Configuration state of the gateway
    /// @dev Holds all the critical addresses and parameters for the gateway
    /// @notice 2025-06-01: add highwayVault.
    struct State {
        Settler settler; // Settler contract for DUSD operations
        address vault; // Vault address for token storage
        uint256 userCnt; // Total number of users
        IERC20 dusdToken; // DUSD token address
        IERC20 usdtToken; // USDT token address
        IERC20 usdcToken; // USDC token address
        address offlineSigner; // Address authorized to sign yield claims
        address priceOracle; // Oracle for price feeds
        uint256 protocolFee; // Protocol fee in basis points
        address highwayVault; // Address of the highway vault
    }

    /// @notice Structure for signed yield claims
    /// @dev Used to verify and process yield distributions
    struct SignedYieldClaim {
        address user; // User claiming the yield
        uint256 amount; // Amount of yield to claim
        uint256 nonce; // Unique nonce for this claim
        uint256 batch; // Batch number for multiple claims
        uint256 timestamp; // Timestamp when the claim was signed
        uint256 chainid; // Chain ID for cross-chain security
        bytes signature; // Signature from authorized signer
    }
}
