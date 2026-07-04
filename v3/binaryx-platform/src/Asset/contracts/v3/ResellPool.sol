// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "./interfaces/IResellPool.sol";
import "./interfaces/IAddressesProvider.sol";
import "./interfaces/IAccessManager.sol";
import "./interfaces/IRewardsDistributor.sol";
import "./Asset.sol";

contract ResellPool is IResellPool, Initializable {
    using SafeERC20 for ERC20;
    ERC20 public buyToken;
    Asset public asset;
    IAddressesProvider public addressesProvider;
    address[] public buyers;

    function __Pool_init(address _addressesProvider, Asset _asset, ERC20 _buyToken) public initializer {
        require(address(_addressesProvider) != address(0), "addressesProvider must be a valid address");
        require(address(_asset) != address(0), "asset must be a valid address");
        require(address(_buyToken) != address(0), "buyToken must be a valid address");
        addressesProvider = IAddressesProvider(_addressesProvider);
        asset = _asset;
        buyToken = _buyToken;
    }

    modifier onlySuperOracle() {
        IAccessManager accessManager = IAccessManager(addressesProvider.getAccessManager());
        require(accessManager.isSuperOracle(msg.sender), "Only SuperOracle can call this function");
        _;
    }

    function getBuyers() external view override returns (address[] memory) {
        return buyers;
    }

    function getAssetPriceOracle() public view override returns (AssetPriceOracle) {
        return AssetPriceOracle(addressesProvider.getAssetPriceOracle());
    }

    function depositAsset(address sender, uint256 amount) external override {
        require(asset.balanceOf(msg.sender) <= amount, "not enough asset tokens");
        asset.transferFrom(sender, address(this), amount);
        emit DepositAsset(amount);
    }

    function withdrawAsset(uint256 amount, address recipient) external override onlySuperOracle {
        require(asset.balanceOf(address(this)) >= amount, "not enough asset tokens");
        asset.transfer(recipient, amount);
        emit WithdrawAsset(amount);
    }

    function withdrawBuyToken(uint256 amount, address recipient) external override onlySuperOracle {
        require(buyToken.balanceOf(address(this)) >= amount, "not enough buy tokens");
        buyToken.transfer(recipient, amount);
        emit WithdrawBuyToken(amount);
    }

    function invest(uint256 amount, address recipient) external override {
        _invest(amount, recipient);
    }

    function investWithAmbassador(uint256 amount, address recipient, address ambassador) external override {
        _invest(amount, recipient);
        emit InvestWithAmbassador(amount, recipient, ambassador, block.timestamp);
    }

    function investWithReferrer(uint256 amount, address recipient, address referrer) external override {
        _invest(amount, recipient);
        emit InvestWithReferrer(amount, recipient, referrer, block.timestamp);
    }

    function claim() external override {
        IRewardsDistributor rewardsDistributor = IRewardsDistributor(addressesProvider.getRewardsDistributor());
        address[] memory assets = rewardsDistributor.getUserRewards(address(this));
        rewardsDistributor.claim(address(this), assets);
        emit Claim(block.timestamp);
    }

    function _invest(uint256 amount, address recipient) private {
        AssetPriceOracle oracle = getAssetPriceOracle();
        require(address(oracle) != address(0), "oracle must be set");
        uint256 price = oracle.latestPrice(address(asset));
        require(price > 0, "price must be greater than 0");
        uint256 buyTokenAmount = (amount * price) / (10 ** asset.decimals());
        buyToken.safeTransferFrom(msg.sender, address(this), buyTokenAmount);
        asset.transfer(recipient, amount);
        buyers.push(recipient);
        emit Invest(amount, recipient, buyTokenAmount, block.timestamp);
    }

    function getVersion() external view returns (uint256) {
      return 2;
    }
}
