// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

import "./Pair.sol";
import "./OraclePair.sol";
import "./utils/SwapFactoryErrors.sol";

/// @title Swap Factory
/// @notice The Swap Factory is used to create new Pair contracts for each unique ERC20 token pair
contract SwapFactory is ISwapFactory {
    uint16[6] public possibleFees = [10, 105, 222, 500, 1000, 2000];
    address[] public allPairs;
    address public immutable protocolToken;

    mapping(address => mapping(address => mapping(uint16 => address))) public
        getPair;

    mapping(address => mapping(address => uint16[6])) public feesForPair;

    constructor(address _protocolToken) {
        require(_protocolToken != address(0), "NULL_PROTOCOL_TOKEN_ADDRESS");
        protocolToken = _protocolToken;
    }

    /// @notice Get list of fees for existing Pair of a specific pair
    /// @param _token0 token0 from the pair
    /// @param _token1 token1 from the pair
    /// @return uint16 Fixed fees array
    function getFeesForPair(address _token0, address _token1)
        external
        view
        override
        returns (uint16[6] memory)
    {
        return feesForPair[_token0][_token1];
    }

    /// @notice Get total number of Pairs
    /// @return uint Number of created pairs
    function allPairsLength() public view returns (uint256) {
        return allPairs.length;
    }

    /// @notice Get Pairs addresses
    /// @param startIndex Index of the first pair to query
    /// @param numOfPairs Number of pairs to be queried
    /// @return pairs Addresses of created pairs
    /// @return newIndex New index for chained calls
    function getPairs(uint256 startIndex, uint256 numOfPairs)
        external
        view
        returns (address[] memory pairs, uint256 newIndex)
    {
        if (numOfPairs > allPairsLength() - startIndex) {
            numOfPairs = allPairsLength() - startIndex;
        }

        pairs = new address[](numOfPairs);
        for (uint256 i; i < numOfPairs; ++i) {
            pairs[i] = allPairs[startIndex + i];
        }

        newIndex = startIndex + numOfPairs;
    }

    /// @notice Get all possible fees
    /// @return uint16[6] List of possible fees
    function getPossibleFees() external view returns (uint16[6] memory) {
        return possibleFees;
    }

    /// @notice Create new Pair
    /// @param tokenA token0 to be used for the new Pair
    /// @param tokenB token1 to be used for the new Pair
    /// @param fee Fee to be used in the new Pair
    /// @return address The address of the deployed Pair
    function createPair(address tokenA, address tokenB, uint16 fee)
        external
        returns (address)
    {
        uint16 feeIndex = validateFee(fee);
        if (tokenA == tokenB) revert IdenticalAddresses();
        address token0;
        address token1;
        if (tokenA == protocolToken || tokenB == protocolToken) {
            (token0, token1) = tokenA == protocolToken
                ? (protocolToken, tokenB)
                : (protocolToken, tokenA);
            if (token1 == address(0)) revert ZeroAddress(); // protocolToken can't be 0 but other could
        } else {
            (token0, token1) =
                tokenA < tokenB ? (tokenA, tokenB) : (tokenB, tokenA);
            if (token0 == address(0)) revert ZeroAddress();
        }
        if (getPair[token0][token1][fee] != address(0)) revert PairExists();

        address pair;
        bytes memory bytecode = token0 == protocolToken
            ? type(OraclePair).creationCode
            : type(Pair).creationCode;
        bytes32 salt =
            keccak256(abi.encodePacked(token0, token1, fee, protocolToken));
        assembly {
            pair := create2(0, add(bytecode, 32), mload(bytecode), salt)
        }
        getPair[token0][token1][fee] = pair;
        getPair[token1][token0][fee] = pair;
        writeFee(token0, token1, feeIndex);
        allPairs.push(pair);

        token0 == protocolToken
            ? OraclePair(pair).initialize(token0, token1, fee)
            : Pair(pair).initialize(token0, token1, fee, protocolToken);
        emit PairCreated(token0, token1, pair, fee, allPairs.length);
        return pair;
    }

    // updates the fee array for a pair with the fee amount in its index
    function writeFee(address token0, address token1, uint16 index) internal {
        uint16[6] memory fees = feesForPair[token0][token1];
        fees[index] = possibleFees[index];
        feesForPair[token0][token1] = fees;
        feesForPair[token1][token0] = fees;
    }

    // check the fee provided is one of the available ones
    function validateFee(uint16 fee) internal view returns (uint16) {
        for (uint16 i; i < 6; ++i) {
            if (fee == possibleFees[i]) {
                return i;
            }
        }
        revert IncorrectFee();
    }
}
