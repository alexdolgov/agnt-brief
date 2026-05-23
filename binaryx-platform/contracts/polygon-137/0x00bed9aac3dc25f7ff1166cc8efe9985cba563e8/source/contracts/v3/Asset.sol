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
    address public asideMoneyManager;

    modifier onlySuperOracle() {
        IAccessManager accessManager = IAccessManager(addressesProvider.getAccessManager());
        require(accessManager.canDoWith(msg.sender, IAccessManager.Action.ManageAsset, address(this)), "A.E26="); // "Permission denied: ManageAsset"
        _;
    }

    modifier onlyEmergencyAdmin() {
      require(msg.sender == addressesProvider.getEmergencyAdmin(), "A.E25="); // "Asset: caller is not the EmergencyAdmin"
      _;
    }

    modifier onlyMoneyManager() {
      require(msg.sender == getMoneyManager(), "A.E24="); // "Asset: caller is not the moneyManager"
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
        require(_maxTotalSupply > 0, "A.E21="); // "maxTotalSupply must be greater than 0"
        require(_saleEndDate > block.timestamp, "A.E22="); // "saleEndDate must be greater than current timestamp"
        require(address(_buyToken) != address(0), "A.E23="); // "buyToken must be a valid address"
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
        return 15;
    }

    function getMoneyManager() internal returns(address) {
      return asideMoneyManager != address(0) ? asideMoneyManager : addressesProvider.getEmergencyAdmin();
    }

    function setMoneyManager(address _asideMoneyManager) external onlyMoneyManager {
      asideMoneyManager = _asideMoneyManager;
    }

    function setMaxTotalSupply(uint256 _maxTotalSupply, uint256 _leftToBuy) external onlyEmergencyAdmin {
//        require(status == Status.New, "Require status New");
        RewardsDistributor rewardsDistributor = getRewardDistribution();
        rewardsDistributor.setPoolTotalSupply(_maxTotalSupply);
        maxTotalSupply = _maxTotalSupply;
        leftToBuy = _leftToBuy;
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

    function confirmSelling(address seller) external override onlyMoneyManager {
//        require(status == Status.SoldOut, "Asset is not sold out");
        require(seller != address(0), "A1"); // "seller must be a valid address"
        _payCommission(buyToken.balanceOf(address(this)));
        buyToken.safeTransfer(seller, buyToken.balanceOf(address(this)));
        _setStatus(Status.Confirmed);
        emit Confirmed();
    }

    function withdrawBuyToken(address recipientUserAddress, uint256 amount) public onlyMoneyManager {
      buyToken.safeTransfer(recipientUserAddress, amount);
    }

    function rejectSelling(uint256 startIndex, uint256 endIndex, bool isMigration) external override onlySuperOracle {
        require((status == Status.Active) || (status == Status.NotSoldOut), "A.E18="); // "Asset is not active or not sold out"
        require((startIndex <= endIndex), "A.E19="); // "startIndex must be less or equal to endIndex"
        require(endIndex <= buyers.length, "A.E20="); // "endIndex must be less than or equal to buyers.length"
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
            if (!isMigration) {
              buyToken.safeTransfer(buyer, buyTokenAmount);
            }
        }
        if (isMigration) {
          _setStatus(Status.TokensMigrated);
        } else {
          _setStatus(Status.NotSoldOut);
        }

        emit Rejected();
    }

    function rejectSellingUser() external override {
        require((status == Status.Active), "A.E15="); // "Asset is not active"
        require((block.timestamp > saleEndDate), "A.E16="); // "SaleEndDate must be less than current timestamp"
        require((_isBuyer[msg.sender]), "A.E17="); // "You are not the buyer"
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

    function rejectSellingUserBulk(address[] calldata users) external onlyEmergencyAdmin {
        require((status == Status.Active), "A.E1="); // "Asset is not active"

        AssetPriceOracle oracle = getAssetPriceOracle();
        uint assetTokenPriceD6 = oracle.latestPrice(address(this));

        for(uint i = 0; i < users.length; i++) {
          require((_isBuyer[users[i]]), "A.E2="); // "You are not the buyer"
          uint256 assetTokensBalanceD18 = balanceOf(users[i]);
          uint256 totalBuyTokenAmount = buyToken.balanceOf(address(this));
          unchecked {
            leftToBuy += assetTokensBalanceD18;
          }
          _burn(users[i], assetTokensBalanceD18);
          buyToken.safeTransfer(users[i], (assetTokensBalanceD18 / 10**18) * assetTokenPriceD6);
        }
        emit RejectedBulk(users);
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
        require(documentIndex < documents.length, "A.E14="); // "documentIndex must be less than documents.length"
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

    function getResellPoolFactory() public view returns (ResellPoolFactory) {
        return ResellPoolFactory(addressesProvider.getResellPoolFactory());
    }

    function invest(address recipient, uint256 amount) external override {
        require(status == Status.Active || status == Status.PreSale, "A.E13="); // Asset is active or Presale
        _invest(recipient, amount);
    }

    function investWithReferrer(address recipient, uint256 amount, address referrer, bool isAmbassador) external override {
      require(status == Status.PreSale || status == Status.Active, "A.E12="); // Asset is active or Presale
      if (isAmbassador) {
        emit InvestWithAmbassador(recipient, referrer, amount, block.timestamp);
      } else {
        emit InvestWithReferrer(recipient, referrer, amount, block.timestamp);
      }
      _invest(recipient, amount);
    }

    function _invest(address recipient, uint256 amount) private {
        if (address(chainLinkPrice) != address(0)) {
            int256 _latestPrice = chainLinkPrice.latestAnswer();
            require(
                _latestPrice <= paymentTokenRange.max && _latestPrice >= paymentTokenRange.min,
                  "A.E11=" // "Reached the limit of latest buy token price"
            );
        }
        if (leftToBuy > 10 ** decimals()) {
            require(amount >= 10 ** decimals(), "A.E3="); // "amount must be greater than 1"
        }
        require(amount <= leftToBuy, "A.E4="); // amount must be less or equal to leftToBuy
        RewardsDistributor rewardsDistributor = getRewardDistribution();
        require(address(rewardsDistributor) != address(0), ""); // rewardsDistributor must be set
        AssetPriceOracle oracle = getAssetPriceOracle();
        require(address(oracle) != address(0), "A.E5="); // oracle must be set
        KycStore kycStore = getKycStore();
        require(kycStore.isOperable(msg.sender), "A.E6="); // sender, please complete KYC
        require(kycStore.isOperable(recipient), "A.E7="); // recipient, please complete KYC
        if (savedPrice == 0) {
            uint256 price = oracle.latestPrice(address(this));
            require(price > 0, ""); // price must be greater than 0
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
        emit Bought(recipient, amount, block.timestamp, savedPrice, buyTokenAmount);
    }

    function setSaleEndDate(uint256 _saleEndDate) public override onlySuperOracle {
        require(_saleEndDate > block.timestamp, ""); // saleEndDate must be greater than current timestamp
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
        if (_status == Status.Active || _status == Status.PreSale) {
            if (status == Status.Upcoming || status == Status.New || status == Status.PreSale) {
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
        require(amount > 0, ""); // amount must be greater than 0
        KycStore kycStore = getKycStore();
        require(kycStore.isOperable(sender), "A.E8=");
        require(kycStore.isOperable(recipient), "A.E9=");
        super._transfer(sender, recipient, amount);
    }

    function burn(uint256 amountD0) external {
      _burn(msg.sender, amountD0 * 10**18);
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

    function _setStatus(Status _status) private {
        Status oldStatus = status;
        status = _status;
        emit StatusChanged(oldStatus, _status, block.timestamp);
    }

    function _payCommission(uint256 amount) private {
        address commissionDistributorAddress = addressesProvider.getCommissionsDistributor();
        require(commissionDistributorAddress != address(0), "A.E10="); // commissionDistributorAddress must be set
        ICommissionsDistributor commissionDistributor = ICommissionsDistributor(commissionDistributorAddress);
        uint256 commission = commissionDistributor.getInvestmentsCommissionAmount(address(this), amount);
        buyToken.safeApprove(address(commissionDistributor), commission);
        commissionDistributor.payInvestmentsCommission(address(buyToken), amount);
    }
}
