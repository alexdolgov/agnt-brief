// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts-upgradeable/token/ERC20/ERC20Upgradeable.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "./interfaces/IAsset.sol";
import "./interfaces/IAddressesProvider.sol";
import "./RewardsDistributor.sol";
import "./AssetPriceOracle.sol";
import "./interfaces/IAccessManager.sol";
import "./interfaces/ICommissionsDistributor.sol";
import "./KycStore.sol";
import "./interfaces/IChainLinkPrice.sol";

contract Asset is IAsset, Initializable, ERC20Upgradeable {
    IAddressesProvider public addressesProvider;

    using SafeERC20 for ERC20;
    ERC20 public buyToken;

    AssetInfo public info;
    AssetLocationData public locationData;
    Document[] public documents;
    Status public status;

    uint256 public maxTotalSupply;
    uint256 public leftToBuy;
    uint256 public buyTokenDecimals;
    address[] public buyers;
    mapping(address => bool) private _isBuyer;
    uint256 public savedPrice;
    IChainLinkPrice public chainLinkPrice;
    uint256 public saleEndDate;
    PaymentTokenRange public paymentTokenRange;

    modifier onlySuperOracle() {
        IAccessManager accessManager = IAccessManager(addressesProvider.getAccessManager());
        require(accessManager.isSuperOracle(msg.sender), "Only admin can call this function");
        _;
    }

    function __Asset_init(
        address _addressesProvider,
        address _chainLinkPrice,
        string memory name,
        string memory symbol,
        uint256 _maxTotalSupply,
        uint256 _saleEndDate,
        ERC20 _buyToken
    ) public initializer {
        __ERC20_init(name, symbol);
        require(_maxTotalSupply > 0, "maxTotalSupply must be greater than 0");
        require(_saleEndDate > block.timestamp, "saleEndDate must be greater than current timestamp");
        require(address(_buyToken) != address(0), "buyToken must be a valid address");
        addressesProvider = IAddressesProvider(_addressesProvider);
        chainLinkPrice = IChainLinkPrice(_chainLinkPrice);
        maxTotalSupply = _maxTotalSupply;
        leftToBuy = _maxTotalSupply;
        buyToken = _buyToken;
        buyTokenDecimals = 10 ** _buyToken.decimals();
        status = Status.New;
        saleEndDate = _saleEndDate;
        paymentTokenRange = PaymentTokenRange(99000000, 101000000);
    }

    function getVersion() external pure returns (uint256) {
        return 2;
    }

    function buyersLength() external view override returns (uint256) {
        return buyers.length;
    }

    function getBuyers() external view override returns (address[] memory) {
        return buyers;
    }

    function isBuyer(address buyer) external view override returns (bool) {
        return _isBuyer[buyer];
    }

    function getDocuments() external view override returns (Document[] memory) {
        return documents;
    }

    function getAssetInfo() external view returns (AssetInfo memory) {
        return info;
    }

    function getAssetLocation() external view returns (AssetLocationData memory) {
        return locationData;
    }

    function setPaymentTokenRange(PaymentTokenRange memory _paymentTokenRange) external override onlySuperOracle {
        paymentTokenRange = _paymentTokenRange;
    }

    function setChainLinkPrice(address _chainLinkPrice) external override onlySuperOracle {
        chainLinkPrice = IChainLinkPrice(_chainLinkPrice);
    }

    function confirmSelling(address seller) external override onlySuperOracle {
        require(status == Status.SoldOut, "Asset is not sold out");
        require(seller != address(0), "seller must be a valid address");
        _payCommission(buyToken.balanceOf(address(this)));
        buyToken.safeTransfer(seller, buyToken.balanceOf(address(this)));
        _setStatus(Status.Confirmed);
        emit Confirmed();
    }

    function rejectSelling(uint256 startIndex, uint256 endIndex) external override onlySuperOracle {
        require((status == Status.Active) || (status == Status.NotSoldOut), "Asset is not active or not sold out");
        require((startIndex <= endIndex), "startIndex must be less or equal to endIndex");
        require(endIndex <= buyers.length, "endIndex must be less than or equal to buyers.length");
        address[] memory _buyers = buyers;
        for (uint256 i = startIndex; i < endIndex; i++) {
            address buyer = _buyers[i];
            uint256 buyerBalance = balanceOf(buyer);
            if (buyerBalance == 0) {
                continue;
            }
            uint256 totalBuyTokenAmount = buyToken.balanceOf(address(this));
            uint256 buyTokenAmount = (buyerBalance * totalBuyTokenAmount) / totalSupply();
            leftToBuy += buyerBalance;
            _burn(buyer, buyerBalance);
            buyToken.safeTransfer(buyer, buyTokenAmount);
        }
        _setStatus(Status.NotSoldOut);
        emit Rejected();
    }

    function rejectSellingUser() external override {
        require((status == Status.Active), "Asset is not active");
        require((block.timestamp > saleEndDate), "SaleEndDate must be less than current timestamp");
        require((_isBuyer[msg.sender]), "You are not the buyer");
        uint256 buyerBalance = balanceOf(msg.sender);
        uint256 totalBuyTokenAmount = buyToken.balanceOf(address(this));
        uint256 buyTokenAmount = (buyerBalance * totalBuyTokenAmount) / totalSupply();
        unchecked {
            leftToBuy += buyerBalance;
        }
        _burn(msg.sender, buyerBalance);
        buyToken.safeTransfer(msg.sender, buyTokenAmount);
        emit Rejected();
    }

    function updateAssetInfo(AssetInfo memory assetInfo) external override onlySuperOracle {
        info = AssetInfo({
            entityType: assetInfo.entityType > 0 ? assetInfo.entityType : info.entityType,
            name: bytes(assetInfo.name).length > 0 ? assetInfo.name : info.name,
            creation: assetInfo.creation > 0 ? assetInfo.creation : info.creation,
            closingCost: bytes(assetInfo.closingCost).length > 0 ? assetInfo.closingCost : info.closingCost,
            underlyingPrice: bytes(assetInfo.underlyingPrice).length > 0 ? assetInfo.underlyingPrice : info.underlyingPrice
        });
        emit AssetInfoUpdated(block.timestamp);
    }

    function updateAssetLocationData(AssetLocationData memory location) external override onlySuperOracle {
        locationData = location;
        emit AssetLocationUpdated(block.timestamp);
    }

    function addDocument(Document memory document) external override onlySuperOracle {
        documents.push(document);
        emit DocumentAdded(document.name, document.hash, block.timestamp);
    }

    function updateDocument(uint256 documentIndex, Document memory document) external override onlySuperOracle {
        require(documentIndex < documents.length, "documentIndex must be less than documents.length");
        documents[documentIndex] = document;
        emit DocumentUpdated(documentIndex, document.name, document.hash, block.timestamp);
    }

    function getRewardDistribution() public view returns (RewardsDistributor) {
        return RewardsDistributor(addressesProvider.getRewardsDistributor());
    }

    function getAssetPriceOracle() public view returns (AssetPriceOracle) {
        return AssetPriceOracle(addressesProvider.getAssetPriceOracle());
    }

    function getKycStore() public view returns (KycStore) {
        return KycStore(addressesProvider.getKycStore());
    }

    function invest(address recipient, uint256 amount) public override {
        require(status == Status.Active || status == Status.Confirmed, "Asset is not active");
        if (address(chainLinkPrice) != address(0)) {
            int256 _latestPrice = _getLatestPriceBuyToken();
            require(
                _latestPrice <= paymentTokenRange.max && _latestPrice >= paymentTokenRange.min,
                "Reached the limit of latest buy token price"
            );
        }
        if (leftToBuy > 10 ** decimals()) {
            require(amount >= 10 ** decimals(), "amount must be greater than 1");
        }
        require(amount <= leftToBuy, "amount must be less or equal to leftToBuy");
        RewardsDistributor rewardsDistributor = getRewardDistribution();
        require(address(rewardsDistributor) != address(0), "rewardsDistributor must be set");
        AssetPriceOracle oracle = getAssetPriceOracle();
        require(address(oracle) != address(0), "oracle must be set");
        KycStore kycStore = getKycStore();
        require(kycStore.isOperable(msg.sender), "sender, please complete KYC");
        require(kycStore.isOperable(recipient), "recipient, please complete KYC");
        if (savedPrice == 0) {
            uint256 price = oracle.latestPrice(address(this));
            require(price > 0, "price must be greater than 0");
            savedPrice = price;
        }
        uint256 buyTokenAmount = (amount * savedPrice) / (10 ** decimals());
        buyToken.safeTransferFrom(msg.sender, address(this), buyTokenAmount);
        _mint(recipient, amount);
        unchecked {
            leftToBuy -= amount;
        }
        uint256 recipientBalance = balanceOf(recipient);
        rewardsDistributor.onUserBalanceChanged(recipient, recipientBalance);

        if (leftToBuy == 0) {
            _setStatus(Status.SoldOut);
            emit Sold();
        }
        emit Bought(msg.sender, amount, block.timestamp, savedPrice, buyTokenAmount);
    }

    function setSaleEndDate(uint256 _saleEndDate) public override onlySuperOracle {
        require(_saleEndDate > block.timestamp, "saleEndDate must be greater than current timestamp");
        saleEndDate = _saleEndDate;
    }

    function setStatus(Status _status) public override onlySuperOracle {
        if (_status == status) {
            return;
        }

        if (_status == Status.Inactive || _status == Status.Disabled) {
            if (status == Status.New || status == Status.Upcoming || (status == Status.Active && leftToBuy == maxTotalSupply)) {
                _setStatus(_status);
                return;
            }
        }
        if (_status == Status.Upcoming) {
            if (status == Status.New) {
                _setStatus(_status);
                return;
            }
        }
        if (_status == Status.Active) {
            if (status == Status.Upcoming || status == Status.New) {
                _setStatus(_status);
                return;
            }
        }
        if (_status == Status.NotSoldOut && leftToBuy < maxTotalSupply && leftToBuy > 0) {
            if (status == Status.Active) {
                _setStatus(_status);
                return;
            }
        }
        revert("Invalid status transition");
    }

    function _transfer(address sender, address recipient, uint256 amount) internal virtual override {
        require(amount > 0, "amount must be greater than 0");
        KycStore kycStore = getKycStore();
        require(kycStore.isOperable(recipient), "recipient, please complete KYC");

        super._transfer(sender, recipient, amount);
    }

    function _afterTokenTransfer(address sender, address recipient, uint256 amount) internal virtual override {
        uint256 senderBalance = balanceOf(sender);
        uint256 recipientBalance = balanceOf(recipient);
        if (_isBuyer[recipient] == false && recipient != address(0)) {
            buyers.push(recipient);
            _isBuyer[recipient] = true;
        }
        if (senderBalance == 0) {
            for (uint256 i = 0; i < buyers.length; i++) {
                if (buyers[i] == sender) {
                    buyers[i] = buyers[buyers.length - 1];
                    buyers.pop();
                    break;
                }
            }
            _isBuyer[sender] = false;
        }
        RewardsDistributor rewardsDistributor = getRewardDistribution();
        if (address(rewardsDistributor) == address(0)) {
            return;
        }
        if (sender != address(0)) {
            rewardsDistributor.onUserBalanceChanged(sender, senderBalance);
        }
        if (recipient != address(0)) {
            rewardsDistributor.onUserBalanceChanged(recipient, recipientBalance);
        }
    }

    function _getLatestPriceBuyToken() private view returns (int256) {
        return chainLinkPrice.latestAnswer();
    }

    function _setStatus(Status _status) private {
        Status oldStatus = status;
        status = _status;
        emit StatusChanged(oldStatus, _status, block.timestamp);
    }

    function _payCommission(uint256 amount) private {
        address commissionDistributorAddress = addressesProvider.getCommissionsDistributor();
        require(commissionDistributorAddress != address(0), "commissionDistributorAddress must be set");
        ICommissionsDistributor commissionDistributor = ICommissionsDistributor(commissionDistributorAddress);
        uint256 commission = commissionDistributor.getInvestmentsCommissionAmount(address(this), amount);
        buyToken.safeApprove(address(commissionDistributor), commission);
        commissionDistributor.payInvestmentsCommission(address(buyToken), amount);
    }
}
