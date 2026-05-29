// SPDX-License-Identifier: MIT
pragma solidity 0.8.14;

interface IParaSpaceProxy {
    struct ERC721SupplyParams {
        uint256 tokenId;
        bool useAsCollateral;
    }

    struct StakingInfo {
        // Contract address of BAYC/MAYC
        address nftAsset;
        // address of borrowing asset, can be Ape or cApe
        address borrowAsset;
        // Borrow amount of Ape from lending pool
        uint256 borrowAmount;
        // Cash amount of Ape from user wallet
        uint256 cashAmount;
    }
    struct SingleNft {
        uint32 tokenId;
        uint224 amount;
    }
    struct PairNftDepositWithAmount {
        uint32 mainTokenId;
        uint32 bakcTokenId;
        uint184 amount;
    }
    struct PairNftWithdrawWithAmount {
        uint32 mainTokenId;
        uint32 bakcTokenId;
        uint184 amount;
        bool isUncommit;
    }
    struct PairNft {
        uint128 mainTokenId;
        uint128 bakcTokenId;
    }

    function supply(
        address asset,
        uint256 amount,
        address onBehalfOf,
        uint16 referralCode
    ) external;

    function supplyERC721(
        address asset,
        ERC721SupplyParams[] calldata tokenData,
        address onBehalfOf,
        uint16 referralCode
    ) external;

    function supplyERC721FromNToken(
        address asset,
        ERC721SupplyParams[] calldata tokenData,
        address onBehalfOf
    ) external;

    function supplyWithPermit(
        address asset,
        uint256 amount,
        address onBehalfOf,
        uint16 referralCode,
        uint256 deadline,
        uint8 permitV,
        bytes32 permitR,
        bytes32 permitS
    ) external;

    function withdraw(
        address asset,
        uint256 amount,
        address to
    ) external returns (uint256);

    function withdrawERC721(
        address asset,
        uint256[] calldata tokenIds,
        address to
    ) external returns (uint256);

    function setUserUseERC20AsCollateral(
        address asset,
        bool useAsCollateral
    ) external;

    function setUserUseERC721AsCollateral(
        address asset,
        uint256[] calldata tokenIds,
        bool useAsCollateral
    ) external;

    function borrowApeAndStake(
        StakingInfo calldata stakingInfo,
        SingleNft[] calldata _nfts,
        PairNftDepositWithAmount[] calldata _nftPairs
    ) external;

    function withdrawApeCoin(
        address nftAsset,
        SingleNft[] calldata _nfts
    ) external;

    function claimApeCoin(address nftAsset, uint256[] calldata _nfts) external;

    function withdrawBAKC(
        address nftAsset,
        PairNftWithdrawWithAmount[] calldata _nftPairs
    ) external;

    function claimBAKC(address nftAsset, PairNft[] calldata _nftPairs) external;
}
