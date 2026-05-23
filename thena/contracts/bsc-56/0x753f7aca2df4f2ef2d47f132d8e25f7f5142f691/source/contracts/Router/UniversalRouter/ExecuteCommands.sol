// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;


import "./lib/Commands.sol";
import "./lib/TransferHelper.sol";
import "./lib/RouterSelector.sol";
import "./lib/BytesLib.sol";
import './lib/Path.sol';

import "./Router/AlgebraRouter.sol";
import "./Router/SolidlyRouter.sol";

abstract contract ExecuteCommands is AlgebraRouter, SolidlyRouter {

    using BytesLib for bytes;
    using Path for bytes;

    constructor(address _factorySol, address _factory,address _WNativeToken,address _poolDeployer) 
        AlgebraRouter(_factory, _WNativeToken,_poolDeployer) 
        SolidlyRouter(_factorySol, _WNativeToken) {}


    /// @notice execute the command
    /// @param command  command to use
    /// @param input    selector + inputs
    /// @return success call success boolean 
    /// @return output  functions returns
    function _executeCommand(bytes1 command, bytes calldata input) internal returns(bool success, bytes memory output){
        
        if (command < Commands.COMMAND_SPLIT_0){
            if(command == Commands.ALGB_EXACT_INPUT){
                bytes4 selector = RouterSelector.selector_exactInput;
                // input must be: bytes memory path, address recipient,uint deadline ,uint amountIn, uint amountOutMinimum
                (bytes memory path, address recipient,uint deadline ,uint amountIn, uint amountOutMinimum) = abi.decode(input,(bytes,address,uint,uint,uint));                 
                bytes memory newInput = abi.encode( 
                    IAlgebraRouter.ExactInputParams({
                        path: path,
                        amountIn: amountIn,
                        recipient: recipient,
                        deadline: deadline,
                        amountOutMinimum: amountOutMinimum
                }));
                (success, output) = address(this).call{value: msg.value}(abi.encodePacked(selector, newInput)); 
            }
            if(command == Commands.ALGB_EXACT_INPUT_SINGLE){
                // input must be: IAlgebraRouter.ExactInputSingleParams 
                bytes4 selector = RouterSelector.selector_exactInputSingle;
                (success, output) = address(this).call{value: msg.value}(abi.encodePacked(selector, input)); 
            }
            if(command == Commands.ALGB_EXACT_OUTPUT_SINGLE){
                // input must be: IAlgebraRouter.ExactOutputSingleParams 
                // send amountInMaximum else may fail!
                bytes4 selector = RouterSelector.selector_exactOutputSingle;
                (success, output) = address(this).call{value: msg.value}(abi.encodePacked(selector, input));  
                if(success){
                    // since this address old maxInput, refund any tokenIn
                    address tokenIn;
                    uint to_return;
                    assembly {
                        tokenIn := calldataload(input.offset)
                        let ptr := add(output, 0x40)
                        to_return := mload(ptr)
                    }
                    if(to_return > 0) TransferHelper.safeTransfer(tokenIn, msg.sender, to_return);
                }
            }
            
            if(command == Commands.ALGB_EXACT_OUTPUT){
                // input must be: bytes memory path, address recipient,uint deadline ,uint amountOut, uint amountInMaximum
                // send amountInMaximum else may fail!
                bytes4 selector = RouterSelector.selector_exactOutput;
                (bytes memory path, address recipient,uint deadline ,uint amountOut, uint amountInMaximum) = abi.decode(input,(bytes,address,uint,uint,uint));                 
                bytes memory newInput = abi.encode( 
                    IAlgebraRouter.ExactOutputParams({
                        path: path,
                        recipient: recipient,
                        deadline: deadline,
                        amountOut: amountOut,
                        amountInMaximum: amountInMaximum
                }));
                (success, output) = address(this).call{value: msg.value}(abi.encodePacked(selector, newInput));  
                if(success){
                    uint to_return;
                    address tokenIn;
                    assembly {
                        let ptr := add(output, 0x40)
                        to_return := mload(ptr)
                        tokenIn := mload(add(ptr, 0x20))
                    }
                    if(to_return > 0) TransferHelper.safeTransfer(tokenIn, msg.sender, to_return);
                }
        }   }

        // Solidly
        else if (command < Commands.COMMAND_SPLIT_1){
            if(command == Commands.SLD_EXACT_TOKENS_TOKENS_SIMPLE){
                // Input must be: uint256 amountIn,uint256 amountOutMin,address tokenFrom,address tokenTo,bool stable,address to,uint256 deadline
                bytes4 selector = RouterSelector.selector_swapExactTokensForTokensSimple;
                (success, output) = address(this).call(abi.encodePacked(selector, input));
            }
            if(command == Commands.SLD_EXACT_TOKENS_TOKENS){
                // Input must be: uint256 amountIn,uint256 amountOutMin,route[] calldata routes,address to,uint256 deadline
                bytes4 selector = RouterSelector.selector_swapExactTokensForTokens;
                (success, output) = address(this).call(abi.encodePacked(selector, input));
            }
            if(command == Commands.SLD_EXACT_ETH_TOKENS){
                // input must be: uint256 amountOutMin, route[] calldata routes, address to, uint256 deadline
                bytes4 selector = RouterSelector.selector_swapExactETHForTokens;
                (success, output) = address(this).call{value: msg.value}(abi.encodePacked(selector, input));
            }
            if(command == Commands.SLD_EXACT_TOKENS_ETH){
                // input must be: uint256 amountIn, uint256 amountOutMin, route[] calldata routes, address to, uint256 deadline
                bytes4 selector = RouterSelector.selector_swapExactTokensForETH;
                (success, output) = address(this).call{value: msg.value}(abi.encodePacked(selector, input));
            }
            if(command == Commands.SLD_EXACT_TOKENS_TOKENS_FEE){
                // input must be: uint256 amountIn,uint256 amountOutMin,route[] calldata routes,address to,uint256 deadline
                bytes4 selector = RouterSelector.selector_swapExactTokensForTokensSupportingFeeOnTransferTokens;
                (success, output) = address(this).call(abi.encodePacked(selector, input));
            }
            if(command == Commands.SLD_EXACT_ETH_TOKENS_FEE){
                // input must be: uint256 amountOutMin,route[] calldata routes,address to,uint256 deadline
                bytes4 selector = RouterSelector.selector_swapExactETHForTokensSupportingFeeOnTransferTokens;
                (success, output) = address(this).call{value: msg.value}(abi.encodePacked(selector, input));
            } 
            if(command == Commands.SLD_EXACT_TOKENS_ETH_FEE){
                // input must be: uint256 amountIn,uint256 amountOutMin,route[] calldata routes,address to,uint256 deadline
                bytes4 selector = RouterSelector.selector_swapExactTokensForETHSupportingFeeOnTransferTokens;
                (success, output) = address(this).call(abi.encodePacked(selector, input));
            }
        } 
        else if(command > Commands.COMMAND_SPLIT_1 && command < Commands.COMMAND_SPLIT_2) {
            if(command == Commands.TRANSFER_TOKEN_FROM){
                // input must be: address token, uint value
                address token;
                uint256 value;
                assembly {
                    token := calldataload(input.offset)
                    value := calldataload(add(input.offset, 0x20))
                }
                TransferHelper.safeTransferFrom(token, msg.sender, address(this), value);
                return (true, "");
            }
            if(command == Commands.CONVERT_TO_BNB){
                // input must be: value, recipient
                bytes4 selector = IPeripheryPayments.unwrapWNativeToken.selector;
                (success, output) = address(this).call(abi.encodePacked(selector, input));
            }
        } 
        else {
            revert InvalidCommandType(command);
        }
        
    }


    
   
    
    error InvalidCommandType(bytes1 commandType);


}
