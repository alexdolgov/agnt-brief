// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity 0.8.7;

import "./interfaces/IMarketplace.sol";
import "./interfaces/IWETH9.sol";
import "./interfaces/ISellFeeDistributor.sol";

import "./abstract/Exchange.sol";

import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/token/ERC721/IERC721.sol";
import "@openzeppelin/contracts/token/ERC721/IERC721Receiver.sol";

contract Marketplace is Exchange, IMarketplace, IERC721Receiver {
    using SafeERC20 for IERC20;
    IFactory public factory;

    struct PricesOracle {
        uint256 _weSellAt;
        uint256 _weSellAtStock;
        uint256 _weBuyAt;
        uint256 _weBuyAtStock;
        uint256 _lockedAmount;
    }

    struct PricesOracleArrays {
        uint256[] weSellAt;
        uint256[] weSellAtStock;
        uint256[] weBuyAt;
        uint256[] weBuyAtStock;
        uint256[] lockedAmount;
    }

    mapping(address => mapping(uint256 => Lot)) marketplace;
    mapping(address => mapping(uint256 => LotFract)) marketplaceFract;

    address public override sellFeeAddress;

    // Default sell fee is 2.5%
    uint256 public sellFee = 250;

    constructor(address _uniswapV2Router) Exchange(_uniswapV2Router) {
        _setupRole(DEFAULT_ADMIN_ROLE, msg.sender);

        emit SellFeeChanged(0, sellFee);
    }

    /// @inheritdoc IMarketplace
    function sellBatch(
        ITangibleNFT nft,
        uint256[] calldata tokenIds,
        uint256[] calldata price
    ) external override {
        uint256 length = tokenIds.length;
        for (uint256 i = 0; i < length; i++) {
            _sell(nft, tokenIds[i], price[i]);
        }
    }

    function sellFractionInitial(
        ITangibleNFT tnft,
        uint256 tokenId,
        uint256 keepShare,
        uint256 sellShare,
        uint256 sellSharePrice,
        uint256 minPurchaseShare
    ) external {
        address tokenOwner = msg.sender;
        require(tnft.ownerOf(tokenId) == tokenOwner, "NOW");
        //take token from user

        tnft.safeTransferFrom(
            tokenOwner,
            address(this),
            tokenId,
            abi.encode(0, false)
        );
        //fractionalize
        //check if ftnft already deployed
        ITangibleFractionsNFT ftnft = factory.fractions(tnft, tokenId);
        if (address(ftnft) == address(0)) {
            ftnft = factory.newFractionTnft(tnft, tokenId);
        }
        //approve ftnft to take token
        tnft.approve(address(ftnft), tokenId);
        //set voucher
        MintInitialFractionVoucher memory voucher = MintInitialFractionVoucher({
            seller: tokenOwner,
            tnft: address(tnft),
            tnftTokenId: tokenId,
            keepShare: keepShare,
            sellShare: sellShare,
            sellPrice: sellSharePrice
        });
        uint256 tokenToSell = factory.initialTnftSplit(voucher);
        //adjust other data in lot
        marketplaceFract[address(ftnft)][tokenToSell]
            .minShare = minPurchaseShare;
        marketplaceFract[address(ftnft)][tokenToSell].price = sellSharePrice;
        marketplaceFract[address(ftnft)][tokenToSell].seller = tokenOwner;
        marketplaceFract[address(ftnft)][tokenToSell].initialShare = ftnft
            .fractionShares(tokenToSell);
    }

    function buyFraction(
        ITangibleFractionsNFT ftnft,
        uint256 fractTokenId,
        uint256 share
    ) public {
        address buyer = msg.sender;
        LotFract memory existing = marketplaceFract[address(ftnft)][
            fractTokenId
        ];
        uint256 remainingShare = ftnft.fractionShares(fractTokenId);
        require(
            (existing.seller != address(0)) && (remainingShare >= share),
            "NEFT"
        );
        uint256 leftover = remainingShare - share;
        require(
            (share >= existing.minShare) &&
                (leftover == 0 || leftover >= existing.minShare),
            "IMP"
        );
        uint256 amount = (existing.price * share) / existing.initialShare;

        //take the fee
        uint256 toPaySeller = amount;
        if (sellFee > 0) {
            // if there is fee set, decrease amount by the fee and send fee
            uint256 fee = ((toPaySeller * sellFee) / 10000);
            toPaySeller = toPaySeller - fee;
            factory.USDC().safeTransferFrom(buyer, sellFeeAddress, fee);
            ISellFeeDistributor(sellFeeAddress).distributeFee(fee);
        }
        factory.USDC().safeTransferFrom(buyer, existing.seller, toPaySeller);

        if (share == remainingShare) {
            ftnft.safeTransferFrom(address(this), buyer, fractTokenId);

            emit SoldFract(
                existing.seller,
                address(ftnft),
                fractTokenId,
                amount
            );
            emit BoughtFract(
                buyer,
                address(ftnft),
                fractTokenId,
                existing.seller,
                amount
            );

            delete marketplaceFract[address(ftnft)][fractTokenId];
        } else {
            //we need to split and send to buyer
            uint256[] memory shares = new uint256[](2);
            shares[0] = leftover;
            shares[1] = share;
            uint256[] memory splitedTokens = ftnft.fractionalize(
                fractTokenId,
                shares
            );
            ftnft.safeTransferFrom(address(this), buyer, splitedTokens[1]);

            emit SoldFract(
                existing.seller,
                address(ftnft),
                splitedTokens[1],
                amount
            );
            emit BoughtFract(
                buyer,
                address(ftnft),
                splitedTokens[1],
                existing.seller,
                amount
            );

            delete marketplaceFract[address(ftnft)][splitedTokens[1]];
        }
    }

    function sellFraction(
        ITangibleFractionsNFT ftnft,
        uint256 fractTokenId,
        uint256[] calldata shares,
        uint256 price,
        uint256 minPurchaseShare
    ) external {
        _sellFraction(ftnft, fractTokenId, shares, price, minPurchaseShare);
    }

    function _sellFraction(
        ITangibleFractionsNFT ftnft,
        uint256 fractTokenId,
        uint256[] calldata shares,
        uint256 price,
        uint256 minPurchaseShare
    ) internal {
        address caller = msg.sender;
        LotFract memory existing = marketplaceFract[address(ftnft)][
            fractTokenId
        ];
        require(
            (ftnft.ownerOf(fractTokenId) == caller) ||
                (existing.seller == caller),
            "NOW"
        );

        //this means that seller updates his sale
        if ((existing.tokenId == fractTokenId) && (existing.seller == caller)) {
            //update necessary info
            marketplaceFract[address(ftnft)][fractTokenId].price = price;
            marketplaceFract[address(ftnft)][fractTokenId]
                .minShare = minPurchaseShare;
        } else {
            //we have 2 cases - 1st selling whole share 2nd selling part of share
            uint256 length = shares.length;
            uint256 initialShare = ftnft.fractionShares(fractTokenId);
            require(length == 2, "WSH");
            //take the token
            ftnft.safeTransferFrom(
                caller,
                address(this),
                fractTokenId,
                abi.encode(price, true)
            );
            if (ftnft.fractionShares(fractTokenId) == shares[0]) {
                //1st case
                marketplaceFract[address(ftnft)][fractTokenId]
                    .minShare = minPurchaseShare;
                marketplaceFract[address(ftnft)][fractTokenId]
                    .initialShare = initialShare;
            } else {
                uint256[] memory splitedTokens = ftnft.fractionalize(
                    fractTokenId,
                    shares
                );
                //return the keepToken to the caller
                ftnft.safeTransferFrom(address(this), caller, fractTokenId);
                delete marketplaceFract[address(ftnft)][fractTokenId];
                //update second piece
                LotFract memory lotFract = marketplaceFract[address(ftnft)][
                    splitedTokens[1]
                ];
                lotFract.price = price;
                lotFract.minShare = minPurchaseShare;
                lotFract.seller = caller;
                marketplaceFract[address(ftnft)][splitedTokens[1]] = lotFract;
            }
        }
    }

    function _sell(
        ITangibleNFT nft,
        uint256 tokenId,
        uint256 price
    ) internal {
        //check who is the owner
        address ownerOfNft = IERC721(nft).ownerOf(tokenId);
        //if marketplace is owner and seller wants to update price
        if (
            (address(this) == ownerOfNft) &&
            (msg.sender == marketplace[address(nft)][tokenId].seller)
        ) {
            marketplace[address(nft)][tokenId].price = price;
        } else {
            //here we don't need to check, if not approved trx will fail
            nft.safeTransferFrom(
                msg.sender,
                address(this),
                tokenId,
                abi.encode(price, false)
            );
        }
    }

    function setFactory(address _factory) external onlyAdmin {
        require(
            (_factory != address(0x0)) && (_factory != address(factory)),
            "WFA"
        );

        _setupRole(FACTORY_ROLE, _factory);
        _revokeRole(FACTORY_ROLE, address(factory));
        emit SetFactory(address(factory), _factory);
        factory = IFactory(_factory);
        factory.USDC().approve(router, type(uint256).max);
    }

    /// @inheritdoc IMarketplace
    function stopBatchSale(ITangibleNFT nft, uint256[] calldata tokenIds)
        external
        override
    {
        uint256 length = tokenIds.length;
        for (uint256 i = 0; i < length; i++) {
            _stopSale(nft, tokenIds[i]);
        }
    }

    function stopFractSale(ITangibleFractionsNFT ftnft, uint256 tokenId)
        public
    {
        address seller = msg.sender;
        // gas saving
        LotFract memory _lot = marketplaceFract[address(ftnft)][tokenId];
        require(_lot.seller == seller, "NOS");

        emit StopSellingFract(seller, address(ftnft), tokenId);
        delete marketplaceFract[address(ftnft)][tokenId];
        ftnft.safeTransferFrom(address(this), _lot.seller, _lot.tokenId);
    }

    function _stopSale(ITangibleNFT nft, uint256 tokenId) internal {
        address seller = msg.sender;
        // gas saving
        Lot memory _lot = marketplace[address(nft)][tokenId];
        require(_lot.seller == seller, "NOS");

        emit StopSelling(seller, address(nft), tokenId);
        delete marketplace[address(nft)][tokenId];
        IERC721(nft).safeTransferFrom(address(this), _lot.seller, _lot.tokenId);
    }

    /// @inheritdoc IMarketplace
    function buy(
        ITangibleNFT nft,
        uint256 tokenId,
        uint256 _years,
        bool onlyLock
    ) external override {
        Lot memory _lot = marketplace[address(nft)][tokenId];
        //NOTE add code for getting if this is initial sale
        //MUST BE DONE BEFORE DEPLOYMENT!!!!!!
        uint256 tokenPrice = _lot.price;
        uint256 lockedAmount;
        if (tokenPrice == 0) {
            (tokenPrice, , , , lockedAmount) = factory
                .priceManager()
                .getPriceOracleForCategory(nft)
                .usdcPrice(nft, 0, tokenId);
        }
        require(tokenPrice != 0, "P0");

        //pay for storage
        if (
            (!nft.isStorageFeePaid(tokenId) || _years > 0) &&
            nft.storageRequired()
        ) {
            require(_years > 0, "YZ");
            _payStorage(nft, tokenId, _years);
        }
        //buy the token
        _buy(nft, tokenId, true);
    }

    function payStorage(
        ITangibleNFT nft,
        uint256 tokenId,
        uint256 _years
    ) external override {
        require(nft.storageRequired(), "STNR");
        _payStorage(nft, tokenId, _years);
    }

    function _payStorage(
        ITangibleNFT nft,
        uint256 tokenId,
        uint256 _years
    ) internal {
        require(_years > 0, "YZ");

        uint256 amount = factory.adjustStorageAndGetAmount(
            nft,
            tokenId,
            _years
        );

        factory.USDC().safeTransferFrom(
            msg.sender,
            factory.feeStorageAddress(),
            amount
        );
        emit StorageFeePaid(msg.sender, address(nft), tokenId, _years, amount);
    }

    /// @inheritdoc IMarketplace
    function buyUnminted(
        ITangibleNFT nft,
        uint256 _fingerprint,
        uint256 _years,
        bool onlyLock
    ) external override {
        if (factory.onlyWhitelistedForUnminted()) {
            require(factory.whitelistForBuyUnminted(msg.sender), "NW");
        }
        //buy unminted is always initial sale!!
        // need to also fetch stock here!! and remove remainingMintsForVendor
        (uint256 tokenPrice, uint256 stock, , , uint256 lockedAmount) = factory
            .priceManager()
            .getPriceOracleForCategory(nft)
            .usdcPrice(nft, _fingerprint, 0);

        require((tokenPrice > 0) && (stock > 0), "!0S");

        MintVoucher memory voucher = MintVoucher({
            token: nft,
            mintCount: 1,
            price: 0,
            vendor: factory.idToVendor(uint128(1)),
            buyer: msg.sender,
            fingerprint: _fingerprint,
            sendToVendor: false
        });
        uint256[] memory tokenIds = factory.mint(voucher);
        //pay for storage
        if (nft.storageRequired()) {
            _payStorage(nft, tokenIds[0], _years);
        }
        uint256 shouldLockTngbl = quoteOut(
            address(factory.USDC()),
            address(factory.TNGBL()),
            lockedAmount
        );
        if (factory.shouldLockTngbl(shouldLockTngbl) && !nft.paysRent()) {
            if (nft.tnftToPassiveNft(tokenIds[0]) == 0) {
                //convert locked amount to tngbl and send to nft contract
                //locktngbl can be called only from factory
                _lockTngbl(nft, tokenIds[0], lockedAmount, _years, onlyLock);
            }
        } else {
            factory.USDC().safeTransferFrom(
                msg.sender,
                factory.feeStorageAddress(), //NOTE: or factory owner?
                lockedAmount
            );
        }
        //pricing should be handled from oracle
        _buy(voucher.token, tokenIds[0], false);
    }

    function _lockTngbl(
        ITangibleNFT nft,
        uint256 tokenId,
        uint256 lockedAmount,
        uint256 _years,
        bool onlyLock
    ) internal {
        factory.USDC().safeTransferFrom(
            msg.sender,
            address(this),
            lockedAmount
        );
        uint256 lockedTNGBL = exchange(
            address(factory.USDC()),
            address(factory.TNGBL()),
            lockedAmount,
            quoteOut(
                address(factory.USDC()),
                address(factory.TNGBL()),
                lockedAmount
            )
        );
        factory.TNGBL().safeTransfer(address(nft), lockedTNGBL);
        factory.lockTNGBLOnTNFT(nft, tokenId, _years, lockedTNGBL, onlyLock);
    }

    function setRouter(address _router) external override onlyAdmin {
        require(_router != address(0), "ZUSR");
        require(_router != router, "SUSR");

        emit NewRouterSet(router, _router);
        router = _router;
        factory.USDC().approve(_router, type(uint256).max);
    }

    function lotBatch(address nft, uint256[] calldata tokenIds)
        external
        view
        returns (Lot[] memory)
    {
        uint256 length = tokenIds.length;
        Lot[] memory result = new Lot[](length);

        for (uint256 i = 0; i < length; i++) {
            result[i] = marketplace[nft][tokenIds[i]];
        }

        return result;
    }

    function lotFractionBatch(address ftnft, uint256[] calldata tokenIds)
        external
        view
        returns (LotFract[] memory)
    {
        uint256 length = tokenIds.length;
        LotFract[] memory result = new LotFract[](length);

        for (uint256 i = 0; i < length; i++) {
            result[i] = marketplaceFract[ftnft][tokenIds[i]];
        }

        return result;
    }

    function itemPriceBatchFingerprints(
        ITangibleNFT nft,
        uint256[] calldata fingerprints
    )
        external
        view
        override
        returns (
            uint256[] memory weSellAt,
            uint256[] memory weSellAtStock,
            uint256[] memory weBuyAt,
            uint256[] memory weBuyAtStock,
            uint256[] memory lockedAmount
        )
    {
        (
            weSellAt,
            weSellAtStock,
            weBuyAt,
            weBuyAtStock,
            lockedAmount
        ) = _itemBatchPrices(nft, fingerprints, true);
    }

    function itemPriceBatchTokenIds(
        ITangibleNFT nft,
        uint256[] calldata tokenIds
    )
        external
        view
        override
        returns (
            uint256[] memory weSellAt,
            uint256[] memory weSellAtStock,
            uint256[] memory weBuyAt,
            uint256[] memory weBuyAtStock,
            uint256[] memory lockedAmount
        )
    {
        (
            weSellAt,
            weSellAtStock,
            weBuyAt,
            weBuyAtStock,
            lockedAmount
        ) = _itemBatchPrices(nft, tokenIds, false);
    }

    function _itemBatchPrices(
        ITangibleNFT nft,
        uint256[] calldata data,
        bool fromFingerprints
    )
        internal
        view
        returns (
            uint256[] memory weSellAt,
            uint256[] memory weSellAtStock,
            uint256[] memory weBuyAt,
            uint256[] memory weBuyAtStock,
            uint256[] memory lockedAmount
        )
    {
        uint256 length = data.length;
        PricesOracleArrays memory pricesOracleArrays;
        pricesOracleArrays.weSellAt = new uint256[](length);
        pricesOracleArrays.weSellAtStock = new uint256[](length);
        pricesOracleArrays.weBuyAt = new uint256[](length);
        pricesOracleArrays.weBuyAtStock = new uint256[](length);
        pricesOracleArrays.lockedAmount = new uint256[](length);
        PricesOracle memory pricesOracle;

        for (uint256 i = 0; i < length; i++) {
            (
                pricesOracle._weSellAt,
                pricesOracle._weSellAtStock,
                pricesOracle._weBuyAt,
                pricesOracle._weBuyAtStock,
                pricesOracle._lockedAmount
            ) = fromFingerprints
                ? factory
                    .priceManager()
                    .getPriceOracleForCategory(nft)
                    .usdcPrice(nft, data[i], 0)
                : factory
                    .priceManager()
                    .getPriceOracleForCategory(nft)
                    .usdcPrice(nft, 0, data[i]);
            pricesOracleArrays.weSellAt[i] = pricesOracle._weSellAt;
            pricesOracleArrays.weSellAtStock[i] = pricesOracle._weSellAtStock;
            pricesOracleArrays.weBuyAt[i] = pricesOracle._weBuyAt;
            pricesOracleArrays.weBuyAtStock[i] = pricesOracle._weBuyAtStock;
            pricesOracleArrays.lockedAmount[i] = pricesOracle._lockedAmount;
        }
        return (
            pricesOracleArrays.weSellAt,
            pricesOracleArrays.weSellAtStock,
            pricesOracleArrays.weBuyAt,
            pricesOracleArrays.weBuyAtStock,
            pricesOracleArrays.lockedAmount
        );
    }

    function _buy(
        ITangibleNFT nft,
        uint256 tokenId,
        bool chargeFee
    ) internal {
        // gas saving
        address buyer = msg.sender;

        Lot memory _lot = marketplace[address(nft)][tokenId];
        require(_lot.seller != address(0), "NLO");

        // if lot.price == 0 it means vendor minted it, we must take price from oracle
        // if lot.price != 0 means some seller posted it and didn't want to use oracle
        uint256 cost = _lot.price;
        if (cost == 0) {
            (cost, , , , ) = factory
                .priceManager()
                .getPriceOracleForCategory(nft)
                .usdcPrice(nft, 0, tokenId);
        }

        require(cost != 0, "P0");

        //take the fee
        uint256 toPayVendor = cost;
        if ((sellFee > 0) && chargeFee) {
            // if there is fee set, decrease amount by the fee and send fee
            uint256 fee = ((toPayVendor * sellFee) / 10000);
            toPayVendor = toPayVendor - fee;
            factory.USDC().safeTransferFrom(buyer, sellFeeAddress, fee);
            ISellFeeDistributor(sellFeeAddress).distributeFee(fee);
        }

        factory.USDC().safeTransferFrom(buyer, _lot.seller, toPayVendor);

        emit Sold(_lot.seller, address(nft), tokenId, cost);
        emit Bought(buyer, address(nft), tokenId, _lot.seller, cost);
        delete marketplace[address(nft)][tokenId];

        nft.safeTransferFrom(address(this), buyer, tokenId);
    }

    /// @notice Sets the feeStorageAddress
    /// @dev Will emit SellFeeAddressSet on change.
    /// @param _sellFeeAddress A new address for fee storage.
    function setSellFeeAddress(address _sellFeeAddress) external onlyAdmin {
        require(_sellFeeAddress != address(0), "SFAZ");
        if (sellFeeAddress != _sellFeeAddress) {
            emit SellFeeAddressSet(sellFeeAddress, _sellFeeAddress);
            sellFeeAddress = _sellFeeAddress;
        }
    }

    function setSellFee(uint256 _sellFee) external onlyAdmin {
        require(sellFee != _sellFee, "SSF");
        emit SellFeeChanged(sellFee, _sellFee);
        sellFee = _sellFee;
    }

    function onERC721Received(
        address operator,
        address seller,
        uint256 tokenId,
        bytes calldata data
    ) external override returns (bytes4) {
        return _onERC721Received(operator, seller, tokenId, data);
    }

    function _onERC721Received(
        address, /*operator*/
        address seller,
        uint256 tokenId,
        bytes calldata data
    ) private returns (bytes4) {
        address nft = msg.sender;
        (uint256 price, bool fraction) = abi.decode(data, (uint256, bool));

        if (!fraction) {
            marketplace[nft][tokenId] = Lot(
                ITangibleNFT(nft),
                tokenId,
                seller,
                price,
                true
            );
            emit Selling(seller, nft, tokenId, price);
        } else {
            marketplaceFract[nft][tokenId] = LotFract(
                ITangibleFractionsNFT(nft),
                tokenId,
                seller,
                price,
                0, //set later minPurchaseShare
                ITangibleFractionsNFT(nft).fractionShares(tokenId) //set later initialShare
            );
            emit SellingFract(seller, nft, tokenId, price);
        }

        return IERC721Receiver.onERC721Received.selector;
    }
}
