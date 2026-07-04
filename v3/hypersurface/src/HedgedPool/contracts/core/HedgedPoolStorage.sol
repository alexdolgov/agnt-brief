// SPDX-License-Identifier: BUSL-1.1

pragma solidity 0.8.18;

import "../interfaces/IHedgedPool.sol";
import "../interfaces/INonfungiblePositionManager.sol";
import "@openzeppelin/contracts/utils/structs/EnumerableMap.sol";
import "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";
import "@uniswap/v3-periphery/contracts/interfaces/ISwapRouter.sol";
import {IAddressBook} from "../interfaces/IAddressBook.sol";

/// This contract stores all new local variables for the MinterAmm.sol contract.
/// This allows us to upgrade the contract and add new variables without worrying about
///   memory layout when we add new variables.
/// Each time a new version is created with new variables, the version "V1, V2, etc" should
//    be bumped and inherit from the previous version, and the MinterAmm should inherit from
///   the newest version.
abstract contract HedgedPoolStorageV1 is IHedgedPool {
    uint256 constant CASH_BUFFER_LEVERAGE = 10;

    /// @notice The ERC20 tokens used by all the Series associated with this AMM
    IERC20 public strikeToken;
    IERC20 public collateralToken;

    // @notice Allowed underlying assets for the pool
    EnumerableSet.AddressSet internal underlyingTokens;

    IAddressBook public addressBook;

    /// @dev the number of decimals for this ERC20's human readable numeric
    uint8 internal numDecimals;

    /// @notice current withdrawal round end timestamp
    uint256 public withdrawalRoundEnd;

    /// @notice current deposit round end timestamp
    uint256 public depositRoundEnd;

    /// @notice last settled expiration timestamp for each underlying
    uint256 public lastSettledExpiry;

    /// @notice last recorded pool share price
    uint256 public pricePerShareCached;

    /// @notice underlying => expiry => oToken
    mapping(address => mapping(uint256 => address[])) internal oTokensByExpiry;

    /// @notice stores all non-expired oTokens that the pool has ever traded
    EnumerableSet.AddressSet internal activeOTokens;

    /// @dev List of permitted keeper addresses
    mapping(address => bool) public keepers;

    /// @dev List of permitted quote providers
    mapping(address => bool) public quoteProviders;

    /// @dev Frequently used contracts
    address internal controller;
    address internal oracle;
    address internal orderUtil;
    address internal marginPool;
    address internal lpManager;
    address internal feeCollector;
    address internal tradeExecutor;

    bool public isLocked;
    uint256 constant accessKeyId = 1;

    /// @dev Notional exposure of the pool (incl possible liquidations) (underlying => isPut => amount)
    mapping(address => mapping(bool => uint256)) public notionalExposure;

    /// @dev Inventory cap for each underlying (underlying => cap)
    mapping(address => uint256) internal inventoryCaps;

    INonfungiblePositionManager private positionManager; // @deprecated
    ISwapRouter private swapRouter; // @deprecated
    mapping(address => EnumerableMap.UintToUintMap) private hedgeOrders; // @deprecated
    mapping(address => uint256) private externalPendingDeposits; // @deprecated
    mapping(address => EnumerableSet.UintSet) private activeHedgeOrderTicksIds; // @deprecated

    address public hedger;

    mapping(address => bool) public authorizedMarketMakers;
}

// Next version example:
/// contract HedgedPoolStorageV1 is HedgedPoolStorageV2 {
///   address public myAddress;
/// }
/// Then... HedgedPool should inherit from HedgedPoolStorageV1
