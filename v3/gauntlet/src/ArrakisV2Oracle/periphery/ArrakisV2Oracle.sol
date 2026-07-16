// SPDX-License-Identifier: BUSL-1.1
// slither-disable-start similar-names
pragma solidity 0.8.21;

import {Math} from "./Math.sol";
import {IAeraV2Oracle} from "./interfaces/IAeraV2Oracle.sol";
import {IArrakisV2Oracle} from "./interfaces/IArrakisV2Oracle.sol";
import {IArrakisV2} from "periphery/dependencies/arrakis-v2/IArrakisV2.sol";
import {IArrakisV2Helper} from
    "periphery/dependencies/arrakis-v2/IArrakisV2Helper.sol";
import {SafeCast} from "periphery/dependencies/openzeppelin/SafeCast.sol";
import {ONE} from "src/v2/Constants.sol";

/// @title ArrakisV2Oracle contract.
/// @notice Oracle for the ArrakisV2 ERC20.
contract ArrakisV2Oracle is IArrakisV2Oracle, IAeraV2Oracle {
    using SafeCast for int256;
    using SafeCast for uint256;
    using Math for uint256;

    /// CONSTANTS ///

    uint8 public constant decimals = 18;

    /// IMMUTABLES ///

    /// @notice The ArrakisV2 vault contract.
    IArrakisV2 public immutable arrakis;
    /// @notice The ArrakisV2Helper contract.
    IArrakisV2Helper public immutable arrakisHelper;

    /// @notice The price feed for token0 of the underlying ArrakisV2 Vault.
    address public immutable priceFeed0;
    /// @notice The price feed for token1 of the underlying ArrakisV2 Vault.
    address public immutable priceFeed1;
    /// @notice The scale for the price feed of token0.
    uint256 public immutable priceFeed0Scale;
    /// @notice The scale for the price feed of token1.
    uint256 public immutable priceFeed1Scale;
    /// @notice Flag to check if the price for token0 needs to be inverted.
    bool public immutable invertPrice0;
    /// @notice Flag to check if the price for token1 needs to be inverted.
    bool public immutable invertPrice1;
    /// @notice The rescale factor for token0.
    uint256 public immutable rescaleFactor0;
    /// @notice The rescale factor for token1.
    uint256 public immutable rescaleFactor1;

    /// FUNCTIONS ///

    /// @notice Constructor for the ArrakisV2Oracle contract.
    /// @param arrakis_ The address of the ArrakisV2 contract.
    /// @param arrakisHelper_ The address of the ArrakisV2Helper contract.
    /// @param priceFeed0_ The address of the price feed for token0 of the underlying ArrakisV2 Vault. Zero address (0x0) means the asset is numeraire.
    /// @param invertPrice0_ Flag to check if the price for token0 needs to be inverted.
    /// @param priceFeed1_ The address of the price feed for token1 of the underlying ArrakisV2 Vault. Zero address (0x0) means the asset is numeraire.
    /// @param invertPrice1_ Flag to check if the price for token1 needs to be inverted.
    constructor(
        address arrakis_,
        address arrakisHelper_,
        address priceFeed0_,
        bool invertPrice0_,
        address priceFeed1_,
        bool invertPrice1_
    ) {
        // Requirements: check the ArrakisV2 Vault address is not zero.
        if (arrakis_ == address(0)) {
            revert AeraPeriphery__ArrakisV2IsZeroAddress();
        }
        // Requirements: check the ArrakisV2Helper address is not zero.
        if (arrakisHelper_ == address(0)) {
            revert AeraPeriphery__ArrakisV2HelperIsZeroAddress();
        }
        // Effects: initialze all immutable variables.
        arrakis = IArrakisV2(arrakis_);
        arrakisHelper = IArrakisV2Helper(arrakisHelper_);

        // Requirements: check at least one price feed is not zero.
        if (priceFeed0_ == address(0) && priceFeed1_ == address(0)) {
            revert AeraPeriphery__BothPriceFeedsAreZeroAddress();
        }
        // Requirements: check both price feeds are not the same.
        if (priceFeed0_ == priceFeed1_) {
            revert AeraPeriphery__PriceFeedsAreSame();
        }
        // Check whether priceFeed0 is present.
        if (priceFeed0_ != address(0)) {
            // Effects: set the price feed for token0.
            priceFeed0 = priceFeed0_;
            // Effects: set the invert flag for token0.
            invertPrice0 = invertPrice0_;
            // Effects: set the price feed scale for token0.
            priceFeed0Scale = 10 ** IAeraV2Oracle(priceFeed0_).decimals();
        }
        // Check whether priceFeed1 is present.
        if (priceFeed1_ != address(0)) {
            // Effects: set the price feed for token1.
            priceFeed1 = priceFeed1_;
            // Effects: set the invert flag for token1.
            invertPrice1 = invertPrice1_;
            // Effects: set the price feed scale for token1.
            priceFeed1Scale = 10 ** IAeraV2Oracle(priceFeed1_).decimals();
        }

        // Effects: Calculate rescale factors for token0 and token1.
        rescaleFactor0 = 10 ** (18 - arrakis.token0().decimals());
        rescaleFactor1 = 10 ** (18 - arrakis.token1().decimals());
    }

    /// @inheritdoc IAeraV2Oracle
    function latestRoundData()
        external
        view
        override
        returns (
            uint80 roundId,
            int256 answer,
            uint256 startedAt,
            uint256 updatedAt,
            uint80 answeredInRound
        )
    {
        roundId = 0;
        startedAt = 0;
        answeredInRound = 0;
        updatedAt = block.timestamp;
        answer = _getSharePrice().toInt256();
        // slither-disable-next-line incorrect-equality
        if (answer == 0) {
            answer = 1; // Avoid zero price, which would break AeraVaultAssetRegistry.
        }
    }

    /// INTERNAL FUNCTIONS ///

    /// @notice Gets the price of one Arrakis Vault share in numeraire terms.
    function _getSharePrice() internal view returns (uint256) {
        uint256 arrakisTotalSupply = arrakis.totalSupply();

        // If the total supply of ArrakisV2 vault is zero, return zero.
        if (arrakisTotalSupply == 0) {
            return 0;
        }
        // Get the total underlying amounts of the ArrakisV2 vault.
        // Note: this is quite expensive.
        // Note: returned amounts includes unpaid fees for LPs.
        (uint256 totalAmount0, uint256 totalAmount1) =
            arrakisHelper.totalUnderlying(arrakis);

        // Rescale to 18 decimals and calculate the amount of token0 and token1
        // for one Arrakis vault share.
        uint256 amount0 =
            (totalAmount0 * rescaleFactor0).mulDiv(ONE, arrakisTotalSupply);
        uint256 amount1 =
            (totalAmount1 * rescaleFactor1).mulDiv(ONE, arrakisTotalSupply);

        // If the priceFeed0 is not zero, get the price and convert amount0 to numeraire.
        if (priceFeed0 != address(0)) {
            uint256 price0 = _getPrice(priceFeed0);
            // Invert the price if necessary.
            amount0 = invertPrice0
                ? amount0.mulDiv(priceFeed0Scale, price0)
                : amount0.mulDiv(price0, priceFeed0Scale);
        }
        // If the priceFeed1 is not zero, get the price and convert amount1 to numeraire.
        if (priceFeed1 != address(0)) {
            uint256 price1 = _getPrice(priceFeed1);
            // Invert the price if necessary.
            amount1 = invertPrice1
                ? amount1.mulDiv(priceFeed1Scale, price1)
                : amount1.mulDiv(price1, priceFeed1Scale);
        }

        // Return the sum of amount0 and amount1.
        return amount0 + amount1;
    }

    /// @dev Gets and validates the price from the price feed.
    function _getPrice(address priceFeed) internal view returns (uint256) {
        (, int256 price,,,) = IAeraV2Oracle(priceFeed).latestRoundData();

        if (price <= 0) {
            revert AeraPeriphery__InvalidPrice(priceFeed, price);
        }
        return price.toUint256();
    }
}
// slither-disable-end similar-names
