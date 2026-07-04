// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "./ThenianFeeConverterStorageAndEvents.sol"; 
import "../interfaces/Algebra/ISwapRouter.sol"; 
import '../interfaces/Router/IRouter.sol';



abstract contract ThenianFeeConverterRouter is ThenianFeeConverterStorageAndEvents {


    /// @notice Internal swap on Algebra router
    function _swap(address _tokenIn, uint256 _amountIn) internal {

        if(hasPath[_tokenIn]){
            ISwapRouter.ExactInputParams memory eip = ISwapRouter.ExactInputParams({
            path: tokenToPath[_tokenIn],
            recipient: address(this),
            deadline: block.timestamp + 600,
            amountIn: _amountIn,
            amountOutMinimum: 0
            });

            if(IERC20(_tokenIn).allowance(address(this), routerAlgebra) < _amountIn) {
                _safeApprove(_tokenIn, routerAlgebra, 0);
                _safeApprove(_tokenIn, routerAlgebra, type(uint).max);
            }

            try ISwapRouter(routerAlgebra).exactInput(eip) returns (uint256 _amountOut) {
                require(_amountOut > 0, 'TFCR: amountOut 0');
                emit Swap(_tokenIn, _amountIn, _amountOut);
            }
            catch {
                emit SwapError(_tokenIn, _amountIn, block.timestamp);
            }
        }

    }


    function _swapManualInputSingleAlgebra(address _tokenIn, address _tokenOut, uint256 _amountIn, uint256 _amountOutMin, uint160 _limitSqrtPrice) internal returns (uint256 _amountOut) {

        ISwapRouter.ExactInputSingleParams memory eisp = ISwapRouter.ExactInputSingleParams({
            tokenIn: _tokenIn,
            tokenOut: _tokenOut,
            recipient: address(this),
            deadline: block.timestamp + 600,
            amountIn: _amountIn,
            amountOutMinimum: _amountOutMin,
            limitSqrtPrice: _limitSqrtPrice
        });

        if(IERC20(_tokenIn).allowance(address(this), routerAlgebra) < _amountIn) {
            _safeApprove(_tokenIn, routerAlgebra, 0);
            _safeApprove(_tokenIn, routerAlgebra, type(uint).max);
        }

        _amountOut = ISwapRouter(routerAlgebra).exactInputSingle(eisp);
        emit Swap(_tokenIn, _amountIn, _amountOut);
    }


    /// @notice Internal swap on Solidly router
    function _swapManualV2(uint _amountIn,uint _amountOutMin, IRouter.route[] calldata _routes,uint deadline) internal returns (uint[] memory amounts){
        address _tokenIn = _routes[0].from;
        
        if(IERC20(_tokenIn).allowance(address(this), routerSolidly) < _amountIn) {
            _safeApprove(_tokenIn, routerAlgebra, 0);
            _safeApprove(_tokenIn, routerAlgebra, type(uint).max);
        }

        amounts = IRouter(routerSolidly).swapExactTokensForTokens(_amountIn, _amountOutMin, _routes, address(this), deadline);
        emit Swap(_tokenIn, _amountIn, amounts[amounts.length-1]);
    }




    
    /* -----------------------------------------------------------------------------
    --------------------------------------------------------------------------------
                                    Helper
    --------------------------------------------------------------------------------
    ----------------------------------------------------------------------------- */

    
    function _safeTransfer(address token,address to,uint256 value) internal {
        require(token.code.length > 0);
        (bool success, bytes memory data) =
        token.call(abi.encodeWithSelector(IERC20.transfer.selector, to, value));
        require(success && (data.length == 0 || abi.decode(data, (bool))));
    }

    function _safeApprove(address token,address spender,uint256 value) internal {
        require(token.code.length > 0);
        require((value == 0) || (IERC20(token).allowance(address(this), spender) == 0),
            "SafeERC20: approve from non-zero to non-zero allowance"
        );
        (bool success, bytes memory data) = token.call(abi.encodeWithSelector(IERC20.approve.selector, spender, value));
        require(success && (data.length == 0 || abi.decode(data, (bool))));
    }

}