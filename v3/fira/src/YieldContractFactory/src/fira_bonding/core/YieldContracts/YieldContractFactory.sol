// SPDX-License-Identifier: GPL-3.0-or-later
/*
 * MIT License
 * ===========
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in all
 * copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 */

pragma solidity 0.8.30;

import "../../../interfaces/IBCContractFactory.sol";

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";

import "../../libraries/BaseSplitCodeFactory.sol";

import "../../libraries/BoringOwnableUpgradeable.sol";
import "../../libraries/Errors.sol";
import "../../libraries/ExpiryUtilsLib.sol";
import "../../libraries/MiniHelpers.sol";

import "../../libraries/StringLib.sol";

import "./BondToken.sol";
import "./CouponToken.sol";

/**
 * @title YieldContractFactory
 * @notice Factory contract for creating Bond Token (BT) and Coupon Token (CT) pairs
 * @dev Creates time-tranched yield contracts from Fira Wrapped (FW) tokens.
 *      Each FW + expiry combination results in a unique BT/CT pair.
 */
contract YieldContractFactory is BoringOwnableUpgradeable, IBCContractFactory {
    using ExpiryUtils for string;
    using StringLib for string;
    using StringLib for StringLib.slice;

    string private constant BT_PREFIX = "BT";
    string private constant CT_PREFIX = "CT";
    string private constant FW_SYMBOL_PREF = "FW-";
    string private constant FW_NAME_PREF = "FW ";

    /// @notice Contract A holding part of the CouponToken creation bytecode (split deployment)
    address public immutable ctCreationCodeContractA;

    /// @notice Size of creation code stored in contract A
    uint256 public immutable ctCreationCodeSizeA;

    /// @notice Contract B holding part of the CouponToken creation bytecode (split deployment)
    address public immutable ctCreationCodeContractB;

    /// @notice Size of creation code stored in contract B
    uint256 public immutable ctCreationCodeSizeB;

    /// @notice Fee rate charged on interest claims (18 decimal fixed point, e.g., 1e17 = 10%)
    uint128 public interestFeeRate;

    /// @notice Fee rate charged on reward claims (18 decimal fixed point, e.g., 1e17 = 10%)
    uint128 public rewardFeeRate;

    /// @notice Address receiving protocol fees
    address public treasury;

    /// @notice Required divisor for valid expiry timestamps (e.g., 86400 for daily expiries)
    uint96 public expiryDivisor;

    /// @notice Address of the LiquidityInjector contract authorized to mint/burn BT
    address public liquidityInjector;

    /// @notice Mapping from FW address => expiry => BondToken address (address(0) if not created)
    mapping(address => mapping(uint256 => address)) public getBT;

    /// @notice Mapping from FW address => expiry => CouponToken address (address(0) if not created)
    mapping(address => mapping(uint256 => address)) public getCT;

    /// @notice Returns true if the address is a BondToken created by this factory
    mapping(address => bool) public isBT;

    /// @notice Returns true if the address is a CouponToken created by this factory
    mapping(address => bool) public isCT;

    /// @notice Maximum allowed interest fee rate (20%)
    uint256 public constant maxInterestFeeRate = 2e17;

    /// @notice Maximum allowed reward fee rate (20%)
    uint256 public constant maxRewardFeeRate = 2e17;

    /**
     * @notice Constructs the factory with split creation code for CouponToken
     * @dev Uses split code deployment pattern due to contract size limits
     * @param _ctCreationCodeContractA Address of contract holding CT creation code part A
     * @param _ctCreationCodeSizeA Size of creation code in contract A
     * @param _ctCreationCodeContractB Address of contract holding CT creation code part B
     * @param _ctCreationCodeSizeB Size of creation code in contract B
     */
    constructor(
        address _ctCreationCodeContractA,
        uint256 _ctCreationCodeSizeA,
        address _ctCreationCodeContractB,
        uint256 _ctCreationCodeSizeB
    ) {
        ctCreationCodeContractA = _ctCreationCodeContractA;
        ctCreationCodeSizeA = _ctCreationCodeSizeA;
        ctCreationCodeContractB = _ctCreationCodeContractB;
        ctCreationCodeSizeB = _ctCreationCodeSizeB;
    }

    /**
     * @notice Initializes the factory with fee and configuration parameters
     * @dev Can only be called once due to initializer modifier
     * @param _expiryDivisor Required divisor for valid expiry timestamps
     * @param _interestFeeRate Fee rate for interest claims (18 decimals)
     * @param _rewardFeeRate Fee rate for reward claims (18 decimals)
     * @param _treasury Address to receive protocol fees
     */
    function initialize(uint96 _expiryDivisor, uint128 _interestFeeRate, uint128 _rewardFeeRate, address _treasury)
        external
        initializer
    {
        __BoringOwnable_init();
        setExpiryDivisor(_expiryDivisor);
        setInterestFeeRate(_interestFeeRate);
        setRewardFeeRate(_rewardFeeRate);
        setTreasury(_treasury);
    }

    /**
     * @notice Create a pair of (BT, CT) from any FW and valid expiry. Anyone can create a yield
     * contract
     * @dev It's intentional to make expiry an uint32 to guard against fat fingers. uint32.max is
     * year 2106
     */
    function createYieldContract(address FW, uint32 expiry, bool doCacheIndexSameBlock)
        external
        returns (address BT, address CT)
    {
        if (MiniHelpers.isTimeInThePast(expiry) || expiry % expiryDivisor != 0) {
            revert Errors.YCFactoryInvalidExpiry();
        }

        if (getBT[FW][expiry] != address(0)) revert Errors.YCFactoryYieldContractExisted();

        IFiraWrappedStandardized _FW = IFiraWrappedStandardized(FW);

        (,, uint8 assetDecimals) = _FW.assetInfo();

        string memory fwCoreName = _stripFWPrefix(_FW.name());
        string memory fwCoreSymbol = _stripFWPrefix(_FW.symbol());

        BT = Create2.deploy(
            0,
            bytes32(block.chainid),
            abi.encodePacked(
                type(BondToken).creationCode,
                abi.encode(
                    FW,
                    BT_PREFIX.concat(fwCoreName, expiry, " "),
                    BT_PREFIX.concat(fwCoreSymbol, expiry, "-"),
                    assetDecimals,
                    expiry,
                    liquidityInjector
                )
            )
        );

        CT = BaseSplitCodeFactory._create2(
            0,
            bytes32(block.chainid),
            abi.encode(
                FW,
                BT,
                CT_PREFIX.concat(fwCoreName, expiry, " "),
                CT_PREFIX.concat(fwCoreSymbol, expiry, "-"),
                assetDecimals,
                expiry,
                doCacheIndexSameBlock
            ),
            ctCreationCodeContractA,
            ctCreationCodeSizeA,
            ctCreationCodeContractB,
            ctCreationCodeSizeB
        );

        IBondToken(BT).initialize(CT);

        getBT[FW][expiry] = BT;
        getCT[FW][expiry] = CT;
        isBT[BT] = true;
        isCT[CT] = true;

        emit CreateYieldContract(FW, expiry, BT, CT);
    }

    /**
     * @notice Sets the required divisor for valid expiry timestamps
     * @dev Expiry timestamps must be divisible by this value (e.g., 86400 for daily expiries)
     * @param newExpiryDivisor The new expiry divisor (must be non-zero)
     */
    function setExpiryDivisor(uint96 newExpiryDivisor) public onlyOwner {
        if (newExpiryDivisor == 0) revert Errors.YCFactoryZeroExpiryDivisor();

        expiryDivisor = newExpiryDivisor;
        emit SetExpiryDivisor(newExpiryDivisor);
    }

    /**
     * @notice Sets the fee rate charged on interest claims
     * @param newInterestFeeRate The new fee rate (18 decimals, max 20%)
     */
    function setInterestFeeRate(uint128 newInterestFeeRate) public onlyOwner {
        if (newInterestFeeRate > maxInterestFeeRate) {
            revert Errors.YCFactoryInterestFeeRateTooHigh(newInterestFeeRate, maxInterestFeeRate);
        }

        interestFeeRate = newInterestFeeRate;
        emit SetInterestFeeRate(newInterestFeeRate);
    }

    /**
     * @notice Sets the fee rate charged on reward claims
     * @param newRewardFeeRate The new fee rate (18 decimals, max 20%)
     */
    function setRewardFeeRate(uint128 newRewardFeeRate) public onlyOwner {
        if (newRewardFeeRate > maxRewardFeeRate) {
            revert Errors.YCFactoryRewardFeeRateTooHigh(newRewardFeeRate, maxRewardFeeRate);
        }

        rewardFeeRate = newRewardFeeRate;
        emit SetRewardFeeRate(newRewardFeeRate);
    }

    /**
     * @notice Sets the treasury address to receive protocol fees
     * @param newTreasury The new treasury address (must be non-zero)
     */
    function setTreasury(address newTreasury) public onlyOwner {
        if (newTreasury == address(0)) revert Errors.YCFactoryZeroTreasury();

        treasury = newTreasury;
        emit SetTreasury(newTreasury);
    }

    /**
     * @notice Sets the LiquidityInjector contract address
     * @dev The LiquidityInjector is authorized to mint/burn BondTokens
     * @param newLiquidityInjector The new LiquidityInjector address (must be non-zero)
     */
    function setLiquidityInjector(address newLiquidityInjector) public onlyOwner {
        if (newLiquidityInjector == address(0)) revert Errors.ZeroAddress();
        liquidityInjector = newLiquidityInjector;
        emit SetLiquidityInjector(newLiquidityInjector);
    }

    /**
     * @notice Strips the "FW " or "FW-" prefix from FW token names/symbols
     * @dev Used to generate clean BT/CT names from FW names
     * @param _str The string to strip prefix from
     * @return The string with FW prefix removed
     */
    function _stripFWPrefix(string memory _str) internal pure returns (string memory) {
        StringLib.slice memory str = _str.toSlice();
        StringLib.slice memory delim_name = FW_NAME_PREF.toSlice();
        StringLib.slice memory delim_symbol = FW_SYMBOL_PREF.toSlice();
        return str.beyond(delim_name).beyond(delim_symbol).toString();
    }
}
