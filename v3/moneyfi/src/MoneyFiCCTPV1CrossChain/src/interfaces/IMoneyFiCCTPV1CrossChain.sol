// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

interface IMoneyFiCCTPV1CrossChain {
    struct ClaimFundCCTP {
        bytes attestation;
        bytes messageCTTP;
        bytes extraData;
        int256 sourceChainId;
        uint256 claimFundCCTPV1Fee;
        uint256 emittedAt;
    }

    struct ChainIdentity {
        uint32 domainCCTPId;
        uint32 eid;
        bytes32 destinationCCTPV1Caller;
    }

    error AlreadyClaimed();
    error InvalidMintReceiver();
    error InvalidMoneyFiLayerZero();
    error AlreadySetWalletAccountAndAddress();
    error InvalidReceiver(int256 chainId, address user);
    error DisableFunction();
    error UnsupportedChain(int256 chainId);
    error InvalidClaimerCCTPV1(int256 chainId, bytes32 walletAccount);
    error InvalidSourceChainDomainId(uint32 domainId);

    event TakeTransportCCTP(
        address indexed depositor,
        address indexed tokenInForBridge,
        bytes32 tokenOutForBridge,
        address crossChainDexSender,
        bytes32 receiver,
        uint256 amountIn,
        int256 dstChainId,
        uint64 nonce,
        uint256 emittedAt
    );

    event TransferFundFromCCTPWrapperToFundVault(
        address depositor,
        address tokenAddress,
        bytes attestation,
        bytes messageCCTTP,
        uint32 srcDomainId,
        uint64 nonce,
        uint256 actualClaimAmount,
        uint256 claimedFee,
        uint256 emittedAt
    );


    event TransferFundFromCCTPWrapperToUser(
        address depositor,
        address tokenAddress,
        bytes attestation,
        bytes messageCCTTP,
        uint32 srcDomainId,
        uint64 nonce,
        uint256 actualClaimAmount,
        uint256 claimedFee,
        uint256 emittedAt
    );

    event SetWalletAccountAndAddress(int256 destinationChainId, bytes32 walletAccount, address evmAddress, uint256 emittedAt);

    event SetChainIdentity(int256 chainId, uint32 _domainCCTPId, uint32 eid, bytes32 destinationCCTPV1Caller, uint256 emittedAt);

    function setWalletAccountAndAddress(int256 chainId, address user, bytes32 walletAccount) external;
}
