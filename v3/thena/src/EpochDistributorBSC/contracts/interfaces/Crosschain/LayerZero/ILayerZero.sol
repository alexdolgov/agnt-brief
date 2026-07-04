// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0;


interface ILayerZero {
    struct MessagingParams {
    uint32 dstEid;
    bytes32 receiver;
    bytes message;
    bytes options;
    bool payInLzToken;
    }

    struct MessagingReceipt {
        bytes32 guid;
        uint64 nonce;
        MessagingFee fee;
    }

    struct MessagingFee {
        uint256 nativeFee;
        uint256 lzTokenFee;
    }

    struct Origin {
        uint32 srcEid;
        bytes32 sender;
        uint64 nonce;
    }

    function chainIdToGLZ(uint256 _dstChainId) external view returns(address);
    function estimateFee(uint16 _dstChainId, bytes32 receiver, bytes memory _payload, bool _payInLzToken) external view returns (MessagingFee memory fee);  
    function sendMessage(uint256 _dstChainId, bytes calldata _payload) external payable;
    function lzReceive(Origin calldata _origin,address _receiver,bytes32 _guid,bytes calldata _message,bytes calldata _extraData) external payable;
}