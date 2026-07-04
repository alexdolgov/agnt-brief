// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import {UUPSUpgradeable} from "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import {IERC721Upgradeable, ERC721Upgradeable} from "@openzeppelin/contracts-upgradeable/token/ERC721/ERC721Upgradeable.sol";
import {CountersUpgradeable} from "@openzeppelin/contracts-upgradeable/utils/CountersUpgradeable.sol";
import {AccessControlUpgradeable} from "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import {SelectivePausable} from "./lib/SelectivePausable.sol";
import {INFCS} from "./interfaces/INFCS.sol";
import {IImageGenerator} from "./interfaces/IImageGenerator.sol";

import {Roles} from "./lib/Roles.sol";
import {Errors} from "./lib/Errors.sol";
import {Version} from "./lib/Version.sol";
import {String} from "./lib/String.sol";
import {NAMED_NFT_VERSION} from "./lib/ContractVersions.sol";

contract NamedNFT is
    ERC721Upgradeable,
    UUPSUpgradeable,
    SelectivePausable,
    AccessControlUpgradeable,
    Version
{
    using CountersUpgradeable for CountersUpgradeable.Counter;
    using String for string;

    event NameBurned(
        address indexed sender,
        string indexed name,
        uint256 indexed nfcsId,
        uint256 tokenId,
        uint256 timestamp
    );

    event NameTransfered(
        address indexed sender,
        string indexed name,
        address indexed to,
        uint256 tokenId,
        uint256 fromNfcsId,
        uint256 toNfcsId,
        uint256 timestamp
    );
    event SetPrimaryName(
        address indexed sender,
        string indexed name,
        uint256 indexed nfcsId,
        uint256 tokenId,
        uint256 timestamp
    );

    event NameMinted(
        address indexed sender,
        string indexed name,
        uint256 indexed nfcsId,
        uint256 tokenId,
        uint256 timestamp
    );

    event SetDisable(address indexed admin, string indexed name, bool disabled, uint256 timestamp);

    event SetCharset(
        address indexed admin,
        string oldCharset,
        string newCharset,
        uint256 timestamp
    );

    event SetNameLength(
        address indexed admin,
        uint8 oldLengthFrom,
        uint8 oldLengthTo,
        uint8 newLengthFrom,
        uint8 newLengthTo,
        uint256 timestamp
    );

    event SetBaseURI(address indexed admin, string oldUri, string newUri, uint256 timestamp);

    event SetNFCSAddress(
        address indexed admin,
        address oldNfcsAddress,
        address newNfcsAddress,
        uint256 timestamp
    );

    event SetContractURI(
        address indexed admin,
        string oldContractURI,
        string newContractURI,
        uint256 timestamp
    );

    event SetExtension(
        address indexed admin,
        string oldExtension,
        string newExtension,
        uint256 timestamp
    );

    event SetNamesLimit(
        address indexed admin,
        uint256 oldLimit,
        uint256 newLimit,
        uint256 timestamp
    );

    event SetFeeValue(address indexed admin, uint256 oldValue, uint256 newValue, uint256 timestamp);

    event SetFeeAddress(
        address indexed admin,
        address oldAddress,
        address newAddress,
        uint256 timestamp
    );

    //struct that link name with it properties
    struct NameData {
        bool exists;
        uint256 nfcsId;
        uint256 tokenId;
    }

    //struct for comfortable blacklisy population
    struct SetDisabled {
        string name;
        bool disabled;
    }

    //NFCS contracts address
    INFCS public nfcs;

    //suffix of the names
    string public extension;

    //base URI of minted tokens
    string private baseUri;

    //mint price
    uint256 public feeValue;

    //fee address
    address private _feeAddress;

    // contractURI() points to the smart contract metadata
    // see https://docs.opensea.io/docs/contract-level-metadata
    string public contractURI;

    //NamedNFT token id
    CountersUpgradeable.Counter private _tokenIdCounter;

    //tokenId to name
    mapping(uint256 => string) public tokenIdName;

    //Name to NameData
    mapping(string => NameData) public nameData; // stores the token id of the current active soul name

    //NfcsId to names
    mapping(uint256 => string[]) private _nfcsToNames;

    //Name restrictions
    uint8 public lengthFrom;
    uint8 public lengthTo;

    //Allowed chars
    mapping(bytes1 => bool) public charAllowed;
    string public charset;

    //Disabled names
    mapping(string => bool) public skipList;

    //Possible names per nfcs
    uint256 public namesLimit;

    IImageGenerator private _imageGenerator;

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function initialize(
        address admin,
        string memory name,
        string memory symbol
    ) public initializer {
        require(admin != address(0), Errors.ZERO_ADDRESS);

        __Pausable_init();
        __ERC721_init(name, symbol);
        __Pausable_init();

        _setRoleAdmin(Roles.PAUSER, Roles.ADMIN);
        _setRoleAdmin(Roles.UPDATER, Roles.ADMIN);
        _setRoleAdmin(Roles.ADMIN, Roles.ADMIN);

        _grantRole(Roles.ADMIN, admin);

        _addPausableFunc("mint", this.mint.selector);
        _addPausableFunc("burn", this.burn.selector);
        _addPausableFunc("setPrimary", this.setPrimary.selector);
        _addPausableFunc("transferFrom", this.transferFrom.selector);
    }

    function _authorizeUpgrade(address newImplementation)
        internal
        override
        whenPaused
        onlyRole(Roles.UPDATER)
    {}

    //Setters

    /**
    @notice Sets the extension of names
    @param _extension Extension string
    */
    function setExtension(string memory _extension) external onlyRole(Roles.ADMIN) {
        emit SetExtension(msg.sender, extension, _extension, block.timestamp);

        extension = _extension;
    }

    /**
    @notice Sets the URI of the smart contract metadata
    @param _contractURI URI of the smart contract metadata
    */
    function setContractURI(string memory _contractURI) external onlyRole(Roles.ADMIN) {
        require(bytes(_contractURI).length > 0, Errors.ZERO_VALUE);

        emit SetContractURI(msg.sender, contractURI, _contractURI, block.timestamp);

        contractURI = _contractURI;
    }

    /**
    @notice Sets the NFCS address
    @param _nfcs address of NFCS contract
    */
    function setNFCSAddress(address _nfcs) external onlyRole(Roles.ADMIN) {
        require(_nfcs != address(0), Errors.ZERO_VALUE);

        emit SetNFCSAddress(msg.sender, address(nfcs), _nfcs, block.timestamp);

        nfcs = INFCS(_nfcs);
    }

    /**
    @notice base URI setter
    @param uri URI string
     */
    function setBaseURI(string memory uri) external onlyRole(Roles.ADMIN) {
        require(bytes(uri).length > 0, Errors.ZERO_VALUE);

        emit SetBaseURI(msg.sender, baseUri, uri, block.timestamp);

        baseUri = uri;
    }

    /**
    @notice sets name lenght settings
    @param from name length from
    @param to name length to
     */
    function setNameLength(uint8 from, uint8 to) external onlyRole(Roles.ADMIN) {
        require(from > 0 && to > 0 && to - from > 0, Errors.NAMED_NFT_INCORRECT_LENGTH);

        emit SetNameLength(msg.sender, lengthFrom, lengthTo, from, to, block.timestamp);

        lengthFrom = from;
        lengthTo = to;
    }

    /**
    @notice Sets charset and allowed chars of names
    @param _charset charset string. e.g "abcdef123456789-_"
     */
    function setCharset(string memory _charset) external onlyRole(Roles.ADMIN) {
        require(bytes(_charset).length > 0, Errors.ZERO_VALUE);

        bytes memory oldCharsetBytes = bytes(charset);
        bytes memory newCharsetBytes = bytes(_charset);

        for (uint256 i; i < oldCharsetBytes.length; i++) {
            charAllowed[oldCharsetBytes[i]] = false;
        }

        for (uint256 i; i < newCharsetBytes.length; i++) {
            charAllowed[newCharsetBytes[i]] = true;
        }

        emit SetCharset(msg.sender, charset, _charset, block.timestamp);
        charset = _charset.toLower();
    }

    /**
    @notice Sets disabled names
    @param _skipList array of names to disable
     */
    function setDisableNames(SetDisabled[] memory _skipList) external onlyRole(Roles.ADMIN) {
        require(_skipList.length > 0, Errors.ZERO_VALUE);

        for (uint256 i; i < _skipList.length; i++) {
            skipList[_skipList[i].name] = _skipList[i].disabled;

            emit SetDisable(msg.sender, _skipList[i].name, _skipList[i].disabled, block.timestamp);
        }
    }

    /**
    @notice Sets names per nfcs limit
    @param limit number of names per nfcs
     */
    function setNamesLimit(uint256 limit) external onlyRole(Roles.ADMIN) {
        emit SetNamesLimit(msg.sender, namesLimit, limit, block.timestamp);
        namesLimit = limit;
    }

    /**
    @notice Sets fee value for NFT minting
    @param _value fee value in native token
     */
    function setFeeValue(uint256 _value) external onlyRole(Roles.ADMIN) {
        emit SetFeeValue(msg.sender, feeValue, _value, block.timestamp);
        feeValue = _value;
    }

    /**
    @notice Sets fee recipient address
    @param newFeeAddress address of recipient
     */
    function setFeeAddress(address newFeeAddress) external onlyRole(Roles.ADMIN) {
        require(newFeeAddress != address(0), Errors.ZERO_ADDRESS);

        emit SetFeeAddress(msg.sender, _feeAddress, newFeeAddress, block.timestamp);

        _feeAddress = newFeeAddress;
    }

    function setImageGenerator(IImageGenerator generator) external onlyRole(Roles.ADMIN) {
        _imageGenerator = generator;
    }

    // Getters

    /**
    @notice Returns all names of particular NFCS ID
    @param nfcsId id of NFCS token
    @return fullNames array of names with extension
     */
    function getNamesByNFCS(uint256 nfcsId) external view returns (string[] memory) {
        string[] memory names = _nfcsToNames[nfcsId];
        string[] memory fullNames = new string[](names.length);

        for (uint8 i; i < names.length; i++) {
            fullNames[i] = _composeName(names[i]);
        }
        return fullNames;
    }

    /**
    @notice Returns name of Named NFT ID
    @param tokenId id of Named NFT token
    @return fullNames array of names with extension
     */
    function getNameById(uint256 tokenId) external view returns (string memory) {
        return _composeName(tokenIdName[tokenId]);
    }

    function getPrimaryName(uint256 nfcsId) external view returns (string memory) {
        return _nfcsToNames[nfcsId].length > 0 ? _composeName(_nfcsToNames[nfcsId][0]) : "";
    }

    /**
    @notice Returns tokenURI for name
    @param name name of token withour sufix
    @return tokenUri concatenated string of tokenUri
     */
    function tokenURI(string memory name) external view virtual returns (string memory) {
        return nameData[name].exists ? baseUri.concat(name) : "";
    }

    /**
    @notice Returns tokenURI for name
    @param tokenId id of Named NFT token
    @return tokenUri concatenated string of tokenUri
     */
    function tokenURI(uint256 tokenId) public view override returns (string memory) {
        return _exists(tokenId) ? _imageGenerator.buildNameImage(tokenIdName[tokenId]) : "";
    }

    //Actions

    /**
    @notice Mints a new name NFT
    @dev Function is payable. User should send namePrice as msg.value to be able to mint
    @param name Name of the new soul name
     */
    function mint(string memory name) public payable {
        require(msg.value >= feeValue, Errors.NAMED_NFT_INSUFFICIENT_FEE_VALUE);

        if (msg.value > 0 && _feeAddress == address(0)) {
            revert(Errors.ZERO_ADDRESS);
        }

        string memory nameLower = _verifyName(name);

        uint256 nfcsId = _verifyNfcsAddition(msg.sender);

        uint256 tokenId = _tokenIdCounter.current();
        _tokenIdCounter.increment();

        _safeMint(msg.sender, tokenId);

        tokenIdName[tokenId] = nameLower;
        nameData[nameLower] = NameData(true, nfcsId, tokenId);
        _nfcsToNames[nfcsId].push(nameLower);

        require(payable(_feeAddress).send(msg.value), Errors.NAMED_NFT_TRANSFER);
        emit NameMinted(msg.sender, nameLower, nfcsId, tokenId, block.timestamp);
    }

    /**
    @notice Burn a name token
    @dev msg.sender need to own token to be able to burn it
    @param tokenId of the name token to burn
     */
    function burn(uint256 tokenId) public {
        require(_exists(tokenId), Errors.NAMED_NFT_TOKEN_NOT_EXISTS);
        require(msg.sender == ownerOf(tokenId), Errors.NAMED_NFT_OWNER);

        string memory name = tokenIdName[tokenId];
        uint256 nfcsId = nameData[name].nfcsId;

        delete tokenIdName[tokenId];

        _removeNameFromList(name, _nfcsToNames[nfcsId]);
        delete nameData[name];

        emit NameBurned(msg.sender, name, nfcsId, tokenId, block.timestamp);

        super._burn(tokenId);
    }

    /**
    @notice Sets primary name for NFCS. Can be called from any address of existed bundle
    @param name name of token to set primary. Nfcs should own this name.
     */
    function setPrimary(string memory name) external {
        uint256 nfcsId = _verifyNfcs(msg.sender);

        string[] storage names = _nfcsToNames[nfcsId];

        require(names.length > 1, Errors.NAMED_NFT_ONE_NAME);

        for (uint256 i; i < names.length; i++) {
            if (names[i].compare(name)) {
                names[i] = names[0];
                names[0] = name;

                emit SetPrimaryName(
                    msg.sender,
                    name,
                    nfcsId,
                    nameData[name].tokenId,
                    block.timestamp
                );
                return;
            }
        }
        revert(Errors.NAMED_NFT_NAME_NOT_FOUND);
    }

    //Internals

    /**
    @notice Composes name with extension
    @param name string
    @return composed string
     */
    function _composeName(string memory name) internal view returns (string memory) {
        return bytes(name).length > 0 ? name.concat(extension) : "";
    }

    /**
    @notice Checks if a this name can be minted
    @param name Name of the token
    @return nameLower name in lowercase
     */
    function _verifyName(string memory name) internal view returns (string memory nameLower) {
        nameLower = name.toLower();
        bytes memory nameBytes = bytes(nameLower);

        require(nameBytes.length > 0, Errors.ZERO_VALUE);

        require(!nameData[name].exists, Errors.NAMED_NFT_NAME_EXISTS);

        uint256 nameLength = nameBytes.length;

        require(
            nameLength >= lengthFrom && nameLength <= lengthTo,
            Errors.NAMED_NFT_INCORRECT_LENGTH
        );

        require(!skipList[nameLower], Errors.NAMED_NFT_BLOCKED);

        for (uint8 i; i < nameLength; i++) {
            require(charAllowed[nameBytes[i]], Errors.NAMED_NFT_CHAR_NOT_ALLOWED);
        }
    }

    /**
    @notice Checks that nfcsParticipant has NFCS token
    @param nfcsParticipant address of nfcs participant
    @return nfcsId id of nfcs token
     */
    function _verifyNfcs(address nfcsParticipant) internal view returns (uint256) {
        address primaryNFCSAddress = nfcs.getPrimaryAddress(nfcsParticipant);
        require(primaryNFCSAddress != address(0), Errors.ZERO_ADDRESS);

        return nfcs.getToken(primaryNFCSAddress);
    }

    /**
    @notice Checks ability to add one more name to nfcs name list
    @param nfcsParticipant address of nfcs participant
    @return nfcsId id of nfcs token
     */
    function _verifyNfcsAddition(address nfcsParticipant) internal view returns (uint256 nfcsId) {
        nfcsId = _verifyNfcs(nfcsParticipant);

        uint256 namesLength = _nfcsToNames[nfcsId].length;
        if (namesLength > 0) {
            require(namesLength < namesLimit, Errors.NAMED_NFT_NAMES_LIMIT);
        }
    }

    /**
    @notice Removes  name from nfcs list
    @param name string
    @param names strorage array of names
     */
    function _removeNameFromList(string memory name, string[] storage names) internal {
        for (uint8 i; i < names.length; i++) {
            if (names[i].compare(name)) {
                names[i] = names[names.length - 1];
                names.pop();
                break;
            }
        }
    }

    //Overrides

    /**
    @dev See {IERC165-supportsInterface}.
     */
    function supportsInterface(bytes4 interfaceId)
        public
        view
        virtual
        override(ERC721Upgradeable, AccessControlUpgradeable)
        returns (bool)
    {
        return
            interfaceId == type(IERC721Upgradeable).interfaceId ||
            super.supportsInterface(interfaceId);
    }

    /**
    @notice Overrided function that helps to transfer tokens and names
    @param from sender address
    @param to recipient address
    @param tokenId id of named token
     */
    function _beforeTokenTransfer(
        address from,
        address to,
        uint256 tokenId
    ) internal virtual override(ERC721Upgradeable) {
        if (from == address(0) || to == address(0)) {
            return;
        }

        uint256 toNfcsId = _verifyNfcsAddition(to);

        string memory name = tokenIdName[tokenId];
        uint256 fromNfcsId = nameData[name].nfcsId;

        _removeNameFromList(name, _nfcsToNames[fromNfcsId]);
        _nfcsToNames[toNfcsId].push(name);

        nameData[name].nfcsId = toNfcsId;

        emit NameTransfered(msg.sender, name, to, tokenId, fromNfcsId, toNfcsId, block.timestamp);

        super._beforeTokenTransfer(from, to, tokenId);
    }

    /**
     * @dev Pause all method with ifNotPaused modifier
     */
    function pause() external onlyRole(Roles.PAUSER) {
        _pause();
    }

    /**
     * @dev Unpause early paused all methods with ifNotPaused modifier
     */
    function unpause() external onlyRole(Roles.PAUSER) {
        _unpause();
    }

    function setFuncPaused(string memory name, bool paused) external onlyRole(Roles.PAUSER) {
        _setFuncPaused(name, paused);
    }

    /**
    @notice Function that returns current version of contract
    @return version of contract
     */
    function currentVersion() external pure returns (string memory) {
        return NAMED_NFT_VERSION;
    }
}
