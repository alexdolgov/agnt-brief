// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity 0.8.21;

library HyperpieConstants {
    //contracts
    bytes32 public constant HYPERPIE_STAKING = keccak256("HYPERPIE_STAKING");
    bytes32 public constant PRICE_PROVIDER = keccak256("PRICE_PROVIDER");
    bytes32 public constant HYPERPIE_WITHDRAW_MANAGER = keccak256("HYPERPIE_WITHDRAW_MANAGER");
    bytes32 public constant MHYPE_TOKEN = keccak256("MHYPE_TOKEN");
    bytes32 public constant FACTORY = keccak256("FACTORY");
    bytes32 public constant MEME_LAUNCHPAD = keccak256("MEME_LAUNCHPAD");
    bytes32 public constant HYPERPIE_ROUTER = keccak256("HYPERPIE_ROUTER");

    //Roles
    bytes32 public constant DEFAULT_ADMIN_ROLE = 0x00;
    bytes32 public constant MANAGER = keccak256("MANAGER");
    bytes32 public constant MINTER_ROLE = keccak256("MINTER_ROLE");
    bytes32 public constant BURNER_ROLE = keccak256("BURNER_ROLE");
    bytes32 public constant PAUSER_ROLE = keccak256("PAUSER_ROLE");
    bytes32 public constant ORACLE_ROLE = keccak256("ORACLE_ROLE");
    bytes32 public constant ORACLE_ADMIN_ROLE = keccak256("ORACLE_ADMIN_ROLE");
    bytes32 public constant PRICE_PROVIDER_ROLE = keccak256("PRICE_PROVIDER_ROLE");
    bytes32 public constant ALLOWED_BOT_ROLE = keccak256("ALLOWED_BOT_ROLE");
    bytes32 public constant FEE_MANAGER_ROLE = keccak256("FEE_MANAGER_ROLE");
    bytes32 public constant HYPERPIE_V2_META_CONFIG_ROLE = keccak256("HYPERPIE_V2_META_CONFIG_ROLE");

    address public constant PLATFORM_TOKEN_ADDRESS = 0x0000000000000000000000000000000000000000; // HYPERPIE Token
    address public constant WHYPE = 0x5555555555555555555555555555555555555555; // Wrapped HYPE
    bytes32 public constant HYPE_STAKE_DESTINTATION = keccak256("HYPE_STAKE_DESTINTATION");
    bytes32 public constant HYPERPIE_DELEGATOR = keccak256("HYPERPIE_DELEGATOR");
    bytes32 public constant HYPERPIE_FEE_DESTINATION = keccak256("HYPERPIE_FEE_DESTINATION");

    // HyperEVM L1 Read Precompile Addresses
    address public constant SPOT_BALANCE_PRECOMPILE = 0x0000000000000000000000000000000000000801;
    address public constant DELEGATOR_SUMMARY_PRECOMPILE = 0x0000000000000000000000000000000000000805;

    // HYPE Token ID on Hyperliquid
    uint64 public constant HYPE_TOKEN_ID = 150;
    bytes32 public constant LAUNCHPAD_FEE_DESTINATION = keccak256("MEME_LAUNCHPAD_FEE_DESTINATION");

    // For Native Restaking
    uint256 constant GWEI_TO_WEI = 1e9;

    uint256 public constant DENOMINATOR = 10_000;
    uint256 public constant MHYPE_FEE_DENOMINATOR = 1_000_000;
    uint256 public constant MHYPE_FEE_MAX_VALUE = 5_000; // Maximum ~0.5% inflation to prevent extreme inflation
    uint256 public constant ONE_WEEK = 7 days;
    uint256 public constant DECAY_RATE = 9900;

    // For DEX
    string public constant STABLE_PREFIX = "STABLE-";
    string public constant V2_PREFIX = "V2-";
    // FOR V2, SS FEE structure
    bytes32 public constant FEE_V2_STABLE_LP = keccak256("FEE_V2_STABLE_LP");
    bytes32 public constant FEE_TEAM_COLLECTOR = keccak256("FEE_TEAM_COLLECTOR");
    bytes32 public constant FEE_VEHPP_COLLECTOR = keccak256("FEE_VEHPP_COLLECTOR");
    bytes32 public constant FEE_POOL_CREATOR = keccak256("FEE_POOL_CREATOR");
    bytes32 public constant POOL_FEES_BEACON = keccak256("POOL_FEES_BEACON");

    uint256 public constant MEME_TOKEN_DECIMAL = 18;
}
