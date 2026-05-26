// SPDX-License-Identifier: MIT
pragma solidity 0.8.12;

import { IAggregatorV2V3 } from "../interfaces/IAggregatorV2V3.sol";
import { IERC20Metadata } from "@openzeppelin/contracts/interfaces/IERC20Metadata.sol";
import { IERC4626 } from "@openzeppelin/contracts/interfaces/IERC4626.sol";

/// @title RizWrappedERC4626Adapter Contract
/// @notice Gets the price in Usd of a ERC4626 wrapped asset using the price of the unwrapped asset
/// and the wrapped asset vault. This is typically used for rebasing tokens that are wrapped in a ERC4626 vault.
/// @author Radiant
contract RizWrappedERC4626Adapter is IAggregatorV2V3 {
    struct PriceFeedResponse {
        uint80 roundId;
        int256 answer;
        uint256 startedAt;
        uint256 updatedAt;
        uint80 answeredInRound;
    }

    uint256 public constant PRECISION = 1e18;
    uint256 public constant UNIT = PRECISION;

    /// @notice unwrappedAsset/USD price feed
    IAggregatorV2V3 public immutable unwrappedAssetUsdOracle;
    /// @notice wrapped asset ERC4626 vault
    IERC4626 public immutable wrappedAssetVault;

    IERC20Metadata public immutable unwrappedAsset;
    string internal _description;

    error AddressZero();
    error InvalidIAggregatorV2V3Price();
    error InvalidERC4626Value();
    error CannotComputeHistoricalPrice();

    /**
     * @param description_ Description of the oracle (.ie. "wERC4626Asset/USD")
     * @param unwrappedAssetUsdOracle_ unwrappedAsset/USD price feed (IAggregatorV2V3 compatible)
     * @param wrappedAssetVault_ wrapped asset address of the ERC4626 vault
     */
    constructor(string memory description_, address unwrappedAssetUsdOracle_, address wrappedAssetVault_) {
        if (unwrappedAssetUsdOracle_ == address(0)) revert AddressZero();
        if (wrappedAssetVault_ == address(0)) revert AddressZero();
        _description = description_;
        unwrappedAssetUsdOracle = IAggregatorV2V3(unwrappedAssetUsdOracle_);
        wrappedAssetVault = IERC4626(wrappedAssetVault_);
        unwrappedAsset = IERC20Metadata(wrappedAssetVault.asset());
    }

    function version() external pure returns (uint256) {
        return 1;
    }

    function description() external view returns (string memory) {
        return _description;
    }

    function decimals() external view returns (uint8) {
        return unwrappedAssetUsdOracle.decimals();
    }

    /**
     * @notice Returns wrappedAsset / USD.
     * @return answer (i.e. wERC4626Asset/USD )
     */
    function latestAnswer() public view returns (int256 answer) {
        int256 rawUAssetPrice = unwrappedAssetUsdOracle.latestAnswer();
        return _safeCastUint256ToInt256(_computeLatestAnswer(rawUAssetPrice));
    }

    function latestTimestamp() external view returns (uint256) {
        PriceFeedResponse memory response = _computeLatestRoundData();
        return response.updatedAt;
    }

    function latestRound() external view returns (uint256) {
        PriceFeedResponse memory response = _computeLatestRoundData();
        return response.roundId;
    }

    function getAnswer(uint256) external pure returns (int256) {
        revert CannotComputeHistoricalPrice();
    }

    function getTimestamp(uint256 roundId) external view returns (uint256) {
        (,,, uint256 updatedAt,) = unwrappedAssetUsdOracle.getRoundData(uint80(roundId));
        return updatedAt;
    }

    function getRoundData(uint80) external pure returns (uint80, int256, uint256, uint256, uint80) {
        revert CannotComputeHistoricalPrice();
    }

    /**
     * @notice Returns the latest round data of the computed price.
     * @return roundId from unwrappedAssetUsdOracle
     * @return answer computed as wrappedAsset/USD * assetsPerShareRate
     * @return startedAt from unwrappedAssetUsdOracle
     * @return updatedAt from unwrappedAssetUsdOracle
     * @return answeredInRound from unwrappedAssetUsdOracle
     */
    function latestRoundData()
        public
        view
        returns (uint80 roundId, int256 answer, uint256 startedAt, uint256 updatedAt, uint80 answeredInRound)
    {
        PriceFeedResponse memory round = _computeLatestRoundData();
        roundId = round.roundId;
        answer = round.answer;
        startedAt = round.startedAt;
        updatedAt = round.updatedAt;
        answeredInRound = round.answeredInRound;
    }

    function _computeLatestAnswer(int256 _rawUAssetPrice) internal view virtual returns (uint256) {
        if (_rawUAssetPrice <= 0) revert InvalidIAggregatorV2V3Price();
        uint256 uAssetPrice = uint256(_rawUAssetPrice);
        uint256 wrappedUnit = 10 ** wrappedAssetVault.decimals();
        uint256 uAssetsPerWrappedUnit = wrappedAssetVault.convertToAssets(wrappedUnit);
        if (uAssetsPerWrappedUnit == 0) revert InvalidERC4626Value();

        return (uAssetPrice * uAssetsPerWrappedUnit) / wrappedUnit;
    }

    function _computeLatestRoundData() internal view virtual returns (PriceFeedResponse memory uAssetRoundData) {
        int256 rawPrice;
        (
            uAssetRoundData.roundId,
            rawPrice,
            uAssetRoundData.startedAt,
            uAssetRoundData.updatedAt,
            uAssetRoundData.answeredInRound
        ) = unwrappedAssetUsdOracle.latestRoundData();

        uAssetRoundData.answer = _safeCastUint256ToInt256(_computeLatestAnswer(rawPrice));
    }

    function _safeCastUint256ToInt256(uint256 _value) internal pure returns (int256) {
        require(_value <= type(uint256).max / 2, "cast overflow");
        return int256(_value);
    }
}
