// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity 0.8.7;

import "./abstract/AdminAndTangibleAccess.sol";
import "./interfaces/IFactory.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "./interfaces/ITangiblePriceManager.sol";
import "./interfaces/ITangibleNFTDeployer.sol";
import "./interfaces/IPriceOracle.sol";
import "./interfaces/IOwnable.sol";

contract Factory is AdminAndTangibleAccess, IFactory, IOwnable {
    using SafeERC20 for IERC20;

    address internal _contractOwner;
    address internal _newContractOwner;

    IERC20 public immutable override USDC;
    address public override feeStorageAddress;
    address public override marketplace;
    address public override deployer;

    struct Vendor {
        uint128 vendorId;
        address[] categories;
    }

    mapping(string => ITangibleNFT) public override category;
    mapping(address => Vendor) public approvedVendor;
    mapping(uint128 => address) public override idToVendor;

    address[] private vendors;

    ITangibleNFT[] private _tnfts;
    ITangiblePriceManager public override priceManager;

    uint128 public _lastVendorId = 0;
    //to be used in contract upgrades
    uint128 public immutable version = 0;

    modifier onlyOwner() {
        require(
            _contractOwner == msg.sender,
            "Ownable: caller is not the owner"
        );
        _;
    }

    /// @dev Restricted to members of the admin role.
    constructor(
        address _usdc,
        address _feeStorageAddress,
        address _priceManager
    ) {
        require(_feeStorageAddress != address(0), "FESZ");
        require(_usdc != address(0), "UZ");
        require(_priceManager != address(0), "ZPM");

        _setupRole(DEFAULT_ADMIN_ROLE, msg.sender);
        _setupRole(VENDOR_ROLE, msg.sender);
        _setupRole(STORAGE_OPERATOR_ROLE, msg.sender);
        // maybe add to marketplace role also?
        // adding Id for admin-vendor
        address[] memory empty;
        approvedVendor[msg.sender] = Vendor({
            vendorId: ++_lastVendorId,
            categories: empty
        });
        vendors.push(msg.sender);
        idToVendor[_lastVendorId] = msg.sender;

        USDC = IERC20(_usdc);

        feeStorageAddress = _feeStorageAddress;
        priceManager = ITangiblePriceManager(_priceManager);

        _contractOwner = msg.sender;
        emit OwnershipPushed(address(0), _contractOwner);

        emit FeeStorageAddressSet(address(0), _feeStorageAddress);
        emit PriceManagerSet(address(0), _priceManager);
        emit ApprovedVendor(msg.sender, true);
    }

    /// @notice Sets the feeStorageAddress
    /// @dev Will emit FeeStorageAddressSet on change.
    /// @param _feeStorageAddress A new address for fee storage.
    function setFeeStorageAddress(address _feeStorageAddress)
        external
        onlyAdmin
    {
        require(_feeStorageAddress != address(0), "ZFSA");
        if (feeStorageAddress != _feeStorageAddress) {
            emit FeeStorageAddressSet(feeStorageAddress, _feeStorageAddress);
            feeStorageAddress = _feeStorageAddress;
        }
    }

    /// @notice Sets the priceManager
    /// @dev Will emit PriceManagerSet on change.
    /// @param _priceManager A new address for priceManager.
    function setPriceManager(address _priceManager) external onlyAdmin {
        require(_priceManager != address(0), "ZFSA");
        if (address(priceManager) != _priceManager) {
            emit PriceManagerSet(address(priceManager), _priceManager);
            priceManager = ITangiblePriceManager(_priceManager);
        }
    }

    /// @notice Sets the IMarketplace address
    /// @dev Will emit MarketplaceAddressSet on change.
    /// @param _marketplace A new address of the Marketplace
    function setMarketplace(address _marketplace) external onlyAdmin {
        require(_marketplace != address(0), "ZMA");
        if (marketplace != _marketplace) {
            emit MarketplaceAddressSet(marketplace, _marketplace);
            marketplace = _marketplace;
            grantRole(MARKETPLACE_ROLE, marketplace);
        }
    }

    /// @notice Sets the ITangibleNFTDeployer address
    /// @dev Will emit DeployerAddressSet on change.
    /// @param _deployer new address of the TangibleNFTDeployer
    function setDeployer(address _deployer) external onlyAdmin {
        require(
            (_deployer != address(0x0)) && (_deployer != address(deployer)),
            "Wrong deployer"
        );

        emit DeployerAddressSet(address(deployer), _deployer);
        deployer = _deployer;
    }

    function getApprovedVendorInfo(address vendor)
        external
        view
        returns (Vendor memory)
    {
        return approvedVendor[vendor];
    }

    function getCategories() external view returns (ITangibleNFT[] memory) {
        return _tnfts;
    }

    /// @inheritdoc IFactory
    function isFactoryOperator(address operator)
        external
        view
        override
        returns (bool)
    {
        return isStorageOperator(operator);
    }

    /// @inheritdoc IFactory
    function isFactoryAdmin(address admin)
        external
        view
        override
        returns (bool)
    {
        return isAdmin(admin);
    }

    function adjustStorageAndGetAmount(
        ITangibleNFT tnft,
        uint256 tokenId,
        uint256 _years,
        uint256 tokenPrice
    ) external override onlyMarketplace returns (uint256) {
        return tnft.adjustStorageAndGetAmount(tokenId, _years, tokenPrice);
    }

    /// @notice Mints the TangibleNFT token from the given MintVoucher
    /// @dev Will revert if the signature is invalid.
    /// @param voucher An MintVoucher describing an unminted TangibleNFT.
    function mint(MintVoucher calldata voucher)
        external
        override
        onlyVendorOrMarketplace
        returns (uint256[] memory)
    {
        // make sure signature is valid and get the address of the vendor
        require(marketplace != address(0), "MZ");
        //make sure that vendor(who is not admin nor marketplace) is minting just for himself
        if (!isAdmin(msg.sender) && !isMarketplace(msg.sender)) {
            require(voucher.vendor == msg.sender, "MFSE");
        } else if (isMarketplace(msg.sender)) {
            require(voucher.buyer != address(0), "BMNBZ");
        }
        require(approvedVendor[voucher.vendor].vendorId > 0, "No vendorId");

        // first assign the token to the vendor, to establish provenance on-chain
        uint256 mintCount = isMarketplace(msg.sender) ? 1 : voucher.mintCount;

        uint256[] memory tokenIds = voucher.token.produceMultipleTNFTtoStock(
            approvedVendor[voucher.vendor].vendorId,
            mintCount,
            voucher.vendor,
            voucher.brand
        );
        emit MintedTokens(address(voucher.token), tokenIds);

        // send minted tokens to marketplace. when price is 0 - use oracle
        uint256 tokenIdsLength = tokenIds.length;
        for (uint256 i = 0; i < tokenIdsLength; i++) {
            IERC721(voucher.token).safeTransferFrom(
                voucher.vendor,
                marketplace,
                tokenIds[i],
                abi.encode(voucher.price)
            );
        }

        //set Vendor struct
        if (
            !_hasVendorMintedInCategory(voucher.vendor, address(voucher.token))
        ) {
            //push to array
            approvedVendor[voucher.vendor].categories.push(
                address(voucher.token)
            );
        }

        return tokenIds;
    }

    /// @notice Burns the TangibleNFT token from the given BurnVoucher
    /// @dev Will revert if the signature is invalid.
    /// @param voucher An BurnVoucher describing an minted TangibleNFT.
    function burn(BurnVoucher calldata voucher)
        external
        override
        onlyStorageOperator
    {
        // need to add some checks for revert
        voucher.token.destroyTNFTs(voucher.tokenIds, msg.sender);
    }

    function getVendors() external view override returns (address[] memory) {
        return vendors;
    }

    function approveBrandForTnft(ITangibleNFT nft, string calldata brand)
        external
        override
        onlyAdmin
    {
        nft.addApprovedBrand(brand);
    }

    /// just for migration puproses, we must avoid unnecessary deployments on new factories
    function setCategory(
        string calldata name,
        ITangibleNFT nft,
        address priceOracle
    ) external override onlyAdmin {
        require(address(category[name]) == address(0), "CEZ");
        category[name] = nft;
        _tnfts.push(nft);

        //set the oracle
        ITangiblePriceManager(priceManager).setOracleForCategory(
            nft,
            IPriceOracle(priceOracle)
        );

        emit NewCategoryDeployed(address(nft));
    }

    function newCategory(
        string calldata name,
        string calldata symbol,
        string calldata uri,
        bool isStoragePriceFixedAmount,
        address priceOracle
    ) external override onlyAdmin returns (ITangibleNFT) {
        require(address(category[name]) == address(0), "CE");
        require(deployer != address(0), "Deployer zero");
        ITangibleNFT tangibleNFT = ITangibleNFTDeployer(deployer).deployTnft(
            msg.sender,
            name,
            symbol,
            uri,
            isStoragePriceFixedAmount
        );
        category[name] = tangibleNFT;
        _tnfts.push(tangibleNFT);

        //set the oracle
        ITangiblePriceManager(priceManager).setOracleForCategory(
            tangibleNFT,
            IPriceOracle(priceOracle)
        );

        emit NewCategoryDeployed(address(tangibleNFT));
        return tangibleNFT;
    }

    function updateOracleForTnft(string calldata name, address priceOracle)
        external
        override
        onlyAdmin
    {
        require(address(category[name]) != address(0), "CNE");
        ITangiblePriceManager(priceManager).setOracleForCategory(
            category[name],
            IPriceOracle(priceOracle)
        );
    }

    function approveVendor(address vendor, bool approved) external onlyAdmin {
        if ((approvedVendor[vendor].vendorId == 0) && approved) {
            //new vendor set new struct
            address[] memory empty;
            approvedVendor[vendor] = Vendor({
                vendorId: ++_lastVendorId,
                categories: empty
            });
            vendors.push(vendor);
            idToVendor[_lastVendorId] = vendor;
        }

        approved
            ? grantRole(VENDOR_ROLE, vendor)
            : revokeRole(VENDOR_ROLE, vendor);
        emit ApprovedVendor(vendor, approved);
    }

    function approveStorageOperator(address storageOperator, bool approved)
        external
        onlyAdmin
    {
        approved
            ? grantRole(STORAGE_OPERATOR_ROLE, storageOperator)
            : revokeRole(STORAGE_OPERATOR_ROLE, storageOperator);
        emit ApprovedStorageOperator(storageOperator, approved);
    }

    function _hasVendorMintedInCategory(address vendor, address _category)
        internal
        view
        returns (bool)
    {
        Vendor memory v = approvedVendor[vendor];
        uint256 vendorCategoriesLength = v.categories.length;
        for (uint256 i = 0; i < vendorCategoriesLength; i++) {
            if (v.categories[i] == _category) {
                return true;
            }
        }
        return false;
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
        //code for changing the admin and updating admin vendor and storageOwner data
        approvedVendor[msg.sender] = approvedVendor[_contractOwner];
        delete approvedVendor[_contractOwner];
        vendors.push(msg.sender);
        idToVendor[approvedVendor[msg.sender].vendorId] = msg.sender;

        _setupRole(DEFAULT_ADMIN_ROLE, msg.sender);
        _setupRole(VENDOR_ROLE, msg.sender);
        _setupRole(STORAGE_OPERATOR_ROLE, msg.sender);

        _revokeRole(DEFAULT_ADMIN_ROLE, _contractOwner);
        _revokeRole(VENDOR_ROLE, _contractOwner);
        _revokeRole(STORAGE_OPERATOR_ROLE, _contractOwner);

        emit OwnershipPulled(_contractOwner, _newContractOwner);
        _contractOwner = _newContractOwner;
    }
}
