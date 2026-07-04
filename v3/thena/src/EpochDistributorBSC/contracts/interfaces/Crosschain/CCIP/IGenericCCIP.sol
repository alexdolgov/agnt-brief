// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0;

interface IGenericCCIP {
    
    function sendMessage(uint64 destChainId,bytes calldata data,uint256 amount,address token,address to,bool feeType) external payable returns (bytes32);

    function chainSelectorToChainId(uint64 selector) external view returns (uint64);

    function chainIdToChainSelector(uint64 id) external view returns (uint64);

    function getFee(uint64 destChainId,bytes calldata evm2AnyMessage) external view returns (uint);

    function getFeeSimple(uint64 destChainId,bytes calldata data,uint256 amount,address token,address to,bool feeType) external view returns (uint);

    function chainIdToProxy(uint64 evmChainID) external view returns(address);


}
