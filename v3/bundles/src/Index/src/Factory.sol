// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import {console} from "forge-std/console.sol";
import {IFactory} from "src/interfaces/IFactory.sol";
import {Index} from "src/Index.sol";
import {SafeERC20} from
    "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";

/// @title Factory - Contract for creating index tokens
contract Factory is IFactory {
    using SafeERC20 for IERC20;

    /// @inheritdoc IFactory
    address public immutable protocolToken;

    address[] public indexes;

    uint256 public constant MIN_WEIGHT = 1 ether;
    uint256 public constant TOTAL_WEIGHT = 50 ether;
    uint256 public constant MIN_FEE_TOKEN_WEIGHT = 2.5 ether;
    uint8 public constant MIN_FEE = 10;
    uint16 public constant MAX_FEE = 2000;

    constructor(address _protocolToken) {
        if (_protocolToken == address(0)) {
            revert Factory__ZeroAddress();
        }
        protocolToken = _protocolToken;
    }

    /// @inheritdoc IFactory
    function createIndex(
        IndexParams memory _indexParams,
        address[] memory _tokens,
        uint256[] memory _amounts,
        uint256[] memory _weights,
        uint256 _initialSupply
    ) external returns (address _index) {
        if (_tokens.length < 3 || _tokens[0] != protocolToken) {
            revert Factory__InvalidTokens();
        }

        if (
            _tokens.length != _amounts.length
                || _tokens.length != _weights.length
        ) {
            revert Factory__InvalidLengths();
        }

        if (_weights[0] < MIN_FEE_TOKEN_WEIGHT) {
            revert Factory__InvalidProtocolTokenWeight();
        }

        uint256 totalWeight = 0;
        for (uint256 i; i < _tokens.length; ++i) {
            if (i > 0 && _tokens[i] == protocolToken) {
                revert Factory__DuplicatedProtocolToken();
            }
            if (_weights[i] < MIN_WEIGHT || _weights[i] > TOTAL_WEIGHT) {
                revert Factory__WeightOutOfRange();
            }
            if (i < _tokens.length - 1 && i > 0 && _tokens[i] >= _tokens[i + 1])
            {
                revert Factory__UnsortedTokens();
            }
            totalWeight += _weights[i];

            // No need to check for zero address token here because the transferFrom function would revert
        }

        if (_indexParams.swapFee < MIN_FEE || _indexParams.swapFee > MAX_FEE) {
            revert Factory__FeeOutOfRange();
        }

        if (totalWeight != TOTAL_WEIGHT) {
            revert Factory__InvalidTotalWeights();
        }

        if (_initialSupply == 0) {
            revert Factory__InitialSupplyTooLow();
        }

        if (_initialSupply > 100_000_000) {
            revert Factory__InitialSupplyTooHigh();
        }

        _index = address(
            new Index(
                msg.sender,
                _indexParams.name,
                _indexParams.symbol,
                _indexParams.swapFee,
                _indexParams.mintAndBurnFee,
                _indexParams.managerShareFee,
                _tokens,
                _weights,
                _initialSupply
            )
        );

        for (uint256 i; i < _tokens.length; ++i) {
            IERC20(_tokens[i]).safeTransferFrom(msg.sender, _index, _amounts[i]);
        }

        emit IndexCreated(
            _index,
            msg.sender,
            _indexParams.name,
            _indexParams.symbol,
            _indexParams.swapFee,
            _indexParams.mintAndBurnFee,
            _indexParams.managerShareFee,
            _tokens,
            _amounts,
            _weights,
            _initialSupply * 1 ether
        );

        indexes.push(_index);
    }

    /// @inheritdoc IFactory
    function getIndexes(uint256 _startIndex, uint256 _numOfIndexes)
        external
        view
        returns (address[] memory _indexes, uint256 _newIndex)
    {
        if (_numOfIndexes > indexesLength() - _startIndex) {
            _numOfIndexes = indexesLength() - _startIndex;
        }

        _indexes = new address[](_numOfIndexes);
        for (uint256 i; i < _numOfIndexes; ++i) {
            _indexes[i] = indexes[_startIndex + i];
        }

        _newIndex = _startIndex + _numOfIndexes;
    }

    /// @inheritdoc IFactory
    function getTokens(address _index)
        external
        view
        returns (address[] memory _tokens)
    {
        _tokens = Index(_index).getTokens();
    }

    /// @inheritdoc IFactory
    function getTokensAndWeights(address _index)
        external
        view
        returns (address[] memory _tokens, uint256[] memory _weights)
    {
        _tokens = Index(_index).getTokens();
        _weights = new uint256[](_tokens.length);
        for (uint256 i = 0; i < _tokens.length; i++) {
            _weights[i] = Index(_index).getCurrentWeight(_tokens[i]);
        }
    }

    /// @inheritdoc IFactory
    function getTokenWeight(address _index, address _token)
        external
        view
        returns (uint256)
    {
        return Index(_index).getCurrentWeight(_token);
    }

    /// @inheritdoc IFactory
    function getBalance(address _index, address _token)
        external
        view
        returns (uint256 _balance)
    {
        if (_token == Index(_index).getTokens()[0]) {
            _balance =
                IERC20(_token).balanceOf(_index) - Index(_index).reserve();
        } else {
            _balance = IERC20(_token).balanceOf(_index);
        }
    }

    /// @inheritdoc IFactory
    function indexesLength() public view returns (uint256) {
        return indexes.length;
    }
}
