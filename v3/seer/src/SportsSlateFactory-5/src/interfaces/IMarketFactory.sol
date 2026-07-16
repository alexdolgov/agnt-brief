// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

/// @notice Public API of Seer MarketFactory (deployed on each chain).
interface IMarketFactory {
    /// @param marketName Used only in categorical, multi categorical, and scalar markets.
    /// In multi scalar markets, the market name is formed using questionStart + outcomeType + questionEnd.
    /// @param outcomes The market outcomes; does not include the INVALID_RESULT outcome.
    /// @param questionStart Used to build the Reality question on multi scalar markets.
    /// @param questionEnd Used to build the Reality question on multi scalar markets.
    /// @param outcomeType Used to build the Reality question on multi scalar markets.
    /// @param parentOutcome Conditional outcome to use (optional).
    /// @param parentMarket Conditional market to use (optional). UNTRUSTED.
    /// @param category Reality question category.
    /// @param lang Reality question language.
    /// @param lowerBound Lower bound, only used for scalar markets.
    /// @param upperBound Upper bound, only used for scalar markets.
    /// @param minBond Min bond to use on Reality.
    /// @param openingTime Reality question opening time.
    /// @param tokenNames Name of the ERC20 tokens associated to each outcome.
    struct CreateMarketParams {
        string marketName;
        string[] outcomes;
        string questionStart;
        string questionEnd;
        string outcomeType;
        uint256 parentOutcome;
        address parentMarket;
        string category;
        string lang;
        uint256 lowerBound;
        uint256 upperBound;
        uint256 minBond;
        uint32 openingTime;
        string[] tokenNames;
    }

    event NewMarket(
        address indexed market,
        string marketName,
        address parentMarket,
        bytes32 conditionId,
        bytes32 questionId,
        bytes32[] questionsIds
    );

    function questionTimeout() external view returns (uint32);

    function arbitrator() external view returns (address);

    function realitio() external view returns (address);

    function wrapped1155Factory() external view returns (address);

    function conditionalTokens() external view returns (address);

    function collateralToken() external view returns (address);

    function realityProxy() external view returns (address);

    function market() external view returns (address);

    function markets(uint256 index) external view returns (address);

    function createCategoricalMarket(CreateMarketParams calldata params) external returns (address);

    function createMultiCategoricalMarket(CreateMarketParams calldata params) external returns (address);

    function createScalarMarket(CreateMarketParams calldata params) external returns (address);

    function createMultiScalarMarket(CreateMarketParams calldata params) external returns (address);

    function allMarkets() external view returns (address[] memory);

    function marketCount() external view returns (uint256);
}
