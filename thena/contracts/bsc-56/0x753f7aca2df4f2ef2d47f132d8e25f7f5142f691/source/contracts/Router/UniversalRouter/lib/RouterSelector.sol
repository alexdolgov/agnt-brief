// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

/// @title RouterSelector
/// @notice Router selector for each router function
library RouterSelector {


    bytes4 constant selector_exactInputSingle = bytes4(keccak256("exactInputSingle((address,address,address,uint256,uint256,uint256,uint160))"));
    bytes4 constant selector_exactInput = bytes4(keccak256("exactInput((bytes,address,uint256,uint256,uint256))"));    
    bytes4 constant selector_exactOutputSingle = bytes4(keccak256("exactOutputSingle((address,address,uint24,address,uint256,uint256,uint256,uint160))"));
    bytes4 constant selector_exactOutput = bytes4(keccak256("exactOutput((bytes,address,uint256,uint256,uint256))"));


    bytes4 constant selector_swapExactTokensForTokensSupportingFeeOnTransferTokens = bytes4(keccak256("swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256,uint256,(address,address,bool)[],address,uint256)"));
    bytes4 constant selector_swapExactETHForTokensSupportingFeeOnTransferTokens = bytes4(keccak256("swapExactETHForTokensSupportingFeeOnTransferTokens(uint256,(address,address,bool)[],address,uint256)"));
    bytes4 constant selector_swapExactTokensForETHSupportingFeeOnTransferTokens = bytes4(keccak256("swapExactTokensForETHSupportingFeeOnTransferTokens(uint256,uint256,(address,address,bool)[],address,uint256)"));
    bytes4 constant selector_swapExactTokensForTokensSimple = bytes4(keccak256("swapExactTokensForTokensSimple(uint256,uint256,address,address,bool,address,uint256)"));
    bytes4 constant selector_swapExactTokensForTokens = bytes4(keccak256("swapExactTokensForTokens(uint256,uint256,(address,address,bool)[],address,uint256)"));
    bytes4 constant selector_swapExactETHForTokens = bytes4(keccak256("swapExactETHForTokens(uint256,(address,address,bool)[],address,uint256)"));
    bytes4 constant selector_swapExactTokensForETH = bytes4(keccak256("swapExactTokensForETH(uint256,uint256,(address,address,bool)[],address,uint256)"));


    


}
