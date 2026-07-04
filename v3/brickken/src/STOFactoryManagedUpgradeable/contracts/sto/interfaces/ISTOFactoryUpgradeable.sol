/// SPDX-License-Identifier: MIT
pragma solidity <0.9.0;

interface ISTOFactoryUpgradeable {
    /// @dev Struct with tokenization config
    /// @param url URI for offchain records stored in IPFS referring to one specific tokenization
    /// @param name Name of the STOToken
    /// @param symbol Symbol of the STOToken
    /// @param supplyCap Cap on the supply of the STOToken, 0 if unlimited supply (unlimited up to type(uint224).max because of checkpoints feature)
    /// @param paymentToken Token used to denominate issuer's withdraw on succesfull tokenization
    /// @param paymentTokenOracle Chainlink oracle used to retrieve price of paymentToken
    /// @param paymentTokenOracleUnused explicitly set to true whenever paymentTokenOracle is allowed to be zero
    /// @param preMints Amounts of the STOToken to be minted to each initial holder
    /// @param initialHolders Wallets of the initial holders of the STOToken
    struct TokenizationConfig {
        string url;
        string name;
        string symbol;
        uint224 supplyCap;
        address paymentToken;
        address paymentTokenOracle;
        bool paymentTokenOracleUnused;
        uint256[] preMints;
        address[] initialHolders;
    }

    /// @dev Struct with Offchain Reporting config
    /// @param token Token used to pay tokenization fees
    /// @param tokenAmount Amount of token used to pay tokenization fees
    /// @param spender Wallet address of the fees payer
    /// @param issuer Wallet address of the issuer
    /// @param deadline Unix timestamp of the report signature expiration
    /// @param nonce nonce of the offchain reporter address
    /// @param signature Bytes resulting of the offchain report signature
    struct OffchainReport {
        address token;
        uint256 tokenAmount;
        address spender;
        address issuer;
        uint256 deadline;
        uint256 nonce;
        bytes signature;
    }

    /// @dev Struct with permit signature
    /// @param deadline Unix timestamp of the permit signature expiration
    /// @param signer address of the permit signer
    /// @param spender address of the spender
    /// @param amount amount of the permit signature
    /// @param v v of the permit signature
    /// @param r r of the permit signature
    /// @param s s of the permit signature
    struct PermitStruct {
        uint256 deadline;
        address signer;
        address spender;
        uint256 amount;
        uint8 v;
        bytes32 r;
        bytes32 s;
    }

    /// @dev Event emitted when a new STO is created
    /// @param id ID of the STO
    /// @param token smart contract address of the STOToken
    /// @param escrow smart contract address of the STOEscrow
    event NewTokenization(
        uint256 indexed id,
        address indexed token,
        address indexed escrow
    );

    /// @dev Event emitted when fees are charged for each new tokenization
    /// @param issuer wallet address of the issuer
    /// @param token token used to pay the fee, usually BKN
    /// @param amount Amount of fees charged
    event ChargeFee(address indexed issuer, address token, uint256 amount);

    function pauseFactory() external;

    /// @dev Method to unpause the factory. Only FACTORY_PAUSER_ROLE can call this function.
    function unpauseFactory() external;

    /// @dev Method to deploy a new tokenization (escrow + token).
    /// @param config Configuration of the token to be deployed
    /// @param offchainReport the offchain report struct
    /// @param permit the permit signature struct if any
    function newTokenization(
        TokenizationConfig calldata config,
        OffchainReport calldata offchainReport,
        PermitStruct calldata permit
    ) external;

    /// @dev Method to change configured parameters within the contract. Only DEFAULT_ADMIN_ROLE can call this function.
    /// @param vault this will change where fees are sent
    /// @param beaconToken this will change the beacon token used for new tokenizations
    /// @param beaconEscrow this will change the beacon escrow used for new tokenizations
    /// @param allowedEscrows escrows whose status must be changed in the PriceAndSwapManager
    /// @param allowedEscrowsStatuses statuses to be applied to the above escrows
    function changeConfig(
        address vault,
        address beaconToken,
        address beaconEscrow,
        address[] calldata allowedEscrows,
        bool[] calldata allowedEscrowsStatuses
    ) external;

    /// @dev Public method to calculate how much fees are going to be paid
    /// @param offchainReport offchain report
    /// @return amountToPay amount of tokens to be paid and signer address
    function getFees(
        OffchainReport calldata offchainReport
    ) external view returns (uint256 amountToPay, address signer);

    /// @dev get the implementation address behind the proxy
    /// @return the implementation address
    function getImplementation() external view returns (address);

    /// @dev get the nonce of the offchain price signer to be used
    /// @param owner the address of the price offchain signer
    /// @return the nonce to be used
    function nonces(address owner) external view returns (uint256);
}
