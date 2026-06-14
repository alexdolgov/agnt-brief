// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

import {IERC20Metadata} from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import {IPriceOracle} from "src/interfaces/IPriceOracle.sol";
import {Asset, Order, OrderType} from "src/MintRedeem/Structs.sol";
import {IELUSD} from "src/interfaces/IELUSD.sol";
import {SingleAdminAccessControl} from "src/utils/SingleAdminAccessControl.sol";

/// @title BaseMintRedeem
/// @notice Base contract for ELUSD minting and redeeming operations
/// @dev Provides core functionality for managing supported assets, price oracles
/// @dev Oracle rely on ERC7726 that comes with integrated checks https://github.com/euler-xyz/euler-price-oracle/
abstract contract BaseMintRedeem is SingleAdminAccessControl {
    /*//////////////////////////////////////////////////////////////
                            ERRORS
    //////////////////////////////////////////////////////////////*/

    error AssetNotSupported();
    error InvalidInput();
    error ZeroInput();
    error OnlyRouter();
    error InvalidOrder();
    error SlippageExceeded();
    error OrderExpired();
    error InvalidPrice();

    /*//////////////////////////////////////////////////////////////
                            EVENTS
    //////////////////////////////////////////////////////////////*/

    event AssetAdded(address asset, address oracle);
    event AssetRemoved(address asset);
    event RouterSet(address router);
    event MinPriceSet(uint256 minPrice);
    event MaxPriceSet(uint256 maxPrice);

    /*//////////////////////////////////////////////////////////////
                            STORAGE
    //////////////////////////////////////////////////////////////*/

    /// @notice USD address for Chainlink price feeds
    address public constant USD = 0x0000000000000000000000000000000000000348;

    /// @notice ELUSD address
    IELUSD public immutable ELUSD;

    /// @notice Router address
    address public router;

    /// @notice Whether the asset is supported
    mapping(address asset => Asset assetInfo) public assetInfo;

    /*//////////////////////////////////////////////////////////////
                            ADMIN FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    /// @notice Add an asset to the stable minter
    /// @param _asset The asset to add
    /// @param _oracle The oracle to add
    function addAsset(address _asset, address _oracle) external onlyRole(DEFAULT_ADMIN_ROLE) {
        _addAsset(_asset, _oracle);
    }

    /// @notice Remove an asset from the stable minter
    /// @param _asset The asset to remove
    function removeAsset(address _asset) external onlyRole(DEFAULT_ADMIN_ROLE) {
        _removeAsset(_asset);
    }

    /// @notice Set the router address
    /// @param _router The router address
    function setRouter(address _router) external onlyRole(DEFAULT_ADMIN_ROLE) {
        _setRouter(_router);
    }

    /*//////////////////////////////////////////////////////////////
                            VIEW FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    /// @notice Get the asset info
    /// @param _asset The asset to get the info for
    /// @return assetInfo The asset info
    function getAssetInfo(address _asset) external view returns (Asset memory) {
        return assetInfo[_asset];
    }

    /*//////////////////////////////////////////////////////////////
                            MODIFIERS
    //////////////////////////////////////////////////////////////*/

    /// @notice Only the router can call the function
    modifier onlyRouter() {
        if (msg.sender != router) revert OnlyRouter();
        _;
    }

    /*//////////////////////////////////////////////////////////////
                            INTERNAL FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    /// @notice assert validity of order
    /// @param order The order to verify
    function _verifyOrder(Order memory order) internal pure {
        if (order.beneficiary == address(0)) revert ZeroInput();
        if (order.collateralAsset == address(0)) revert ZeroInput();
        if (order.benefactor == address(0)) revert ZeroInput();
        if (order.collateralAmount == 0) revert ZeroInput();
    }

    /// @notice Set the router address
    /// @param _router The router address
    function _setRouter(address _router) internal {
        if (_router == address(0)) revert ZeroInput();
        router = _router;
        emit RouterSet(_router);
    }

    /// @notice Add an asset to the supported assets
    /// @param _asset The asset to be added
    /// @param _oracle The oracle for the asset
    function _addAsset(address _asset, address _oracle) internal {
        if (_asset == address(0) || _oracle == address(0)) revert ZeroInput();
        if (_asset == address(ELUSD)) revert AssetNotSupported();

        assetInfo[_asset] = Asset({
            isSupported: true,
            asset: _asset,
            decimals: IERC20Metadata(_asset).decimals(),
            oracle: IPriceOracle(_oracle)
        });
        emit AssetAdded(_asset, _oracle);
    }

    /// @notice Remove an asset from the supported assets
    /// @param _asset The asset to be removed
    function _removeAsset(address _asset) internal {
        delete assetInfo[_asset];
        emit AssetRemoved(_asset);
    }
}
