// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

interface IBIFKN314Factory {
    function feeTo() external view returns (address);

    function feeRate() external view returns (uint256);

    function feeToSetter() external view returns (address);

    function feeDistributionThreshold() external view returns (uint256);

    function deployBIFKN314(
        string memory tokenName,
        string memory tokenSymbol,
        uint256 totalSupply,
        address owner_,
        uint256 tradingFee,
        uint256 maxWalletPercent,
        string memory metadataURI
    )
        external
        payable
        returns (address contractAddress, address liquidityTokenAddress);

    function deployBIFKN314WithSalt(
        string memory tokenName,
        string memory tokenSymbol,
        uint256 totalSupply,
        address owner_,
        uint256 tradingFee,
        uint256 maxWalletPercent,
        string memory metadataURI,
        bytes32 salt
    )
        external
        payable
        returns (address contractAddress, address liquidityTokenAddress);

    function getDeterministicAddress(
        bytes32 salt
    ) external view returns (address clone);

    function calculateDeterministicAddress(
        uint256 occur,
        address desiredPrefix,
        uint8 bytesDesired,
        bytes32 startSalt
    ) external view returns (bytes32 salt);

    event TokenCreated(
        address indexed deployer,
        string name,
        string symbol,
        address ammAddress,
        address lpAddress,
        uint256 allAMMLength
    );

    event TokenRemoved(
        address indexed deployer,
        string name,
        string symbol,
        address ammAddress,
        address lpAddress,
        uint256 allAMMLength
    );

    event FeeDistributed(address indexed feeTo, uint256 nativeAmount);

    error InvalidAddress();
    error NameMustNotBeEmpty();
    error SymbolMustNotBeEmpty();
    error NameTooLong();
    error SymbolTooLong();
    error OnlyFeeToSetter(address sender);
    error InvalidTradingFee();
    error SupplyMustBeGreaterThanZero();
    error InsufficientDeploymentFee();
    error InvalidFeeRate();
    error InvalidMaxWalletPercent();
    error DistributionFailed();
    error ImplementationAlreadyDeployed();
    error PreviousFactoryNotSet();
    error InvalidRange();
    error OutOfBounds();
}
