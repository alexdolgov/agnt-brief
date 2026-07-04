//SPDX-License-Identifier: MIT
pragma solidity 0.8.7;

import "./BaseSupport.sol";
import "../interface/IProtocolSupport.sol";
import { IVelodromePair, IVelodromeFactory } from "../interface/IVelodrome.sol";

contract VelodromeSupport is BaseSupport, IProtocolSupport {
    using SafeMath for uint256;

    struct SwapData {
        address _pool;
        address _from;
        address _to;
    }

    struct QuoteData {
        address _from;
        address _to;
        uint256 _amount;
    }

    struct QuoteReturnData {
        address _pool;
    }

    struct TokensQuoteData {
        address _from;
        address[] _tos;
        uint256 _amount;
    }

    struct TokensQuoteReturnData {
        address _pool;
        address _to;
    }

    address public immutable velodromeFactory;

    constructor(address _velodromeFactory) {
        velodromeFactory = _velodromeFactory;
    }

    function quote(bytes memory _inputData) external view override returns (uint256, bytes memory) {
        QuoteData memory _data = abi.decode(_inputData, (QuoteData));
        (address _pool, uint256 _returns) = _quote(_data._from, _data._to, _data._amount);

        return (_returns, abi.encode(QuoteReturnData({ _pool: _pool })));
    }

    function tokensQuote(bytes memory _inputData) external view override returns (uint256 _returns, bytes memory _returnData) {
        TokensQuoteData memory _data = abi.decode(_inputData, (TokensQuoteData));
        TokensQuoteReturnData memory _quoteReturnData;
        uint256 _lastHandleAmount;
        for (uint256 i = 0; i < _data._tos.length; i++) {
            address _to1 = _data._tos[i];
            (address _pool, uint256 _returnAmount) = _quote(_data._from, _to1, _data._amount);

            if (_returnAmount > 0) {
                uint256 _handleAmount = _handleDecimals(_to1, _returnAmount);
                if (_handleAmount > _lastHandleAmount) {
                    _quoteReturnData._to = _to1;
                    _returns = _returnAmount;
                    _lastHandleAmount = _handleAmount;
                    _quoteReturnData._pool = _pool;
                }
            }
        }
        _returnData = abi.encode(_quoteReturnData);
    }

    function swap(uint256 _amount, bytes memory _inputData) external payable override returns (uint256) {
        SwapData memory _data = abi.decode(_inputData, (SwapData));
        uint256 _balance1 = IERC20(_data._to).balanceOf(address(this));
        bool _isToken0 = IVelodromePair(_data._pool).token0() == _data._from;
        uint256 _getAmounts = IVelodromePair(_data._pool).getAmountOut(_amount, _data._from);
        IERC20(_data._from).transfer(_data._pool, _amount);
        IVelodromePair(_data._pool).swap(_isToken0 ? 0 : _getAmounts, _isToken0 ? _getAmounts : 0, address(this), new bytes(0));
        uint256 _balance2 = IERC20(_data._to).balanceOf(address(this));
        return _balance2.sub(_balance1);
    }

    function _quote(
        address _from,
        address _to,
        uint256 _amount
    ) private view returns (address _pool, uint256 _returns) {
        address _pair0 = IVelodromeFactory(velodromeFactory).getPair(_from, _to, true);
        uint256 _return0 = _pair0 == address(0) ? 0 : IVelodromePair(_pair0).getAmountOut(_amount, _from);

        address _pair1 = IVelodromeFactory(velodromeFactory).getPair(_from, _to, false);
        uint256 _return1 = _pair1 == address(0) ? 0 : IVelodromePair(_pair1).getAmountOut(_amount, _from);

        _pool = _return0 > _return1 ? _pair0 : _pair1;
        _returns = _return0 > _return1 ? _return0 : _return1;
    }

    function _buildPath(address _token0, address _token1) private pure returns (address[] memory) {
        address[] memory x = new address[](2);
        x[0] = _token0;
        x[1] = _token1;
        return x;
    }
}
