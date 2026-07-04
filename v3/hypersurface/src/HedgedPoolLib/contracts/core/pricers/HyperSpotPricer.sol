// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.8.18;

import "@openzeppelin/contracts/utils/math/SafeMath.sol";
import {IOracle} from "../../interfaces/IGamma.sol";
import {OpynPricerInterface} from "../../interfaces/IGamma.sol";

/**
 * @notice A Pricer contract for one asset as reported by Hyperliquid spot prices from precompiled contracts
 */
contract HyperSpotPricer is OpynPricerInterface {
    using SafeMath for uint256;
    address constant TOKEN_INFO_PRECOMPILE_ADDRESS =
        0x000000000000000000000000000000000000080C;
    address constant SPOT_PX_PRECOMPILE_ADDRESS =
        0x0000000000000000000000000000000000000808;

    /// @dev base decimals
    uint256 internal constant BASE = 8;

    /// @notice the opyn oracle address
    IOracle public oracle;

    /// @notice asset index
    uint256 public assetIndex;

    /// @notice spot index in precompiled spot oracle
    uint256 public assetSpotIndex;

    /// @notice asset that this pricer will a get price for
    address public asset;

    /// @notice asset name
    string public assetName;

    /// @notice bot address that is allowed to call setExpiryPriceInOracle
    address public bot;

    struct TokenInfo {
        string name;
        uint64[] spots;
        uint64 deployerTradingFeeShare;
        address deployer;
        address evmContract;
        uint8 szDecimals;
        uint8 weiDecimals;
        int8 evmExtraWeiDecimals;
    }

    /**
     * @param _bot privileged address that can call setExpiryPriceInOracle
     * @param _asset asset that this pricer will get a price for
     * @param _oracle Opyn Oracle address
     */
    constructor(
        address _bot,
        address _asset,
        string memory _assetName,
        uint256 _assetIndex,
        uint256 _assetSpotIndex,
        address _oracle
    ) {
        require(
            _bot != address(0),
            "HyperSpotPricer: Cannot set 0 address as bot"
        );
        require(
            bytes(_assetName).length > 0,
            "HyperSpotPricer: Cannot set empty string as assetName"
        );
        require(
            _oracle != address(0),
            "HyperSpotPricer: Cannot set 0 address as oracle"
        );

        bot = _bot;
        oracle = IOracle(_oracle);
        asset = _asset;
        assetName = _assetName;
        assetIndex = _assetIndex;
        assetSpotIndex = _assetSpotIndex;
    }

    /**
     * @notice modifier to check if sender address is equal to bot address
     */
    modifier onlyBot() {
        require(msg.sender == bot, "HyperSpotPricer: unauthorized sender");

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
     * @dev overrides the getPrice function in OpynPricerInterface
     * @return price of the asset in USD, scaled by 1e8
     */
    function getPrice() external view override returns (uint256) {
        bool success;
        bytes memory result;
        (success, result) = SPOT_PX_PRECOMPILE_ADDRESS.staticcall(
            abi.encode(assetSpotIndex)
        );
        require(success, "SpotPx precompile call failed");
        uint256 price = abi.decode(result, (uint64));

        TokenInfo memory tokenInfo = this.spotTokenInfo();
        require(
            compareStrings(tokenInfo.name, assetName),
            "HyperSpotPricer: assetName mismatch"
        );

        require(tokenInfo.szDecimals <= 8, "HyperSpotPricer: szDecimals > 8");

        return (price * (10 ** BASE)) / (10 ** (8 - tokenInfo.szDecimals));
    }

    function spotTokenInfo() external view returns (TokenInfo memory) {
        bool success;
        bytes memory result;
        (success, result) = TOKEN_INFO_PRECOMPILE_ADDRESS.staticcall(
            abi.encode(assetIndex)
        );
        require(success, "SpotTokenInfo precompile call failed");
        return abi.decode(result, (TokenInfo));
    }

    function compareStrings(
        string memory a,
        string memory b
    ) internal pure returns (bool) {
        return (keccak256(abi.encodePacked((a))) ==
            keccak256(abi.encodePacked((b))));
    }
}
