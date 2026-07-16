// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity 0.8.7;

import "./interfaces/ITangibleNFT.sol";
import "./interfaces/IFactory.sol";
import "./abstract/AdminAccess.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721Pausable.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721Enumerable.sol";

contract TangibleNFT is
    AdminAccess,
    ERC721,
    ERC721Enumerable,
    ERC721Pausable,
    ITangibleNFT
{
    using SafeERC20 for IERC20;
    using Strings for uint256;

    mapping(uint256 => uint256) public override storageEndTime;
    mapping(uint256 => string) public override tokenBrand;
    // map to keep track of vendor minted tokens
    mapping(uint128 => uint128) private _lastVendorsTokenId;
    mapping(uint256 => address) private _originalTokenOwners;

    mapping(uint256 => bool) public blackListedTokens;

    string[] private approvedBrands;
    mapping(string => bool) approvedBrandsMap;

    uint256 public override storagePricePerYear;
    uint256 public override storagePercentagePricePerYear; //max percent precision is 2 decimals 100% is 10000 0.01% is 1
    bool public override storagePriceFixed;
    address public factory;

    string private _baseUriLink;

    modifier onlyFactoryAdmin() {
        require(IFactory(factory).isFactoryAdmin(msg.sender), "NFA");
        _;
    }

    modifier onlyFactoryOrFactoryAdmin() {
        require(
            IFactory(factory).isFactoryAdmin(msg.sender) ||
                isFactory(msg.sender),
            "NFFA"
        );
        _;
    }

    constructor(
        address _factory,
        string memory category,
        string memory symbol,
        string memory uri,
        bool _storagePriceFixed
    ) ERC721(category, symbol) {
        require(_factory != address(0), "FZ");
        _setupRole(DEFAULT_ADMIN_ROLE, msg.sender);
        _setupRole(FACTORY_ROLE, _factory);

        factory = _factory;
        _baseUriLink = uri;

        storagePriceFixed = _storagePriceFixed;
        storagePricePerYear = 20000000; // 20$ in USDC
        storagePercentagePricePerYear = 100; //1 percent
    }

    function baseSymbolURI() public view returns (string memory) {
        return string(abi.encodePacked(_baseUriLink, "/", symbol(), "/"));
    }

    function setBaseURI(string calldata uri) external onlyFactoryAdmin {
        _baseUriLink = uri;
    }

    function tokenURI(uint256 tokenId)
        public
        view
        override(ERC721, IERC721Metadata)
        returns (string memory)
    {
        require(_exists(tokenId), "NT");

        string memory _uri = _baseUriLink;
        return
            bytes(_uri).length > 0
                ? string(
                    abi.encodePacked(
                        _baseUriLink,
                        "/",
                        symbol(),
                        "/",
                        tokenId.toString()
                    )
                )
                : "";
    }

    function isApprovedForAll(address account, address operator)
        public
        view
        override(ERC721, IERC721)
        returns (bool)
    {
        return
            operator == factory || ERC721.isApprovedForAll(account, operator);
    }

    /// @inheritdoc ITangibleNFT
    function produceMultipleTNFTtoStock(
        uint128 vendorId,
        uint256 count,
        address toStock,
        string calldata brandName
    ) external override onlyFactory returns (uint256[] memory) {
        uint256[] memory mintedTnfts = new uint256[](count);
        for (uint256 i = 0; i < count; i++) {
            mintedTnfts[i] = _produceTNFTtoStock(vendorId, toStock, brandName);
        }
        emit ProducedTNFTs(mintedTnfts);
        return mintedTnfts;
    }

    function _produceTNFTtoStock(
        uint128 vendorId,
        address toStock,
        string calldata brandName
    ) internal returns (uint256) {
        //create vendor token id
        uint128 lastVendorProducedTNFT = _lastVendorsTokenId[vendorId];
        require(lastVendorProducedTNFT < type(uint128).max, "MID");
        require(approvedBrandsMap[brandName], "BNA");

        uint256 tokenToMint = (uint256(vendorId) << 128) |
            ++lastVendorProducedTNFT;

        //create new tnft and update last produced tnft in map
        _mint(toStock, tokenToMint);
        _lastVendorsTokenId[vendorId] = lastVendorProducedTNFT;
        //store brand name
        tokenBrand[tokenToMint] = brandName;
        _originalTokenOwners[tokenToMint] = toStock;

        return tokenToMint;
    }

    /// @inheritdoc ITangibleNFT
    function vendorProducedTNFTs(uint128 vendorId)
        external
        view
        override
        returns (uint256)
    {
        //returns how much vendor has minted so far, 0 is never minted
        return uint256(_lastVendorsTokenId[vendorId]);
    }

    /// @inheritdoc ITangibleNFT
    function listTNFTsByVendor(uint128 vendorId)
        external
        view
        override
        returns (uint256[] memory)
    {
        uint256[] memory tokenIds;
        uint128 lastVendorTokenId = _lastVendorsTokenId[vendorId];
        for (uint256 i = 0; i <= lastVendorTokenId; i++) {
            tokenIds[i] = (vendorId << 128) | i;
        }
        return tokenIds;
    }

    /// @inheritdoc ITangibleNFT
    function destroyTNFTs(uint256[] calldata tokenIds, address burningFrom)
        external
        override
        onlyFactoryOrFactoryAdmin
    {
        uint256 length = tokenIds.length;
        for (uint256 i = 0; i < length; i++) {
            _destroyTNFT(tokenIds[i], burningFrom);
        }
    }

    function _destroyTNFT(uint256 tokenId, address burningFrom) internal {
        address tokenOwner = ownerOf(tokenId);
        // check if admin or factory are owners or tokenOwner approved msg.sender or
        // storage fee is not paid in more than a year burn if yes and minter is not tokenOwner

        if (
            ((IFactory(factory).isFactoryOperator(tokenOwner) ||
                (!isStorageFeePaid(tokenId) &&
                    (storageEndTime[tokenId] + 365 days) < block.timestamp &&
                    IFactory(factory).isFactoryOperator(burningFrom))) &&
                !_isTokenMinter(tokenOwner, tokenId)) ||
            IFactory(factory).isFactoryAdmin(burningFrom)
        ) {
            _burn(tokenId);
            delete _originalTokenOwners[tokenId];
            delete tokenBrand[tokenId];
        } else {
            revert("NBR");
        }
    }

    /// @inheritdoc ITangibleNFT
    function isStorageFeePaid(uint256 tokenId)
        public
        view
        override
        returns (bool)
    {
        return storageEndTime[tokenId] > block.timestamp;
    }

    function setStoragePricePerYear(uint256 _storagePricePerYear)
        external
        onlyFactoryAdmin
    {
        // price should be higher than 1$ at least in usdc
        require(_storagePricePerYear >= 1000000, "SPL");
        if (storagePricePerYear != _storagePricePerYear) {
            emit StoragePricePerYearSet(
                storagePricePerYear,
                _storagePricePerYear
            );
            storagePricePerYear = _storagePricePerYear;
        }
    }

    function setStoragePercentPricePerYear(
        uint256 _storagePercentagePricePerYear
    ) external onlyFactoryAdmin {
        // price should be higher than 1$ at least in usdc
        require(_storagePercentagePricePerYear >= 50, "SPRL");
        if (storagePercentagePricePerYear != _storagePercentagePricePerYear) {
            emit StoragePercentagePricePerYearSet(
                storagePricePerYear,
                _storagePercentagePricePerYear
            );
            storagePercentagePricePerYear = _storagePercentagePricePerYear;
        }
    }

    /// @inheritdoc ITangibleNFT
    function adjustStorageAndGetAmount(
        uint256 tokenId,
        uint256 _years,
        uint256 tokenPrice
    ) external override onlyFactory returns (uint256) {
        uint256 lastPaidDate = storageEndTime[tokenId];
        if (lastPaidDate == 0) {
            lastPaidDate = block.timestamp;
        }

        //calculate to which point storage will last
        lastPaidDate += _years * 365 days;
        storageEndTime[tokenId] = lastPaidDate;

        //amount in usdc to pay
        uint256 amount;
        if (storagePriceFixed) {
            amount = storagePricePerYear * _years;
        } else {
            require(tokenPrice > 0, "Price 0");
            amount =
                (tokenPrice * storagePercentagePricePerYear * _years) /
                10000;
        }

        emit StorageFeeToPay(tokenId, _years, amount);

        return amount;
    }

    function toggleStorageFee(bool value) external onlyFactoryAdmin {
        storagePriceFixed = value;
    }

    /// @inheritdoc ITangibleNFT
    function setBrand(uint256 tokenId, string calldata brand)
        external
        override
        onlyFactoryOrFactoryAdmin
    {
        require(approvedBrandsMap[brand], "BNA");
        tokenBrand[tokenId] = brand;
    }

    function addApprovedBrand(string calldata brand)
        external
        override
        onlyFactoryOrFactoryAdmin
    {
        require(!approvedBrandsMap[brand], "BAA");
        approvedBrands.push(brand);
        approvedBrandsMap[brand] = true;
    }

    function getApprovedBrands()
        external
        view
        override
        returns (string[] memory)
    {
        return approvedBrands;
    }

    function blacklistToken(uint256 tokenId, bool blacklisted)
        external
        onlyFactoryAdmin
    {
        blackListedTokens[tokenId] = blacklisted;
    }

    function supportsInterface(bytes4 interfaceId)
        public
        view
        virtual
        override(AccessControl, ERC721, ERC721Enumerable, IERC165)
        returns (bool)
    {
        return super.supportsInterface(interfaceId);
    }

    function _isTokenMinter(address from, uint256 tokenId)
        internal
        view
        returns (bool)
    {
        if (_originalTokenOwners[tokenId] == from) {
            return true;
        }
        return false;
    }

    function _beforeTokenTransfer(
        address from,
        address to,
        uint256 tokenId
    ) internal override(ERC721, ERC721Enumerable, ERC721Pausable) {
        super._beforeTokenTransfer(from, to, tokenId);
        // Allow operations if admin, factory or 0 address
        if (
            IFactory(factory).isFactoryAdmin(from) ||
            (factory == from) ||
            from == address(0) ||
            to == address(0)
        ) {
            return;
        }

        // we prevent transfers if storage is not paid and if from is not minter(vendor essentially)
        if (blackListedTokens[tokenId]) {
            revert("BL");
        }
        if (!isStorageFeePaid(tokenId) && !_isTokenMinter(from, tokenId)) {
            revert("CT");
        }
    }
}
