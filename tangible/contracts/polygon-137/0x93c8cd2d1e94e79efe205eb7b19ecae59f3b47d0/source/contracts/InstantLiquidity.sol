// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity 0.8.7;

import "./interfaces/IInstantLiquidity.sol";
import "./interfaces/IILCalculator.sol";
import "./interfaces/ITNGBLOracle.sol";
import "./interfaces/IPriceOracle.sol";
import "./interfaces/ITangiblePriceManager.sol";
import "./interfaces/IFactory.sol";
import "./interfaces/IMarketplace.sol";
import "./abstract/AdminAndTangibleAccess.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC721/IERC721.sol";
import "@openzeppelin/contracts/token/ERC721/IERC721Receiver.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

interface IExchange {
    function quoteOut(
        address tokenIn,
        address tokenOut,
        uint256 amountIn
    ) external view returns (uint256);
}

contract InstantLiquidity is
    IInstantLiquidity,
    AdminAndTangibleAccess,
    IERC721Receiver
{
    using SafeERC20 for IERC20;
    address public marketplace;
    address public factory;
    address public instantCalculator;
    ITNGBLOracle public tngblOracle;

    bool public instantAllowed;
    uint256 public instantAllowedTimestamp;

    mapping(address => mapping(uint256 => InstantLot))
        private instantMarketplace;

    modifier onlyFactoryAdmin() {
        IFactory(factory).isFactoryAdmin(msg.sender);
        _;
    }

    constructor() {
        instantAllowed = false;
    }

    /// @notice Sets the IMarketplace address
    /// @dev Will emit MarketplaceAddressSet on change.
    /// @param _marketplace A new address of the Marketplace
    function setMarketplace(address _marketplace) external onlyFactoryAdmin {
        require(_marketplace != address(0), "ZMA");
        if (marketplace != _marketplace) {
            emit MarketplaceAddressSet(marketplace, _marketplace);
            marketplace = _marketplace;
        }
    }

    /// @notice Sets the IFactory address
    /// @dev Will emit FactoryAddressSet on change.
    /// @param _factory A new address of the Factory
    function setFactory(address _factory) external onlyAdmin {
        require(_factory != address(0), "ZMA");
        if (factory != _factory) {
            emit FactoryAddressSet(factory, _factory);
            factory = _factory;
        }
    }

    /// @notice Sets the ITNGBLOracle address
    /// @dev Will emit TNGBLOracleAddressSet on change.
    /// @param _oracle A new address of the TNGBLOracle
    function setTNGBLOracle(address _oracle) external onlyFactoryAdmin {
        require(_oracle != address(0), "ZMA");
        if (address(tngblOracle) != _oracle) {
            emit TNGBLOracleAddressSet(address(tngblOracle), _oracle);
            tngblOracle = ITNGBLOracle(_oracle);
        }
    }

    function setInstantTrade(bool allowed) external onlyFactoryAdmin {
        instantAllowed = allowed;
        instantAllowedTimestamp = block.timestamp;
    }

    /// @notice Sets the IILCalculator address
    /// @dev Will emit IILCalculator on change.
    /// @param _calculator A new address of the TNGBLOracle
    function setInstantCalculator(address _calculator)
        external
        onlyFactoryAdmin
    {
        require(_calculator != address(0), "ZMA");
        if (instantCalculator != _calculator) {
            emit IILCalculatorAddressSet(instantCalculator, _calculator);
            instantCalculator = _calculator;
        }
    }

    function sellInstant(
        ITangibleNFT _nft,
        uint256 _fingerprint,
        uint256 _tokenId
    ) external override {
        require(instantAllowed, "Trading stopped");
        require(
            (instantAllowedTimestamp + 1 hours) < block.timestamp,
            "One hr not passed"
        );
        require(_nft.ownerOf(_tokenId) == msg.sender, "Not owner");
        require(
            _nft.tokensFingerprint(_tokenId) == _fingerprint,
            "Wrong fingerprint"
        );

        address tngbl = address(IFactory(factory).TNGBL());

        _volatilityCheck();

        // get tnft token price
        (, , uint256 weBuyAt, uint256 weBuyAtStock, ) = IFactory(factory)
            .priceManager()
            .getPriceOracleForCategory(_nft)
            .usdcPrice(_nft, _fingerprint, _tokenId);
        require(weBuyAtStock > 0, "Not purchasable");
        // get price in TNGBL
        uint256 TNGBLprice = _getUSDCToTNGBL(weBuyAt);
        // check whether this contract has TNGBL for liquidity
        require(IERC20(tngbl).balanceOf(address(this)) > TNGBLprice);
        // transfer NFT to this contract
        _nft.safeTransferFrom(msg.sender, address(this), _tokenId);
        // transfer tngbl to seller
        IERC20(tngbl).safeTransfer(msg.sender, TNGBLprice);
        //decrease weBuyAtStock
        IFactory(factory).decreaseInstantLiquidityStock(_nft, _fingerprint);

        // make a sale here set instantmarketplace.
        instantMarketplace[address(_nft)][_tokenId] = InstantLot(
            address(_nft),
            _tokenId,
            address(this),
            false
        );
    }

    function buyInstant(ITangibleNFT _nft, uint256 _tokenId) external override {
        require(instantAllowed, "Trading stopped");
        require(
            (instantAllowedTimestamp + 1 hours) < block.timestamp,
            "One hr not passed"
        );
        require(
            instantMarketplace[address(_nft)][_tokenId].nft != address(0),
            "No lot"
        );

        address tngbl = address(IFactory(factory).TNGBL());

        _volatilityCheck();

        // get token price
        (uint256 weSellAt, , uint256 weBuyAt, , ) = IFactory(factory)
            .priceManager()
            .getPriceOracleForCategory(_nft)
            .usdcPrice(_nft, 0, _tokenId);

        // calculate the price
        uint256 ilPrice = IILCalculator(instantCalculator).calculateILPrice(
            weSellAt,
            weBuyAt
        );

        uint256 TNGBLprice = _getUSDCToTNGBL(ilPrice);
        //take tngbl
        IERC20(tngbl).safeTransferFrom(msg.sender, address(this), TNGBLprice);
        //send the nft to buyer
        IERC721(_nft).safeTransferFrom(address(this), msg.sender, _tokenId);

        delete instantMarketplace[address(_nft)][_tokenId];
    }

    function sellInstantFraction(
        ITangibleFractionsNFT _ftnft,
        uint256 _tokenIdFract
    ) external override {
        require(instantAllowed, "Trading stopped");
        require(
            (instantAllowedTimestamp + 1 hours) < block.timestamp,
            "One hr not passed"
        );
        require(_ftnft.ownerOf(_tokenIdFract) == msg.sender, "Not owner");

        address tngbl = address(IFactory(factory).TNGBL());

        _volatilityCheck();
        //get the uderlying tnft and tokenId
        ITangibleNFT _nft = _ftnft.tnft();
        uint256 _fingerprint = _ftnft.tnftFingerprint();
        uint256 _tokenId = _ftnft.tnftTokenId();
        uint256 fractTokenShare = _ftnft.fractionShares(_tokenIdFract);

        // get tnft token price
        (, , uint256 weBuyAt, uint256 weBuyAtStock, ) = IFactory(factory)
            .priceManager()
            .getPriceOracleForCategory(_nft)
            .usdcPrice(_nft, _fingerprint, _tokenId);
        require(weBuyAtStock > 0, "Not purchasable");
        //calc share of token, and calc tngbl based on share
        // get price in TNGBL for seller share
        uint256 TNGBLpriceFull = _getUSDCToTNGBL(weBuyAt);
        uint256 TNGBLprice = (fractTokenShare * TNGBLpriceFull) /
            _ftnft.fullShare();
        // check whether this contract has TNGBL for liquidity
        require(IERC20(tngbl).balanceOf(address(this)) > TNGBLprice);
        // transfer NFT to this contract
        _ftnft.safeTransferFrom(msg.sender, address(this), _tokenIdFract);
        // transfer tngbl to seller
        IERC20(tngbl).safeTransfer(msg.sender, TNGBLprice);
        // //decrease weBuyAtStock
        // IFactory(factory).decreaseInstantLiquidityStock(_nft, _fingerprint);

        // make a sale here set instantmarketplace.
        instantMarketplace[address(_ftnft)][_tokenIdFract] = InstantLot(
            address(_ftnft),
            _tokenIdFract,
            address(this),
            true
        );
    }

    function buyFractionInstant(
        ITangibleFractionsNFT _ftnft,
        uint256 _tokenFractId
    ) external override {
        require(instantAllowed, "Trading stopped");
        require(
            (instantAllowedTimestamp + 1 hours) < block.timestamp,
            "One hr not passed"
        );
        require(
            instantMarketplace[address(_ftnft)][_tokenFractId].nft !=
                address(0),
            "No lot"
        );
        address tngbl = address(IFactory(factory).TNGBL());

        _volatilityCheck();

        ITangibleNFT _nft = _ftnft.tnft();
        uint256 _tokenId = _ftnft.tnftTokenId();
        uint256 fractTokenShare = _ftnft.fractionShares(_tokenFractId);

        // get token price
        (uint256 weSellAt, , uint256 weBuyAt, , ) = IFactory(factory)
            .priceManager()
            .getPriceOracleForCategory(_nft)
            .usdcPrice(_nft, 0, _tokenId);

        // calculate the price
        uint256 ilPrice = IILCalculator(instantCalculator).calculateILPrice(
            weSellAt,
            weBuyAt
        );

        uint256 TNGBLpriceFull = _getUSDCToTNGBL(ilPrice);
        uint256 TNGBLprice = (fractTokenShare * TNGBLpriceFull) /
            _ftnft.fullShare();
        //take tngbl
        IERC20(tngbl).safeTransferFrom(msg.sender, address(this), TNGBLprice);
        //send the nft to buyer
        IERC721(_ftnft).safeTransferFrom(
            address(this),
            msg.sender,
            _tokenFractId
        );

        delete instantMarketplace[address(_ftnft)][_tokenFractId];
    }

    // USDC-TNGBL oracle
    function _getUSDCToTNGBL(uint256 _amount) internal view returns (uint256) {
        address usdc = address(IFactory(factory).USDC());
        address tngbl = address(IFactory(factory).TNGBL());

        uint256 tngblValue = tngblOracle.consult(usdc, _amount, tngbl);

        return tngblValue;
    }

    function _volatilityCheck() internal {
        address usdc = address(IFactory(factory).USDC());
        address tngbl = address(IFactory(factory).TNGBL());

        tngblOracle.update(tngbl, usdc);
        uint256 tngblOraclePrice = tngblOracle.consult(tngbl, 1e18, usdc);

        // to do comparison for volatility
        uint256 tngblSushiPrice = IExchange(marketplace).quoteOut(
            tngbl,
            usdc,
            1e18
        );
        // protection against high volatility
        require(
            IILCalculator(instantCalculator).isItVolatile(
                tngblOraclePrice,
                tngblSushiPrice
            ),
            "Too volatile"
        );
    }

    function withdrawUSDC() external override onlyFactoryAdmin {
        IERC20 usdc = IFactory(factory).USDC();
        usdc.transfer(msg.sender, usdc.balanceOf(address(this)));
    }

    function withdrawTNGBL() external override onlyFactoryAdmin {
        IERC20 tngbl = IFactory(factory).TNGBL();
        tngbl.transfer(msg.sender, tngbl.balanceOf(address(this)));
    }

    function withdrawTnft(ITangibleNFT _nft, uint256 _tokenId)
        external
        onlyFactoryAdmin
    {
        require(_nft.ownerOf(_tokenId) == address(this), "IL not owner");
        _nft.safeTransferFrom(address(this), msg.sender, _tokenId);
        delete instantMarketplace[address(_nft)][_tokenId];
    }

    function withdrawFTnft(ITangibleFractionsNFT _ftnft, uint256 _tokenId)
        external
        onlyFactoryAdmin
    {
        require(_ftnft.ownerOf(_tokenId) == address(this), "IL not owner");
        _ftnft.safeTransferFrom(address(this), msg.sender, _tokenId);
        delete instantMarketplace[address(_ftnft)][_tokenId];
    }

    function onERC721Received(
        address operator,
        address seller,
        uint256 tokenId,
        bytes calldata data
    ) external pure override returns (bytes4) {
        return _onERC721Received(operator, seller, tokenId, data);
    }

    function _onERC721Received(
        address, /*operator*/
        address, /*seller*/
        uint256, /*tokenId*/
        bytes calldata /*data*/
    ) private pure returns (bytes4) {
        return IERC721Receiver.onERC721Received.selector;
    }
}
