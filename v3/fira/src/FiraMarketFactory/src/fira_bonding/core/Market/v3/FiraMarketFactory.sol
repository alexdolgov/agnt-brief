// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity 0.8.30;

import "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";

import "../../../../interfaces/IBCContractFactory.sol";
import "../../../../interfaces/IPMarketFactoryV3.sol";
import "../../../../interfaces/IPMarketV3.sol";

import "../../../libraries/BaseSplitCodeFactory.sol";

import "../../../libraries/BoringOwnableUpgradeable.sol";
import "../../../libraries/Errors.sol";

/**
 * @title FiraMarketFactory
 * @notice Factory contract for deploying FiraMarket AMM instances
 * @dev Each market trades a specific Bond Token (BT) against its corresponding Fira Wrapped (FW) token.
 *      Markets are uniquely identified by BT address + pricing parameters (scalarRoot, initialAnchor, lnFeeRateRoot).
 */
contract FiraMarketFactory is BoringOwnableUpgradeable, IPMarketFactoryV3 {
    using EnumerableSet for EnumerableSet.AddressSet;

    /// @notice Contract A holding part of the FiraMarket creation bytecode (split deployment)
    address public immutable marketCreationCodeContractA;

    /// @notice Size of creation code stored in contract A
    uint256 public immutable marketCreationCodeSizeA;

    /// @notice Contract B holding part of the FiraMarket creation bytecode (split deployment)
    address public immutable marketCreationCodeContractB;

    /// @notice Size of creation code stored in contract B
    uint256 public immutable marketCreationCodeSizeB;

    /// @notice The YieldContractFactory used to validate Bond Tokens
    address public immutable yieldContractFactory;

    /// @notice Maximum allowed ln(feeRateRoot), equivalent to ln(1.05) for ~5% max fee
    uint256 public immutable maxLnFeeRateRoot;

    /// @notice Maximum reserve fee percent (100 = 100% of fees go to reserve)
    uint8 public constant maxReserveFeePercent = 100;

    /// @notice Minimum initial anchor value (must be at least 1e18)
    int256 public constant minInitialAnchor = PMath.IONE;

    /// @notice Address receiving trading fees
    address public treasury;

    /// @notice Percentage of trading fees sent to reserve (0-100)
    uint8 public reserveFeePercent;

    /// @notice Router-specific fee overrides: router => market => lnFeeRateRoot (0 means no override)
    mapping(address => mapping(address => uint80)) internal overriddenFee;

    /// @notice Market registry: BT => scalarRoot => initialAnchor => lnFeeRateRoot => market address
    mapping(address => mapping(int256 => mapping(int256 => mapping(uint80 => address)))) internal markets;

    /// @notice Set of all markets created by this factory
    EnumerableSet.AddressSet internal allMarkets;

    /**
     * @notice Constructs the factory with split creation code for FiraMarket
     * @dev Uses split code deployment pattern due to contract size limits. Also initializes the owner.
     * @param _yieldContractFactory Address of the YieldContractFactory for BT validation
     * @param _marketCreationCodeContractA Address of contract holding market creation code part A
     * @param _marketCreationCodeSizeA Size of creation code in contract A
     * @param _marketCreationCodeContractB Address of contract holding market creation code part B
     * @param _marketCreationCodeSizeB Size of creation code in contract B
     * @param _treasury Initial treasury address
     * @param _reserveFeePercent Initial reserve fee percentage
     */
    constructor(
        address _yieldContractFactory,
        address _marketCreationCodeContractA,
        uint256 _marketCreationCodeSizeA,
        address _marketCreationCodeContractB,
        uint256 _marketCreationCodeSizeB,
        address _treasury,
        uint8 _reserveFeePercent
    ) initializer {
        yieldContractFactory = _yieldContractFactory;
        maxLnFeeRateRoot = uint256(LogExpMath.ln(int256((105 * PMath.IONE) / 100))); // ln(1.05)

        marketCreationCodeContractA = _marketCreationCodeContractA;
        marketCreationCodeSizeA = _marketCreationCodeSizeA;
        marketCreationCodeContractB = _marketCreationCodeContractB;
        marketCreationCodeSizeB = _marketCreationCodeSizeB;

        __BoringOwnable_init();
        setTreasuryAndFeeReserve(_treasury, _reserveFeePercent);
    }

    /**
     * @notice Create a market between BT and its corresponding FW with scalar & anchor config.
     * Anyone is allowed to create a market on their own.
     * @param BT Address of the Bond Token to trade
     * @param scalarRoot Scalar root for pricing curve
     * @param initialAnchor Initial anchor point for pricing curve
     * @param lnFeeRateRoot Natural logarithm of the fee rate root
     * @return market Address of the newly created market
     */
    function createNewMarket(address BT, int256 scalarRoot, int256 initialAnchor, uint80 lnFeeRateRoot)
        external
        returns (address market)
    {
        if (!IBCContractFactory(yieldContractFactory).isBT(BT)) {
            revert Errors.MarketFactoryInvalidBt();
        }
        if (IBondToken(BT).isExpired()) revert Errors.MarketFactoryExpiredBt();
        if (lnFeeRateRoot > maxLnFeeRateRoot) {
            revert Errors.MarketFactoryLnFeeRateRootTooHigh(lnFeeRateRoot, maxLnFeeRateRoot);
        }

        if (markets[BT][scalarRoot][initialAnchor][lnFeeRateRoot] != address(0)) {
            revert Errors.MarketFactoryMarketExists();
        }

        if (initialAnchor < minInitialAnchor) {
            revert Errors.MarketFactoryInitialAnchorTooLow(initialAnchor, minInitialAnchor);
        }

        market = BaseSplitCodeFactory._create2(
            0,
            bytes32(block.chainid),
            abi.encode(BT, scalarRoot, initialAnchor, lnFeeRateRoot),
            marketCreationCodeContractA,
            marketCreationCodeSizeA,
            marketCreationCodeContractB,
            marketCreationCodeSizeB
        );

        markets[BT][scalarRoot][initialAnchor][lnFeeRateRoot] = market;

        if (!allMarkets.add(market)) assert(false);

        emit CreateNewMarket(market, BT, scalarRoot, initialAnchor, lnFeeRateRoot);
    }

    /**
     * @notice Returns the configuration for a specific market and router combination
     * @dev Used by markets to fetch treasury address and fee settings
     * @param market Address of the market
     * @param router Address of the router (for fee override lookup)
     * @return _treasury Address receiving fees
     * @return _overriddenFee Router-specific fee override (0 if none)
     * @return _reserveFeePercent Percentage of fees sent to reserve
     */
    function getMarketConfig(address market, address router)
        external
        view
        returns (address _treasury, uint80 _overriddenFee, uint8 _reserveFeePercent)
    {
        (_treasury, _reserveFeePercent) = (treasury, reserveFeePercent);
        _overriddenFee = overriddenFee[router][market];
    }

    /**
     * @notice Checks if an address is a valid market created by this factory
     * @dev Used for gas-efficient verification of market authenticity
     * @param market Address to check
     * @return True if the address is a market created by this factory
     */
    function isValidMarket(address market) external view returns (bool) {
        return allMarkets.contains(market);
    }

    /**
     * @notice Sets the treasury address and reserve fee percentage
     * @param newTreasury Address to receive trading fees (must be non-zero)
     * @param newReserveFeePercent Percentage of fees for reserve (0-100)
     */
    function setTreasuryAndFeeReserve(address newTreasury, uint8 newReserveFeePercent) public onlyOwner {
        if (newTreasury == address(0)) revert Errors.MarketFactoryZeroTreasury();
        if (newReserveFeePercent > maxReserveFeePercent) {
            revert Errors.MarketFactoryReserveFeePercentTooHigh(newReserveFeePercent, maxReserveFeePercent);
        }

        treasury = newTreasury;
        reserveFeePercent = newReserveFeePercent;

        emit NewTreasuryAndFeeReserve(newTreasury, newReserveFeePercent);
    }

    /**
     * @notice Sets a router-specific fee override for a market
     * @dev Allows certain routers to have lower fees than the market default.
     *      Set newFee to 0 to remove the override.
     * @param router Address of the router to set override for
     * @param market Address of the market (must be a valid market)
     * @param newFee The overridden fee rate (must be less than market's default)
     */
    function setOverriddenFee(address router, address market, uint80 newFee) public onlyOwner {
        if (!allMarkets.contains(market)) revert Errors.MFNotFiraMarket(market);

        uint80 marketFee = IPMarketV3(market).getNonOverrideLnFeeRateRoot();
        if (newFee >= marketFee) revert Errors.MarketFactoryOverriddenFeeTooHigh(newFee, marketFee);

        // NOTE: newFee = 0 allowed !!
        overriddenFee[router][market] = newFee;
        emit SetOverriddenFee(router, market, newFee);
    }
}
