// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.8.18;

import "@openzeppelin/contracts/utils/math/SafeMath.sol";
import {IOracle} from "../../interfaces/IGamma.sol";
import {OpynPricerInterface} from "../../interfaces/IGamma.sol";

/**
 * @notice A Pricer contract for one asset as reported by Chainlink
 */
contract HyperPricer is OpynPricerInterface {
    using SafeMath for uint256;
    address constant ORACLE_PX_PRECOMPILE_ADDRESS =
        0x0000000000000000000000000000000000000807;
    address constant PERP_ASSET_INFO_PRECOMPILE_ADDRESS =
        0x000000000000000000000000000000000000080a;

    /// @dev base decimals
    uint256 internal constant BASE = 8;

    /// @notice the opyn oracle address
    IOracle public oracle;

    /// @notice asset index in precompiled oracle
    uint256 public assetIndex;

    /// @notice asset that this pricer will a get price for
    address public asset;

    /// @notice asset name
    string public assetName;

    /// @notice bot address that is allowed to call setExpiryPriceInOracle
    address public bot;

    struct PerpAssetInfo {
        string coin;
        uint32 marginTableId;
        uint8 szDecimals;
        uint8 maxLeverage;
        bool onlyIsolated;
    }

    /**
     * @param _bot priveleged address that can call setExpiryPriceInOracle
     * @param _asset asset that this pricer will get a price for
     * @param _oracle Opyn Oracle address
     */
    constructor(
        address _bot,
        address _asset,
        string memory _assetName,
        uint256 _assetIndex,
        address _oracle
    ) {
        require(_bot != address(0), "HyperPricer: Cannot set 0 address as bot");
        require(
            bytes(_assetName).length > 0,
            "HyperPricer: Cannot set empty string as assetName"
        );
        require(
            _oracle != address(0),
            "HyperPricer: Cannot set 0 address as oracle"
        );

        bot = _bot;
        oracle = IOracle(_oracle);
        asset = _asset;
        assetName = _assetName;
        assetIndex = _assetIndex;
    }

    /**
     * @notice modifier to check if sender address is equal to bot address
     */
    modifier onlyBot() {
        require(msg.sender == bot, "HyperPricer: unauthorized sender");

        _;
    }

    /**
     * @notice set the expiry price in the oracle, can only be called by Bot address
     * @param _expiryTimestamp expiry to set a price for
     * @param price the price to set in the oracle, scaled by 1e8
     */
    function setExpiryPriceInOracle(
        uint256 _expiryTimestamp,
        uint256 price
    ) external onlyBot {
        oracle.setExpiryPrice(asset, _expiryTimestamp, price);
    }

    /**
     * @notice get the live price for the asset
     * @dev overides the getPrice function in OpynPricerInterface
     * @return price of the asset in USD, scaled by 1e8
     */
    function getPrice() external view override returns (uint256) {
        bool success;
        bytes memory result;
        (success, result) = ORACLE_PX_PRECOMPILE_ADDRESS.staticcall(
            abi.encode(assetIndex)
        );
        require(success, "OraclePx precompile call failed");
        uint256 price = abi.decode(result, (uint64));

        PerpAssetInfo memory assetInfo = this.perpAssetInfo();
        require(
            compareStrings(assetInfo.coin, assetName),
            "HyperPricer: assetName mismatch"
        );

        return (price * (10 ** BASE)) / (10 ** (6 - assetInfo.szDecimals));
    }

    function perpAssetInfo() external view returns (PerpAssetInfo memory) {
        bool success;
        bytes memory result;
        (success, result) = PERP_ASSET_INFO_PRECOMPILE_ADDRESS.staticcall(
            abi.encode(assetIndex)
        );
        require(success, "PerpAssetInfo precompile call failed");
        return abi.decode(result, (PerpAssetInfo));
    }

    function compareStrings(
        string memory a,
        string memory b
    ) internal pure returns (bool) {
        return (keccak256(abi.encodePacked((a))) ==
            keccak256(abi.encodePacked((b))));
    }
}
