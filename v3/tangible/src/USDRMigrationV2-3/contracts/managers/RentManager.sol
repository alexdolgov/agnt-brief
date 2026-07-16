// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/token/ERC721/IERC721.sol";
import "@openzeppelin/contracts/utils/math/Math.sol";
import "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";

// fTNFT interface declaration
interface IfTNFT is IERC721 {
    function fractionShares(uint256 tokenId) external view returns (uint256);

    function fullShare() external view returns (uint256);
}

/**
 * @title Rent Manager
 * @author Caesar LaVey
 * @dev This contract is a system for managing the deposit, vesting, and claiming of rent for NFTs.
 *
 * This contract allows users to deposit rent for specific NFTs, check how much rent is claimable for a token, claim the
 * rent for a token, and handle the fractionalization and defractionalization of NFTs.
 *
 * The system supports both regular NFTs (TNFTs) and fractionalized NFTs (fTNFTs). In the case of fTNFTs, the rent is
 * split among the fraction tokens based on their shares.
 *
 * The contract uses a time-based linear vesting system. A user can deposit rent for a token for a specified period of
 * time. The rent then vests linearly over that period, and the owner of the token can claim the vested rent at any time.
 *
 * The contract keeps track of the deposited, claimed, and unclaimed amounts for each token.
 * When an NFT is fractionalized, the contract splits these amounts among the fraction tokens based on their shares.
 * When an NFT is defractionalized, the contract aggregates these amounts from the fraction tokens.
 *
 * The contract also provides a function to calculate the claimable rent for a token or a fraction token.
 *
 * To ensure that only valid fTNFTs can interact with the contract, the contract includes a whitelisting system.
 * A fractional TNFT contract must be whitelisted and associated with a TNFT token id before it can interact with the
 * contract.
 *
 * The contract emits events for rent deposits, fractionalizations, and defractionalizations.
 *
 * @custom:tester Milica Mihailovic
 */
contract RentManager is Ownable {
    using EnumerableSet for EnumerableSet.UintSet;
    using Math for uint256;
    using SafeERC20 for IERC20;

    struct FractionalRentInfo {
        uint256 depositAmount;
        uint256 claimedAmount;
        uint256 unclaimedAmount;
    }

    struct RentInfo {
        uint256 depositAmount;
        uint256 claimedAmount;
        uint256 unclaimedAmount;
        uint256 depositTime;
        uint256 endTime;
        address rentToken;
    }

    address public immutable TNFT_ADDRESS;
    address public depositor;
    address public factory;

    // Mapping: tokenId => RentInfo
    mapping(uint256 => RentInfo) public rentInfo;

    // Mapping: fTNFT token address => tokenId => fractional RentInfo
    mapping(address => mapping(uint256 => FractionalRentInfo)) private fractionalRentInfo;

    // Mapping: fTNFT token address => whitelisted
    mapping(address => bool) private whitelistedNFTs;

    // Mapping: TNFT token id => fTNFT address
    mapping(uint256 => address) private fractionalNFTs;

    // Mapping: fTNFT address => TNFT token id
    mapping(address => uint256) private tnftTokenIds;

    // Mapping: TNFT tokenId => fTNFT tokenId set
    mapping(uint256 => EnumerableSet.UintSet) private fractionalTokenIds;

    /**
     * @dev Emitted when rent is deposited for a token.
     *
     * @param depositor The address of the user who deposited the rent.
     * @param tokenId The ID of the token for which rent was deposited.
     * @param rentToken The address of the token used to pay the rent.
     * @param amount The amount of rent deposited.
     */
    event RentDeposited(address depositor, uint256 indexed tokenId, address rentToken, uint256 amount);

    /**
     * @dev Emitted when rent is claimed for a token.
     *
     * @param claimer The address of the user who claimed the rent.
     * @param nft The address of the NFT contract.
     * @param tokenId The ID of the token for which rent was claimed.
     * @param rentToken The address of the token used to pay the rent.
     * @param amount The amount of rent claimed.
     */
    event RentClaimed(
        address indexed claimer,
        address indexed nft,
        uint256 indexed tokenId,
        address rentToken,
        uint256 amount
    );

    /**
     * @dev Emitted when an NFT is fractionalized.
     *
     * @param originalNFT The address of the original NFT.
     * @param originalTokenId The ID of the original NFT.
     * @param fractionNFT The address of the fractional NFT.
     * @param fractionTokenIds The IDs of the fractional tokens.
     */
    event Fractionalized(
        address indexed originalNFT,
        uint256 originalTokenId,
        address fractionNFT,
        uint256[] fractionTokenIds
    );

    /**
     * @dev Emitted when a fractionalized NFT is defractionalized.
     *
     * @param originalNFT The address of the original NFT.
     * @param originalTokenIds The IDs of the original NFTs.
     * @param defractionalizedNFT The address of the defractionalized NFT.
     * @param defractionalizedTokenId The ID of the defractionalized NFT.
     */
    event Defractionalized(
        address indexed originalNFT,
        uint256[] originalTokenIds,
        address defractionalizedNFT,
        uint256 defractionalizedTokenId
    );

    /**
     * @dev Emitted when a fractional TNFT is whitelisted.
     *
     * @param fractionalNFT The address of the fractional TNFT.
     * @param tnftTokenId The ID of the TNFT token.
     */
    event WhitelistedFractionalTNFT(address indexed fractionalNFT, uint256 tnftTokenId);

    /**
     * @dev Constructor that initializes the TNFT contract address.
     * @param _tnftAddress The address of the TNFT contract.
     */
    constructor(address _tnftAddress) {
        require(_tnftAddress != address(0), "TNFT address cannot be 0");
        TNFT_ADDRESS = _tnftAddress;
    }

    /**
     * @dev Function to update the address of the rent depositor.
     * Only callable by the owner of the contract.
     * @param _newDepositor The address of the new rent depositor.
     */
    function updateDepositor(address _newDepositor) external onlyOwner {
        require(_newDepositor != address(0), "Depositor address cannot be 0");
        depositor = _newDepositor;
    }

    /**
     * @dev Function to update the address of the factory contract.
     * Only callable by the owner of the contract.
     * @param _newFactory The address of the new factory contract.
     */
    function updateFactory(address _newFactory) external onlyOwner {
        require(_newFactory != address(0), "Factory address cannot be 0");
        factory = _newFactory;
    }

    /**
     * @dev Allows the rent depositor to deposit rent for a specific token.
     *
     * This function requires the caller to be the current rent depositor.
     * It also checks whether the specified end time is in the future.
     * If the token's current rent token is either the zero address or the same as the provided token address,
     * the function allows the deposit.
     *
     * The function first transfers the specified amount of the rent token from the depositor to the contract.
     * If the token's rent token is the zero address, it sets the rent token to the provided token address.
     *
     * The function then calculates the token's vested amount.
     *
     * If the token is fractionalized, the function propagates the deposit to all fraction tokens of the token.
     *
     * The function then calculates the token's unvested amount, updates the token's unclaimed amount,
     * resets the token's claimed amount, adds the deposit amount to the token's unvested amount,
     * updates the deposit time, and sets the end time.
     *
     * Finally, the function emits a `RentDeposited` event.
     *
     * @param tokenId The ID of the token for which to deposit rent.
     * @param tokenAddress The address of the rent token to deposit.
     * @param amount The amount of the rent token to deposit.
     * @param endTime The end time of the rent deposit.
     */
    function deposit(
        uint256 tokenId,
        address tokenAddress,
        uint256 amount,
        uint256 endTime
    ) external {
        require(msg.sender == depositor, "Only the rent depositor can call this function");
        require(endTime > block.timestamp, "End time must be in the future");
        RentInfo storage rent = rentInfo[tokenId];
        require(rent.rentToken == address(0) || rent.rentToken == tokenAddress, "Invalid rent token");

        IERC20(tokenAddress).safeTransferFrom(msg.sender, address(this), amount);

        if (rent.rentToken == address(0)) {
            rent.rentToken = tokenAddress;
        }

        uint256 vestedAmount = _vestedAmount(rent);

        if (_isFractionalized(tokenId)) {
            address fractionalNFT = fractionalNFTs[tokenId];
            IfTNFT fractionNFT = IfTNFT(fractionalNFT);
            _propagateDeposit(
                fractionalNFT,
                fractionalTokenIds[tokenId].values(),
                fractionNFT.fullShare(),
                vestedAmount,
                amount
            );
        }

        uint256 unvestedAmount = rent.depositAmount - vestedAmount;
        rent.unclaimedAmount = vestedAmount - rent.claimedAmount;
        rent.claimedAmount = 0;
        rent.depositAmount = unvestedAmount + amount;
        rent.depositTime = block.timestamp;
        rent.endTime = endTime;

        emit RentDeposited(msg.sender, tokenId, tokenAddress, amount);
    }

    /**
     * @dev Returns the amount of rent that can be claimed for a given token.
     *
     * If the NFT is a TNFT, the function calculates the claimable rent based on the rent info of the token.
     * If the NFT is a fractionalized NFT, the function calculates the claimable rent based on the fraction share of the
     * token.
     *
     * @param nft The address of the NFT contract.
     * @param tokenId The ID of the token.
     * @return The amount of claimable rent for the token.
     */
    function claimableRentForToken(address nft, uint256 tokenId) public view returns (uint256) {
        if (nft == TNFT_ADDRESS) {
            RentInfo storage rent = rentInfo[tokenId];
            return rent.unclaimedAmount + _vestedAmount(rent) - rent.claimedAmount;
        } else {
            require(whitelistedNFTs[nft], "Invalid fTNFT");
            IfTNFT fractionalNFT = IfTNFT(nft);
            uint256 tnftTokenId = tnftTokenIds[nft];
            RentInfo storage rent = rentInfo[tnftTokenId];
            return
                _claimableRentForFraction(
                    nft,
                    tokenId,
                    _vestedAmount(rent),
                    fractionalNFT.fractionShares(tokenId),
                    fractionalNFT.fullShare()
                );
        }
    }

    /**
     * @dev Allows the owner of a token to claim their rent.
     *
     * The function first checks that the caller is the owner of the token.
     * It then retrieves the amount of claimable rent for the token and requires that the amount is greater than zero,
     * and that the token is either not a TNFT or is a non-fractionalized TNFT.
     *
     * If the NFT is a fTNFT, the function also updates the claimed and unclaimed amounts of the fractional rent info of
     * the token.
     *
     * In both cases, the function updates the claimed and unclaimed amounts of the rent info of the corresponding TNFT
     * token.
     *
     * The function then transfers the claimable rent to the caller and emits a `RentClaimed` event.
     *
     * @param nft The address of the NFT contract.
     * @param tokenId The ID of the token.
     */
    function claimRentForToken(address nft, uint256 tokenId) external {
        IERC721 nftContract = IERC721(nft);
        require(nftContract.ownerOf(tokenId) == msg.sender, "Caller is not the owner of the token");

        uint256 claimableRent = claimableRentForToken(nft, tokenId);
        require(claimableRent > 0 && (nft != TNFT_ADDRESS || !_isFractionalized(tokenId)), "No rent to claim");

        RentInfo storage rent;

        if (nft != TNFT_ADDRESS) {
            uint256 tnftTokenId = tnftTokenIds[nft];
            rent = rentInfo[tnftTokenId];
            FractionalRentInfo storage fractionalRent = fractionalRentInfo[nft][tokenId];
            fractionalRent.claimedAmount += claimableRent - fractionalRent.unclaimedAmount;
            fractionalRent.unclaimedAmount = 0;
        } else {
            rent = rentInfo[tokenId];
        }

        if (rent.unclaimedAmount > 0) {
            if (rent.unclaimedAmount < claimableRent) {
                unchecked {
                    rent.claimedAmount += claimableRent - rent.unclaimedAmount;
                    rent.unclaimedAmount = 0;
                }
            } else {
                unchecked {
                    rent.unclaimedAmount -= claimableRent;
                }
            }
        } else {
            rent.claimedAmount += claimableRent;
        }
        IERC20(rent.rentToken).safeTransfer(msg.sender, claimableRent);

        emit RentClaimed(msg.sender, nft, tokenId, rent.rentToken, claimableRent);
    }

    /**
     * @dev Handles the fractionalization of an NFT.
     *
     * This function is intended to be called by a fractionalized NFT (fTNFT) contract when an NFT is fractionalized.
     * It requires the caller to be a whitelisted fractionalized NTF contract.
     *
     * The function first checks if the original NFT is not a TNFT. If so, it retrieves the fractional rent info of the
     * original token and the ID of the TNFT token that corresponds to the fractionalized NFT. It also removes the
     * original token ID from the list of fractional token IDs of the TNFT token.
     * If the original NFT is a TNFT, the function retrieves the rent info of the original token and sets the ID of the
     * TNFT token to be the original token ID. It also sets the fractionalized NFT of the original token to be the
     * fractionalized NFT.
     *
     * The function then adds each fraction token ID to the list of fractional token IDs of the TNFT token.
     *
     * It then calls the `_splitRentInfo` function to split the deposited, claimed, and unclaimed amounts among the
     * fraction tokens based on their shares.
     *
     * Finally, the function emits a `Fractionalized` event.
     *
     * @param originalNFT The address of the original NFT contract.
     * @param originalTokenId The ID of the original token.
     * @param originalShare The total number of shares before the fractionalization.
     * @param fractionNFT The address of the fractionalized NFT contract.
     * @param fractionTokenIds An array of the token IDs representing the fraction tokens of the fractionalized NFT.
     */
    function onFractionalize(
        address originalNFT,
        uint256 originalTokenId,
        uint256 originalShare,
        address fractionNFT,
        uint256[] calldata fractionTokenIds
    ) external {
        require(whitelistedNFTs[msg.sender], "Only whitelisted fTNTFs can call this function");

        uint256 totalDeposited;
        uint256 totalClaimed;
        uint256 totalUnclaimed;
        uint256 tnftTokenId;

        bool replace;

        if (originalNFT != TNFT_ADDRESS) {
            FractionalRentInfo storage fractionalRent = fractionalRentInfo[originalNFT][originalTokenId];
            totalDeposited = fractionalRent.depositAmount;
            totalClaimed = fractionalRent.claimedAmount;
            totalUnclaimed = fractionalRent.unclaimedAmount;
            tnftTokenId = tnftTokenIds[fractionNFT];
            replace = _arrayContains(fractionTokenIds, originalTokenId);
            if (!replace) {
                fractionalTokenIds[tnftTokenId].remove(originalTokenId);
            }
        } else {
            RentInfo storage rent = rentInfo[originalTokenId];
            totalDeposited = rent.depositAmount;
            totalClaimed = rent.claimedAmount;
            totalUnclaimed = rent.unclaimedAmount;
            tnftTokenId = originalTokenId;
            replace = false;
            fractionalNFTs[originalTokenId] = fractionNFT;
        }

        for (uint256 i = 0; i < fractionTokenIds.length; i++) {
            uint256 fractionTokenId = fractionTokenIds[i];
            if (!replace || originalTokenId != fractionTokenId) {
                fractionalTokenIds[tnftTokenId].add(fractionTokenId);
            }
        }

        _splitRentInfo(
            IfTNFT(fractionNFT),
            fractionTokenIds,
            originalShare,
            totalDeposited,
            totalClaimed,
            totalUnclaimed
        );

        emit Fractionalized(originalNFT, originalTokenId, fractionNFT, fractionTokenIds);
    }

    /**
     * @dev Handles the defractionalization of an NFT.
     *
     * This function is intended to be called by a fractionalized NFT (fTNFT) contract when an NFT is defractionalized.
     * It requires the caller to be a whitelisted fTNFT contract.
     *
     * The function first determines the ID of the TNFT token that corresponds to the defractionalized NFT. It then
     * loops over the original token IDs of the fractionalized NFT and aggregates their deposited, claimed, and
     * unclaimed amounts. It also deletes the fractional rent info of each original token and removes its ID from the
     * list of fractional token IDs of the TNFT token.
     *
     * If the defractionalized NFT is not a TNFT, the function updates the fractional rent info of the defractionalized
     * token with the total deposited, claimed, and unclaimed amounts and adds its ID to the list of fractional token
     * IDs of the TNFT token.
     *
     * Finally, the function emits a `Defractionalized` event.
     *
     * @param originalNFT The address of the original NFT contract.
     * @param originalTokenIds An array of the original token IDs of the fractionalized NFT.
     * @param defractionalizedNFT The address of the defractionalized NFT contract.
     * @param defractionalizedTokenId The ID of the defractionalized token.
     */
    function onDefractionalize(
        address originalNFT,
        uint256[] calldata originalTokenIds,
        address defractionalizedNFT,
        uint256 defractionalizedTokenId
    ) external {
        require(whitelistedNFTs[msg.sender], "Only whitelisted fTNTFs can call this function");

        uint256 totalDeposited = 0;
        uint256 totalClaimed = 0;
        uint256 totalUnclaimed = 0;
        uint256 tnftTokenId = (defractionalizedNFT != TNFT_ADDRESS)
            ? tnftTokenIds[defractionalizedNFT]
            : defractionalizedTokenId;

        bool replace = originalNFT == defractionalizedNFT && _arrayContains(originalTokenIds, defractionalizedTokenId);
        for (uint256 i = 0; i < originalTokenIds.length; i++) {
            uint256 originalTokenId = originalTokenIds[i];
            FractionalRentInfo storage fractionalRent = fractionalRentInfo[originalNFT][originalTokenId];
            totalDeposited += fractionalRent.depositAmount;
            totalClaimed += fractionalRent.claimedAmount;
            totalUnclaimed += fractionalRent.unclaimedAmount;
            if (!replace || originalTokenId != defractionalizedTokenId) {
                delete fractionalRentInfo[originalNFT][originalTokenId];
                fractionalTokenIds[tnftTokenId].remove(originalTokenId);
            }
        }

        if (defractionalizedNFT != TNFT_ADDRESS) {
            FractionalRentInfo storage fractionalRent = fractionalRentInfo[defractionalizedNFT][
                defractionalizedTokenId
            ];
            fractionalRent.depositAmount = totalDeposited;
            fractionalRent.claimedAmount = totalClaimed;
            fractionalRent.unclaimedAmount = totalUnclaimed;
            if (!replace) {
                fractionalTokenIds[tnftTokenId].add(defractionalizedTokenId);
            }
        }

        emit Defractionalized(originalNFT, originalTokenIds, defractionalizedNFT, defractionalizedTokenId);
    }

    /**
     * @dev Whitelists a new fractional TNFT contract and associates it with a TNFT token id.
     *
     * This function can only be called by the Tangible factory contract and should be invoked on the initial
     * fractionalization of a TNFT. This is to ensure that only valid fTNFTs created by the factory contract can
     * interact with this contract. The association of a TNFT token ID with the fractional NFT address helps in keeping
     * track of the origin of the fractional NFTs.
     *
     * @param fractionalNFT The address of the fractional TNFT contract to be whitelisted.
     * @param tnftTokenId The TNFT token id associated with the fractional TNFT.
     */
    function whitelistFractionalTNFT(address fractionalNFT, uint256 tnftTokenId) external {
        require(msg.sender == factory, "Only the factory contract can call this function");
        whitelistedNFTs[fractionalNFT] = true;
        tnftTokenIds[fractionalNFT] = tnftTokenId;

        emit WhitelistedFractionalTNFT(fractionalNFT, tnftTokenId);
    }

    /**
     * @dev Calculates the amount of rent that can be claimed for a fraction token.
     *
     * The function first calculates the vested amount for the fraction share of the token. It then retrieves the
     * fractional rent info of the token and calculates the claimable rent based on the vested amount and the claimed
     * amount.
     *
     * @param fractionalNFT The address of the fractionalized NFT contract.
     * @param fractionalTokenId The ID of the fraction token.
     * @param totalVested The total vested amount for the original token.
     * @param share The share of the fraction token.
     * @param fullShare The total number of shares of the fractionalized NFT.
     * @return The amount of claimable rent for the fraction token.
     */
    function _claimableRentForFraction(
        address fractionalNFT,
        uint256 fractionalTokenId,
        uint256 totalVested,
        uint256 share,
        uint256 fullShare
    ) private view returns (uint256) {
        uint256 vested = totalVested.mulDiv(share, fullShare);
        FractionalRentInfo storage fractionalRent = fractionalRentInfo[fractionalNFT][fractionalTokenId];
        return fractionalRent.unclaimedAmount + vested - fractionalRent.claimedAmount;
    }

    /**
     * @dev Checks whether a TNFT is fractionalized.
     *
     * This internal function takes a token ID and checks whether it's associated with a fractional NFT and has fraction
     * tokens. If both conditions are met, the function returns true, indicating that the token is fractionalized.
     *
     * @param tokenId The ID of the TNFT to be checked.
     *
     * @return A boolean indicating whether the TNFT is fractionalized.
     */
    function _isFractionalized(uint256 tokenId) private view returns (bool) {
        address fractionalNFT = fractionalNFTs[tokenId];
        if (fractionalNFT != address(0)) {
            return fractionalTokenIds[tokenId].length() > 0;
        }
        return false;
    }

    /**
     * @dev Propagates a deposit across all fractional NFTs, updating their rent info.
     *
     * This internal function takes the address of a fractional NFT, an array of fraction token IDs, a full share
     * amount, a vested amount, and a deposit amount. It then updates the deposit, claimed, and unclaimed amounts for
     * each fraction token based on its proportionate share of the full share.
     *
     * The function uses fixed-point math to ensure precision, rounding down for deposit and vested amounts. The updated
     * values are stored in the `fractionalRentInfo` mapping for later retrieval.
     *
     * @param fractionalNFT The address of the fractional NFT whose rent info is to be updated.
     * @param fractionTokenIds An array of token IDs representing the fraction tokens of the fractional NFT.
     * @param fullShare The total number of shares.
     * @param vestedAmount The amount of rent that has vested before the deposit was made.
     * @param depositAmount The amount of rent being deposited.
     */
    function _propagateDeposit(
        address fractionalNFT,
        uint256[] memory fractionTokenIds,
        uint256 fullShare,
        uint256 vestedAmount,
        uint256 depositAmount
    ) private {
        IfTNFT fractionNFT = IfTNFT(fractionalNFT);
        for (uint256 i = 0; i < fractionTokenIds.length; i++) {
            uint256 fractionTokenId = fractionTokenIds[i];
            uint256 share = fractionNFT.fractionShares(fractionTokenId);
            uint256 fractionalDepositAmount = depositAmount.mulDiv(share, fullShare);
            uint256 fractionalVestedAmount = vestedAmount.mulDiv(share, fullShare);
            FractionalRentInfo storage fractionalRent = fractionalRentInfo[fractionalNFT][fractionTokenId];
            uint256 fractionalUnvestedAmount = fractionalRent.depositAmount - fractionalVestedAmount;
            fractionalRent.unclaimedAmount =
                fractionalRent.unclaimedAmount +
                fractionalVestedAmount -
                fractionalRent.claimedAmount;
            fractionalRent.claimedAmount = 0;
            fractionalRent.depositAmount = fractionalUnvestedAmount + fractionalDepositAmount;
        }
    }

    /**
     * @dev Splits rent information among fractional NFTs based on their shares.
     *
     * This internal function takes a fractional NFT and an array of fraction token IDs, along with the original share,
     * total deposited, total claimed, and total unclaimed amounts. It then calculates the deposit, claimed, and
     * unclaimed amounts for each fraction token, based on its proportionate share of the original share.
     *
     * The function uses fixed-point math to ensure precision, rounding up for claimed amounts and rounding down for
     * deposited and unclaimed amounts. The results are stored in the `fractionalRentInfo` mapping for later retrieval.
     *
     * @param fractionalNFT The fractional NFT whose rent information is to be split.
     * @param fractionTokenIds An array of token IDs representing the fraction tokens of the fractional NFT.
     * @param originalShare The total number of shares before the deposit was made.
     * @param totalDeposited The total amount deposited before the split.
     * @param totalClaimed The total amount claimed before the split.
     * @param totalUnclaimed The total amount unclaimed before the split.
     */
    function _splitRentInfo(
        IfTNFT fractionalNFT,
        uint256[] memory fractionTokenIds,
        uint256 originalShare,
        uint256 totalDeposited,
        uint256 totalClaimed,
        uint256 totalUnclaimed
    ) private {
        for (uint256 i = 0; i < fractionTokenIds.length; i++) {
            uint256 fractionTokenId = fractionTokenIds[i];
            uint256 share = fractionalNFT.fractionShares(fractionTokenId);
            uint256 depositedForFraction = totalDeposited.mulDiv(share, originalShare);
            fractionalRentInfo[address(fractionalNFT)][fractionTokenId] = FractionalRentInfo({
                depositAmount: depositedForFraction,
                claimedAmount: totalClaimed.mulDiv(share, originalShare, Math.Rounding.Up),
                unclaimedAmount: totalUnclaimed.mulDiv(share, originalShare)
            });
        }
    }

    /**
     * @dev Calculates the vested amount for a rent deposit.
     *
     * If the current time is past the end time of the rent period, the function returns the deposit amount.
     * If the current time is before the end time of the rent period, the function calculates the vested amount based on
     * the elapsed time and the vesting duration.
     *
     * @param rent The storage pointer to the rent info of a token.
     * @return The vested amount for the rent deposit.
     */
    function _vestedAmount(RentInfo storage rent) private view returns (uint256) {
        if (block.timestamp >= rent.endTime) {
            return rent.depositAmount;
        } else {
            uint256 elapsedTime = block.timestamp - rent.depositTime;
            uint256 vestingDuration = rent.endTime - rent.depositTime;
            return rent.depositAmount.mulDiv(elapsedTime, vestingDuration);
        }
    }

    /**
     * @dev A private helper function to check if an array contains a specific element.
     *
     * The function iterates over the input array and returns true as soon as the specified element is found.
     * If the element is not found in the array, the function returns false.
     * This function is primarily used for gas optimization in other functions.
     *
     * @param elements The array of unsigned integers to search through.
     * @param element The unsigned integer value to look for within the array.
     * @return A boolean value indicating whether the array contains the specified element.
     */
    function _arrayContains(uint256[] calldata elements, uint256 element) private pure returns (bool) {
        for (uint256 i = 0; i < elements.length; i++) {
            if (elements[i] == element) return true;
        }
        return false;
    }
}
