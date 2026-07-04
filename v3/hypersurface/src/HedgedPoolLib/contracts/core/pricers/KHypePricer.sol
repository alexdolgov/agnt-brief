// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.8.18;

import "@openzeppelin/contracts/utils/math/SafeMath.sol";
import {IOracle} from "../../interfaces/IGamma.sol";
import {OpynPricerInterface} from "../../interfaces/IGamma.sol";

interface IStakingAccountant {
    function kHYPEToHYPE(uint256 kHYPEAmount) external view returns (uint256);
}

/**
 * @notice A Pricer contract for one asset as reported by Chainlink
 */
contract KHypePricer is OpynPricerInterface {
    using SafeMath for uint256;

    address internal constant WHYPE_ADDRESS =
        0x5555555555555555555555555555555555555555;

    address internal constant KHYPE_ADDRESS =
        0xfD739d4e423301CE9385c1fb8850539D657C296D;

    address internal constant KHYPE_STAKING_ACCOUNTANT_ADDRESS =
        0x9209648Ec9D448EF57116B73A2f081835643dc7A;

    /// @dev base decimals
    uint256 internal constant BASE = 8;

    /// @notice the opyn oracle address
    IOracle public oracle;

    /// @notice asset that this pricer will a get price for
    address public asset;

    /// @notice asset name
    string public assetName;

    /// @notice bot address that is allowed to call setExpiryPriceInOracle
    address public bot;

    /**
     * @param _bot priveleged address that can call setExpiryPriceInOracle
     * @param _oracle Opyn Oracle address
     */
    constructor(address _bot, address _oracle) {
        require(_bot != address(0), "HyperPricer: Cannot set 0 address as bot");
        require(
            _oracle != address(0),
            "HyperPricer: Cannot set 0 address as oracle"
        );

        bot = _bot;
        oracle = IOracle(_oracle);
        asset = KHYPE_ADDRESS;
        assetName = "kHYPE";
    }

    /**
     * @notice modifier to check if sender address is equal to bot address
     */
    modifier onlyBot() {
        require(msg.sender == bot, "KHypePricer: unauthorized sender");

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
        uint256 hypePrice = oracle.getPrice(WHYPE_ADDRESS);

        return
            IStakingAccountant(KHYPE_STAKING_ACCOUNTANT_ADDRESS).kHYPEToHYPE(
                hypePrice
            );
    }
}
