// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import {IERC721, IGlobalDistributor, NFTStrategy} from "../../NFTStrategy.sol";

/// @notice Interface for the Chimpers migration contract
interface IChimpersMigration {
    /// @notice Migrate multiple tokens (max 100)
    /// @param tokenIds Array of token IDs to migrate
    function claimBatch(uint256[] calldata tokenIds) external;
}

/// @title ChimpStrategy - An custom strategy for Chimpers
/// @author TokenWorks (https://token.works/)
contract ChimpStrategy is NFTStrategy {
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™                ™™™™™™™™™™™                ™™™™™™™™™™™ */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™               ™™™™™™™™™™™™™              ™™™™™™™™™™  */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™              ™™™™™™™™™™™™™              ™™™™™™™™™™™  */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™             ™™™™™™™™™™™™™™            ™™™™™™™™™™™   */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™            ™™™™™™™™™™™™™™™            ™™™™™™™™™™™   */
    /*                ™™™™™™™™™™™            ™™™™™™™™™™™           ™™™™™™™™™™™™™™™           ™™™™™™™™™™™    */
    /*                ™™™™™™™™™™™             ™™™™™™™™™™          ™™™™™™™™™™™™™™™™™          ™™™™™™™™™™™    */
    /*                ™™™™™™™™™™™             ™™™™™™™™™™          ™™™™™™™™™™™™™™™™™          ™™™™™™™™™™     */
    /*                ™™™™™™™™™™™              ™™™™™™™™™™        ™™™™™™™™™™™™™™™™™™™        ™™™™™™™™™™™     */
    /*                ™™™™™™™™™™™              ™™™™™™™™™™™       ™™™™™™™™™ ™™™™™™™™™       ™™™™™™™™™™™      */
    /*                ™™™™™™™™™™™               ™™™™™™™™™™      ™™™™™™™™™™ ™™™™™™™™™™      ™™™™™™™™™™™      */
    /*                ™™™™™™™™™™™               ™™™™™™™™™™      ™™™™™™™™™   ™™™™™™™™™      ™™™™™™™™™™       */
    /*                ™™™™™™™™™™™                ™™™™™™™™™™    ™™™™™™™™™™    ™™™™™™™™™    ™™™™™™™™™™        */
    /*                ™™™™™™™™™™™                 ™™™™™™™™™™   ™™™™™™™™™     ™™™™™™™™™™  ™™™™™™™™™™™        */
    /*                ™™™™™™™™™™™                 ™™™™™™™™™™  ™™™™™™™™™™     ™™™™™™™™™™  ™™™™™™™™™™         */
    /*                ™™™™™™™™™™™                  ™™™™™™™™™™™™™™™™™™™™       ™™™™™™™™™™™™™™™™™™™™          */
    /*                ™™™™™™™™™™™                   ™™™™™™™™™™™™™™™™™™         ™™™™™™™™™™™™™™™™™™           */
    /*                ™™™™™™™™™™™                   ™™™™™™™™™™™™™™™™™™         ™™™™™™™™™™™™™™™™™™           */
    /*                ™™™™™™™™™™™                    ™™™™™™™™™™™™™™™™           ™™™™™™™™™™™™™™™™            */
    /*                ™™™™™™™™™™™                     ™™™™™™™™™™™™™™             ™™™™™™™™™™™™™™             */
    /*                ™™™™™™™™™™™                     ™™™™™™™™™™™™™™             ™™™™™™™™™™™™™™             */
    /*                ™™™™™™™™™™™                      ™™™™™™™™™™™™               ™™™™™™™™™™™™              */
    
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */
    /*                      CONSTANTS                      */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */

    /// @notice Address of the legacy Chimpers collection (pre-ERC721C migration)
    address public constant LEGACY_CHIMPERS = 0x80336Ad7A747236ef41F47ed2C7641828a480BAA;

    /// @notice Address of the Chimpers migration contract
    address public constant MIGRATION_CONTRACT = 0x1F06e7B8cd9137b21B697ac278127d19972eA80E;

    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */
    /*                       EVENTS                        */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */

    /// @notice Emitted when the collection address is changed
    event CollectionUpdated(address collection);

    /// @notice Emitted when NFTs are migrated to the new collection
    event NFTsMigrated(uint256[] tokenIds);

    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */
    /*                 MECHANISM FUNCTIONS                 */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */

    /// @notice Buys a specific NFT using accumulated fees
    /// @param value Amount of ETH to spend on the NFT purchase
    /// @param data Calldata for the external marketplace call
    /// @param expectedId The token ID expected to be acquired
    /// @param target The marketplace contract to call
    /// @dev Protected against reentrancy, validates NFT acquisition
    function buyTargetNFT(
        uint256 value,
        bytes calldata data,
        uint256 expectedId,
        address target
    ) external override nonReentrant {
        // Store both balance and nft amount before calling external
        uint256 ethBalanceBefore = address(this).balance;
        uint256 nftBalanceBefore = collection.balanceOf(address(this));

        // Make sure we are not owner of the expected id
        if (collection.ownerOf(expectedId) == address(this)) {
            revert AlreadyNFTOwner();
        }

        // Ensure value is not more than currentFees
        if (value > currentFees) {
            revert NotEnoughEth();
        }

        // Ensure value doesn't exceed the time-based maximum price
        if (value > getMaxPriceForBuy()) {
            revert PriceTooHigh();
        }

        // Ensure target is not the collection itself
        if (target == address(collection)) revert InvalidTarget();

        // Call external
        (bool success, bytes memory reason) = target.call{value: value}(data);
        if (!success) {
            revert ExternalCallFailed(reason);
        }

        // Ensure we now have one more NFT
        uint256 nftBalanceAfter = collection.balanceOf(address(this));

        if (nftBalanceAfter != nftBalanceBefore + 1) {
            revert NeedToBuyNFT();
        }

        // Ensure we are now owner of expectedId
        if (collection.ownerOf(expectedId) != address(this)) {
            revert NotNFTOwner();
        }

        // Calculate actual cost of the NFT to base new price on
        uint256 cost = ethBalanceBefore - address(this).balance;
        currentFees -= cost;

        uint256 multiplier;
        if (priceMultiplier == 6900) {
            // Generate random number between 1.1x (1100) and 2.0x (2000) in 0.1x increments
            bytes32 hash = keccak256(
                abi.encodePacked(block.timestamp, msg.sender)
            );
            multiplier = 1100 + (uint256(hash) % 10) * 100;
        } else {
            multiplier = priceMultiplier;
        }

        // List NFT for sale at multiplier times the cost
        uint256 salePrice = (cost * multiplier) / 1000;
        nftForSale[expectedId] = salePrice;

        // Update last buy block to reset max price calculation
        lastBuyBlock = block.number;

        // Create Seaport listing if seaport is not disabled
        if (!seaportDisabled && numSeaportFeeRecipients > 0) {
            _createSeaportListing(expectedId, salePrice);
        }

        emit NFTBoughtByProtocol(expectedId, cost, salePrice);
    }

    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */
    /*                   ADMIN FUNCTIONS                   */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */

    /// @notice Updates the underlying collection address (Emergency use only)
    /// @param newCollection the new collection address
    function updateCollection(address newCollection) external onlyOwner {
        collection = IERC721(newCollection);
        emit CollectionUpdated(newCollection);
    }

    /// @notice Migrates held NFTs from the legacy collection to the new ERC721C collection
    /// @param tokenIds Array of token IDs to migrate
    /// @dev Approves migration contract, calls claimBatch, then revokes approval
    function migrateHeldNFTs(uint256[] calldata tokenIds) external onlyOwner {
        IERC721 legacyCollection = IERC721(LEGACY_CHIMPERS);

        // Approve migration contract to take old tokens
        legacyCollection.setApprovalForAll(MIGRATION_CONTRACT, true);

        // Migrate tokens (locks old, mints new to this contract)
        IChimpersMigration(MIGRATION_CONTRACT).claimBatch(tokenIds);

        // Revoke approval
        legacyCollection.setApprovalForAll(MIGRATION_CONTRACT, false);

        emit NFTsMigrated(tokenIds);
    }

    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */
    /*                  TRANSFER LOGIC                   */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */

    /// @notice Validates token transfers using a transient allowance system
    /// @param from The address sending tokens
    /// @param to The address receiving tokens
    /// @param amount The amount of tokens being transferred
    /// @dev Allows EOA-initiated transfers that aren't 7702 delegated
    function _afterTokenTransfer(address from, address to, uint256 amount) internal override {
        // On strategy launch, we need to allow for supply mint transfer
        if (from == address(0)) {
            return;
        }

        // Allow whitelisted distributors to send tokens freely
        if (
            IGlobalDistributor(GLOBAL_DISTRIBUTION_HANDLER).isGlobalDistributor(from) ||
            IGlobalDistributor(GLOBAL_DISTRIBUTION_HANDLER).isGlobalDistributor(to) ||
            isDistributor[from] ||
            isDistributor[to]
        ) {
            return;
        }

        // Transfers to and from the poolManager require a transient allowance thats set by the hook
        if ((from == address(poolManager()) || to == address(poolManager()))) {
            uint256 transferAllowance = getTransferAllowance();
            require(transferAllowance >= amount, InvalidTransfer());
            assembly {
                let newAllowance := sub(transferAllowance, amount)
                tstore(0, newAllowance)
            }
            emit AllowanceSpent(from, to, amount);
            return;
        }

        // Allow EOA-initiated transfers (EIP-7702 delegation check)
        if (msg.sender == from && !_check7702(from)) return;

        revert InvalidTransfer();
    }

    /// @notice Checks if an address has EIP-7702 delegated code
    /// @param _address The address to check
    /// @return isDelegate True if the address has 7702 delegation prefix
    function _check7702(address _address) internal view returns (bool isDelegate) {
        assembly ("memory-safe") {
            mstore(0x00, 0x00)
            extcodecopy(_address, 0x1D, 0x00, 0x17)
            if eq(mload(0x00), 0xEF0100) {
                isDelegate := 1
            }
        }
    }
}
