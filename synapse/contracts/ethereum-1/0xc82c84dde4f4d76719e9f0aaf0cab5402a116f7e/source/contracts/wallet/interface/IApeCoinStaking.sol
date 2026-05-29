// SPDX-License-Identifier: MIT
pragma solidity 0.8.14;

interface IApeCoinStaking {
    /// @dev Struct for depositing and withdrawing from the BAYC and MAYC NFT pools
    struct SingleNft {
        uint32 tokenId;
        uint224 amount;
    }
    /// @dev Struct for depositing from the BAKC (Pair) pool
    struct PairNftDepositWithAmount {
        uint32 mainTokenId;
        uint32 bakcTokenId;
        uint184 amount;
    }
    /// @dev Struct for withdrawing from the BAKC (Pair) pool
    struct PairNftWithdrawWithAmount {
        uint32 mainTokenId;
        uint32 bakcTokenId;
        uint184 amount;
        bool isUncommit;
    }
    /// @dev Struct for claiming from an NFT pool
    struct PairNft {
        uint128 mainTokenId;
        uint128 bakcTokenId;
    }

    function depositApeCoin(uint256 amount, address recipient) external;

    function depositSelfApeCoin(uint256 amount) external;

    function depositBAYC(SingleNft[] calldata nfts) external;

    function depositMAYC(SingleNft[] calldata nfts) external;

    function depositBAKC(
        PairNftDepositWithAmount[] calldata baycPairs,
        PairNftDepositWithAmount[] calldata maycPairs
    ) external;

    function claimApeCoin(address recipient) external;

    function claimSelfApeCoin() external;

    function claimBAYC(uint256[] calldata nfts, address recipient) external;

    function claimSelfBAYC(uint256[] calldata nfts) external;

    function claimMAYC(uint256[] calldata nfts, address recipient) external;

    function claimSelfMAYC(uint256[] calldata nfts) external;

    function claimBAKC(
        PairNft[] calldata baycPairs,
        PairNft[] calldata maycPairs,
        address recipient
    ) external;

    function claimSelfBAKC(
        PairNft[] calldata baycPairs,
        PairNft[] calldata maycPairs
    ) external;

    function withdrawApeCoin(uint256 amount, address recipient) external;

    function withdrawSelfApeCoin(uint256 amount) external;

    function withdrawBAYC(SingleNft[] calldata nfts, address recipient)
        external;

    function withdrawSelfBAYC(SingleNft[] calldata nfts) external;

    function withdrawMAYC(SingleNft[] calldata nfts, address recipient)
        external;

    function withdrawSelfMAYC(SingleNft[] calldata nfts) external;

    function withdrawBAKC(
        PairNftWithdrawWithAmount[] calldata baycPairs,
        PairNftWithdrawWithAmount[] calldata maycPairs
    ) external;
}
