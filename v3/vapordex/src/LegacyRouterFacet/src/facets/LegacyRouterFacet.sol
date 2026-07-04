// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;

import { IAdapter } from "../interfaces/IAdapter.sol";
import { IERC20 } from "../interfaces/IERC20.sol";
import { IWETH } from "../interfaces/IWETH.sol";
import { LibSafeERC20 } from "../libraries/LibSafeERC20.sol";
import { AppStorage, Modifiers } from "../libraries/AppStorage.sol";
import { LibBytesManipulation } from "../libraries/LibBytesManipulation.sol";

error LegacyRouterFacet__NothingToRecover();
error LegacyRouterFacet__InvalidMaxSteps();
error LegacyRouterFacet__InvalidPath();
error LegacyRouterFacet__InvalidFee();
error LegacyRouterFacet__InvalidOutput();
error LegacyRouterFacet__NotAuthorized();

contract LegacyRouterFacet is Modifiers {
    using LibSafeERC20 for IERC20;
    // EVENTS
    event RouterSwap(address indexed tokenIn, address indexed tokenOut, uint256 amountIn, uint256 amountOut);

    // STATE VARIABLES
    address constant NATIVE = address(0);

    struct Query {
        address adapter;
        address tokenIn;
        address tokenOut;
        uint256 amountOut;
    }

    struct Offer {
        bytes amounts;
        bytes adapters;
        bytes path;
        uint256 gasEstimate;
    }

    struct FormattedOffer {
        uint256[] amounts;
        address[] adapters;
        address[] path;
        uint256 gasEstimate;
    }

    struct Trade {
        uint256 amountIn;
        uint256 amountOut;
        address[] path;
        address[] adapters;
    }

    // -- SETTERS --

    function _setAllowanceForWrapping(address _wnative) internal {
        IERC20(_wnative).safeApprove(_wnative, type(uint256).max);
    }

    //  -- GENERAL --

    function getTrustedTokensCount() external view returns (uint256) {
        return s.trustedTokens.length;
    }

    function getAdaptersCount() external view returns (uint256) {
        return s.adapters.length;
    }

    // -- HELPERS --

    function _applyFee(uint256 _amountIn, uint256 _fee) internal view returns (uint256) {
        if (_fee < s.minFee) revert LegacyRouterFacet__InvalidFee();
        return (_amountIn * (s.feeDenominator - _fee)) / s.feeDenominator;
    }

    function _wrap(uint256 _amount) internal {
        IWETH(s.WNATIVE).deposit{ value: _amount }();
    }

    function _unwrap(uint256 _amount) internal {
        IWETH(s.WNATIVE).withdraw(_amount);
    }

    /**
     * @notice Return tokens to user
     * @dev Pass address(0) for AVAX
     * @param _token address
     * @param _amount tokens to return
     * @param _to address where funds should be sent to
     */
    function _returnTokensTo(address _token, uint256 _amount, address _to) internal {
        if (address(this) != _to) {
            if (_token == NATIVE) {
                payable(_to).transfer(_amount);
            } else {
                IERC20(_token).safeTransfer(_to, _amount);
            }
        }
    }

    /**
     * Makes a deep copy of Offer struct
     */
    function _cloneOffer(Offer memory _queries) internal pure returns (Offer memory) {
        return Offer(_queries.amounts, _queries.adapters, _queries.path, _queries.gasEstimate);
    }

    /**
     * Appends Query elements to Offer struct
     */
    function _addQuery(
        Offer memory _queries,
        uint256 _amount,
        address _adapter,
        address _tokenOut,
        uint256 _gasEstimate
    ) internal pure {
        _queries.path = LibBytesManipulation.mergeBytes(_queries.path, LibBytesManipulation.toBytes(_tokenOut));
        _queries.amounts = LibBytesManipulation.mergeBytes(_queries.amounts, LibBytesManipulation.toBytes(_amount));
        _queries.adapters = LibBytesManipulation.mergeBytes(_queries.adapters, LibBytesManipulation.toBytes(_adapter));
        _queries.gasEstimate += _gasEstimate;
    }

    /**
     * Converts byte-arrays to an array of integers
     */
    function _formatAmounts(bytes memory _amounts) internal pure returns (uint256[] memory) {
        // Format amounts
        uint256 chunks = _amounts.length / 32;
        uint256[] memory amountsFormatted = new uint256[](chunks);
        for (uint256 i = 0; i < chunks; i++) {
            amountsFormatted[i] = LibBytesManipulation.bytesToUint256(i * 32 + 32, _amounts);
        }
        return amountsFormatted;
    }

    /**
     * Converts byte-array to an array of addresses
     */
    function _formatAddresses(bytes memory _addresses) internal pure returns (address[] memory) {
        uint256 chunks = _addresses.length / 32;
        address[] memory addressesFormatted = new address[](chunks);
        for (uint256 i = 0; i < chunks; i++) {
            addressesFormatted[i] = LibBytesManipulation.bytesToAddress(i * 32 + 32, _addresses);
        }
        return addressesFormatted;
    }

    /**
     * Formats elements in the Offer object from byte-arrays to integers and addresses
     */
    function _formatOffer(Offer memory _queries) internal pure returns (FormattedOffer memory) {
        return
            FormattedOffer(
                _formatAmounts(_queries.amounts),
                _formatAddresses(_queries.adapters),
                _formatAddresses(_queries.path),
                _queries.gasEstimate
            );
    }

    // -- QUERIES --

    /**
     * Query single adapter
     */
    function queryAdapter(
        uint256 _amountIn,
        address _tokenIn,
        address _tokenOut,
        uint8 _index
    ) external view returns (uint256) {
        IAdapter _adapter = IAdapter(s.adapters[_index]);
        uint256 amountOut = _adapter.query(_amountIn, _tokenIn, _tokenOut);
        return amountOut;
    }

    /**
     * Query specified adapters
     */
    function queryNoSplit(
        uint256 _amountIn,
        address _tokenIn,
        address _tokenOut,
        uint8[] calldata _options
    ) public view returns (Query memory) {
        Query memory bestQuery;
        for (uint8 i; i < _options.length; i++) {
            address _adapter = s.adapters[_options[i]];
            uint256 amountOut = IAdapter(_adapter).query(_amountIn, _tokenIn, _tokenOut);
            if (i == 0 || amountOut > bestQuery.amountOut) {
                bestQuery = Query(_adapter, _tokenIn, _tokenOut, amountOut);
            }
        }
        return bestQuery;
    }

    /**
     * Query all adapters
     */
    function queryNoSplit(uint256 _amountIn, address _tokenIn, address _tokenOut) public view returns (Query memory) {
        Query memory bestQuery;
        for (uint8 i; i < s.adapters.length; i++) {
            address _adapter = s.adapters[i];
            uint256 amountOut = IAdapter(_adapter).query(_amountIn, _tokenIn, _tokenOut);
            if (i == 0 || amountOut > bestQuery.amountOut) {
                bestQuery = Query(_adapter, _tokenIn, _tokenOut, amountOut);
            }
        }
        return bestQuery;
    }

    /**
     * Return path with best returns between two tokens
     * Takes gas-cost into account
     */
    function findBestPathWithGas(
        uint256 _amountIn,
        address _tokenIn,
        address _tokenOut,
        uint256 _maxSteps,
        uint256 _gasPrice
    ) external view returns (FormattedOffer memory) {
        if (_maxSteps == 0 || _maxSteps > 4) revert LegacyRouterFacet__InvalidMaxSteps();
        Offer memory queries;
        queries.amounts = LibBytesManipulation.toBytes(_amountIn);
        queries.path = LibBytesManipulation.toBytes(_tokenIn);
        uint256 gasPriceInExitTkn = _gasPrice > 0 ? getGasPriceInExitTkn(_gasPrice, _tokenOut) : 0;
        queries = _findBestPath(_amountIn, _tokenIn, _tokenOut, _maxSteps, queries, gasPriceInExitTkn);
        if (queries.adapters.length == 0) {
            queries.amounts = "";
            queries.path = "";
        }
        return _formatOffer(queries);
    }

    // Find the market price between gas-asset(native) and token-out and express gas price in token-out
    function getGasPriceInExitTkn(uint256 _gasPrice, address _tokenOut) internal view returns (uint256 price) {
        // Avoid low-liquidity price appreciation (https://github.com/yieldyak/yak-aggregator/issues/20)
        FormattedOffer memory gasQuery = findBestPath(1e18, s.WNATIVE, _tokenOut, 2);
        if (gasQuery.path.length != 0) {
            // Leave result in nWei to preserve precision for assets with low decimal places
            price = (gasQuery.amounts[gasQuery.amounts.length - 1] * _gasPrice) / 1e9;
        }
    }

    /**
     * Return path with best returns between two tokens
     */
    function findBestPath(
        uint256 _amountIn,
        address _tokenIn,
        address _tokenOut,
        uint256 _maxSteps
    ) public view returns (FormattedOffer memory) {
        if (_maxSteps == 0 || _maxSteps > 4) revert LegacyRouterFacet__InvalidMaxSteps();
        Offer memory queries;
        queries.amounts = LibBytesManipulation.toBytes(_amountIn);
        queries.path = LibBytesManipulation.toBytes(_tokenIn);
        queries = _findBestPath(_amountIn, _tokenIn, _tokenOut, _maxSteps, queries, 0);
        // If no paths are found return empty struct
        if (queries.adapters.length == 0) {
            queries.amounts = "";
            queries.path = "";
        }
        return _formatOffer(queries);
    }

    function _findBestPath(
        uint256 _amountIn,
        address _tokenIn,
        address _tokenOut,
        uint256 _maxSteps,
        Offer memory _queries,
        uint256 _tknOutPriceNwei
    ) internal view returns (Offer memory) {
        Offer memory bestOption = _cloneOffer(_queries);
        uint256 bestAmountOut;
        uint256 gasEstimate;
        bool withGas = _tknOutPriceNwei != 0;

        // First check if there is a path directly from tokenIn to tokenOut
        Query memory queryDirect = queryNoSplit(_amountIn, _tokenIn, _tokenOut);

        if (queryDirect.amountOut != 0) {
            if (withGas) {
                gasEstimate = IAdapter(queryDirect.adapter).swapGasEstimate();
            }
            _addQuery(bestOption, queryDirect.amountOut, queryDirect.adapter, queryDirect.tokenOut, gasEstimate);
            bestAmountOut = queryDirect.amountOut;
        }
        // Only check the rest if they would go beyond step limit (Need at least 2 more steps)
        if (_maxSteps > 1 && _queries.adapters.length / 32 <= _maxSteps - 2) {
            // Check for paths that pass through trusted tokens
            for (uint256 i = 0; i < s.trustedTokens.length; i++) {
                if (_tokenIn == s.trustedTokens[i]) {
                    continue;
                }
                // Loop through all adapters to find the best one for swapping tokenIn for one of the trusted tokens
                Query memory bestSwap = queryNoSplit(_amountIn, _tokenIn, s.trustedTokens[i]);
                if (bestSwap.amountOut == 0) {
                    continue;
                }
                // Explore options that connect the current path to the tokenOut
                Offer memory newOffer = _cloneOffer(_queries);
                if (withGas) {
                    gasEstimate = IAdapter(bestSwap.adapter).swapGasEstimate();
                }
                _addQuery(newOffer, bestSwap.amountOut, bestSwap.adapter, bestSwap.tokenOut, gasEstimate);
                newOffer = _findBestPath(
                    bestSwap.amountOut,
                    s.trustedTokens[i],
                    _tokenOut,
                    _maxSteps,
                    newOffer,
                    _tknOutPriceNwei
                );
                address tokenOut = LibBytesManipulation.bytesToAddress(newOffer.path.length, newOffer.path);
                uint256 amountOut = LibBytesManipulation.bytesToUint256(newOffer.amounts.length, newOffer.amounts);
                // Check that the last token in the path is the tokenOut and update the new best option if neccesary
                if (_tokenOut == tokenOut && amountOut > bestAmountOut) {
                    if (newOffer.gasEstimate > bestOption.gasEstimate) {
                        uint256 gasCostDiff = (_tknOutPriceNwei * (newOffer.gasEstimate - bestOption.gasEstimate)) /
                            1e9;
                        uint256 priceDiff = amountOut - bestAmountOut;
                        if (gasCostDiff > priceDiff) {
                            continue;
                        }
                    }
                    bestAmountOut = amountOut;
                    bestOption = newOffer;
                }
            }
        }
        return bestOption;
    }

    // -- SWAPPERS --

    function _swapNoSplit(Trade calldata _trade, address _from, address _to, uint256 _fee) internal returns (uint256) {
        uint256[] memory amounts = new uint256[](_trade.path.length);
        if (_fee > 0 || s.minFee > 0) {
            // Transfer fees to the claimer account and decrease initial amount
            amounts[0] = _applyFee(_trade.amountIn, _fee);
            IERC20(_trade.path[0]).safeTransferFrom(_from, s.feeClaimer, _trade.amountIn - amounts[0]);
        } else {
            amounts[0] = _trade.amountIn;
        }
        IERC20(_trade.path[0]).safeTransferFrom(_from, _trade.adapters[0], amounts[0]);
        // Get amounts that will be swapped
        for (uint256 i = 0; i < _trade.adapters.length; i++) {
            amounts[i + 1] = IAdapter(_trade.adapters[i]).query(amounts[i], _trade.path[i], _trade.path[i + 1]);
        }
        if (amounts[amounts.length - 1] < _trade.amountOut) revert LegacyRouterFacet__InvalidOutput();
        for (uint256 i = 0; i < _trade.adapters.length; i++) {
            // All adapters should transfer output token to the following target
            // All targets are the adapters, expect for the last swap where tokens are sent out
            address targetAddress = i < _trade.adapters.length - 1 ? _trade.adapters[i + 1] : _to;
            IAdapter(_trade.adapters[i]).swap(
                amounts[i],
                amounts[i + 1],
                _trade.path[i],
                _trade.path[i + 1],
                targetAddress
            );
        }
        emit RouterSwap(
            _trade.path[0],
            _trade.path[_trade.path.length - 1],
            _trade.amountIn,
            amounts[amounts.length - 1]
        );
        return amounts[amounts.length - 1];
    }

    function swapNoSplit(Trade calldata _trade, address _to, uint256 _fee) public {
        _swapNoSplit(_trade, msg.sender, _to, _fee);
    }

    function swapNoSplitFromAVAX(Trade calldata _trade, address _to, uint256 _fee) external payable {
        if (_trade.path[0] != s.WNATIVE) revert LegacyRouterFacet__InvalidPath();
        _wrap(_trade.amountIn);
        _swapNoSplit(_trade, address(this), _to, _fee);
    }

    function swapNoSplitToAVAX(Trade calldata _trade, address _to, uint256 _fee) public {
        if (_trade.path[_trade.path.length - 1] != s.WNATIVE) revert LegacyRouterFacet__InvalidPath();
        uint256 returnAmount = _swapNoSplit(_trade, msg.sender, address(this), _fee);
        _unwrap(returnAmount);
        _returnTokensTo(NATIVE, returnAmount, _to);
    }

    /**
     * Swap token to token without the need to approve the first token
     */
    function swapNoSplitWithPermit(
        Trade calldata _trade,
        address _to,
        uint256 _fee,
        uint256 _deadline,
        uint8 _v,
        bytes32 _r,
        bytes32 _s
    ) external {
        IERC20(_trade.path[0]).permit(msg.sender, address(this), _trade.amountIn, _deadline, _v, _r, _s);
        swapNoSplit(_trade, _to, _fee);
    }

    /**
     * Swap token to AVAX without the need to approve the first token
     */
    function swapNoSplitToAVAXWithPermit(
        Trade calldata _trade,
        address _to,
        uint256 _fee,
        uint256 _deadline,
        uint8 _v,
        bytes32 _r,
        bytes32 _s
    ) external {
        IERC20(_trade.path[0]).permit(msg.sender, address(this), _trade.amountIn, _deadline, _v, _r, _s);
        swapNoSplitToAVAX(_trade, _to, _fee);
    }
}
