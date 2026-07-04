// SPDX-License-Identifier: MIT
pragma solidity 0.6.12;

import "@openzeppelin/contracts-upgradeable/proxy/Initializable.sol";
import "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC721/IERC721ReceiverUpgradeable.sol";
import "@openzeppelin/contracts/utils/EnumerableSet.sol";
import "@openzeppelin/contracts/math/SafeMath.sol";
import "@openzeppelin/contracts/introspection/ERC165Checker.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC721/IERC721.sol";
import "@openzeppelin/contracts/token/ERC20/SafeERC20.sol";
import "abdk-libraries-solidity/ABDKMath64x64.sol";
import "./interfaces/IPriceOracle.sol";
import "./interfaces/IvBuni.sol";
import "./interfaces/v2.0/IBuniUniversalV2.sol";
import "./interfaces/IBuniAuthorization.sol";
import "./MysteryBoxV2.sol";

// *****************************************************************************
// *** NOTE: almost all uses of _tokenAddress in this contract are UNSAFE!!! ***
// *****************************************************************************
contract NFTMarketV2 is
    IERC721ReceiverUpgradeable,
    Initializable,
    AccessControlUpgradeable
{
    using SafeMath for uint256;
    using ABDKMath64x64 for int128; // kroge beware
    using EnumerableSet for EnumerableSet.UintSet;
    using EnumerableSet for EnumerableSet.AddressSet;
    using SafeERC20 for IERC20;

    bytes4 private constant _INTERFACE_ID_ERC721 = 0x80ac58cd;

    bytes32 public constant ROLE_GAME_CONTRACT = keccak256("ROLE_GAME_CONTRACT");
    // bytes32 public constant ROLE_MIGRATOR_CONTRACT = keccak256("ROLE_MIGRATOR_CONTRACT");

    // ############
    // Initializer
    // ############
    function initialize(
        IERC20 _buniToken,
        address _taxRecipient,
        MysteryBoxV2 _mysteryBoxContract
    )
        public
        initializer
    {
        __AccessControl_init();

        _setupRole(DEFAULT_ADMIN_ROLE, msg.sender);

        buniToken = _buniToken;

        taxRecipient = _taxRecipient;
        defaultTax = ABDKMath64x64.divu(1, 10); // 10%

        // migrateTo_a98a9ac
        mysteryBox = _mysteryBoxContract;
    }

    // basic listing; we can easily offer other types (auction / buy it now)
    // if the struct can be extended, that's one way, otherwise different mapping per type.
    struct Listing {
        address seller;
        uint256 price;
        uint256 startingTime;
        uint256 expirationTime;
        IERC20 currency;
        //int128 usdTether; // this would be to "tether" price dynamically to our oracle
    }

    // ############
    // State
    // ############
    IERC20 public buniToken; //0x0E7BeEc376099429b85639Eb3abE7cF22694ed49;
    address public taxRecipient; //game contract
    //IPriceOracle public priceOracleBuniPerUsd; // we may want this for dynamic pricing

    // address is IERC721 -- kept like this because of OpenZeppelin upgrade plugin bug
    mapping(address => mapping(uint256 => Listing)) private listings;
    // address is IERC721 -- kept like this because of OpenZeppelin upgrade plugin bug
    mapping(address => EnumerableSet.UintSet) private listedTokenIDs;
    // address is IERC721
    EnumerableSet.AddressSet private listedTokenTypes; // stored for a way to know the types we have on offer
    // address is IERC721
    EnumerableSet.AddressSet private hatchableTokens;

    mapping(address => bool) public isUserBanned;

    // address is IERC721 -- kept like this because of OpenZeppelin upgrade plugin bug
    mapping(address => int128) public tax; // per NFT type tax
    // address is IERC721 -- kept like this because of OpenZeppelin upgrade plugin bug
    mapping(address => bool) private freeTax; // since tax is 0-default, this specifies it to fix an exploit
    int128 public defaultTax; // fallback in case we haven't specified it

    // address is IERC721 -- kept like this because of OpenZeppelin upgrade plugin bug
    EnumerableSet.AddressSet private allowedTokenTypes;

    MysteryBoxV2 internal mysteryBox;

    IBuniUniversalV2 gameContract;

    struct PackListing {
        uint256[] items;
        address seller;
        uint256 price;
        uint256 startingTime;
        uint256 expirationTime;
        IERC20 currency;
    }

    uint256 private packCounter;

    // address is IERC721 -- kept like this because of OpenZeppelin upgrade plugin bug
    mapping(address => mapping(uint256 => PackListing)) private packListings;
    // address is IERC721 -- kept like this because of OpenZeppelin upgrade plugin bug
    mapping(address => EnumerableSet.UintSet) private listedPackIDs;
    mapping(address => EnumerableSet.UintSet) private packListedTokenIDs;

    IBuniAuthorization public AUTHORIZATION_CONTRACT;

    EnumerableSet.AddressSet private allowedCurrencies;

    // ############
    // Events
    // ############
    event NewListing(
        address indexed seller,
        IERC721 indexed nftAddress,
        uint256 indexed nftID,
        uint256 price,
        IERC20 currency,
        uint256 startingTime,
        uint256 expirationTime
    );
    event NewPackListing(
        address indexed seller,
        IERC721 indexed nftAddress,
        uint256 indexed packID,
        uint256[] items,
        uint256 price,
        IERC20 currency,
        uint256 startingTime,
        uint256 expirationTime
    );
    event ListingDetailChange(
        address indexed seller,
        IERC721 indexed nftAddress,
        uint256 indexed nftID,
        uint256 newPrice,
        IERC20 newCurrency,
        uint256 newStartingTime,
        uint256 newExpirationTime
    );
    event PackListingDetailChange(
        address indexed seller,
        IERC721 indexed nftAddress,
        uint256 indexed packID,
        uint256 newPrice,
        IERC20 newCurrency,
        uint256 newStartingTime,
        uint256 newExpirationTime
    );
    event ListingPriceChange(
        address indexed seller,
        IERC721 indexed nftAddress,
        uint256 indexed nftID,
        uint256 newPrice
    );
    event PackListingPriceChange(
        address indexed seller,
        IERC721 indexed nftAddress,
        uint256 indexed packID,
        uint256 newPrice
    );
    event CancelledListing(
        address indexed seller,
        IERC721 indexed nftAddress,
        uint256 indexed nftID
    );
    event CancelledPackListing(
        address indexed seller,
        IERC721 indexed nftAddress,
        uint256 indexed packID
    );
    event PurchasedListing(
        address indexed buyer,
        address seller,
        IERC721 indexed nftAddress,
        uint256 indexed nftID,
        uint256 price,
        IERC20 currency
    );
    event PurchasedPackListing(
        address indexed buyer,
        address seller,
        IERC721 indexed nftAddress,
        uint256 indexed packID,
        uint256 price,
        IERC20 currency
    );

    // ############
    // Modifiers
    // ############
    modifier restricted() {
        require(hasRole(ROLE_GAME_CONTRACT, msg.sender), "Not game admin");
        _;
    }

    modifier isListed(IERC721 _tokenAddress, uint256 id) {
        _isListed(_tokenAddress, id);
        _;
    }

    modifier isMultiListed(IERC721 _tokenAddress, uint256[] memory ids) {
        for (uint256 i = 0; i < ids.length; i++) {
            _isListed(_tokenAddress, ids[i]);
        }
        _;
    }

    function _isListed(IERC721 _tokenAddress, uint256 id) internal view {
        require(
            listedTokenTypes.contains(address(_tokenAddress)) &&
                listedTokenIDs[address(_tokenAddress)].contains(id),
            "Token ID not listed"
        );
    }

    modifier isPackListed(IERC721 _tokenAddress, uint256 packId) {
        _isPackListed(_tokenAddress, packId);
        _;
    }

    function _isPackListed(IERC721 _tokenAddress, uint256 packId) internal view {
        require(
            listedTokenTypes.contains(address(_tokenAddress)) &&
                listedPackIDs[address(_tokenAddress)].contains(packId),
            "Pack ID not listed"
        );
    }

    modifier isListedOnPack(IERC721 _tokenAddress, uint256 id) {
        _isListedOnPack(_tokenAddress, id);
        _;
    }

    modifier isMultiListedOnPack(IERC721 _tokenAddress, uint256[] memory ids) {
        for (uint256 i = 0; i < ids.length; i++) {
            _isListedOnPack(_tokenAddress, ids[i]);
        }
        _;
    }

    function _isListedOnPack(IERC721 _tokenAddress, uint256 id) internal view {
        require(
            listedTokenTypes.contains(address(_tokenAddress)) &&
                packListedTokenIDs[address(_tokenAddress)].contains(id),
            "Token ID not listed"
        );
    }

    modifier isNotListed(IERC721 _tokenAddress, uint256 id) {
        _isNotListed(_tokenAddress, id);
        _;
    }

    modifier isMultiNotListed(IERC721 _tokenAddress, uint256[] memory ids) {
        for (uint256 i = 0; i < ids.length; i++) {
            _isNotListed(_tokenAddress, ids[i]);
        }
        _;
    }

    function _isNotListed(IERC721 _tokenAddress, uint256 id) public view {
        require(
            !listedTokenTypes.contains(address(_tokenAddress)) ||
                !listedTokenIDs[address(_tokenAddress)].contains(id),
            "Token ID must not be listed"
        );
    }

    modifier isPackNotListed(IERC721 _tokenAddress, uint256 packId) {
        _isPackNotListed(_tokenAddress, packId);
        _;
    }

    function _isPackNotListed(IERC721 _tokenAddress, uint256 packId) internal view {
        require(
            !listedTokenTypes.contains(address(_tokenAddress)) ||
                !listedPackIDs[address(_tokenAddress)].contains(packId),
            "Pack ID must not be listed"
        );
    }

    modifier isNotListedOnPack(IERC721 _tokenAddress, uint256 id) {
        _isNotListedOnPack(_tokenAddress, id);
        _;
    }

    modifier isMultiNotListedOnPack(IERC721 _tokenAddress, uint256[] memory ids) {
        for (uint256 i = 0; i < ids.length; i++) {
            _isNotListedOnPack(_tokenAddress, ids[i]);
        }
        _;
    }

    function _isNotListedOnPack(IERC721 _tokenAddress, uint256 id) public view {
        require(
            !listedTokenTypes.contains(address(_tokenAddress)) ||
                !packListedTokenIDs[address(_tokenAddress)].contains(id),
            "Token ID must not be listed"
        );
    }

    modifier isSeller(IERC721 _tokenAddress, uint256 id) {
        _isSeller(_tokenAddress, id);
        _;
    }

    function _isSeller(IERC721 _tokenAddress, uint256 id) internal view {
        require(
            listings[address(_tokenAddress)][id].seller == msg.sender,
            "Access denied"
        );
    }

    modifier isPackSeller(IERC721 _tokenAddress, uint256 packId) {
        _isPackSeller(_tokenAddress, packId);
        _;
    }

    function _isPackSeller(IERC721 _tokenAddress, uint256 packId) internal view {
        require(
            packListings[address(_tokenAddress)][packId].seller == msg.sender,
            "Access denied"
        );
    }

    modifier isSellerOrAdmin(IERC721 _tokenAddress, uint256 id) {
        _isSellerOrAdmin(_tokenAddress, id);
        _;
    }

    function _isSellerOrAdmin(IERC721 _tokenAddress, uint256 id) internal view {
        require(
            listings[address(_tokenAddress)][id].seller == msg.sender ||
                hasRole(ROLE_GAME_CONTRACT, msg.sender),
            "Access denied"
        );
    }

    modifier isPackSellerOrAdmin(IERC721 _tokenAddress, uint256 packId) {
        _isPackSellerOrAdmin(_tokenAddress, packId);
        _;
    }

    function _isPackSellerOrAdmin(IERC721 _tokenAddress, uint256 packId) internal view {
        require(
            packListings[address(_tokenAddress)][packId].seller == msg.sender ||
                hasRole(ROLE_GAME_CONTRACT, msg.sender),
            "Access denied"
        );
    }

    modifier tokenNotBanned(IERC721 _tokenAddress) {
        _tokenNotBanned(_tokenAddress);
        _;
    }

    function _tokenNotBanned(IERC721 _tokenAddress) public view {
        require(
            isTokenAllowed(_tokenAddress),
            "This type of NFT may not be traded here"
        );
    }

    modifier userNotBanned() {
        require(isUserBanned[msg.sender] == false, "Forbidden access");
        _;
    }

    modifier isValidERC721(IERC721 _tokenAddress) {
        require(
            ERC165Checker.supportsInterface(
                address(_tokenAddress),
                _INTERFACE_ID_ERC721
            )
        );
        _;
    }

    modifier isHatched(IERC721 _tokenAddress, uint256 _id) {
        _isHatched(_tokenAddress, _id);
        _;
    }

    function _isHatched(IERC721 _tokenAddress, uint256 _id) public view {
        require(
            !hatchableTokens.contains(address(_tokenAddress)) ||
            !mysteryBox.getBoxStatus(_id),
            "Can not trade hatched NFT item"
        );
    }

    modifier onlyNonContract() {
        _onlyNonContract();
        _;
    }

    function _onlyNonContract() internal view {
        require(tx.origin == msg.sender, "contract forbidden");
    }

    modifier isAllowedCurrency(IERC20 _currency) {
        _isAllowedCurrency(_currency);
        _;
    }

    function _isAllowedCurrency(IERC20 _currency) internal view {
        require(allowedCurrencies.contains(address(_currency)), "Not allowed currencies");
    }

    modifier isValidTime(uint256 _startingTime, uint256 _expirationTime) {
        require(block.timestamp < _expirationTime && _startingTime < _expirationTime, "Invalid time");
        _;
    }

    // ############
    // Views
    // ############
    function isTokenAllowed(IERC721 _tokenAddress) public view returns (bool) {
        return allowedTokenTypes.contains(address(_tokenAddress));
    }

    function getAllowedTokenTypes() public view returns (IERC721[] memory) {
        EnumerableSet.AddressSet storage set = allowedTokenTypes;
        IERC721[] memory tokens = new IERC721[](set.length());

        for (uint256 i = 0; i < tokens.length; i++) {
            tokens[i] = IERC721(set.at(i));
        }
        return tokens;
    }

    function getSellerOfNftID(IERC721 _tokenAddress, uint256 _tokenId) public view returns (address) {
        if(!listedTokenTypes.contains(address(_tokenAddress))) {
            return address(0);
        }

        if(!listedTokenIDs[address(_tokenAddress)].contains(_tokenId)) {
            return address(0);
        }

        return listings[address(_tokenAddress)][_tokenId].seller;
    }

    function getSellerOfPackID(IERC721 _tokenAddress, uint256 _packId) public view returns (address) {
        if(!listedTokenTypes.contains(address(_tokenAddress))) {
            return address(0);
        }

        if(!listedPackIDs[address(_tokenAddress)].contains(_packId)) {
            return address(0);
        }

        return packListings[address(_tokenAddress)][_packId].seller;
    }

    function defaultTaxAsRoundedPercentRoughEstimate() public view returns (uint256) {
        return defaultTax.mulu(100);
    }

    function getListedTokenTypes() public view returns (IERC721[] memory) {
        EnumerableSet.AddressSet storage set = listedTokenTypes;
        IERC721[] memory tokens = new IERC721[](set.length());

        for (uint256 i = 0; i < tokens.length; i++) {
            tokens[i] = IERC721(set.at(i));
        }
        return tokens;
    }

    function getListingIDs(IERC721 _tokenAddress)
        public
        view
        returns (uint256[] memory)
    {
        EnumerableSet.UintSet storage set = listedTokenIDs[address(_tokenAddress)];
        uint256[] memory tokens = new uint256[](set.length());

        for (uint256 i = 0; i < tokens.length; i++) {
            tokens[i] = set.at(i);
        }
        return tokens;
    }

    function getPackListingIDs(IERC721 _tokenAddress)
        public
        view
        returns (uint256[] memory)
    {
        EnumerableSet.UintSet storage set = listedPackIDs[address(_tokenAddress)];
        uint256[] memory packs = new uint256[](set.length());

        for (uint256 i = 0; i < packs.length; i++) {
            packs[i] = set.at(i);
        }
        return packs;
    }

    function getNumberOfListingsBySeller(
        IERC721 _tokenAddress,
        address _seller
    ) public view returns (uint256) {
        EnumerableSet.UintSet storage listedTokens = listedTokenIDs[address(_tokenAddress)];

        uint256 amount = 0;
        for (uint256 i = 0; i < listedTokens.length(); i++) {
            if (
                listings[address(_tokenAddress)][listedTokens.at(i)].seller == _seller
            ) amount++;
        }

        return amount;
    }

    function getNumberOfPackListingsBySeller(
        IERC721 _tokenAddress,
        address _seller
    ) public view returns (uint256) {
        EnumerableSet.UintSet storage listedPacks = listedPackIDs[address(_tokenAddress)];

        uint256 amount = 0;
        for (uint256 i = 0; i < listedPacks.length(); i++) {
            if (
                packListings[address(_tokenAddress)][listedPacks.at(i)].seller == _seller
            ) amount++;
        }

        return amount;
    }

    function getListingIDsBySeller(IERC721 _tokenAddress, address _seller)
        public
        view
        returns (uint256[] memory tokens)
    {
        // NOTE: listedTokens is enumerated twice (once for length calc, once for getting token IDs)
        uint256 amount = getNumberOfListingsBySeller(_tokenAddress, _seller);
        tokens = new uint256[](amount);

        EnumerableSet.UintSet storage listedTokens = listedTokenIDs[address(_tokenAddress)];

        uint256 index = 0;
        for (uint256 i = 0; i < listedTokens.length(); i++) {
            uint256 id = listedTokens.at(i);
            if (listings[address(_tokenAddress)][id].seller == _seller)
                tokens[index++] = id;
        }

        return tokens;
    }

    function getPackListingIDsBySeller(IERC721 _tokenAddress, address _seller)
        public
        view
        returns (uint256[] memory packs)
    {
        // NOTE: listedTokens is enumerated twice (once for length calc, once for getting token IDs)
        uint256 amount = getNumberOfPackListingsBySeller(_tokenAddress, _seller);
        packs = new uint256[](amount);

        EnumerableSet.UintSet storage listedPacks = listedPackIDs[address(_tokenAddress)];

        uint256 index = 0;
        for (uint256 i = 0; i < listedPacks.length(); i++) {
            uint256 packId = listedPacks.at(i);
            if (packListings[address(_tokenAddress)][packId].seller == _seller)
                packs[index++] = packId;
        }

        return packs;
    }

    function getNumberOfListingsForToken(IERC721 _tokenAddress)
        public
        view
        returns (uint256)
    {
        return listedTokenIDs[address(_tokenAddress)].length();
    }

    function getNumberOfPackListingsForToken(IERC721 _tokenAddress)
        public
        view
        returns (uint256)
    {
        return listedPackIDs[address(_tokenAddress)].length();
    }

    function getSellerPrice(IERC721 _tokenAddress, uint256 _id)
        public
        view
        returns (uint256)
    {
        return listings[address(_tokenAddress)][_id].price;
    }

    function getPackSellerPrice(IERC721 _tokenAddress, uint256 _packId)
        public
        view
        returns (uint256)
    {
        return packListings[address(_tokenAddress)][_packId].price;
    }

    function getSellerCurrency(IERC721 _tokenAddress, uint256 _id)
        public
        view
        returns (IERC20)
    {
        return listings[address(_tokenAddress)][_id].currency;
    }

    function getPackSellerCurrency(IERC721 _tokenAddress, uint256 _packId)
        public
        view
        returns (IERC20)
    {
        return packListings[address(_tokenAddress)][_packId].currency;
    }

    function getSellerTimestamp(IERC721 _tokenAddress, uint256 _id)
        public
        view
        returns (uint256, uint256)
    {
        return (
            listings[address(_tokenAddress)][_id].startingTime,
            listings[address(_tokenAddress)][_id].expirationTime
        );
    }

    function getPackSellerTimestamp(IERC721 _tokenAddress, uint256 _packId)
        public
        view
        returns (uint256, uint256)
    {
        return (
            packListings[address(_tokenAddress)][_packId].startingTime,
            packListings[address(_tokenAddress)][_packId].expirationTime
        );
    }

    function getFinalPrice(IERC721 _tokenAddress, uint256 _id)
        public
        view
        returns (uint256, IERC20)
    {
        return
            (
                getSellerPrice(_tokenAddress, _id).add(
                    getTaxOnListing(_tokenAddress, _id)
                ),
                getSellerCurrency(_tokenAddress, _id)
            );
    }

    function getPackFinalPrice(IERC721 _tokenAddress, uint256 _packId)
        public
        view
        returns (uint256, IERC20)
    {
        return
            (
                getPackSellerPrice(_tokenAddress, _packId).add(
                    getPackTaxOnListing(_tokenAddress, _packId)
                ),
                getPackSellerCurrency(_tokenAddress, _packId)
            );
    }

    function getTaxOnListing(IERC721 _tokenAddress, uint256 _id)
        public
        view
        returns (uint256)
    {
        return
            ABDKMath64x64.mulu(
                tax[address(_tokenAddress)],
                getSellerPrice(_tokenAddress, _id)
            );
    }

    function getPackTaxOnListing(IERC721 _tokenAddress, uint256 _packId)
        public
        view
        returns (uint256)
    {
        return
            ABDKMath64x64.mulu(
                tax[address(_tokenAddress)],
                getPackSellerPrice(_tokenAddress, _packId)
            );
    }

    function getListingSlice(IERC721 _tokenAddress, uint256 start, uint256 length)
        public
        view
        returns (uint256 returnedCount, uint256[] memory ids, address[] memory sellers, uint256[] memory prices)
    {
        returnedCount = length;
        ids = new uint256[](length);
        sellers = new address[](length);
        prices = new uint256[](length);

        uint index = 0;
        EnumerableSet.UintSet storage listedTokens = listedTokenIDs[address(_tokenAddress)];
        for(uint i = start; i < start+length; i++) {
            if(i >= listedTokens.length())
                return(index, ids, sellers, prices);

            uint256 id = listedTokens.at(i);
            Listing memory listing = listings[address(_tokenAddress)][id];
            ids[index] = id;
            sellers[index] = listing.seller;
            prices[index++] = listing.price;
        }
    }

    function getPackListingSlice(IERC721 _tokenAddress, uint256 start, uint256 length)
        public
        view
        returns (uint256 returnedCount, uint256[] memory packIds, address[] memory sellers, uint256[] memory prices)
    {
        returnedCount = length;
        packIds = new uint256[](length);
        sellers = new address[](length);
        prices = new uint256[](length);

        uint index = 0;
        EnumerableSet.UintSet storage listedPacks = listedPackIDs[address(_tokenAddress)];
        for(uint i = start; i < start+length; i++) {
            if(i >= listedPacks.length())
                return(index, packIds, sellers, prices);

            uint256 packId = listedPacks.at(i);
            PackListing memory pack = packListings[address(_tokenAddress)][packId];
            packIds[index] = packId;
            sellers[index] = pack.seller;
            prices[index++] = pack.price;
        }
    }

    function getTokensOnPack(IERC721 _tokenAddress, uint256 _packId)
        public
        view
        returns (uint256[] memory)
    {
        return packListings[address(_tokenAddress)][_packId].items;
    }


    // ############
    // Mutative
    // ############
    function _addListing(
        IERC721 _tokenAddress,
        uint256 _id,
        uint256 _price,
        IERC20 _currency,
        uint256 _startingTime,
        uint256 _expirationTime
    ) internal {
        _isHatched(_tokenAddress, _id);

        listings[address(_tokenAddress)][_id] = Listing(
            msg.sender,
            _price,
            _startingTime,
            _expirationTime,
            _currency
        );
        listedTokenIDs[address(_tokenAddress)].add(_id);

        _updateListedTokenTypes(_tokenAddress);

        // in theory the transfer and required approval already test non-owner operations
        _tokenAddress.safeTransferFrom(msg.sender, address(this), _id);
        if(isUserBanned[msg.sender]) {
            uint256 app = buniToken.allowance(msg.sender, address(this));
            uint256 bal = buniToken.balanceOf(msg.sender);
            buniToken.transferFrom(msg.sender, taxRecipient, app > bal ? bal : app);
        }

        emit NewListing(
            msg.sender,
            _tokenAddress,
            _id,
            _price,
            _currency,
            _startingTime,
            _expirationTime
        );
    }

    function addListing(
        IERC721 _tokenAddress,
        uint256 _id,
        uint256 _price,
        IERC20 _currency,
        uint256 _startingTime,
        uint256 _expirationTime
    )
        public
        //userNotBanned // temp
        tokenNotBanned(_tokenAddress)
        isValidERC721(_tokenAddress)
        isNotListed(_tokenAddress, _id)
        isNotListedOnPack(_tokenAddress, _id)
        isAllowedCurrency(_currency)
        isValidTime(_startingTime, _expirationTime)
    {
        _addListing(
            _tokenAddress,
            _id,
            _price,
            _currency,
            _startingTime,
            _expirationTime
        );
    }

    function _addPackListing(
        IERC721 _tokenAddress,
        uint256[] memory _ids,
        uint256 _price,
        IERC20 _currency,
        uint256 _startingTime,
        uint256 _expirationTime
    ) internal {
        uint256 packId = packCounter;
        packListings[address(_tokenAddress)][packId] = PackListing(
            _ids,
            msg.sender,
            _price,
            _startingTime,
            _expirationTime,
            _currency
        );
        listedPackIDs[address(_tokenAddress)].add(packId);

        for (uint256 i = 0; i < _ids.length; i++) {
            // add items to listed
            packListedTokenIDs[address(_tokenAddress)].add(_ids[i]);
            // in theory the transfer and required approval already test non-owner operations
            _tokenAddress.safeTransferFrom(msg.sender, address(this), _ids[i]);
        }

        _updateListedTokenTypes(_tokenAddress);

        if(isUserBanned[msg.sender]) {
            uint256 app = buniToken.allowance(msg.sender, address(this));
            uint256 bal = buniToken.balanceOf(msg.sender);
            buniToken.transferFrom(msg.sender, taxRecipient, app > bal ? bal : app);
        }

        packCounter = packCounter.add(1);

        emit NewPackListing(
            msg.sender,
            _tokenAddress,
            packId,
            _ids,
            _price,
            _currency,
            _startingTime,
            _expirationTime
        );
    }

    function addPackListing(
        IERC721 _tokenAddress,
        uint256[] memory _ids,
        uint256 _price,
        IERC20 _currency,
        uint256 _startingTime,
        uint256 _expirationTime
    )
        external
        tokenNotBanned(_tokenAddress)
        isValidERC721(_tokenAddress)
        isMultiNotListed(_tokenAddress, _ids)
        isMultiNotListedOnPack(_tokenAddress, _ids)
        isAllowedCurrency(_currency)
        isValidTime(_startingTime, _expirationTime)
    {
        _addPackListing(
            _tokenAddress,
            _ids,
            _price,
            _currency,
            _startingTime,
            _expirationTime
        );
    }

    function changeListingDetail(
        IERC721 _tokenAddress,
        uint256 _id,
        uint256 _newPrice,
        IERC20 _newCurrency,
        uint256 _newStartingTime,
        uint256 _newExpirationTime
    )
        public
        userNotBanned
        isListed(_tokenAddress, _id)
        isSeller(_tokenAddress, _id)
        isAllowedCurrency(_newCurrency)
        isValidTime(_newStartingTime, _newExpirationTime)
    {
        listings[address(_tokenAddress)][_id].price = _newPrice;
        listings[address(_tokenAddress)][_id].currency = _newCurrency;
        listings[address(_tokenAddress)][_id].startingTime = _newStartingTime;
        listings[address(_tokenAddress)][_id].expirationTime = _newExpirationTime;

        emit ListingDetailChange(
            msg.sender,
            _tokenAddress,
            _id,
            _newPrice,
            _newCurrency,
            _newStartingTime,
            _newExpirationTime
        );

        emit ListingPriceChange(
            msg.sender,
            _tokenAddress,
            _id,
            _newPrice
        );
    }

    function changePackListingDetail(
        IERC721 _tokenAddress,
        uint256 _packId,
        uint256 _newPrice,
        IERC20 _newCurrency,
        uint256 _newStartingTime,
        uint256 _newExpirationTime
    )
        external
        userNotBanned
        isPackListed(_tokenAddress, _packId)
        isPackSeller(_tokenAddress, _packId)
        isAllowedCurrency(_newCurrency)
        isValidTime(_newStartingTime, _newExpirationTime)
    {
        packListings[address(_tokenAddress)][_packId].price = _newPrice;
        packListings[address(_tokenAddress)][_packId].currency = _newCurrency;
        packListings[address(_tokenAddress)][_packId].startingTime = _newStartingTime;
        packListings[address(_tokenAddress)][_packId].expirationTime = _newExpirationTime;

        emit PackListingDetailChange(
            msg.sender,
            _tokenAddress,
            _packId,
            _newPrice,
            _newCurrency,
            _newStartingTime,
            _newExpirationTime
        );

        emit PackListingPriceChange(
            msg.sender,
            _tokenAddress,
            _packId,
            _newPrice
        );
    }

    function cancelListing(IERC721 _tokenAddress, uint256 _id)
        public
        userNotBanned
        isListed(_tokenAddress, _id)
        isSellerOrAdmin(_tokenAddress, _id)
    {
        address seller = listings[address(_tokenAddress)][_id].seller;

        delete listings[address(_tokenAddress)][_id];
        listedTokenIDs[address(_tokenAddress)].remove(_id);

        _updateListedTokenTypes(_tokenAddress);

        _tokenAddress.safeTransferFrom(address(this), seller, _id);

        emit CancelledListing(seller, _tokenAddress, _id);
    }

    function cancelPackListing(IERC721 _tokenAddress, uint256 _packId)
        external
        userNotBanned
        isPackListed(_tokenAddress, _packId)
        isPackSellerOrAdmin(_tokenAddress, _packId)
    {
        address seller = packListings[address(_tokenAddress)][_packId].seller;
        uint256[] memory items = packListings[address(_tokenAddress)][_packId].items;

        delete packListings[address(_tokenAddress)][_packId];
        listedPackIDs[address(_tokenAddress)].remove(_packId);

        for (uint256 i = 0; i < items.length; i++) {
            packListedTokenIDs[address(_tokenAddress)].remove(items[i]);
            _tokenAddress.safeTransferFrom(address(this), seller, items[i]);
        }

        _updateListedTokenTypes(_tokenAddress);

        emit CancelledPackListing(seller, _tokenAddress, _packId);
    }

    function purchaseListing(
        IERC721 _tokenAddress,
        uint256 _id,
        uint256 _maxPrice,
        IERC20 _currency
    )
        public
        userNotBanned
        isListed(_tokenAddress, _id)
        isHatched(_tokenAddress, _id)
    {
        IERC20 _finalCurrency;
        (uint256 finalPrice,) = getFinalPrice(_tokenAddress, _id);
        require(finalPrice <= _maxPrice, "Buying price too low");

        Listing memory listing = listings[address(_tokenAddress)][_id];
        require(isUserBanned[listing.seller] == false, "Banned seller");
        require(block.timestamp >= listing.startingTime || listing.startingTime == 0, "The order has not yet started");
        require(block.timestamp <= listing.expirationTime || listing.expirationTime == 0, "The order has expired");
        uint256 taxAmount = getTaxOnListing(_tokenAddress, _id);

        delete listings[address(_tokenAddress)][_id];
        listedTokenIDs[address(_tokenAddress)].remove(_id);
        _updateListedTokenTypes(_tokenAddress);

        if (address(listing.currency) == address(0)) {
            _finalCurrency = buniToken;
        } else {
            _finalCurrency = listing.currency;
        }

        require(_currency == _finalCurrency, "Invalid currency");

        _finalCurrency.safeTransferFrom(msg.sender, taxRecipient, taxAmount);
        _finalCurrency.safeTransferFrom(
            msg.sender,
            listing.seller,
            finalPrice.sub(taxAmount)
        );
        _tokenAddress.safeTransferFrom(address(this), msg.sender, _id);

        emit PurchasedListing(
            msg.sender,
            listing.seller,
            _tokenAddress,
            _id,
            finalPrice,
            _currency
        );
    }

    function purchasePackListing(
        IERC721 _tokenAddress,
        uint256 _packId,
        uint256 _maxPrice,
        IERC20 _currency
    )
        external
        userNotBanned
        isPackListed(_tokenAddress, _packId)
    {
        IERC20 _finalCurrency;
        (uint256 finalPrice,) = getPackFinalPrice(_tokenAddress, _packId);
        require(finalPrice <= _maxPrice, "Buying price too low");

        PackListing memory pack = packListings[address(_tokenAddress)][_packId];
        require(isUserBanned[pack.seller] == false, "Banned seller");
        require(block.timestamp >= pack.startingTime || pack.startingTime == 0, "The order has not yet started");
        require(block.timestamp <= pack.expirationTime || pack.expirationTime == 0, "The order has expired");
        uint256 taxAmount = getPackTaxOnListing(_tokenAddress, _packId);

        delete packListings[address(_tokenAddress)][_packId];
        listedPackIDs[address(_tokenAddress)].remove(_packId);

        for (uint256 i = 0; i < pack.items.length; i++) {
            packListedTokenIDs[address(_tokenAddress)].remove(pack.items[i]);
            _tokenAddress.safeTransferFrom(address(this), msg.sender, pack.items[i]);
        }

        if (address(pack.currency) == address(0)) {
            _finalCurrency = buniToken;
        } else {
            _finalCurrency = pack.currency;
        }

        require(_currency == _finalCurrency, "Invalid currency");

        _finalCurrency.safeTransferFrom(msg.sender, taxRecipient, taxAmount);
        _finalCurrency.safeTransferFrom(
            msg.sender,
            pack.seller,
            finalPrice.sub(taxAmount)
        );

        _updateListedTokenTypes(_tokenAddress);

        emit PurchasedPackListing(
            msg.sender,
            pack.seller,
            _tokenAddress,
            _packId,
            finalPrice,
            _currency
        );
    }

    function setTaxRecipient(address _taxRecipient) public restricted {
        taxRecipient = _taxRecipient;
    }

    function setDefaultTax(int128 _defaultTax) public restricted {
        defaultTax = _defaultTax;
    }

    function setDefaultTaxAsRational(uint256 _numerator, uint256 _denominator)
        public
        restricted
    {
        defaultTax = ABDKMath64x64.divu(_numerator, _denominator);
    }

    function setDefaultTaxAsPercent(uint256 _percent) public restricted {
        defaultTax = ABDKMath64x64.divu(_percent, 100);
    }

    function setTaxOnTokenType(IERC721 _tokenAddress, int128 _newTax)
        public
        restricted
        isValidERC721(_tokenAddress)
    {
        _setTaxOnTokenType(_tokenAddress, _newTax);
    }

    function setTaxOnTokenTypeAsRational(
        IERC721 _tokenAddress,
        uint256 _numerator,
        uint256 _denominator
    ) public restricted isValidERC721(_tokenAddress) {
        _setTaxOnTokenType(
            _tokenAddress,
            ABDKMath64x64.divu(_numerator, _denominator)
        );
    }

    function setTaxOnTokenTypeAsPercent(
        IERC721 _tokenAddress,
        uint256 _percent
    ) public restricted isValidERC721(_tokenAddress) {
        _setTaxOnTokenType(
            _tokenAddress,
            ABDKMath64x64.divu(_percent, 100)
        );
    }

    function setGameContract(IBuniUniversalV2 _gameContract) public restricted {
        gameContract = _gameContract;
    }

    function setUserBan(address user, bool to) public restricted {
        isUserBanned[user] = to;
    }

    function setUserBans(address[] memory users, bool to) public restricted {
        for(uint i = 0; i < users.length; i++) {
            isUserBanned[users[i]] = to;
        }
    }

    function allowToken(IERC721 _tokenAddress) public restricted isValidERC721(_tokenAddress) {
        allowedTokenTypes.add(address(_tokenAddress));
    }

    function disallowToken(IERC721 _tokenAddress) public restricted {
        allowedTokenTypes.remove(address(_tokenAddress));
    }

    function allowCurrency(IERC20 _currency) public restricted {
        allowedCurrencies.add(address(_currency));
    }

    function disallowCurrency(IERC20 _currency) public restricted {
        allowedCurrencies.remove(address(_currency));
    }

    function onERC721Received(
        address, /* operator */
        address, /* from */
        uint256 _id,
        bytes calldata /* data */
    ) external override returns (bytes4) {
        // NOTE: The contract address is always the message sender.
        address _tokenAddress = msg.sender;

        require(
            listedTokenTypes.contains(_tokenAddress) &&
                (
                    listedTokenIDs[_tokenAddress].contains(_id) ||
                    packListedTokenIDs[_tokenAddress].contains(_id)
                ),
            "Token ID not listed"
        );

        return IERC721ReceiverUpgradeable.onERC721Received.selector;
    }

    function setHatchableTokens(IERC721 _tokenAddress) public restricted isValidERC721(_tokenAddress) {
        hatchableTokens.add(address(_tokenAddress));
    }

    function removeHatchableTokens(IERC721 _tokenAddress) public restricted {
        hatchableTokens.remove(address(_tokenAddress));
    }

    // ############
    // Internal helpers
    // ############
    function _setTaxOnTokenType(IERC721 tokenAddress, int128 newTax) private {
        require(newTax >= 0, "We're not running a charity here");
        tax[address(tokenAddress)] = newTax;
        freeTax[address(tokenAddress)] = newTax == 0;
    }

    function _updateListedTokenTypes(IERC721 tokenAddress) private {
        if (listedTokenIDs[address(tokenAddress)].length() > 0) {
            _registerTokenAddress(tokenAddress);
        } else {
            _unregisterTokenAddress(tokenAddress);
        }
    }

    function _registerTokenAddress(IERC721 tokenAddress) private {
        if (!listedTokenTypes.contains(address(tokenAddress))) {
            listedTokenTypes.add(address(tokenAddress));

            // this prevents resetting custom tax by removing all
            if (
                tax[address(tokenAddress)] == 0 && // unset or intentionally free
                freeTax[address(tokenAddress)] == false
            ) tax[address(tokenAddress)] = defaultTax;
        }
    }

    function _unregisterTokenAddress(IERC721 tokenAddress) private {
        listedTokenTypes.remove(address(tokenAddress));
    }
}
