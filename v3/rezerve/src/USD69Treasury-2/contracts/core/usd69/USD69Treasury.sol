// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity 0.8.28;

import "../../interfaces/IApp.sol";
import "../../interfaces/IAppOracle.sol";
import "../../interfaces/IUSD69Treasury.sol";
import "../AppAccessControlled.sol";
import "@openzeppelin/contracts-upgradeable/utils/ReentrancyGuardUpgradeable.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";

/// @title USD69
/// @notice USD69 is a stablecoin that is used to lock debt for the protocol
/// @dev This contract is used to manage the USD69 token and the assets that are backed by it
contract USD69Treasury is AppAccessControlled, ReentrancyGuardUpgradeable, IUSD69Treasury {
    using SafeERC20 for IERC20;
    using SafeERC20 for IApp;
    using EnumerableSet for EnumerableSet.AddressSet;

    /// @notice The maximum deviation allowed for the price of an asset
    uint256 public immutable MAX_DEVIATION = 0.001e18; // 0.1%

    /// @inheritdoc IUSD69Treasury
    IApp public override usd69;

    /// @inheritdoc IUSD69Treasury
    IAppOracle public override appOracle;

    mapping(IERC20 asset => AssetInfo assetInfo) private _assetInfos;
    EnumerableSet.AddressSet private _assets;

    /// @notice Initialize the contract
    /// @param _authority The authority address
    /// @param _usd69 The address of the USD69 token
    /// @param _appOracle The address of the app oracle
    function initialize(address _authority, address _usd69, address _appOracle) external initializer {
        __AppAccessControlled_init(_authority);
        __ReentrancyGuard_init();
        usd69 = IApp(_usd69);
        appOracle = IAppOracle(_appOracle);
    }

    /// @inheritdoc IUSD69Treasury
    function assetInfos(IERC20 asset) external view override returns (AssetInfo memory) {
        return _assetInfos[asset];
    }

    /// @inheritdoc IUSD69Treasury
    function mint(IERC20 asset, address account_, uint256 amount_)
        external
        nonReentrant
        whenNotPaused
        returns (uint256 mintAmount)
    {
        _checkValidAsset(asset);
        uint256 mintPrice = _getMintPriceAndCheckDeviation(asset);
        mintAmount = amount_ * mintPrice / 1e18;

        _assetInfos[asset].supplied += amount_;
        require(_assetInfos[asset].supplied <= _assetInfos[asset].supplyCap, "supply cap exceeded");

        asset.safeTransferFrom(msg.sender, address(this), amount_);
        usd69.mint(account_, mintAmount);

        emit Minted(asset, account_, amount_);
    }

    /// @inheritdoc IUSD69Treasury
    function borrow(IERC20 asset, address destination, uint256 amount_) external onlyReserveManager whenNotPaused {
        _checkValidAsset(asset);
        asset.safeTransfer(destination, amount_);
        _assetInfos[asset].borrowed += amount_;
        emit Borrowed(asset, destination, amount_);
    }

    /// @inheritdoc IUSD69Treasury
    function repay(IERC20 asset, uint256 amount_) external onlyReserveManager whenNotPaused {
        _checkValidAsset(asset);
        asset.safeTransferFrom(msg.sender, address(this), amount_);
        _assetInfos[asset].borrowed -= amount_;
        emit Repaid(asset, msg.sender, amount_);
    }

    /// @inheritdoc IUSD69Treasury
    function burn(uint256 amountToBurn, IERC20 asset)
        external
        whenNotPaused
        nonReentrant
        returns (uint256 redeemAmount)
    {
        _checkValidAsset(asset);
        (, uint256 redeemPriceWithFee) = _getRedeemPriceAndCheckDeviation(asset);
        redeemAmount = amountToBurn * redeemPriceWithFee / 1e18;

        _assetInfos[asset].supplied -= redeemAmount;

        usd69.safeTransferFrom(msg.sender, address(this), amountToBurn);
        usd69.burn(amountToBurn);
        asset.safeTransfer(msg.sender, redeemAmount);

        emit Burned(asset, msg.sender, amountToBurn);
    }

    /// @inheritdoc IUSD69Treasury
    function setAsset(IERC20 asset, uint256 price, uint256 redeemFee, uint256 supplyCap) external onlyGovernor {
        _assetInfos[asset].price = price;
        _assetInfos[asset].redeemFee = redeemFee;
        _assetInfos[asset].supplyCap = supplyCap;
        emit AssetSet(asset, price, redeemFee, supplyCap);
    }

    /// @inheritdoc IUSD69Treasury
    function setAssetSupplyCap(IERC20 asset, uint256 supplyCap) external {
        uint256 currentSupplyCap = _assetInfos[asset].supplyCap;
        if (supplyCap < currentSupplyCap) _onlyGuardianOrGovernor();
        else _onlyGovernor();
        _assetInfos[asset].supplyCap = supplyCap;
        emit AssetSupplyCapSet(asset, supplyCap);
    }

    /// @inheritdoc IUSD69Treasury
    function disableAsset(IERC20 asset) external onlyGuardianOrGovernor {
        _assets.remove(address(asset));
        emit AssetPaused(asset);
    }

    /// @inheritdoc IUSD69Treasury
    function enableAsset(IERC20 asset) external onlyGovernor {
        _assets.add(address(asset));
        emit AssetUnpaused(asset);
    }

    /// @inheritdoc IUSD69Treasury
    function assets() external view returns (address[] memory) {
        return _assets.values();
    }

    /// @dev This function is used to check the deviation of the current price and the oracle price
    /// @param currentPrice The current price
    /// @param oraclePrice The oracle price
    function _checkDeviation(uint256 currentPrice, uint256 oraclePrice) internal pure {
        require(oraclePrice <= currentPrice * (1e18 + MAX_DEVIATION) / 1e18, "deviation too high");
        require(oraclePrice >= currentPrice * (1e18 - MAX_DEVIATION) / 1e18, "deviation too high");
    }

    /// @dev This function is used to get the mint price and check the deviation
    /// @param asset The asset
    /// @return mintPrice The mint price
    function _getMintPriceAndCheckDeviation(IERC20 asset) internal view returns (uint256 mintPrice) {
        uint256 spotPrice = _getAssetPrice(asset);
        mintPrice = _assetInfos[asset].price;
        _checkDeviation(mintPrice, spotPrice);
    }

    /// @dev This function is used to get the redeem price and check the deviation
    /// @param asset The asset
    /// @return redeemPrice The redeem price
    /// @return redeemPriceWithFee The redeem price with fee
    function _getRedeemPriceAndCheckDeviation(IERC20 asset)
        internal
        view
        returns (uint256 redeemPrice, uint256 redeemPriceWithFee)
    {
        uint256 spotPrice = _getAssetPrice(asset);
        redeemPrice = _assetInfos[asset].price;
        redeemPriceWithFee = redeemPrice * (1e18 - _assetInfos[asset].redeemFee) / 1e18;
        _checkDeviation(redeemPrice, spotPrice);
    }

    /// @dev This function is used to check if the asset is valid
    /// @param asset The asset
    function _checkValidAsset(IERC20 asset) internal view {
        require(_assetInfos[asset].price > 0, "Invalid asset");
        require(_assets.contains(address(asset)), "Asset is disabled");
    }

    /// @dev This function is used to get the one unit of the asset
    /// @param asset The asset
    /// @return amount The one unit of the asset
    function _getOneUnitOfAsset(IERC20 asset) internal view returns (uint256 amount) {
        amount = 10 ** (IERC20Metadata(address(asset)).decimals());
    }

    /// @dev This function is used to get the price of the asset
    /// @param asset The asset
    /// @return price The price of the asset
    function _getAssetPrice(IERC20 asset) internal view returns (uint256 price) {
        (uint256 rzrAmount, uint256 usdAmount,) = appOracle.getPriceForAmount(address(asset), _getOneUnitOfAsset(asset));
        require(rzrAmount == 0, "Invalid price");
        require(usdAmount > 0, "Invalid price");
        price = usdAmount;
    }
}
