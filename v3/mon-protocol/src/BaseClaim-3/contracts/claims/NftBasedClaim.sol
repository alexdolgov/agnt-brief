// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.20;

import {BaseClaim} from "./BaseClaim.sol";
import {INftBasedClaim} from "../interfaces/INftBasedClaim.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {SafeCast} from "@openzeppelin/contracts/utils/math/SafeCast.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {IERC721} from "@openzeppelin/contracts/token/ERC721/IERC721.sol";

/**
 * @title Nft Based Claim
 * @author jeet
 */
contract NftBasedClaim is BaseClaim, INftBasedClaim {
    using SafeERC20 for IERC20;
    using SafeCast for uint256;

    // all claims linked to a NFT
    mapping(address collectionAddress => mapping(uint256 tokenId => mapping(uint256 vestingScheduleId => VestingData vestingData)))
        public nftsVestingData;

    // Nft based claim specific errors
    error MaximumClaimableNftsExceeded();

    /////////////////////////////////////////////
    //       Getter View Fns
    /////////////////////////////////////////////
    /**
     * @dev Returns all vesting data for a NFT
     * @param _collectionAddress   collection address
     * @param _tokenId             specific token id
     */
    function getAllNftVestingData(
        address _collectionAddress,
        uint256 _tokenId
    ) external view returns (VestingData[] memory collectionVestingData) {
        uint256 len = vestingScheduleIds.length;
        VestingData[] memory _collectionVestingData = new VestingData[](len);

        for (uint256 i; i < len; ) {
            _collectionVestingData[i] = nftsVestingData[_collectionAddress][
                _tokenId
            ][vestingScheduleIds[i]];

            unchecked {
                ++i;
            }
        }

        return _collectionVestingData;
    }

    /**
     * @dev Returns all vesting data for set of tokens from a collection
     * @param _collectionAddress   collection address
     * @param _tokenIds            array of token id to retrieve data of
     */
    function getAllNftsVestingData(
        address _collectionAddress,
        uint256[] memory _tokenIds
    )
        external
        view
        returns (
            uint256[] memory tokenIds,
            VestingData[][] memory collectionVestingData
        )
    {
        uint256 vestingScheduleIdsCount = vestingScheduleIds.length;
        uint256 tokensCount = _tokenIds.length;

        tokenIds = _tokenIds;

        collectionVestingData = new VestingData[][](tokensCount);

        for (uint256 j; j < tokensCount; ) {
            VestingData[] memory tokenVestingData = new VestingData[](
                vestingScheduleIdsCount
            );

            for (uint256 i; i < vestingScheduleIdsCount; ) {
                tokenVestingData[i] = nftsVestingData[_collectionAddress][
                    _tokenIds[j]
                ][vestingScheduleIds[i]];

                unchecked {
                    ++i;
                }
            }

            collectionVestingData[j] = tokenVestingData;

            unchecked {
                ++j;
            }
        }

        return (tokenIds, collectionVestingData);
    }

    /**
     * @dev Returns the amount of unlocked tokens for all nfts
     * @param _collectionAddress collection address
     * @param _tokenIds specific token ids
     * @param _vestingScheduleId vesting schedule id
     */
    function getNftsVestingData(
        address _collectionAddress,
        uint256[] memory _tokenIds,
        uint256 _vestingScheduleId
    )
        public
        view
        returns (uint256[] memory tokenIds, VestingData[] memory vestingData)
    {
        uint256 len = _tokenIds.length;
        tokenIds = new uint256[](len);
        vestingData = new VestingData[](len);

        for (uint256 i; i < len; ) {
            tokenIds[i] = _tokenIds[i];
            vestingData[i] = nftsVestingData[_collectionAddress][_tokenIds[i]][
                _vestingScheduleId
            ];

            unchecked {
                ++i;
            }
        }
    }

    /**
     * @dev Returns the amount of unlocked tokens for all nfts
     * @param _collectionAddress collection address
     * @param _tokenIds specific token ids
     * @param _vestingScheduleId vesting schedule id
     * @return tokenIds array of token ids
     * @return nftsReleasableAmount array of releasable amounts
     */
    function computeNftsReleasableAmount(
        address _collectionAddress,
        uint256[] memory _tokenIds,
        uint256 _vestingScheduleId
    )
        public
        view
        returns (
            uint256[] memory tokenIds,
            uint120[] memory nftsReleasableAmount
        )
    {
        tokenIds = new uint256[](_tokenIds.length);
        nftsReleasableAmount = new uint120[](_tokenIds.length);
        for (uint256 i; i < _tokenIds.length; ) {
            tokenIds[i] = _tokenIds[i];
            nftsReleasableAmount[i] = _computeReleasableAmount(
                _vestingScheduleId,
                nftsVestingData[_collectionAddress][_tokenIds[i]][
                    _vestingScheduleId
                ]
            );

            unchecked {
                ++i;
            }
        }
    }

    /**
     * @dev Returns the amount of unlocked tokens for a collection and token IDs across all schedules
     * @param _collectionAddress collection address
     * @param _tokenIds array of token IDs
     * @return tokenIds array of token IDs
     * @return vestingScheduleIdsPerToken 2D array of vesting schedule IDs for each token ID
     * @return nftsReleasableAmount 2D array of releasable amounts for each token ID and vesting schedule ID
     */
    function computeNftsReleasableAmounts(
        address _collectionAddress,
        uint256[] calldata _tokenIds
    )
        public
        view
        returns (
            uint256[] memory tokenIds,
            uint256[][] memory vestingScheduleIdsPerToken,
            uint120[][] memory nftsReleasableAmount
        )
    {
        uint256 len = _tokenIds.length;
        tokenIds = new uint256[](len);
        vestingScheduleIdsPerToken = new uint256[][](len);
        nftsReleasableAmount = new uint120[][](len);

        uint256 vestingScheduleIdsCount = vestingScheduleIds.length;

        for (uint256 i; i < _tokenIds.length; ) {
            tokenIds[i] = _tokenIds[i];
            vestingScheduleIdsPerToken[i] = new uint256[](
                vestingScheduleIdsCount
            );
            nftsReleasableAmount[i] = new uint120[](vestingScheduleIdsCount);

            for (uint256 j; j < vestingScheduleIdsCount; ) {
                vestingScheduleIdsPerToken[i][j] = vestingScheduleIds[j];
                nftsReleasableAmount[i][j] = _computeReleasableAmount(
                    vestingScheduleIds[j],
                    nftsVestingData[_collectionAddress][_tokenIds[i]][
                        vestingScheduleIds[j]
                    ]
                );

                unchecked {
                    ++j;
                }
            }

            unchecked {
                ++i;
            }
        }
    }

    /////////////////////////////////////////////
    //        Admin Functions
    /////////////////////////////////////////////
    /**
     * NOTE: The liquidity has to checked/managed manually as well before allocating
     *
     * @notice Adds vesting data for a NFT collection.
     *         total amount has to be transfered before the schedule is created.
     * @param _collectionAddress      NFT collection address
     * @param _tokenIds               nft token Ids tied vested tokens
     * @param _vestingScheduleIds     array of vesing ids
     * @param _amounts                amount of tokens to be released at the end of the vesting
     */
    function addNftVestingData(
        address _collectionAddress,
        uint256[] calldata _tokenIds,
        uint256[] calldata _vestingScheduleIds,
        uint256[] calldata _amounts
    ) external onlyRole(DEFAULT_ADMIN_ROLE) {
        uint256 tokenIdsLength = _tokenIds.length;
        if (
            tokenIdsLength != _vestingScheduleIds.length ||
            tokenIdsLength != _amounts.length
        ) {
            revert MismatchedArrays();
        }

        uint256 totalAmount;

        for (uint256 i; i < tokenIdsLength; ) {
            if (vestingSchedules[_vestingScheduleIds[i]].start == 0)
                revert InvalidVestingScheduleId();

            totalAmount += _amounts[i];
            nftsVestingData[_collectionAddress][_tokenIds[i]][
                _vestingScheduleIds[i]
            ].amountTotal += _amounts[i].toUint120();

            unchecked {
                ++i;
            }
        }

        totalVestedAmount += totalAmount;
    }

    /**
     * @notice Revokes the vesting schedule for given identifier.
     * @dev note that revoking will send all releaseable tokens to the owner of the NFT
     * @param _collectionAddresses    address of the NFT
     * @param _vestingScheduleIds     unique id string
     * @param _tokenIds               nft token Ids tied vested tokens
     */
    function revoke(
        address[] calldata _collectionAddresses,
        uint256[] calldata _tokenIds,
        uint256[] calldata _vestingScheduleIds
    ) external onlyRole(DEFAULT_ADMIN_ROLE) nonReentrant {
        uint256 collectionAddressesLength = _collectionAddresses.length;
        if (
            collectionAddressesLength != _vestingScheduleIds.length ||
            collectionAddressesLength != _tokenIds.length
        ) {
            revert MismatchedArrays();
        }

        uint256 totalDeductedAmount;

        for (uint256 i; i < collectionAddressesLength; ) {
            VestingData storage vestingData = nftsVestingData[
                _collectionAddresses[i]
            ][_tokenIds[i]][_vestingScheduleIds[i]];

            if (vestingData.revoked) revert VestingIsRevoked();

            // the remaining amount that will be unvested for user
            totalDeductedAmount += (vestingData.amountTotal -
                vestingData.released);

            vestingData.revoked = true;

            unchecked {
                ++i;
            }
        }

        totalVestedAmount -= totalDeductedAmount;
    }

    ////////////////////////////////////////////
    //        Release
    ////////////////////////////////////////////
    /**
     * @notice Releases the tokens to the staking contract
     * @dev Only the claim registry is able to release tokens
     */
    function releaseToStaking(
        address _user,
        address[] calldata _collectionAddresses,
        uint256[] calldata _tokenIds,
        uint256[] calldata _vestingScheduleIds
    )
        external
        nonReentrant
        whenNotPaused
        onlyClaimRegistry
        returns (uint120 transferredAmount)
    {
        uint256 vestingScheduleIdsLength = _vestingScheduleIds.length;

        // Do not allow the user to claim more than 750 NFTs at once, to avoid the gas limit
        if (vestingScheduleIdsLength > 750) {
            revert MaximumClaimableNftsExceeded();
        }

        if (
            vestingScheduleIdsLength != _tokenIds.length ||
            vestingScheduleIdsLength != _collectionAddresses.length
        ) {
            revert MismatchedArrays();
        }

        for (uint256 i; i < vestingScheduleIdsLength; ) {
            address _collectionAddress = _collectionAddresses[i];
            uint256 _tokenId = _tokenIds[i];
            uint256 _vestingScheduleId = _vestingScheduleIds[i];

            VestingData storage vestingData = nftsVestingData[
                _collectionAddress
            ][_tokenId][_vestingScheduleId];

            if (vestingData.revoked) revert VestingIsRevoked();

            if (IERC721(_collectionAddress).ownerOf(_tokenId) != _user)
                revert NotNftOwner();

            uint120 amount = _computeReleasableAmount(
                _vestingScheduleId,
                vestingData
            );

            if (amount <= 0) revert NoReleasableFunds();

            // Update the released amount
            vestingData.released += amount;

            // Transfer the amount
            monToken.safeTransfer(address(staking), uint256(amount));

            // Update the amount transfered
            transferredAmount += amount;

            unchecked {
                ++i;
            }
        }
    }
}
