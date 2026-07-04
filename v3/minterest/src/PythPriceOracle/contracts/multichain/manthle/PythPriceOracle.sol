// SPDX-License-Identifier: BSD-3-Clause
pragma solidity 0.8.17;

import "@openzeppelin/contracts/access/AccessControl.sol";
import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";
import "../../interfaces/IMToken.sol";
import "../../libraries/ErrorCodes.sol";
import "../../interfaces/IChainlinkPriceOracle.sol";

import "@pythnetwork/pyth-sdk-solidity/IPyth.sol";
import "@pythnetwork/pyth-sdk-solidity/PythStructs.sol";

contract PythPriceOracle is IPriceOracle, AccessControl {
    /**
     *  @notice Structure to store oracle related data for the token
     */
    struct TokenConfig {
        /// @dev The Pyth Price Feed ID of which to fetch the price and confidence interval.
        bytes32 priceFeedId;
        /// @dev Maximum age of the on-chain price in seconds.
        uint32 maxValidPriceAge;
        // @dev Original token decimals
        uint32 underlyingTokenDecimals;
    }

    event NewTokenConfigSet(
        address token,
        bytes32 priceFeedId,
        uint32 maxValidPriceAge,
        uint32 underlyingTokenDecimals
    );

    /// @dev Mapping to store oracle related configuration for tokens
    mapping(address => TokenConfig) public feedProxies;

    IPyth public immutable pyth;

    /**
     * @notice Construct a ChainlinkPriceOracle contract.
     * @param admin The address of the Admin
     * @param _pyth The address of Pyth price provider
     */
    constructor(address admin, IPyth _pyth) {
        _grantRole(DEFAULT_ADMIN_ROLE, admin);
        pyth = _pyth;
    }

    function pow10(uint8 power) private pure returns (uint256) {
        if (power == 22) return 1e22;
        else if (power == 20) return 1e20;
        else if (power == 10) return 1e10;
        else if (power == 1) return 1e1;
        else if (power == 2) return 1e2;
        else if (power == 3) return 1e3;
        else if (power == 4) return 1e4;
        else if (power == 5) return 1e5;
        else if (power == 6) return 1e6;
        else if (power == 7) return 1e7;
        else if (power == 8) return 1e8;
        else if (power == 9) return 1e9;
        else if (power == 11) return 1e11;
        else if (power == 12) return 1e12;
        else if (power == 13) return 1e13;
        else if (power == 14) return 1e14;
        else if (power == 15) return 1e15;
        else if (power == 16) return 1e16;
        else if (power == 17) return 1e17;
        else if (power == 18) return 1e18;
        else if (power == 19) return 1e19;
        else if (power == 21) return 1e21;
        else if (power == 23) return 1e23;
        else if (power == 24) return 1e24;
        else if (power == 25) return 1e25;
        else if (power == 26) return 1e26;
        else if (power == 27) return 1e27;
        else if (power == 28) return 1e28;
        else if (power == 29) return 1e29;
        else if (power == 30) return 1e30;
        else if (power == 31) return 1e31;
        else if (power == 32) return 1e32;
        else if (power == 33) return 1e33;
        else if (power == 34) return 1e34;
        else if (power == 35) return 1e35;
        else return 1e36;
    }

    /**
     * @notice Convert price received from oracle to be scaled by (36 - tokenDecimals)
     * @param config token config
     * @param reportedPrice raw oracle price
     * @return price scaled by (36 - tokenDecimals)
     */
    function convertReportedPrice(TokenConfig memory config, PythStructs.Price memory reportedPrice)
        internal
        pure
        returns (uint256)
    {
        require(reportedPrice.price > 0, ErrorCodes.REPORTED_PRICE_SHOULD_BE_GREATER_THAN_ZERO);
        uint256 unsignedPrice = uint256(uint64(reportedPrice.price));

        int32 multiplier = 36 - int32(config.underlyingTokenDecimals) + reportedPrice.expo;
        require(multiplier > 0 && multiplier < 30, ErrorCodes.INCORRECT_PRICE_MULTIPLIER);

        return unsignedPrice * pow10(uint8(uint32(multiplier)));
    }

    /// @inheritdoc IPriceOracle
    function getUnderlyingPrice(IMToken mToken) external view returns (uint256) {
        require(address(mToken) != address(0), ErrorCodes.MTOKEN_ADDRESS_CANNOT_BE_ZERO);
        return getAssetPrice(address(mToken.underlying()));
    }

    /// @inheritdoc IPriceOracle
    function getAssetPrice(address underlyingAsset) public view returns (uint256) {
        require(underlyingAsset != address(0), ErrorCodes.TOKEN_ADDRESS_CANNOT_BE_ZERO);

        TokenConfig memory config = feedProxies[underlyingAsset];
        require(config.priceFeedId != bytes32(0), ErrorCodes.PRICE_FEED_ID_NOT_FOUND);

        // prettier-ignore
        PythStructs.Price memory currentPrice = pyth.getPriceNoOlderThan(config.priceFeedId, config.maxValidPriceAge);

        require(block.timestamp - currentPrice.publishTime <= config.maxValidPriceAge, ErrorCodes.ORACLE_PRICE_EXPIRED);

        return convertReportedPrice(config, currentPrice);
    }

    /**
     * @notice Set the price config for a underlying asset
     * @param underlyingAsset The underlying to set the price oracle proxy of
     * @param priceFeedId The Pyth Price Feed ID of which to fetch the price and confidence interval.
     * @param maxValidPriceAge Maximum age of the on-chain price in seconds.
     * @param underlyingTokenDecimals Original token decimals
     * @dev RESTRICTION: Admin only
     */
    function setTokenConfig(
        address underlyingAsset,
        bytes32 priceFeedId,
        uint32 maxValidPriceAge,
        uint32 underlyingTokenDecimals
    ) external onlyRole(DEFAULT_ADMIN_ROLE) {
        require(underlyingAsset != address(0), ErrorCodes.TOKEN_ADDRESS_CANNOT_BE_ZERO);
        require(priceFeedId != bytes32(0), ErrorCodes.OR_INCORRECT_PRICE_FEED_ID);
        require(maxValidPriceAge > 0, ErrorCodes.OR_PRICE_AGE_CAN_NOT_BE_ZERO);
        require(underlyingTokenDecimals > 0, ErrorCodes.OR_UNDERLYING_TOKENS_DECIMALS_SHOULD_BE_GREATER_THAN_ZERO);
        require(underlyingTokenDecimals <= 18, ErrorCodes.OR_UNDERLYING_TOKENS_DECIMALS_TOO_BIG);

        feedProxies[underlyingAsset] = TokenConfig(priceFeedId, maxValidPriceAge, underlyingTokenDecimals);

        emit NewTokenConfigSet(underlyingAsset, priceFeedId, maxValidPriceAge, underlyingTokenDecimals);
    }
}
