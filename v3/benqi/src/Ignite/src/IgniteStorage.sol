// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

import "@openzeppelin/contracts-upgradeable/token/ERC20/IERC20Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/utils/structs/EnumerableSetUpgradeable.sol";

import "./IStakedAvax.sol";
import "./IPriceFeed.sol";


contract IgniteStorage {
    using EnumerableSetUpgradeable for EnumerableSetUpgradeable.AddressSet;

    /// @dev List of all supported ERC-20 payment options for the fee model
    EnumerableSetUpgradeable.AddressSet paymentTokens;

    /// @dev Chainlink price feeds for each payment option
    mapping(address => IPriceFeed) public priceFeeds;

    /// @dev Max Chainlink price feed response age for each token
    mapping(address => uint) public maxPriceAges;

    struct TokenDepositDetails {
        /// @dev AVAX deposit amount
        uint avaxAmount;

        /// @dev Address of the deposited ERC-20 token (optional)
        address token;

        /// @dev Amount of the deposited ERC-20 token (must be zero if no token address is given)
        uint tokenAmount;
    }

    struct Registration {
        /// @dev The user who registered the node ID in Ignite
        address registerer;

        /// @dev The node ID
        string nodeId;

        /// @dev The requested validation duration in seconds
        uint validationDuration;

        /// @dev Deprecated. Kept for storage layout consistency.
        bool __deprecated_feePaid;

        /// @dev AVAX and ERC-20 token deposit amounts
        TokenDepositDetails tokenDeposits;

        /// @dev Deprecated. Kept for storage layout consistency.
        uint __deprecated_rewardAmount;

        /// @dev Deprecated. Kept for storage layout consistency.
        uint __deprecated_qiSlashPercentage;

        /// @dev Deprecated. Kept for storage layout consistency.
        uint __deprecated_avaxSlashPercentage;

        /// @dev Deprecated. Kept for storage layout consistency.
        bool __deprecated_slashed;

        /// @dev Whether or not the registration has expired and the tokens can be withdrawn
        bool withdrawable;
    }

    /// @dev The sAVAX contract
    IStakedAvax public sAVAX;

    /// @dev The QI token contract
    IERC20Upgradeable public qi;

    /// @dev An array of all registrations
    Registration[] public registrations;

    /// @dev Node ID to registrations array index
    mapping(string => uint) public registrationIndicesByNodeId;

    /// @dev Registered node IDs per account
    mapping(address => string[]) public registeredNodeIdsByAccount;

    /// @dev Node ID to registeredNodeIdsByAccount index
    mapping(string => uint) public accountRegistrationIndicesByNodeId;

    /// @dev The total amount of AVAX that BENQI has subsidised for validation
    uint public totalSubsidisedAmount;

    /// @dev The maximum amount of AVAX that BENQI subsidises for validation
    uint public maximumSubsidisationAmount;

    /// @dev Deprecated. Kept for storage layout consistency.
    uint __deprecated_qiSlashPercentage;

    /// @dev Deprecated. Kept for storage layout consistency.
    uint __deprecated_avaxSlashPercentage;

    /// @dev Deprecated. Kept for storage layout consistency.
    uint __deprecated_minimumContractBalance;

    /// @dev Deprecated. Kept for storage layout consistency.
    uint __deprecated_minimumAvaxDeposit;

    /// @dev Deprecated. Kept for storage layout consistency.
    uint __deprecated_maximumAvaxDeposit;

    /// @dev Price multiplier used for fee payments in QI (in bps)
    uint public qiPriceMultiplier;

    /// @dev BLS proof of possession for registered nodes
    mapping(string => bytes) public blsProofOfPossessionByNodeId;
}
