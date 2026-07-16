// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import {IERC721, IGlobalDistributor, Order, OrderComponents} from "../../Interfaces.sol";
import {NFTStrategy} from "../../NFTStrategy.sol";
import {IChimpSeaportOrderBuilder} from "./ChimpSeaportOrderBuilder.sol";
import {SafeTransferLib} from "solady/utils/SafeTransferLib.sol";

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
    /*                   STATE VARIABLES                   */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */

    struct SeaportOrderState {
        address builder;
        uint8 orderCount;
    }

    struct RelistingConfig {
        uint16 minMultiplier;
        uint16 maxMultiplier;
        uint16 step;
    }

    struct ChimpStrategyStorage {
        RelistingConfig relistingConfig;
        address seaportOrderBuilder;
        bool transferRestrictionsEnabled;
        mapping(uint256 => SeaportOrderState) seaportOrderState;
    }

    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */
    /*                       EVENTS                        */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */

    /// @notice Emitted when the collection address is changed
    event CollectionUpdated(address collection);

    /// @notice Emitted when NFTs are migrated to the new collection
    event NFTsMigrated(uint256[] tokenIds);

    /// @notice Emitted when builder-backed Seaport orders are created.
    event SeaportOrdersCreated(uint256 indexed tokenId, uint256 price, address indexed builder, bytes32[] orderHashes);

    /// @notice Emitted when builder-backed Seaport orders are batch-created.
    event SeaportOrdersBatchCreated(
        uint56[] tokenIds, address indexed builder, bytes32[] orderHashes, uint8[] orderCounts
    );

    /// @notice Emitted when builder-backed Seaport orders are cancelled.
    event SeaportOrdersCancelled(uint256 indexed tokenId, address indexed builder, bytes32[] orderHashes);

    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */
    /*                    CUSTOM ERRORS                    */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */

    error InvalidRandomRelistingConfig();
    error RandomFloorRelistingAlreadyApplied();
    error InvalidOrderBuilder();
    error OrderBuilderNotSet();
    error InvalidOrderBuilderResponse();

    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */
    /*                 MECHANISM FUNCTIONS                 */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */

    /// @notice Buys a specific NFT using accumulated fees
    /// @param value Amount of ETH to spend on the NFT purchase
    /// @param data Calldata for the external marketplace call
    /// @param expectedId The token ID expected to be acquired
    /// @param target The marketplace contract to call
    /// @dev Protected against reentrancy, validates NFT acquisition
    function buyTargetNFT(uint256 value, bytes calldata data, uint256 expectedId, address target)
        external
        override
        nonReentrant
    {
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

        uint256 salePrice = cost * _relistingMultiplier(expectedId, cost) / 1000;
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

    /// @notice Initializes the final Chimp upgrade in the same transaction as upgradeToAndCall.
    function initialize(address builder, uint256 minMultiplier, uint256 maxMultiplier, uint256 step)
        external
        reinitializer(2)
        onlyOwner
    {
        _setSeaportOrderBuilder(builder);
        _setRandomRelisting(minMultiplier, maxMultiplier, step);
        // Invalidate pre-upgrade Seaport listings before shuffled builder orders are created.
        SEAPORT.incrementCounter();
    }

    /// @notice Sets the random relisting multiplier range used for future purchases.
    function setRandomRelisting(uint256 minMultiplier, uint256 maxMultiplier, uint256 step)
        external
        onlyOwnerOrManager
    {
        _setRandomRelisting(minMultiplier, maxMultiplier, step);
    }

    /// @notice Updates the swappable Seaport order builder used for new listings.
    function setSeaportOrderBuilder(address builder) external onlyOwnerOrManager {
        _setSeaportOrderBuilder(builder);
    }

    /// @notice Enables or disables transfer restrictions.
    function setTransferRestrictionsEnabled(bool enabled) external onlyOwnerOrManager {
        _getChimpStrategyStorage().transferRestrictionsEnabled = enabled;
    }

    /// @notice Returns the random relisting multiplier config.
    function relistingConfig() external view returns (uint16 minMultiplier, uint16 maxMultiplier, uint16 step) {
        RelistingConfig memory config = _getChimpStrategyStorage().relistingConfig;
        return (config.minMultiplier, config.maxMultiplier, config.step);
    }

    /// @notice Returns the external contract used to build Seaport orders.
    function seaportOrderBuilder() external view returns (address) {
        return _getChimpStrategyStorage().seaportOrderBuilder;
    }

    /// @notice Returns whether transfer restrictions are enabled.
    function transferRestrictionsEnabled() external view returns (bool) {
        return _getChimpStrategyStorage().transferRestrictionsEnabled;
    }

    /// @notice Returns builder-specific order state for cancellation.
    function seaportOrderState(uint256 tokenId) external view returns (address builder, uint8 orderCount) {
        SeaportOrderState memory orderState = _getChimpStrategyStorage().seaportOrderState[tokenId];
        return (orderState.builder, orderState.orderCount);
    }

    /// @notice Randomizes owned NFTs across the configured multiplier range using floor price as the base.
    function applyRandomFloorRelistingPrices(uint56[] calldata tokenIds, uint256 floorPrice)
        external
        onlyOwnerOrManager
        nonReentrant
    {
        if (floorPrice == 0) revert InvalidParams();

        ChimpStrategyStorage storage $ = _getChimpStrategyStorage();
        RelistingConfig memory config = $.relistingConfig;
        uint256 minMultiplier = config.minMultiplier;
        uint256 maxMultiplier = config.maxMultiplier;

        uint256 step = config.step;
        uint256 steps = ((maxMultiplier - minMultiplier) / step) + 1;

        address builder = $.seaportOrderBuilder;
        if (builder == address(0)) revert OrderBuilderNotSet();

        if (!collection.isApprovedForAll(address(this), OPENSEA_CONDUIT_ADDRESS)) {
            collection.setApprovalForAll(OPENSEA_CONDUIT_ADDRESS, true);
        }

        IChimpSeaportOrderBuilder.OrderRequest[] memory requests =
            new IChimpSeaportOrderBuilder.OrderRequest[](tokenIds.length);
        uint48 startTime = uint48(block.timestamp);
        // block.timestamp plus 180 days remains well below uint48's timestamp range.
        // forge-lint: disable-next-line(unsafe-typecast)
        uint48 endTime = uint48(block.timestamp + SEAPORT_MAX_LISTING_DURATION);

        for (uint256 i; i < tokenIds.length; i++) {
            uint256 tokenId = tokenIds[i];

            if (nftForSale[tokenId] != 0) {
                _cancelSeaportListingForShuffle(tokenId);
            }

            bytes32 hash = keccak256(
                abi.encodePacked(
                    block.prevrandao, block.timestamp, block.number, msg.sender, address(this), tokenId, floorPrice
                )
            );
            uint256 multiplier = minMultiplier + (uint256(hash) % steps) * step;
            uint256 newPrice = floorPrice * multiplier / 1000;

            nftForSale[tokenId] = newPrice;

            uint256 salt = uint256(keccak256(abi.encodePacked(tokenId, newPrice, block.timestamp, block.prevrandao)));
            requests[i] = _newOrderRequest(tokenId, newPrice, salt, startTime, endTime);
        }

        _createSeaportListingsBatch(tokenIds, requests, builder);
    }

    /// @notice Syncs order sales and clears Chimp-specific order-builder state.
    function syncOrderStatus(uint256[] calldata tokenIds) external override nonReentrant {
        ChimpStrategyStorage storage $ = _getChimpStrategyStorage();
        uint256 totalReward;

        for (uint256 i; i < tokenIds.length; i++) {
            uint256 tokenId = tokenIds[i];
            SeaportOrderState memory orderState = $.seaportOrderState[tokenId];
            if (orderState.builder == address(0)) continue;

            if (collection.ownerOf(tokenId) == address(this)) continue;

            uint256 price = nftForSale[tokenId];
            uint256 proceeds = seaportListings[tokenId].proceeds;

            delete nftForSale[tokenId];
            delete seaportListings[tokenId];
            delete $.seaportOrderState[tokenId];

            uint256 reward = (proceeds * 5) / 1000;
            totalReward += reward;

            emit NFTSoldByProtocol(tokenId, price, address(SEAPORT));
        }

        if (totalReward > syncListingReward) {
            totalReward = syncListingReward;
        }

        if (totalReward > 0) {
            syncListingReward -= totalReward;
            SafeTransferLib.forceSafeTransferETH(msg.sender, totalReward);
        }
    }

    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */
    /*                  INTERNAL FUNCTIONS                 */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */

    function _getChimpStrategyStorage() internal pure returns (ChimpStrategyStorage storage $) {
        // `uint72(bytes9(keccak256("CHIMP_STRATEGY_STORAGE")))`, matching DN404-style namespaced storage.
        assembly {
            $.slot := 0x2dc1c470e8e479f00d
        }
    }

    function _setRandomRelisting(uint256 minMultiplier, uint256 maxMultiplier, uint256 step) internal {
        if (
            minMultiplier < 1100 || maxMultiplier > 10000 || minMultiplier > maxMultiplier || step == 0 || step > 10000
                || (maxMultiplier - minMultiplier) % step != 0
        ) {
            revert InvalidRandomRelistingConfig();
        }

        _getChimpStrategyStorage().relistingConfig = RelistingConfig({
            // Values are bounded to <= 10000 above, so these casts cannot truncate.
            // forge-lint: disable-next-line(unsafe-typecast)
            minMultiplier: uint16(minMultiplier),
            // forge-lint: disable-next-line(unsafe-typecast)
            maxMultiplier: uint16(maxMultiplier),
            // forge-lint: disable-next-line(unsafe-typecast)
            step: uint16(step)
        });
    }

    function _setSeaportOrderBuilder(address builder) internal {
        if (builder == address(0)) revert InvalidOrderBuilder();

        _getChimpStrategyStorage().seaportOrderBuilder = builder;
    }

    function _relistingMultiplier(uint256 tokenId, uint256 seedValue) internal view returns (uint256) {
        RelistingConfig memory config = _getChimpStrategyStorage().relistingConfig;
        uint256 minMultiplier = config.minMultiplier;
        uint256 maxMultiplier = config.maxMultiplier;
        uint256 step = config.step;
        uint256 steps = ((maxMultiplier - minMultiplier) / step) + 1;
        bytes32 hash = keccak256(
            abi.encodePacked(
                block.prevrandao, block.timestamp, block.number, msg.sender, address(this), tokenId, seedValue
            )
        );

        return minMultiplier + (uint256(hash) % steps) * step;
    }

    function _createSeaportListing(uint256 tokenId, uint256 price) internal override {
        address builder = _getChimpStrategyStorage().seaportOrderBuilder;
        if (builder == address(0)) revert OrderBuilderNotSet();

        if (!collection.isApprovedForAll(address(this), OPENSEA_CONDUIT_ADDRESS)) {
            collection.setApprovalForAll(OPENSEA_CONDUIT_ADDRESS, true);
        }

        uint256 salt = uint256(keccak256(abi.encodePacked(tokenId, price, block.timestamp, block.prevrandao)));
        uint48 startTime = uint48(block.timestamp);
        // block.timestamp plus 180 days remains well below uint48's timestamp range.
        // forge-lint: disable-next-line(unsafe-typecast)
        uint48 endTime = uint48(block.timestamp + SEAPORT_MAX_LISTING_DURATION);

        IChimpSeaportOrderBuilder.OrderRequest memory request =
            _newOrderRequest(tokenId, price, salt, startTime, endTime);

        (Order[] memory orders, bytes32[] memory orderHashes) =
            IChimpSeaportOrderBuilder(builder).getOrders(request, SEAPORT.getCounter(address(this)));

        if (orders.length == 0 || orders.length > type(uint8).max || orderHashes.length != orders.length) {
            revert InvalidOrderBuilderResponse();
        }

        SEAPORT.validate(orders);

        _storeSeaportListing(tokenId, request, builder, uint8(orders.length));

        emit SeaportOrdersCreated(tokenId, price, builder, orderHashes);
    }

    function _createSeaportListingsBatch(
        uint56[] calldata tokenIds,
        IChimpSeaportOrderBuilder.OrderRequest[] memory requests,
        address builder
    ) internal {
        (Order[] memory orders, bytes32[] memory orderHashes, uint8[] memory orderCounts) = IChimpSeaportOrderBuilder(
                builder
            ).getOrdersBatch(requests, SEAPORT.getCounter(address(this)));

        if (orderHashes.length != orders.length || orderCounts.length != requests.length) {
            revert InvalidOrderBuilderResponse();
        }

        uint256 totalOrderCount;
        for (uint256 i; i < requests.length; i++) {
            uint8 orderCount = orderCounts[i];
            if (orderCount == 0) {
                revert InvalidOrderBuilderResponse();
            }
            totalOrderCount += orderCount;
        }
        if (totalOrderCount != orderHashes.length) {
            revert InvalidOrderBuilderResponse();
        }

        SEAPORT.validate(orders);

        uint256 orderHashOffset;
        for (uint256 i; i < requests.length; i++) {
            uint8 orderCount = orderCounts[i];
            bytes32[] memory tokenOrderHashes = new bytes32[](orderCount);
            for (uint256 j; j < orderCount; j++) {
                tokenOrderHashes[j] = orderHashes[orderHashOffset + j];
            }
            orderHashOffset += orderCount;

            _storeSeaportListing(tokenIds[i], requests[i], builder, orderCount);
            emit SeaportOrdersCreated(tokenIds[i], requests[i].price, builder, tokenOrderHashes);
        }
    }

    function _cancelSeaportListingIfExists(uint256 tokenId) internal override {
        SeaportOrderState memory orderState = _getChimpStrategyStorage().seaportOrderState[tokenId];
        if (orderState.builder == address(0)) return;

        _cancelBuilderSeaportListing(tokenId, orderState);
    }

    function _cancelSeaportListingForShuffle(uint256 tokenId) internal {
        SeaportOrderState memory orderState = _getChimpStrategyStorage().seaportOrderState[tokenId];
        if (orderState.builder != address(0)) {
            revert RandomFloorRelistingAlreadyApplied();
        }

        // Legacy Seaport orders are invalidated by initialize; only local listing state remains.
        delete seaportListings[tokenId];
        delete tokenIdToOrderHash[tokenId];
    }

    function _cancelBuilderSeaportListing(uint256 tokenId, SeaportOrderState memory orderState) internal {
        ChimpStrategyStorage storage $ = _getChimpStrategyStorage();
        SeaportListing memory listing = seaportListings[tokenId];
        if (listing.endTime <= block.timestamp) {
            delete seaportListings[tokenId];
            delete $.seaportOrderState[tokenId];
            return;
        }

        IChimpSeaportOrderBuilder.OrderRequest memory request =
            _storedOrderRequest(tokenId, nftForSale[tokenId], listing);
        (OrderComponents[] memory ordersToCancel, bytes32[] memory orderHashes) =
            IChimpSeaportOrderBuilder(orderState.builder).getOrderComponents(request, SEAPORT.getCounter(address(this)));

        if (
            ordersToCancel.length == 0 || ordersToCancel.length != orderState.orderCount
                || orderHashes.length != ordersToCancel.length
        ) {
            revert InvalidOrderBuilderResponse();
        }

        SEAPORT.cancel(ordersToCancel);

        delete seaportListings[tokenId];
        delete $.seaportOrderState[tokenId];

        emit SeaportOrdersCancelled(tokenId, orderState.builder, orderHashes);
    }

    function _newOrderRequest(uint256 tokenId, uint256 price, uint256 salt, uint48 startTime, uint48 endTime)
        internal
        view
        returns (IChimpSeaportOrderBuilder.OrderRequest memory request)
    {
        uint8 numFees = numSeaportFeeRecipients;
        IChimpSeaportOrderBuilder.FeeRecipient[] memory feeRecipients =
            new IChimpSeaportOrderBuilder.FeeRecipient[](numFees);

        uint256 totalFeeAmount;
        for (uint256 i; i < numFees; i++) {
            uint256 feeAmount = price * seaportFeeRecipients[i].feeBps / 10000;
            totalFeeAmount += feeAmount;
            feeRecipients[i] = IChimpSeaportOrderBuilder.FeeRecipient({
                amount: feeAmount, recipient: seaportFeeRecipients[i].recipient
            });
        }

        request = IChimpSeaportOrderBuilder.OrderRequest({
            offerer: address(this),
            collection: address(collection),
            tokenId: tokenId,
            price: price,
            proceeds: price - totalFeeAmount,
            salt: salt,
            startTime: startTime,
            endTime: endTime,
            conduitKey: CONDUIT_KEY,
            feeRecipients: feeRecipients
        });
    }

    function _storedOrderRequest(uint256 tokenId, uint256 price, SeaportListing memory listing)
        internal
        view
        returns (IChimpSeaportOrderBuilder.OrderRequest memory request)
    {
        uint8 numFees = listing.numFeeRecipients;
        IChimpSeaportOrderBuilder.FeeRecipient[] memory feeRecipients =
            new IChimpSeaportOrderBuilder.FeeRecipient[](numFees);

        for (uint256 i; i < numFees; i++) {
            feeRecipients[i] = IChimpSeaportOrderBuilder.FeeRecipient({
                amount: listing.feeRecipients[i].amount, recipient: listing.feeRecipients[i].recipient
            });
        }

        request = IChimpSeaportOrderBuilder.OrderRequest({
            offerer: address(this),
            collection: address(collection),
            tokenId: tokenId,
            price: price,
            proceeds: listing.proceeds,
            salt: listing.salt,
            startTime: listing.startTime,
            endTime: listing.endTime,
            conduitKey: CONDUIT_KEY,
            feeRecipients: feeRecipients
        });
    }

    function _storeSeaportListing(
        uint256 tokenId,
        IChimpSeaportOrderBuilder.OrderRequest memory request,
        address builder,
        uint8 orderCount
    ) internal {
        ChimpStrategyStorage storage $ = _getChimpStrategyStorage();
        SeaportListing storage listing = seaportListings[tokenId];
        uint8 numFees = uint8(request.feeRecipients.length);

        listing.salt = request.salt;
        listing.proceeds = request.proceeds;
        listing.startTime = request.startTime;
        listing.endTime = request.endTime;
        listing.numFeeRecipients = numFees;

        for (uint256 i; i < numFees; i++) {
            listing.feeRecipients[i] = ListingFeeRecipient({
                amount: request.feeRecipients[i].amount, recipient: request.feeRecipients[i].recipient
            });
        }
        for (uint256 i = numFees; i < 2; i++) {
            delete listing.feeRecipients[i];
        }

        $.seaportOrderState[tokenId] = SeaportOrderState({builder: builder, orderCount: orderCount});
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
        if (!_getChimpStrategyStorage().transferRestrictionsEnabled) return;

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
