// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity 0.8.7;

import "./interfaces/IMarketplace.sol";
import "./abstract/Exchange.sol";
import "./interfaces/IWETH9.sol";

import "@openzeppelin/contracts/token/ERC721/IERC721.sol";
import "@openzeppelin/contracts/token/ERC721/IERC721Receiver.sol";

contract Marketplace is AdminAndTangibleAccess, IMarketplace, IERC721Receiver {
    using SafeERC20 for IERC20;
    IFactory public factory;

    mapping(address => mapping(uint256 => Lot)) marketplace;

    mapping(address => mapping(address => uint256))
        public remainingMintsForVendor;

    IWETH9 public WETH9;
    address public override sellFeeAddress;

    // Default sell fee is 2.5%
    uint256 public sellFee = 250;

    constructor(
        address _factory,
        address _WETH9,
        address _sellFeeAddress
    ) {
        require(_factory != address(0), "ZFA");
        require(_WETH9 != address(0), "ZWETH");
        require(_sellFeeAddress != address(0), "SFAZ");

        _setupRole(DEFAULT_ADMIN_ROLE, msg.sender);

        WETH9 = IWETH9(_WETH9);
        sellFeeAddress = _sellFeeAddress;

        factory = IFactory(_factory);
        emit SellFeeChanged(0, sellFee);
        emit SellFeeAddressSet(address(0), _sellFeeAddress);
    }

    receive() external payable {
        require(msg.sender == address(WETH9), "!WETH");
    }

    fallback() external payable {
        require(msg.sender == address(WETH9), "!WETH");
    }

    /// @inheritdoc IMarketplace
    function sell(
        ITangibleNFT nft,
        uint256 tokenId,
        uint256 price
    ) external override {
        IERC721(nft).safeTransferFrom(
            msg.sender,
            address(this),
            tokenId,
            abi.encode(price)
        );
    }

    function setFactory(address _factory) external onlyAdmin {
        require(
            (_factory != address(0x0)) && (_factory != address(factory)),
            "WFA"
        );

        _setupRole(FACTORY_ROLE, _factory);
        _revokeRole(FACTORY_ROLE, address(factory));
        emit SetFactory(address(factory), _factory);
        factory = IFactory(_factory);
    }

    /// @inheritdoc IMarketplace
    function stopSale(ITangibleNFT nft, uint256 tokenId) external override {
        address seller = msg.sender;
        // gas saving
        Lot memory _lot = marketplace[address(nft)][tokenId];
        require(_lot.seller == seller, "Not a seller");

        emit StopSelling(seller, address(nft), tokenId);
        delete marketplace[address(nft)][tokenId];
        IERC721(nft).safeTransferFrom(address(this), _lot.seller, _lot.tokenId);
    }

    /// @inheritdoc IMarketplace
    function buy(
        ITangibleNFT nft,
        uint256 tokenId,
        uint256 _years
    ) external override {
        Lot memory _lot = marketplace[address(nft)][tokenId];
        uint256 tokenPrice = _lot.price == 0
            ? _convertPriceToUSDC(
                factory
                    .priceManager()
                    .getPriceOracleForCategory(nft)
                    .latestAnswer(nft),
                factory.priceManager().getPriceOracleForCategory(nft).decimals()
            )
            : _lot.price;
        //pay for storage
        if (!nft.isStorageFeePaid(tokenId) || _years > 0) {
            require(_years > 0, "YZ");
            _payStorage(nft, tokenId, _years, tokenPrice);
        }
        //buy the token
        _buy(nft, tokenId, msg.sender);
    }

    function payStorage(
        ITangibleNFT nft,
        uint256 tokenId,
        uint256 _years
    ) external override {
        uint256 tokenPrice = _convertPriceToUSDC(
            factory.priceManager().getPriceOracleForCategory(nft).latestAnswer(
                nft
            ),
            factory.priceManager().getPriceOracleForCategory(nft).decimals()
        );
        _payStorage(nft, tokenId, _years, tokenPrice);
    }

    function _payStorage(
        ITangibleNFT nft,
        uint256 tokenId,
        uint256 _years,
        uint256 tokenPrice
    ) internal {
        require(_years > 0, "YZ");

        uint256 amount = factory.adjustStorageAndGetAmount(
            nft,
            tokenId,
            _years,
            tokenPrice
        );

        IFactory(factory).USDC().safeTransferFrom(
            msg.sender,
            IFactory(factory).feeStorageAddress(),
            amount
        );
        emit StorageFeePaid(tokenId, _years, amount);
    }

    /// @inheritdoc IMarketplace
    function buyUnminted(
        ITangibleNFT nft,
        address _vendor,
        string calldata _brand,
        uint256 _years
    ) external override {
        require(remainingMintsForVendor[address(nft)][_vendor] > 0, "No more");
        uint256 tokenPrice = _convertPriceToUSDC(
            factory.priceManager().getPriceOracleForCategory(nft).latestAnswer(
                nft
            ),
            factory.priceManager().getPriceOracleForCategory(nft).decimals()
        );
        require(tokenPrice > 0, "tnft !exist");

        MintVoucher memory voucher = MintVoucher({
            token: nft,
            mintCount: 1,
            price: 0,
            vendor: _vendor,
            buyer: msg.sender,
            brand: _brand
        });
        uint256[] memory tokenIds = factory.mint(voucher);
        //pay for storage
        _payStorage(nft, tokenIds[0], _years, tokenPrice);
        //pricing should be handled from oracle
        _buy(voucher.token, tokenIds[0], msg.sender);

        remainingMintsForVendor[address(nft)][_vendor]--;
    }

    function lot(address nft, uint256 tokenId)
        external
        view
        returns (Lot memory)
    {
        return marketplace[nft][tokenId];
    }

    function priceFromOracle(ITangibleNFT nft)
        external
        view
        override
        returns (uint256)
    {
        return
            factory.priceManager().getPriceOracleForCategory(nft).latestAnswer(
                nft
            );
    }

    function convertPriceToUSDC(uint256 price, uint8 decimals)
        external
        pure
        override
        returns (uint256)
    {
        return _convertPriceToUSDC(price, decimals);
    }

    function _convertPriceToUSDC(uint256 price, uint8 decimals)
        internal
        pure
        returns (uint256)
    {
        require(
            decimals > uint8(0) && decimals <= uint8(18),
            "Invalid _decimals"
        );
        if (uint256(decimals) > 6) {
            return price / (10**(uint256(decimals) - 6));
        } else if (uint256(decimals) < 6) {
            return price * (10**(6 - uint256(decimals)));
        }
        return price;
    }

    function decimalsFromOracle(ITangibleNFT nft)
        external
        view
        override
        returns (uint8)
    {
        return factory.priceManager().getPriceOracleForCategory(nft).decimals();
    }

    function latestTimeStampFromOracle(ITangibleNFT nft)
        external
        view
        override
        returns (uint256)
    {
        return
            factory
                .priceManager()
                .getPriceOracleForCategory(nft)
                .latestTimeStamp(nft);
    }

    function increaseMints(
        ITangibleNFT nft,
        address vendor,
        uint256 amount
    ) external onlyAdmin {
        remainingMintsForVendor[address(nft)][vendor] += amount;
    }

    function decreaseMints(
        ITangibleNFT nft,
        address vendor,
        uint256 amount
    ) external onlyAdmin {
        if (amount > remainingMintsForVendor[address(nft)][vendor]) {
            remainingMintsForVendor[address(nft)][vendor] = 0;
        } else {
            remainingMintsForVendor[address(nft)][vendor] -= amount;
        }
    }

    function _buy(
        ITangibleNFT nft,
        uint256 tokenId,
        address payer
    ) internal {
        // gas saving
        address buyer = msg.sender;

        Lot memory _lot = marketplace[address(nft)][tokenId];
        require(_lot.seller != address(0), "No lot");
        // require(_lot.amount >= amount, "Not enough");

        // if lot.price == 0 it means vendor minted it, we must take price from oracle
        // if lot.price != 0 means some seller posted it and didn't want to use oracle
        uint256 cost = _lot.price == 0
            ? _convertPriceToUSDC(
                factory
                    .priceManager()
                    .getPriceOracleForCategory(nft)
                    .latestAnswer(nft),
                factory.priceManager().getPriceOracleForCategory(nft).decimals()
            )
            : _lot.price;
        require(cost != 0, "Price 0");

        //take the fee
        uint256 toPayVendor = cost;
        if (sellFee > 0) {
            // if there is fee set, decrease amount by the fee and send fee
            uint256 fee = ((toPayVendor * sellFee) / 10000);
            toPayVendor = toPayVendor - fee;
            factory.USDC().safeTransferFrom(payer, sellFeeAddress, fee);
        }

        factory.USDC().safeTransferFrom(payer, _lot.seller, toPayVendor);

        emit Bought(buyer, address(nft), tokenId, _lot.seller, cost);
        delete marketplace[address(nft)][tokenId];

        IERC721(nft).safeTransferFrom(address(this), buyer, tokenId, "");
    }

    /// @notice Sets the feeStorageAddress
    /// @dev Will emit SellFeeAddressSet on change.
    /// @param _sellFeeAddress A new address for fee storage.
    function setSellFeeAddress(address _sellFeeAddress) external onlyAdmin {
        require(_sellFeeAddress != address(0), "SFAZ");
        if (sellFeeAddress != _sellFeeAddress) {
            emit SellFeeAddressSet(sellFeeAddress, _sellFeeAddress);
            sellFeeAddress = _sellFeeAddress;
        }
    }

    function withdrawTokens(IERC20 token) external onlyAdmin {
        require(address(token) != address(factory.USDC()), "USDC");

        uint256 balance = token.balanceOf(address(this));
        require(balance > 0, "Zero");

        token.transfer(msg.sender, balance);
    }

    function withdrawMatic() public onlyAdmin {
        uint256 amountToTransferMatic = address(this).balance;
        payable(msg.sender).transfer(amountToTransferMatic);
    }

    function setSellFee(uint256 _sellFee) external onlyAdmin {
        require(sellFee != _sellFee, "SSF");
        emit SellFeeChanged(sellFee, _sellFee);
        sellFee = _sellFee;
    }

    function onERC721Received(
        address operator,
        address seller,
        uint256 tokenId,
        bytes calldata data
    ) external override returns (bytes4) {
        return _onERC721Received(operator, seller, tokenId, data);
    }

    function _onERC721Received(
        address operator,
        address seller,
        uint256 tokenId,
        bytes calldata data
    ) private returns (bytes4) {
        address nft = msg.sender;
        uint256 price = abi.decode(data, (uint256));

        marketplace[nft][tokenId] = Lot(
            ITangibleNFT(nft),
            tokenId,
            seller,
            price,
            true
        );

        emit Selling(seller, nft, tokenId, price);
        return IERC721Receiver.onERC721Received.selector;
    }
}
