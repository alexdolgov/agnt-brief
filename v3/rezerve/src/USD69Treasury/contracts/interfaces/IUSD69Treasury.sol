// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity 0.8.28;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "../interfaces/IApp.sol";
import "../interfaces/IAppOracle.sol";

/// @title IUSD69Treasury
/// @notice Interface for USD69 Treasury that manages asset-backed stablecoin operations
interface IUSD69Treasury {
    /// @notice The USD69 token
    /// @return usd69_ The USD69 token
    function usd69() external view returns (IApp usd69_);

    /// @notice The App Oracle
    /// @return appOracle_ The App Oracle
    function appOracle() external view returns (IAppOracle appOracle_);

    /// @notice The Asset Info
    struct AssetInfo {
        uint256 price;
        uint256 redeemFee;
        uint256 supplied;
        uint256 borrowed;
        uint256 supplyCap;
    }

    /// @notice The Asset Info
    /// @param asset The asset
    /// @return assetInfo_ The Asset Info
    function assetInfos(IERC20 asset) external view returns (AssetInfo memory);

    /// @notice The Asset Set Event
    /// @param asset The asset
    /// @param price The price of the asset
    /// @param redeemFee The redeem fee of the asset
    /// @param supplyCap The supply cap of the asset
    event AssetSet(IERC20 asset, uint256 price, uint256 redeemFee, uint256 supplyCap);

    /// @notice The Asset Supply Cap Set Event
    /// @param asset The asset
    /// @param supplyCap The supply cap of the asset
    event AssetSupplyCapSet(IERC20 asset, uint256 supplyCap);

    /// @notice The Asset Paused Event
    /// @param asset The asset
    event AssetPaused(IERC20 asset);

    /// @notice The Asset Unpaused Event
    /// @param asset The asset
    event AssetUnpaused(IERC20 asset);

    /// @notice The Borrowed Event
    /// @param asset The asset
    /// @param destination The destination of the borrowed assets
    /// @param amount The amount of the borrowed assets
    event Borrowed(IERC20 asset, address destination, uint256 amount);

    /// @notice The Repaid Event
    /// @param asset The asset
    /// @param destination The destination of the repaid assets
    /// @param amount The amount of the repaid assets
    event Repaid(IERC20 asset, address destination, uint256 amount);

    /// @notice The Burned Event
    /// @param asset The asset
    /// @param destination The destination of the burned assets
    /// @param amount The amount of the burned assets
    event Burned(IERC20 asset, address destination, uint256 amount);

    /// @notice The Minted Event
    /// @param asset The asset
    /// @param destination The destination of the minted assets
    /// @param amount The amount of the minted assets
    event Minted(IERC20 asset, address destination, uint256 amount);

    /// @notice Initialize the contract
    /// @param _authority The authority address
    /// @param _usd69 The address of the USD69 token
    /// @param _appOracle The address of the app oracle
    function initialize(address _authority, address _usd69, address _appOracle) external;

    /// @notice Mint function is only callable by the policy
    /// @param asset The asset to mint against
    /// @param account_ The address of the recipient
    /// @param amount_ The amount of tokens to mint
    /// @return mintAmount The amount of tokens minted
    function mint(IERC20 asset, address account_, uint256 amount_) external returns (uint256 mintAmount);

    /// @notice Borrow assets from the treasury
    /// @param asset The asset to borrow
    /// @param destination The destination address for the borrowed assets
    /// @param amount_ The amount to borrow
    function borrow(IERC20 asset, address destination, uint256 amount_) external;

    /// @notice Repay borrowed assets to the treasury
    /// @param asset The asset to repay
    /// @param amount_ The amount to repay
    function repay(IERC20 asset, uint256 amount_) external;

    /// @notice Burn function is only callable by the policy
    /// @param amountToBurn The amount of tokens to burn
    /// @param asset The asset to burn
    /// @return redeemAmount The amount of tokens redeemed
    function burn(uint256 amountToBurn, IERC20 asset) external returns (uint256 redeemAmount);

    /// @notice Set asset configuration
    /// @param asset The asset to configure
    /// @param price The price of the asset
    /// @param redeemFee The redeem fee for the asset
    /// @param supplyCap The supply cap for the asset
    function setAsset(IERC20 asset, uint256 price, uint256 redeemFee, uint256 supplyCap) external;

    /// @notice Set asset supply cap
    /// @param asset The asset to configure
    /// @param supplyCap The new supply cap
    function setAssetSupplyCap(IERC20 asset, uint256 supplyCap) external;

    /// @notice Disable an asset
    /// @param asset The asset to pause
    function disableAsset(IERC20 asset) external;

    /// @notice Enable an asset
    /// @param asset The asset to unpause
    function enableAsset(IERC20 asset) external;

    /// @notice Get the assets
    /// @return assets_ The assets
    function assets() external view returns (address[] memory);
}
