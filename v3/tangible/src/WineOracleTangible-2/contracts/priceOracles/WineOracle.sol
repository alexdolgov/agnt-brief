// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity 0.8.7;

import "../abstract/AdminAccess.sol";
import "../interfaces/IPriceOracle.sol";
import "../abstract/PriceConverter.sol";
import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";

contract WineOracleTangible is AdminAccess, IPriceOracle, PriceConverter {
    AggregatorV3Interface internal priceFeedGBP;
    struct OraclePrices {
        uint256 weSellAt;
        uint256 weSellAtStock;
        uint256 weBuyAt;
        uint256 weBuyAtStock;
    }

    struct OracleData {
        uint256 fingerprint;
        uint256 weSellAt;
        uint256 weSellAtStock;
        uint256 weBuyAt;
        uint256 weBuyAtStock;
    }

    event DecimalsUpdated(
        uint256 indexed oldDecimals,
        uint256 indexed newDecimals
    );
    event TimestampUpdated(
        uint256 indexed fingerprintId,
        uint256 oldTimestamp,
        uint256 newTimestamp
    );
    event PriceUpdated(
        uint256 indexed fingerprint,
        uint256 sellAtOld,
        uint256 buyAtOld,
        uint256 sellAtNew,
        uint256 buyAtNew
    );

    mapping(uint256 => OraclePrices) private oraclePrices;
    mapping(uint256 => uint256) private fingerprintTimestamps;
    uint256[] public fingerprintsInOracle; //list of fingerprints that have prices
    mapping(uint256 => bool) public fingerprintHasPrice;

    constructor(address gbpOracle) {
        _setupRole(DEFAULT_ADMIN_ROLE, msg.sender);
        priceFeedGBP = AggregatorV3Interface(gbpOracle);
    }

    /// @dev The function latest price from oracle.
    uint8 public override decimals = 3;

    /// @dev The function latest price from oracle.
    string public override description = "Wine/USD Oracle";

    /// @dev The function latest price from oracle.
    uint256 public override version = 2;

    function latestTimeStamp(uint256 fingerprint)
        external
        view
        override
        returns (uint256)
    {
        return fingerprintTimestamps[fingerprint];
    }

    function converGBPToUSD(uint256 priceInGBP)
        internal
        view
        returns (uint256)
    {
        (, int256 price, , , ) = priceFeedGBP.latestRoundData();
        if (price < 0) {
            price = 0;
        }
        //add conversion premium 1.53%
        uint256 GBPToUSD = (uint256(price) * 10153) / 10000;
        return (priceInGBP * GBPToUSD) / 10**uint256(priceFeedGBP.decimals());
    }

    function usdcPrice(
        ITangibleNFT nft,
        uint256 fingerprint,
        uint256 tokenId
    )
        external
        view
        override
        returns (
            uint256 weSellAt,
            uint256 weSellAtStock,
            uint256 weBuyAt,
            uint256 weBuyAtStock,
            uint256 lockedAmount
        )
    {
        require(
            (address(nft) != address(0) && tokenId != 0) || (fingerprint != 0),
            "Must provide fingerpeint or tokenId"
        );
        uint256 localFingerprint = fingerprint;

        if (localFingerprint == 0) {
            localFingerprint = nft.tokensFingerprint(tokenId);
        }

        require(localFingerprint != 0, "fingerprint must exist");

        uint256 _lockedAmount = (nft.lockPercent() *
            oraclePrices[localFingerprint].weSellAt) / 10000;

        weSellAt = convertPriceToUSDC(
            converGBPToUSD(oraclePrices[localFingerprint].weSellAt),
            decimals
        );
        weBuyAt = convertPriceToUSDC(
            converGBPToUSD(oraclePrices[localFingerprint].weBuyAt),
            decimals
        );
        lockedAmount = convertPriceToUSDC(
            converGBPToUSD(_lockedAmount),
            decimals
        );

        weSellAtStock = oraclePrices[localFingerprint].weSellAtStock;
        weBuyAtStock = oraclePrices[localFingerprint].weBuyAtStock;

        return (weSellAt, weSellAtStock, weBuyAt, weBuyAtStock, lockedAmount);
    }

    function oracleDataAll()
        public
        view
        returns (OracleData[] memory currentData)
    {
        uint256 length = fingerprintsInOracle.length;
        currentData = new OracleData[](length);

        for (uint256 i = 0; i < length; i++) {
            currentData[i].weSellAt = oraclePrices[fingerprintsInOracle[i]]
                .weSellAt;
            currentData[i].weSellAtStock = oraclePrices[fingerprintsInOracle[i]]
                .weSellAtStock;
            currentData[i].weBuyAt = oraclePrices[fingerprintsInOracle[i]]
                .weBuyAt;
            currentData[i].weBuyAtStock = oraclePrices[fingerprintsInOracle[i]]
                .weBuyAtStock;
            currentData[i].fingerprint = fingerprintsInOracle[i];
        }

        return currentData;
    }

    function oracleDataBatch(uint256[] calldata fingerprints)
        public
        view
        returns (OracleData[] memory currentData)
    {
        uint256 length = fingerprints.length;
        currentData = new OracleData[](length);

        for (uint256 i = 0; i < length; i++) {
            currentData[i].weSellAt = oraclePrices[fingerprints[i]].weSellAt;
            currentData[i].weSellAtStock = oraclePrices[fingerprints[i]]
                .weSellAtStock;
            currentData[i].weBuyAt = oraclePrices[fingerprints[i]].weBuyAt;
            currentData[i].weBuyAtStock = oraclePrices[fingerprints[i]]
                .weBuyAtStock;
            currentData[i].fingerprint = fingerprints[i];
        }

        return currentData;
    }

    function decrementSellStock(uint256 fingerprint)
        external
        override
        onlyFactory
    {
        require(
            oraclePrices[fingerprint].weSellAtStock > 0,
            "Already zero sell"
        );
        oraclePrices[fingerprint].weSellAtStock--;
    }

    //to be called by Instant liquidity engine
    function decrementBuyStock(uint256 fingerprint)
        external
        override
        onlyFactory
    {
        require(oraclePrices[fingerprint].weBuyAtStock > 0, "Already zero buy");
        oraclePrices[fingerprint].weBuyAtStock--;
    }

    function availableInStock(uint256 fingerprint)
        external
        view
        override
        returns (uint256 weSellAtStock, uint256 weBuyAtStock)
    {
        return (
            oraclePrices[fingerprint].weSellAtStock,
            oraclePrices[fingerprint].weBuyAtStock
        );
    }

    //set decimals
    function setDecimals(uint8 _decimals) external onlyAdmin {
        emit DecimalsUpdated(decimals, _decimals);
        decimals = _decimals;
    }

    //we get the prices in gbp
    function addOraclePrices(
        uint256[] calldata _fingerprint,
        uint256[] calldata _weSellAt,
        uint256[] calldata _weBuyAt
    ) external onlyAdmin {
        require(
            ((_fingerprint.length == _weSellAt.length) &&
                (_fingerprint.length == _weBuyAt.length)),
            "Array must have the same length"
        );
        uint256 length = _fingerprint.length;

        for (uint256 i = 0; i < length; i++) {
            emit PriceUpdated(
                _fingerprint[i],
                oraclePrices[_fingerprint[i]].weSellAt,
                oraclePrices[_fingerprint[i]].weBuyAt,
                _weSellAt[i],
                _weBuyAt[i]
            );
            //update the prices
            oraclePrices[_fingerprint[i]].weSellAt = _weSellAt[i];
            oraclePrices[_fingerprint[i]].weBuyAt = _weBuyAt[i];
            //check if we had fingerprint before
            if (!fingerprintHasPrice[_fingerprint[i]]) {
                fingerprintsInOracle.push(_fingerprint[i]);
                //update mapping
                fingerprintHasPrice[_fingerprint[i]] = true;
            }
            emit TimestampUpdated(
                _fingerprint[i],
                fingerprintTimestamps[_fingerprint[i]],
                block.timestamp
            );
            //update the timestamp of updated price
            fingerprintTimestamps[_fingerprint[i]] = block.timestamp;
        }
    }

    function addOracleStock(
        uint256[] calldata _fingerprint,
        uint256[] calldata _weSellAtStock,
        uint256[] calldata _weBuyAtStock
    ) external onlyAdmin {
        require(
            ((_fingerprint.length == _weSellAtStock.length) &&
                (_fingerprint.length == _weBuyAtStock.length)),
            "Array must have the same length"
        );
        uint256 length = _fingerprint.length;

        for (uint256 i = 0; i < length; i++) {
            oraclePrices[_fingerprint[i]].weSellAtStock = _weSellAtStock[i];
            oraclePrices[_fingerprint[i]].weBuyAtStock = _weBuyAtStock[i];
        }
    }

    function getFingerprints() external view returns (uint256[] memory) {
        return fingerprintsInOracle;
    }
}
