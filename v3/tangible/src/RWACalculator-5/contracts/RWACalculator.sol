// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/access/AccessControl.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";

import "./constants/addresses.sol";
import "./constants/roles.sol";
import "./interfaces/IRWACalculator.sol";
import "./tangibleInterfaces/ITangibleMarketplace.sol";
import "./AddressAccessor.sol";

interface ITreasuryTrackerExt is ITreasuryTracker {
    //fractions
    function getFractionContractsInTreasury()
        external
        view
        returns (address[] memory);

    function fractionContractsInTreasurySize() external view returns (uint256);

    function getFractionTokensInTreasury(address ftnft)
        external
        view
        returns (uint256[] memory);

    function fractionTokensInTreasurySize(address ftnft)
        external
        view
        returns (uint256);

    // ftnft on sale
    function getFractionContractsOnSale()
        external
        view
        returns (address[] memory);

    function fractionContractsOnSaleSize() external view returns (uint256);

    function getFractionTokensOnSale(address ftnft)
        external
        view
        returns (uint256[] memory);

    function fractionTokensOnSaleSize(address ftnft)
        external
        view
        returns (uint256);

    //tnfts
    function getTnftCategoriesInTreasury()
        external
        view
        returns (address[] memory);

    function tnftCategoriesInTreasurySize() external view returns (uint256);

    function getTnftTokensInTreasury(address tnft)
        external
        view
        returns (uint256[] memory);

    function tnftTokensInTreasurySize(address tnft)
        external
        view
        returns (uint256);

    //tnfts on sale
    function getTnftCategoriesOnSale() external view returns (address[] memory);

    function tnftCategoriesOnSaleSize() external view returns (uint256);

    function getTnftTokensOnSale(address tnft)
        external
        view
        returns (uint256[] memory);

    function tnftTokensOnSaleSize(address tnft) external view returns (uint256);
}

interface ITNFTPriceManager {
    function itemPriceBatchTokenIds(
        ITangibleNFT nft,
        IERC20 paymentUSDToken,
        uint256[] calldata tokenIds
    )
        external
        view
        returns (
            uint256[] memory weSellAt,
            uint256[] memory weSellAtStock,
            uint256[] memory weBuyAt,
            uint256[] memory weBuyAtStock,
            uint256[] memory lockedAmount
        );

    function itemPriceBatchFingerprints(
        ITangibleNFT nft,
        IERC20 paymentUSDToken,
        uint256[] calldata fingerprints
    )
        external
        view
        returns (
            uint256[] memory weSellAt,
            uint256[] memory weSellAtStock,
            uint256[] memory weBuyAt,
            uint256[] memory weBuyAtStock,
            uint256[] memory lockedAmount
        );
}

contract RWACalculator is AddressAccessor, IRWACalculator {
    struct HelperStruct {
        uint256[] weSellAt;
        uint256[] lockedAmount;
        uint256[] tokenIds;
        uint256[] fingerprints;
    }
    struct ContractHolder {
        address reSellManager;
        address goldSellManager;
        address marketplace;
    }
    mapping(address => uint256) public priceThreshold;
    uint256 private immutable fullPercent = 100000;
    address[4] public goldTnfts;

    struct PricesOracleArrays {
        uint256[] weSellAt;
        uint256[] weSellAtStock;
        uint256[] weBuyAt;
        uint256[] weBuyAtStock;
        uint256[] lockedAmount;
    }

    constructor() {
        _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
    }

    function setGoldTnfts(address[4] memory _goldTnfts)
        external
        onlyRole(DEFAULT_ADMIN_ROLE)
    {
        goldTnfts = _goldTnfts;
    }

    function setPriceAboveMarketThreshold(address tnft, uint256 threshold)
        external
        onlyRole(DEFAULT_ADMIN_ROLE)
    {
        require(threshold >= 100000, "incorrect threshold");
        priceThreshold[tnft] = threshold;
    }

    function _isGoldTnft(address tnft) internal view returns (bool) {
        for (uint256 i; i < 4; i++) {
            if (tnft == goldTnfts[i]) {
                return true;
            }
        }
        return false;
    }

    function _getPriceManager()
        internal
        view
        returns (ITNFTPriceManager priceManager)
    {
        priceManager = ITNFTPriceManager(
            addressProvider.getAddress(TANGIBLE_PRICE_MANAGER_ADDRESS)
        );
    }

    function _getTangibleMarketplace()
        internal
        view
        returns (ITangibleMarketplace marketplace)
    {
        marketplace = ITangibleMarketplace(
            addressProvider.getAddress(TANGIBLE_MARKETPLACE_ADDRESS)
        );
    }

    function _convertToCorrectDecimals(
        uint256 price,
        uint8 salePriceDecimals,
        uint8 treasuryTokenDecimals
    ) internal pure returns (uint256) {
        if (uint256(salePriceDecimals) > treasuryTokenDecimals) {
            return price / (10**(salePriceDecimals - treasuryTokenDecimals));
        } else if (uint256(salePriceDecimals) < treasuryTokenDecimals) {
            return price * (10**(treasuryTokenDecimals - salePriceDecimals));
        }
        return price;
    }

    function calculate(ITreasuryTracker tracker, IERC20 treasuryToken)
        external
        view
        returns (uint256 usdValue)
    {
        ITreasuryTrackerExt extTracker = ITreasuryTrackerExt(address(tracker));
        //calc tnfts
        usdValue += _calculateTnfts(extTracker, treasuryToken);
        //calc ftnfts
        usdValue += _calculateFtnfts(extTracker, treasuryToken);
        // add those that are on sale
        usdValue += _calculateTnftsOnSale(
            IERC20Metadata(address(treasuryToken))
        );
        usdValue += _calculateFtnftsOnSale(
            IERC20Metadata(address(treasuryToken))
        );
        // take value from oracle and mul the usd value
        AggregatorV3Interface daiUsdFeed = AggregatorV3Interface(
            addressProvider.getAddress(DAI_USD_ORACLE_ADDRESS)
        );
        (, int256 price, , , ) = daiUsdFeed.latestRoundData();
        usdValue =
            (usdValue * uint256(price)) /
            10**uint256(daiUsdFeed.decimals());
    }

    function _calculateTnftsOnSale(IERC20Metadata treasuryToken)
        internal
        view
        returns (uint256 usdValue)
    {
        ContractHolder memory ch;
        (ch.reSellManager, ch.goldSellManager, ch.marketplace) = abi.decode(
            addressProvider.getAddresses(
                abi.encode(
                    RE_SELL_MANAGER_ADDRESS,
                    GOLD_SELL_MANAGER_ADDRESS,
                    TANGIBLE_MARKETPLACE_ADDRESS
                )
            ),
            (address, address, address)
        );
        address[] memory grouped = new address[](2);
        grouped[0] = ch.reSellManager;
        grouped[1] = ch.goldSellManager;
        for (uint256 it; it < 2; it++) {
            address[] memory tnftContracts = ITreasuryTrackerExt(grouped[it])
                .getTnftCategoriesOnSale();
            uint256 categoriesTotal = tnftContracts.length;
            for (uint256 i; i < categoriesTotal; i++) {
                uint256[] memory tnftIds = ITreasuryTrackerExt(grouped[it])
                    .getTnftTokensOnSale(tnftContracts[i]);

                uint256 tnftsTotal = tnftIds.length;
                for (uint256 j; j < tnftsTotal; j++) {
                    ITangibleMarketplace.Lot memory lot = ITangibleMarketplace(
                        ch.marketplace
                    ).marketplace(tnftContracts[i], tnftIds[j]);
                    if (lot.seller == grouped[it]) {
                        usdValue += lot.price;
                        usdValue = _convertToCorrectDecimals(
                            usdValue,
                            IERC20Metadata(address(lot.paymentToken))
                                .decimals(),
                            treasuryToken.decimals()
                        );
                    }
                }
            }
        }
    }

    function _calculateFtnftsOnSale(IERC20Metadata treasuryToken)
        internal
        view
        returns (uint256 usdValue)
    {
        ContractHolder memory ch;
        (ch.reSellManager, ch.goldSellManager, ch.marketplace) = abi.decode(
            addressProvider.getAddresses(
                abi.encode(
                    RE_SELL_MANAGER_ADDRESS,
                    GOLD_SELL_MANAGER_ADDRESS,
                    TANGIBLE_MARKETPLACE_ADDRESS
                )
            ),
            (address, address, address)
        );
        address[] memory grouped = new address[](2);
        grouped[0] = ch.reSellManager;
        grouped[1] = ch.goldSellManager;
        for (uint256 it; it < 2; it++) {
            address[] memory ftnftContracts = ITreasuryTrackerExt(grouped[it])
                .getFractionContractsOnSale();
            uint256 categoriesTotal = ftnftContracts.length;
            for (uint256 i; i < categoriesTotal; i++) {
                uint256[] memory ftnftIds = ITreasuryTrackerExt(grouped[it])
                    .getFractionTokensOnSale(ftnftContracts[i]);

                uint256 tnftsTotal = ftnftIds.length;
                for (uint256 j; j < tnftsTotal; j++) {
                    ITangibleMarketplace.LotFract
                        memory lotFract = ITangibleMarketplace(ch.marketplace)
                            .marketplaceFract(ftnftContracts[i], ftnftIds[j]);
                    //if we haven't updated trackers
                    if (lotFract.seller == grouped[it]) {
                        usdValue += ((lotFract.price *
                            lotFract.nft.fractionShares(ftnftIds[j])) /
                            lotFract.initialShare);
                        usdValue = _convertToCorrectDecimals(
                            usdValue,
                            IERC20Metadata(address(lotFract.paymentToken))
                                .decimals(),
                            treasuryToken.decimals()
                        );
                    }
                }
            }
        }
    }

    function _calculateTnfts(ITreasuryTrackerExt tracker, IERC20 treasuryToken)
        internal
        view
        returns (uint256 usdValue)
    {
        ITNFTPriceManager priceManager = _getPriceManager();
        address[] memory tnftContracts = tracker.getTnftCategoriesInTreasury();
        uint256 categoriesTotal = tnftContracts.length;
        for (uint256 i; i < categoriesTotal; i++) {
            uint256[] memory tnftIds = tracker.getTnftTokensInTreasury(
                tnftContracts[i]
            );

            uint256 tnftsTotal = tnftIds.length;
            PricesOracleArrays memory pricesOracleArrays;
            if (!_isGoldTnft(tnftContracts[i])) {
                pricesOracleArrays.weSellAt = new uint256[](tnftsTotal);
                pricesOracleArrays.lockedAmount = new uint256[](tnftsTotal);
                (
                    pricesOracleArrays.weSellAt,
                    ,
                    ,
                    ,
                    pricesOracleArrays.lockedAmount
                ) = priceManager.itemPriceBatchTokenIds(
                    ITangibleNFT(tnftContracts[i]),
                    treasuryToken,
                    tnftIds
                );
                for (uint256 j; j < tnftsTotal; j++) {
                    usdValue +=
                        pricesOracleArrays.weSellAt[j] +
                        pricesOracleArrays.lockedAmount[j];
                }
            } else {
                //since it's gold, we just take price for one multiply for others
                pricesOracleArrays.weSellAt = new uint256[](1);
                pricesOracleArrays.lockedAmount = new uint256[](1);
                uint256 oneToken = tnftIds[0];
                tnftIds = new uint256[](1);
                tnftIds[0] = oneToken;
                (
                    pricesOracleArrays.weSellAt,
                    ,
                    ,
                    ,
                    pricesOracleArrays.lockedAmount
                ) = priceManager.itemPriceBatchTokenIds(
                    ITangibleNFT(tnftContracts[i]),
                    treasuryToken,
                    tnftIds
                );
                usdValue +=
                    (pricesOracleArrays.weSellAt[0] +
                        pricesOracleArrays.lockedAmount[0]) *
                    tnftsTotal;
            }
        }
    }

    function _calculateFtnfts(ITreasuryTrackerExt tracker, IERC20 treasuryToken)
        internal
        view
        returns (uint256 usdValue)
    {
        ITNFTPriceManager priceManager = _getPriceManager();
        address[] memory ftnftContracts = tracker
            .getFractionContractsInTreasury();
        uint256 categoriesTotal = ftnftContracts.length;
        for (uint256 i; i < categoriesTotal; i++) {
            uint256[] memory fractionIds = tracker.getFractionTokensInTreasury(
                ftnftContracts[i]
            );
            uint256 fractionsTotal = fractionIds.length;
            ITreasuryTracker.FractionIdData[] memory fData = tracker
                .getFractionTokensDataInTreasury(ftnftContracts[i]);
            uint256 totalShare;

            if (fractionsTotal > 0) {
                for (uint256 j; j < fractionsTotal; j++) {
                    totalShare += fData[j].share;
                }

                PricesOracleArrays memory pricesOracleArrays;
                pricesOracleArrays.weSellAt = new uint256[](1);
                pricesOracleArrays.lockedAmount = new uint256[](1);
                uint256[] memory tokenIds = new uint256[](1);
                tokenIds[0] = fData[0].tnftTokenId;
                (
                    pricesOracleArrays.weSellAt,
                    ,
                    ,
                    ,
                    pricesOracleArrays.lockedAmount
                ) = priceManager.itemPriceBatchTokenIds(
                    ITangibleNFT(fData[0].tnft),
                    treasuryToken,
                    tokenIds
                );

                usdValue +=
                    ((pricesOracleArrays.weSellAt[0] +
                        pricesOracleArrays.lockedAmount[0]) * totalShare) /
                    10000000;
            }
        }
    }

    function fetchPaymentTokenAndAmountFtnft(
        address ftnft,
        uint256 fractionId,
        uint256 share
    )
        external
        view
        returns (
            IERC20 paymentToken,
            uint256 amount,
            bool inRange
        )
    {
        ITangibleMarketplace tMarketplace = _getTangibleMarketplace();
        IFactoryExt factory = tMarketplace.factory();
        ITangibleMarketplace.LotFract memory lot = tMarketplace
            .marketplaceFract(ftnft, fractionId);
        paymentToken = lot.paymentToken;
        amount = (share * lot.price) / lot.initialShare;
        // check if in range
        HelperStruct memory hs;
        ITangibleNFT tnft = ITangibleFractionsNFT(ftnft).tnft();
        hs.weSellAt = new uint256[](1);
        hs.lockedAmount = new uint256[](1);
        hs.tokenIds = new uint256[](1);
        hs.tokenIds[0] = ITangibleFractionsNFT(ftnft).tnftTokenId();
        ITNFTPriceManager priceManager = _getPriceManager();
        (hs.weSellAt, , , , hs.lockedAmount) = priceManager
            .itemPriceBatchTokenIds(tnft, paymentToken, hs.tokenIds);
        //is the item in our purchase range?

        uint256 topPrice;
        if (lot.seller != factory.initReSeller()) {
            require(
                priceThreshold[address(tnft)] >= 100000,
                "price threshold missing"
            );
            topPrice =
                ((((hs.weSellAt[0] + hs.lockedAmount[0]) * share) / 10000000) *
                    priceThreshold[address(tnft)]) /
                fullPercent;
        } else {
            topPrice = amount;
        }
        if (amount <= topPrice) {
            inRange = true;
        } else {
            inRange = false;
        }
    }

    function fetchPaymentTokenAndAmountTnft(
        address tnft,
        uint256 fingerprint,
        uint256 tokenId,
        uint256 _years,
        bool unminted
    )
        external
        view
        returns (
            IERC20 paymentToken,
            uint256 amount,
            bool inRange
        )
    {
        ITangibleMarketplace tMarketplace = _getTangibleMarketplace();
        if (unminted) {
            paymentToken = IFactoryExt(tMarketplace.factory()).defUSD();
            HelperStruct memory hs;
            hs.weSellAt = new uint256[](1);
            hs.lockedAmount = new uint256[](1);
            hs.fingerprints = new uint256[](1);
            hs.fingerprints[0] = fingerprint;
            ITNFTPriceManager priceManager = _getPriceManager();
            (hs.weSellAt, , , , hs.lockedAmount) = priceManager
                .itemPriceBatchFingerprints(
                    ITangibleNFT(tnft),
                    paymentToken,
                    hs.fingerprints
                );
            amount = hs.weSellAt[0] + hs.lockedAmount[0];
            //check for storage
            amount += _checkStorageValue(ITangibleNFT(tnft), amount, _years);
            inRange = true;
        } else {
            ITangibleMarketplace.Lot memory lot = tMarketplace.marketplace(
                tnft,
                tokenId
            );
            paymentToken = lot.paymentToken;
            amount = lot.price;
            //is the item in our purchase range?
            require(
                priceThreshold[address(tnft)] >= 100000,
                "price threshold missing"
            );
            uint256 topPrice = (amount * priceThreshold[tnft]) / fullPercent;
            // check if in range
            HelperStruct memory hs;
            hs.weSellAt = new uint256[](1);
            hs.lockedAmount = new uint256[](1);
            hs.tokenIds = new uint256[](1);
            hs.tokenIds[0] = tokenId;
            ITNFTPriceManager priceManager = _getPriceManager();
            (hs.weSellAt, , , , hs.lockedAmount) = priceManager
                .itemPriceBatchTokenIds(
                    ITangibleNFT(tnft),
                    paymentToken,
                    hs.tokenIds
                );
            if (amount <= topPrice) {
                inRange = true;
            } else {
                inRange = false;
            }
        }
    }

    function _checkStorageValue(
        ITangibleNFT tnft,
        uint256 price,
        uint256 _years
    ) internal view returns (uint256 storageAmount) {
        if (!tnft.storageRequired()) {
            return storageAmount;
        }
        if (tnft.storagePriceFixed()) {
            storageAmount = tnft.storagePricePerYear() * _years;
        } else {
            require(price > 0, "Price not correct");
            storageAmount =
                (price * tnft.storagePercentagePricePerYear() * _years) /
                10000;
        }
    }
}
