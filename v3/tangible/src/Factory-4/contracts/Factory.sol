// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity 0.8.7;

import "./abstract/AdminAndTangibleAccess.sol";
import "./interfaces/IFactory.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "./interfaces/ITangiblePriceManager.sol";
import "./interfaces/ITangibleNFTDeployer.sol";
import "./interfaces/ITangibleFractionsNFTDeployer.sol";
import "./interfaces/IFractionStorageManagerDeployer.sol";
import "./interfaces/IPriceOracle.sol";
import "./interfaces/IFractionStorageManager.sol";
import "./interfaces/IOwnable.sol";

contract Factory is IFactory, IOwnable {
    using SafeERC20 for IERC20;
    using Strings for uint256;
    //for revenue share
    bytes32 public constant CLAIMER_ROLE = keccak256("CLAIMER");
    bytes32 public constant DEPOSITOR_ROLE = keccak256("DEPOSITOR");
    bytes32 public constant SHARE_MANAGER_ROLE = keccak256("SHARE_MANAGER");
    //for piNFT
    bytes32 public constant REVENUE_MANAGER_ROLE = keccak256("REVENUE_MANAGER");

    address internal _contractOwner;
    address internal _newContractOwner;

    struct TnftWithId {
        ITangibleNFT tnft;
        uint256 tnftTokenId;
    }

    IERC20 public immutable override USDC;
    address public instantLiquidity;
    //passive income data
    RevenueShare public override revenueShare;
    RentShare public override rentShare;
    IERC20 public override TNGBL;
    PassiveIncomeNFT public override passiveNft;

    address public override feeStorageAddress;
    address public override marketplace;
    address public override deployer;
    address public fractionsDeployer;
    address public storageDeployer;

    address public override tangibleDao;

    bool public override onlyWhitelistedForUnminted;
    mapping(address => bool) public override whitelistForBuyUnminted;

    mapping(string => ITangibleNFT) public override category;
    mapping(ITangibleNFT => mapping(uint256 => ITangibleFractionsNFT))
        public
        override fractions;
    mapping(ITangibleFractionsNFT => TnftWithId) public fractionToTnftAndId;
    mapping(uint128 => address) public override idToVendor;

    address[] private vendors;

    ITangibleNFT[] private _tnfts;
    ITangibleFractionsNFT[] private _tnftsFractions;
    ITangiblePriceManager public override priceManager;

    uint128 public _lastVendorId = 1;
    //to be used in contract upgrades
    uint128 public immutable version = 0;

    mapping(ITangibleFractionsNFT => IFractionStorageManager)
        public storageManagers;

    modifier onlyOwner() {
        require(
            _contractOwner == msg.sender,
            "Ownable: caller is not the owner"
        );
        _;
    }

    modifier onlyMarketplace() {
        require(
            marketplace == msg.sender,
            "Factory: caller is not the marketplace"
        );
        _;
    }

    modifier onlyOwnerOrMarketplace() {
        require(
            (_contractOwner == msg.sender) || (marketplace == msg.sender),
            "Factory: caller is not the owner nor marketplace"
        );
        _;
    }

    modifier onlyOwnerOrInstantLiquidity() {
        require(
            (_contractOwner == msg.sender) || (instantLiquidity == msg.sender),
            "Factory: caller is not the owner nor instantLiquidity"
        );
        _;
    }

    function isOwner(address account) internal view returns (bool) {
        return _contractOwner == account;
    }

    function isMarketplace(address account) internal view returns (bool) {
        return marketplace == account;
    }

    /// @dev Restricted to owner.
    constructor(
        address _usdc,
        address _feeStorageAddress,
        address _priceManager
    ) {
        require(_usdc != address(0), "UZ");

        vendors.push(msg.sender);
        idToVendor[_lastVendorId] = msg.sender;

        USDC = IERC20(_usdc);

        feeStorageAddress = _feeStorageAddress;
        priceManager = ITangiblePriceManager(_priceManager);

        _contractOwner = msg.sender;

        onlyWhitelistedForUnminted = false;
        emit OwnershipPushed(address(0), _contractOwner);
    }

    /// @notice Sets the feeStorageAddress
    /// @dev Will emit FeeStorageAddressSet on change.
    /// @param _feeStorageAddress A new address for fee storage.
    function setFeeStorageAddress(address _feeStorageAddress)
        external
        onlyOwner
    {
        require(_feeStorageAddress != address(0), "ZFSA");
        if (feeStorageAddress != _feeStorageAddress) {
            feeStorageAddress = _feeStorageAddress;
        }
    }

    function setDaoOwner(address _tangibleDao) external onlyOwner {
        require(_tangibleDao != address(0), "DOZ");

        tangibleDao = _tangibleDao;
    }

    /// @notice Sets the priceManager
    /// @dev Will emit PriceManagerSet on change.
    /// @param _priceManager A new address for priceManager.
    function setPriceManager(address _priceManager) external onlyOwner {
        require(_priceManager != address(0), "ZFSA");
        if (address(priceManager) != _priceManager) {
            priceManager = ITangiblePriceManager(_priceManager);
        }
    }

    /// @notice Sets the passiveNft
    /// @dev Will emit PassiveNftSet on change.
    /// @param _passiveNft A new address for passiveNft.
    function setPassiveNft(address _passiveNft) external onlyOwner {
        require(
            (_passiveNft != address(0x0)) &&
                (_passiveNft != address(passiveNft)),
            "WPS"
        );
        passiveNft = PassiveIncomeNFT(_passiveNft);
    }

    /// @notice Sets the revenueShare
    /// @dev Will emit RevenueShareSet on change.
    /// @param _revenueShare A new address for revenueShare.
    function setRevenueShare(address _revenueShare) external onlyOwner {
        require(
            (_revenueShare != address(0x0)) &&
                (_revenueShare != address(revenueShare)),
            "WRS"
        );
        revenueShare = RevenueShare(_revenueShare);
    }

    /// @notice Sets the rentShare
    /// @dev Will emit RentShareSet on change.
    /// @param _rentShare A new address for rentShare.
    function setRentShare(address _rentShare) external onlyOwner {
        require(
            (_rentShare != address(0x0)) && (_rentShare != address(rentShare)),
            "WRT"
        );
        rentShare = RentShare(_rentShare);
    }

    /// @notice Sets the IMarketplace address
    /// @dev Will emit MarketplaceAddressSet on change.
    /// @param _marketplace A new address of the Marketplace
    function setMarketplace(address _marketplace) external onlyOwner {
        require(_marketplace != address(0), "ZMA");
        if (marketplace != _marketplace) {
            emit MarketplaceAddressSet(marketplace, _marketplace);
            marketplace = _marketplace;
        }
    }

    /// @notice Sets the InstantLiquidity address
    /// @dev Will emit InstantLiquidityAddressSet on change.
    /// @param _instantLiquidity A new address of the Marketplace
    function setInstantLiquidity(address _instantLiquidity) external onlyOwner {
        require(_instantLiquidity != address(0), "ZILA");
        if (instantLiquidity != _instantLiquidity) {
            instantLiquidity = _instantLiquidity;
        }
    }

    /// @notice Sets the ITangibleNFTDeployer address
    /// @dev Will emit DeployerAddressSet on change.
    /// @param _deployer new address of the TangibleNFTDeployer
    function setDeployer(address _deployer) external onlyOwner {
        require(
            (_deployer != address(0x0)) && (_deployer != address(deployer)),
            "Wrong deployer"
        );

        deployer = _deployer;
    }

    /// @notice Sets the ITangibleFractionsNFTDeployer address
    /// @dev Will emit FractionsDeployerAddressSet on change.
    /// @param _fractDeployer new address of the TangibleFractionsNFTDeployer
    function setFractDeployer(address _fractDeployer) external onlyOwner {
        require(
            (_fractDeployer != address(0x0)) &&
                (_fractDeployer != address(fractionsDeployer)),
            "Wrong fract deployer"
        );

        fractionsDeployer = _fractDeployer;
    }

    /// @notice Sets the ITangibleFractionsNFTDeployer address
    /// @dev Will emit FractionsDeployerAddressSet on change.
    /// @param _storageDeployer new address of the TangibleFractionsNFTDeployer
    function setStorageDeployer(address _storageDeployer) external onlyOwner {
        require(
            (_storageDeployer != address(0x0)) &&
                (_storageDeployer != address(storageDeployer)),
            "Wrong storage deployer"
        );

        storageDeployer = _storageDeployer;
    }

    /// @notice Sets the TNGBL token address
    /// @dev Will emit TNGBLAddressSet on change.
    /// @param _tngbl new address of the TangibleNFTDeployer
    function setTNGBL(address _tngbl) external onlyOwner {
        require(
            (_tngbl != address(0x0)) && (_tngbl != address(TNGBL)),
            "Wrong tngbl"
        );

        TNGBL = IERC20(_tngbl);
    }

    function getCategories() external view returns (ITangibleNFT[] memory) {
        return _tnfts;
    }

    function getFractions()
        external
        view
        returns (ITangibleFractionsNFT[] memory)
    {
        return _tnftsFractions;
    }

    function getFractionToTnftIdBatch(ITangibleFractionsNFT[] calldata ftnfts)
        external
        returns (TnftWithId[] memory batch)
    {
        uint256 length = ftnfts.length;
        batch = new TnftWithId[](length);
        for (uint256 i = 0; i < length; i++) {
            batch[i] = fractionToTnftAndId[ftnfts[i]];
        }

        return batch;
    }

    /// @inheritdoc IFactory
    function isFactoryOperator(address operator)
        external
        view
        override
        returns (bool)
    {
        return isOwner(operator);
    }

    /// @inheritdoc IFactory
    function isFactoryAdmin(address admin)
        external
        view
        override
        returns (bool)
    {
        return isOwner(admin);
    }

    function adjustStorageAndGetAmount(
        ITangibleNFT tnft,
        uint256 tokenId,
        uint256 _years
    ) external override onlyMarketplace returns (uint256) {
        (uint256 tokenPrice, , , , ) = priceManager
            .getPriceOracleForCategory(tnft)
            .usdcPrice(tnft, 0, tokenId);
        return tnft.adjustStorageAndGetAmount(tokenId, _years, tokenPrice);
    }

    function payTnftStorageWithManager(
        ITangibleNFT tnft,
        uint256 tokenId,
        uint256 _years
    ) external override {
        //take sender
        address sender = msg.sender;
        //extract fract for comparison of sender and stored manager
        ITangibleFractionsNFT fract = IFractionStorageManager(sender)
            .fracTnft();
        require(address(storageManagers[fract]) == sender, "NAP");
        //add check if storage manager
        (uint256 tokenPrice, , , , ) = priceManager
            .getPriceOracleForCategory(tnft)
            .usdcPrice(tnft, 0, tokenId);
        uint256 amount = tnft.adjustStorageAndGetAmount(
            tokenId,
            _years,
            tokenPrice
        );
        USDC.safeTransferFrom(msg.sender, feeStorageAddress, amount);
    }

    function lockTNGBLOnTNFT(
        ITangibleNFT tnft,
        uint256 tokenId,
        uint256 _years,
        uint256 lockedAmountTNGBL,
        bool onlyLock
    ) external override onlyMarketplace {
        tnft.lockTNGBL(tokenId, _years, lockedAmountTNGBL, onlyLock);
    }

    function decreaseInstantLiquidityStock(
        ITangibleNFT nft,
        uint256 fingerprint
    ) external override onlyOwnerOrInstantLiquidity {
        priceManager.getPriceOracleForCategory(nft).decrementBuyStock(
            fingerprint
        );
    }

    /// @notice Mints the TangibleNFT token from the given MintVoucher
    /// @dev Will revert if the signature is invalid.
    /// @param voucher An MintVoucher describing an unminted TangibleNFT.
    function mint(MintVoucher calldata voucher)
        external
        override
        onlyOwnerOrMarketplace
        returns (uint256[] memory)
    {
        // make sure signature is valid and get the address of the vendor
        require(marketplace != address(0), "MZ");
        //make sure that vendor(who is not admin nor marketplace) is minting just for himself
        if (!isMarketplace(msg.sender)) {
            require(voucher.vendor == msg.sender, "MFSE");
        } else if (isMarketplace(msg.sender)) {
            require(voucher.buyer != address(0), "BMNBZ");
            require(isOwner(voucher.vendor), "MFSEO");
            //houses can't be bought by marketplace unless
            if (voucher.token.paysRent()) {
                require(onlyWhitelistedForUnminted, "OWL");
            }
        }
        (uint256 sellStock, ) = priceManager
            .getPriceOracleForCategory(voucher.token)
            .availableInStock(voucher.fingerprint);
        require(sellStock > 0, "Not enough in stock");

        // first assign the token to the vendor, to establish provenance on-chain
        uint256 mintCount = isMarketplace(msg.sender) ? 1 : voucher.mintCount;

        uint256[] memory tokenIds = voucher.token.produceMultipleTNFTtoStock(
            _lastVendorId,
            mintCount,
            voucher.fingerprint,
            voucher.vendor
        );
        emit MintedTokens(address(voucher.token), tokenIds);

        //option only available to owner to mint and get in his own wallet (eg. realestate)
        address transferTo = marketplace;
        if (voucher.sendToVendor && isOwner(msg.sender)) {
            transferTo = msg.sender;
        }

        // send minted tokens to marketplace. when price is 0 - use oracle
        uint256 tokenIdsLength = tokenIds.length;
        for (uint256 i = 0; i < tokenIdsLength; i++) {
            IERC721(voucher.token).safeTransferFrom(
                voucher.vendor,
                transferTo,
                tokenIds[i],
                abi.encode(voucher.price, false)
            );
            //decrease stock
            priceManager
                .getPriceOracleForCategory(voucher.token)
                .decrementSellStock(voucher.fingerprint);
        }

        return tokenIds;
    }

    /// @notice Burns the TangibleNFT token from the given BurnVoucher
    /// @dev Will revert if the signature is invalid.
    /// @param voucher An BurnVoucher describing an minted TangibleNFT.
    function burn(BurnVoucher calldata voucher) external override onlyOwner {
        // need to add some checks for revert
        voucher.token.destroyTNFTs(voucher.tokenIds, msg.sender);
    }

    function getVendors() external view override returns (address[] memory) {
        return vendors;
    }

    /// just for migration puproses, we must avoid unnecessary deployments on new factories
    function setCategory(
        string calldata name,
        ITangibleNFT nft,
        address priceOracle
    ) external override onlyOwner {
        require(address(category[name]) == address(0), "CEZ");
        category[name] = nft;
        _tnfts.push(nft);

        //for revenue share
        AccessControl(address(revenueShare)).grantRole(
            SHARE_MANAGER_ROLE,
            address(nft)
        );
        //for rent share
        AccessControl(address(rentShare)).grantRole(
            SHARE_MANAGER_ROLE,
            address(nft)
        );
        //for piNFT
        AccessControl(address(passiveNft)).grantRole(
            REVENUE_MANAGER_ROLE,
            address(nft)
        );

        //set the oracle
        ITangiblePriceManager(priceManager).setOracleForCategory(
            nft,
            IPriceOracle(priceOracle)
        );

        emit NewCategoryDeployed(address(nft));
    }

    function setFraction(
        ITangibleNFT nft,
        ITangibleFractionsNFT fraction,
        uint256 tnftTokenId
    ) external onlyOwner {
        require(address(fractions[nft][tnftTokenId]) == address(0), "FEZ");
        fractions[nft][tnftTokenId] = fraction;
        //to do mapping fraction -> tnft
        fractionToTnftAndId[fraction] = TnftWithId({
            tnft: nft,
            tnftTokenId: tnftTokenId
        });
        _tnftsFractions.push(fraction);

        //for revenue share
        AccessControl(address(revenueShare)).grantRole(
            SHARE_MANAGER_ROLE,
            address(fraction)
        );
        //for rent share
        AccessControl(address(rentShare)).grantRole(
            SHARE_MANAGER_ROLE,
            address(fraction)
        );
        //for piNFT
        AccessControl(address(passiveNft)).grantRole(
            REVENUE_MANAGER_ROLE,
            address(fraction)
        );

        emit NewFractionDeployed(address(fraction));
    }

    function newCategory(
        string calldata name,
        string calldata symbol,
        string calldata uri,
        bool isStoragePriceFixedAmount,
        bool storageRequired,
        address priceOracle,
        uint256 _lockPercentage,
        bool _paysRent
    ) external override onlyOwner returns (ITangibleNFT) {
        require(address(category[name]) == address(0), "CE");
        require(deployer != address(0), "Deployer zero");
        ITangibleNFT tangibleNFT = ITangibleNFTDeployer(deployer).deployTnft(
            msg.sender,
            name,
            symbol,
            uri,
            isStoragePriceFixedAmount,
            storageRequired,
            _lockPercentage,
            _paysRent
        );
        category[name] = tangibleNFT;
        _tnfts.push(tangibleNFT);

        //for revenue share
        AccessControl(address(revenueShare)).grantRole(
            SHARE_MANAGER_ROLE,
            address(tangibleNFT)
        );
        //for rent share
        AccessControl(address(rentShare)).grantRole(
            SHARE_MANAGER_ROLE,
            address(tangibleNFT)
        );
        if (_paysRent) {
            AccessControl(address(rentShare)).grantRole(
                bytes32(0),
                address(tangibleNFT)
            );
        }
        //for piNFT
        AccessControl(address(passiveNft)).grantRole(
            REVENUE_MANAGER_ROLE,
            address(tangibleNFT)
        );

        //set the oracle
        ITangiblePriceManager(priceManager).setOracleForCategory(
            tangibleNFT,
            IPriceOracle(priceOracle)
        );

        emit NewCategoryDeployed(address(tangibleNFT));
        return tangibleNFT;
    }

    function newFractionTnft(ITangibleNFT _tnft, uint256 _tnftTokenId)
        external
        override
        onlyMarketplace
        returns (ITangibleFractionsNFT)
    {
        require(address(fractions[_tnft][_tnftTokenId]) == address(0), "FEX");
        require(fractionsDeployer != address(0), "Deployer zero");

        string memory name = string(
            abi.encodePacked(_tnft.name(), "F_", _tnftTokenId.toString())
        );
        string memory symbol = string(
            abi.encodePacked(
                _tnft.symbol(),
                "_",
                _tnft.tokensFingerprint(_tnftTokenId).toString()
            )
        );

        RevenueShare rentShare_ = _tnft.paysRent()
            ? rentShare.forToken(address(_tnft), _tnftTokenId)
            : RevenueShare(address(0));
        //call storage manager contract deployer
        IFractionStorageManager manager = IFractionStorageManagerDeployer(
            storageDeployer
        ).deployStorageManagerTnft(address(_tnft), address(this), _tnftTokenId);

        ITangibleFractionsNFT tangibleFractNFT = ITangibleFractionsNFTDeployer(
            fractionsDeployer
        ).deployFractionTnft(
                tangibleDao, //dao is the owner
                address(_tnft),
                address(manager),
                address(rentShare_),
                _tnftTokenId,
                name,
                symbol
            );
        //store storageManager
        storageManagers[tangibleFractNFT] = manager;

        if (address(rentShare_) != address(0)) {
            _tnft.setRolesForFraction(address(tangibleFractNFT), _tnftTokenId);
        }

        fractions[_tnft][_tnftTokenId] = tangibleFractNFT;
        //to do mapping fraction -> tnft
        fractionToTnftAndId[tangibleFractNFT] = TnftWithId({
            tnft: _tnft,
            tnftTokenId: _tnftTokenId
        });
        _tnftsFractions.push(tangibleFractNFT);
        //must be after setting fractions
        manager.adjustFTNFT();

        //for revenue share
        if (_tnft.tnftToPassiveNft(_tnftTokenId) != 0) {
            AccessControl(address(revenueShare)).grantRole(
                SHARE_MANAGER_ROLE,
                address(tangibleFractNFT)
            );
            AccessControl(address(revenueShare)).grantRole(
                CLAIMER_ROLE,
                address(tangibleFractNFT)
            );
        }
        //for piNFT
        AccessControl(address(passiveNft)).grantRole(
            REVENUE_MANAGER_ROLE,
            address(tangibleFractNFT)
        );

        emit NewFractionDeployed(address(tangibleFractNFT));
        return tangibleFractNFT;
    }

    function initialTnftSplit(MintInitialFractionVoucher calldata voucher)
        external
        override
        onlyOwnerOrMarketplace
        returns (uint256 sellTokenId)
    {
        ITangibleFractionsNFT ftnft = fractions[ITangibleNFT(voucher.tnft)][
            voucher.tnftTokenId
        ];
        require(address(ftnft) != address(0), "FNE");
        (uint256 tokenKeep, uint256 tokenSell) = ftnft.initialSplit(
            msg.sender,
            voucher.tnft,
            voucher.tnftTokenId,
            voucher.keepShare,
            voucher.sellShare
        );
        fractions[ITangibleNFT(voucher.tnft)][voucher.tnftTokenId] = ftnft;
        //send tokenKeep to the seler
        ftnft.safeTransferFrom(msg.sender, voucher.seller, tokenKeep);

        emit InitialFract(address(ftnft), tokenKeep, tokenSell);

        return tokenSell;
    }

    function updateOracleForTnft(string calldata name, address priceOracle)
        external
        override
        onlyOwner
    {
        require(address(category[name]) != address(0), "CNE");
        ITangiblePriceManager(priceManager).setOracleForCategory(
            category[name],
            IPriceOracle(priceOracle)
        );
    }

    function whitelistBuyer(address buyer, bool approved) external onlyOwner {
        whitelistForBuyUnminted[buyer] = approved;
        emit WhitelistedBuyer(buyer, approved);
    }

    function setRequireWhitelist(bool required) external onlyOwner {
        onlyWhitelistedForUnminted = required;
    }

    function shouldLockTngbl(uint256 tngblAmount)
        external
        view
        override
        returns (bool)
    {
        return passiveNft.canEarnForAmount(tngblAmount);
    }

    function seizeTnft(ITangibleNFT tnft, uint256[] memory tokenIds)
        external
        onlyOwner
    {
        uint256 length = tokenIds.length;
        for (uint256 i = 0; i < length; i++) {
            uint256 token = tokenIds[i];
            bool ableToSeize = tnft.storageEndTime(token) + 180 days <
                block.timestamp;
            require(ableToSeize);

            address ownerTnft = tnft.ownerOf(token);
            tnft.safeTransferFrom(ownerTnft, _contractOwner, token);
        }
    }

    function seizeFractionTnft(
        ITangibleFractionsNFT ftnft,
        uint256[] calldata fractionTokenIds
    ) external onlyOwner {
        uint256 length = fractionTokenIds.length;

        ITangibleNFT tnft = ftnft.tnft();
        IFractionStorageManager manager = storageManagers[ftnft];
        uint256 tnftTokenId = ftnft.tnftTokenId();
        bool ninetyPassed = (tnft.storageEndTime(tnftTokenId) + 90 days <
            block.timestamp);

        require(ninetyPassed);

        for (uint256 i = 0; i < length; i++) {
            uint256 token = fractionTokenIds[i];
            bool ableToSeize = !manager.canTransfer(token);
            require(ableToSeize);

            address ownerFTnft = ftnft.ownerOf(token);
            ftnft.safeTransferFrom(ownerFTnft, _contractOwner, token);
        }
    }

    function contractOwner() public view override returns (address) {
        return _contractOwner;
    }

    function renounceOwnership() public virtual override onlyOwner {
        emit OwnershipPushed(_contractOwner, address(0));
        _contractOwner = address(0);
    }

    function pushOwnership(address newOwner_)
        public
        virtual
        override
        onlyOwner
    {
        require(
            newOwner_ != address(0),
            "Ownable: new owner is the zero address"
        );
        emit OwnershipPushed(_contractOwner, newOwner_);
        _newContractOwner = newOwner_;
    }

    function pullOwnership() public virtual override {
        require(
            msg.sender == _newContractOwner,
            "Ownable: must be new owner to pull"
        );

        vendors.push(msg.sender);
        idToVendor[_lastVendorId] = msg.sender;

        emit OwnershipPulled(_contractOwner, _newContractOwner);
        _contractOwner = _newContractOwner;
    }
}
