// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

/// @title Commands
/// @notice Command Flags used to decode commands
library Commands {
    
    /* 
    Algebra Router methods:
    exactInputSingle        
    exactInput
    exactOutputSingle
    exactOutput
    */
    bytes1 constant ALGB_EXACT_INPUT_SINGLE = 0x00;
    bytes1 constant ALGB_EXACT_INPUT = 0x01;
    bytes1 constant ALGB_EXACT_OUTPUT_SINGLE = 0x02;
    bytes1 constant ALGB_EXACT_OUTPUT = 0x03;
    bytes1 constant COMMAND_SPLIT_0 = 0x04;

    
    /*
    Solidly Methods:
    swapExactTokensForTokensSimple
    swapExactTokensForTokens
    swapExactETHForTokens
    swapExactTokensForETH
    swapExactTokensForTokensSupportingFeeOnTransferTokens
    swapExactETHForTokensSupportingFeeOnTransferTokens
    swapExactTokensForETHSupportingFeeOnTransferTokens
    */
    bytes1 constant SLD_EXACT_TOKENS_TOKENS_SIMPLE = 0x05;
    bytes1 constant SLD_EXACT_TOKENS_TOKENS = 0x06;
    bytes1 constant SLD_EXACT_ETH_TOKENS = 0x07;
    bytes1 constant SLD_EXACT_TOKENS_ETH = 0x08;
    bytes1 constant SLD_EXACT_TOKENS_TOKENS_FEE = 0x09;
    bytes1 constant SLD_EXACT_ETH_TOKENS_FEE = 0x0A;
    bytes1 constant SLD_EXACT_TOKENS_ETH_FEE = 0x0B;
    bytes1 constant COMMAND_SPLIT_1 = 0x0C;


    
    /* 
    Operations methods:
    SafeTransferFrom
    Convert wBNB to BNB
    */
    bytes1 constant TRANSFER_TOKEN_FROM = 0x0D;
    bytes1 constant CONVERT_TO_BNB = 0x0E;
    bytes1 constant COMMAND_SPLIT_2 = 0x1F;

    /*
        New Commands starts from 0x20 -> 0xFF
    */

}
