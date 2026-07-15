// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

/// @title IFactory - Interface for the Factory Contract
interface IFactory {
    // Structs

    /// @notice Struct containing parameters for creating a new index.
    struct IndexParams {
        string name;
        string symbol;
        uint16 swapFee;
        uint8 mintAndBurnFee;
        uint8 managerShareFee;
    }

    // Events

    /// @notice Emitted when a new index is created.
    /// @param index The address of the newly created index.
    /// @param manager The address of the manager who created the index.
    /// @param name The name of the index token.
    /// @param symbol The symbol of the index token.
    /// @param swapFee The swap fee percentage for the index.
    /// @param mintAndBurnFee The mint and burn fee percentage for the index.
    /// @param managerShareFee The manager's share fee percentage for the index.
    /// @param tokens The addresses of the tokens in the index.
    /// @param amounts The amounts of tokens provided during index creation.
    /// @param weights The denormalized weights of the tokens.
    /// @param initialSupply The initial supply of the index token.
    event IndexCreated(
        address indexed index,
        address indexed manager,
        string name,
        string symbol,
        uint16 swapFee,
        uint8 mintAndBurnFee,
        uint8 managerShareFee,
        address[] tokens,
        uint256[] amounts,
        uint256[] weights,
        uint256 initialSupply
    );

    // Errors

    /// @notice Triggered when a zero address is provided where it is not allowed.
    error Factory__ZeroAddress();

    /// @notice Triggered when an invalid number of tokens is provided.
    error Factory__InvalidTokens();

    /// @notice Triggered when the lengths of provided arrays do not match.
    error Factory__InvalidLengths();

    /// @notice Triggered when a weight is out of range.
    error Factory__WeightOutOfRange();

    /// @notice Triggered when a fee is out of range.
    error Factory__FeeOutOfRange();

    /// @notice Triggered when the reserve weight is not met.
    error Factory__NotAllowed();

    /// @notice Triggered when the total weight of tokens is not equal to max total weight.
    error Factory__InvalidTotalWeights();

    /// @notice Triggered when the fee token weight is invalid.
    error Factory__InvalidProtocolTokenWeight();

    /// @notice Triggered when the initial supply is too high.
    error Factory__InitialSupplyTooHigh();

    /// @notice Triggered when the initial supply is too low.
    error Factory__InitialSupplyTooLow();

    /// @notice Triggered when the tokens are not sorted.
    error Factory__UnsortedTokens();

    /// @notice Triggered when the protocolToken is used more than once.
    error Factory__DuplicatedProtocolToken();

    // View Functions - Immutable State

    /// @notice Retrieves the address of the Protocol token.
    /// @return The address of the Protocol token.
    function protocolToken() external view returns (address);

    // View Functions - Mutable State

    /// @notice Retrieves the address of a index at a specific index.
    /// @param index The index of the index in the indexes array.
    /// @return The address of the index.
    function indexes(uint256 index) external view returns (address);

    /// @notice Retrieves the total number of indexes created.
    /// @return The total number of indexes.
    function indexesLength() external view returns (uint256);

    /// @notice Retrieves a list of indexes starting from a specific index.
    /// @param _startIndex The starting index of the indexes array.
    /// @param _numOfIndexes The number of indexes to retrieve.
    /// @return _indexes An array containing the addresses of the indexes.
    /// @return _newIndex The new index after retrieval.
    function getIndexes(uint256 _startIndex, uint256 _numOfIndexes)
        external
        view
        returns (address[] memory _indexes, uint256 _newIndex);

    /// @notice Retrieves the tokens in an index.
    /// @param _index The address of the index.
    /// @return _tokens An array containing the addresses of the tokens.
    function getTokens(address _index)
        external
        view
        returns (address[] memory _tokens);

    /// @notice Retrieves the tokens and weights in an index.
    /// @param _index The address of the index.
    /// @return _tokens An array containing the addresses and weights of the tokens.
    function getTokensAndWeights(address _index)
        external
        view
        returns (address[] memory _tokens, uint256[] memory _weights);

    /// @notice Retrieves the balance of a token in an index.
    /// @param _index The address of the index.
    /// @param _token The address of the token.
    /// @return _balance The balance of the token.
    function getBalance(address _index, address _token)
        external
        view
        returns (uint256 _balance);

    /// @notice Retrieves the weight of a token in an index.
    /// @param _index The address of the index.
    /// @param _token The address of the token.
    /// @return _weight The weight of the token.
    function getTokenWeight(address _index, address _token)
        external
        view
        returns (uint256);

    // State-Changing Functions

    /// @notice Creates a new index with the specified parameters.
    /// @param _indexParams The parameters for the new index.
    /// @param _tokens The addresses of the tokens to include in the index.
    /// @param _amounts The amounts of each token to add to the index.
    /// @param _weights The denormalized weights for each token.
    /// @param _initialSupply The initial supply of the index token.
    /// @return _index The address of the newly created index.
    function createIndex(
        IndexParams memory _indexParams,
        address[] memory _tokens,
        uint256[] memory _amounts,
        uint256[] memory _weights,
        uint256 _initialSupply
    ) external returns (address _index);
}
