// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "@openzeppelin/contracts-upgradeable/token/ERC721/ERC721Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/security/PausableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/utils/CountersUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC721/extensions/ERC721EnumerableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/utils/cryptography/ECDSAUpgradeable.sol";

import {INFCS} from "./interfaces/INFCS.sol";
import {IAddressBook} from "./interfaces/IAddressBook.sol";

import {Version} from "./lib/Version.sol";
import {NFCS_VERSION} from "./lib/ContractVersions.sol";
import {Errors} from "./lib/Errors.sol";

import {IAxelarGasService} from "@axelar-network/axelar-gmp-sdk-solidity/contracts/interfaces/IAxelarGasService.sol";
import {IAxelarGateway} from "@axelar-network/axelar-gmp-sdk-solidity/contracts/interfaces/IAxelarGateway.sol";
import {IAxelarExecutable} from "@axelar-network/axelar-gmp-sdk-solidity/contracts/interfaces/IAxelarExecutable.sol";
import {StringToAddress, AddressToString} from "@axelar-network/axelar-gmp-sdk-solidity/contracts/StringAddressUtils.sol";

/**
 * @title An ERC721 token contract leveraging Openzeppelin for contract base and upgradeability (UUPS).
 * @author RociFi Labs
 * @notice You can use this contract for minting ERC721 tokens with an address bundle mapped against the tokenIds.
 */

contract NFCS is
    INFCS,
    IAxelarExecutable,
    Initializable,
    ERC721Upgradeable,
    ERC721EnumerableUpgradeable,
    PausableUpgradeable,
    OwnableUpgradeable,
    UUPSUpgradeable,
    Version
{
    using CountersUpgradeable for CountersUpgradeable.Counter;
    using ECDSAUpgradeable for bytes32;
    using StringToAddress for string;
    using AddressToString for address;

    // An incrementing id for each token
    CountersUpgradeable.Counter private _tokenIdCounter;
    // Mapping from tokenId to address array (bundle)
    mapping(uint256 => address[]) private _tokenBundle;
    // DEPRECATED
    mapping(uint256 => bool) private _bundleNonce;
    // DEPRECATED
    mapping(address => bool) private _mintedNonce;
    // DEPRECATED
    mapping(address => bool) private _addressNonce;
    // DEPRECATED
    IAddressBook public addressBook;
    // mapping that connects all addresses of bundle (including primary)
    // to primary address for which NFCS token was minted
    mapping(address => address) private secondaryToPrimary;
    //base URI for NFT Token
    string baseUri;
    //Selective pausable storage
    mapping(string => bytes4) internal funcNameSelector;
    mapping(bytes4 => string) public selectorFuncName;

    mapping(bytes4 => bool) public funcSelectorPaused;

    string currentChainName;
    string mainChainName;
    uint256 mainChainId;
    mapping(string => address) chainNameToAddress;
    IAxelarGateway public gateway;
    IAxelarGasService public gasReceiver;

    // CONSTANTS
    bytes32 private constant _DOMAIN_TYPE_HASH =
        keccak256("EIP712Domain(string name,string version)");
    string private constant _PRIMARY_TYPE = "PrimaryAddressSignature(address[] bundle)";
    string private constant _SECONDARY_TYPE = "SecondaryAddressSignature(address primary)";

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function initialize(address _deprecated) public initializer {
        __ERC721_init("NFCS", "NFCS");
        __Pausable_init();
        __Ownable_init();
        __ERC721Enumerable_init();
        __UUPSUpgradeable_init();
    }

    /**
     * @notice sets the address of the new logic contract
     * @ This function MUST be included in each iteration of this contract, otherwise upgradeability will be lost!
     */
    function _authorizeUpgrade(address newImplementation) internal override onlyOwner whenPaused {}

    // ===== MODIFIERS =====

    /**
     * @dev Checks that token id is minted
     * @param tokenId id of the NFCS Token
     */
    modifier exists(uint256 tokenId) {
        require(_exists(tokenId), Errors.NFCS_NONEXISTENT_TOKEN);
        _;
    }

    /**
     * @dev Checks that all or particular methods are not paused
     */
    modifier ifNotPaused() {
        _requireNotPaused();
        require(
            funcSelectorPaused[msg.sig] == false,
            string(bytes.concat(bytes(selectorFuncName[msg.sig]), bytes(" function is on pause.")))
        );
        _;
    }

    // ===== SETTERS ======

    function setChainNameToAddress(string[] calldata chainNames, address[] calldata nfcsAddresses)
        external
        onlyOwner
    {
        for (uint256 i; i < chainNames.length; i++) {
            chainNameToAddress[chainNames[i]] = nfcsAddresses[i];
        }
    }

    function setCurrentChainName(string calldata chainName) external onlyOwner {
        currentChainName = chainName;
    }

    /**
     * @dev base URI setter
     * @param uri URI string
     */
    function setBaseURI(string calldata uri) external onlyOwner {
        baseUri = uri;
    }

    function addPausables() external onlyOwner {
        _addPausableFunc("mintToken", this.mintToken.selector);
        _addPausableFunc("addAddressToBundle", this.addAddressToBundle.selector);
    }

    /**
     * @dev Add function to selective pausable
     * @notice Work independently from pause()/unpause()
     * @param name of function to pause
     * @param selector function selector
     */
    function _addPausableFunc(string memory name, bytes4 selector) internal onlyOwner {
        funcNameSelector[name] = selector;
        selectorFuncName[selector] = name;
    }

    function setMainChainName(string calldata chainName) external onlyOwner {
        mainChainName = chainName;
    }

    function setMainChainId(uint256 chainId) external onlyOwner {
        mainChainId = chainId;
    }

    function setGateWay(IAxelarGateway _gateway) external onlyOwner {
        gateway = _gateway;
    }

    function setGasReceiver(IAxelarGasService _gasReceiver) external onlyOwner {
        gasReceiver = _gasReceiver;
    }

    // ==== PAUSING =====

    /**
     * @notice pauses the whole contract
     */
    function pause() external onlyOwner {
        _pause();
    }

    /**
     * @notice unpauses the contract
     */
    function unpause() external onlyOwner {
        _unpause();
    }

    /**
     * @dev Set paused/unpaused state for method by name
     * @notice Work independently from pause()/unpause()
     * @param name of function to pause
     * @param paused state
     */
    function setFuncPaused(string calldata name, bool paused) external onlyOwner {
        require(funcNameSelector[name] != bytes4(0), "Unknown function.");
        funcSelectorPaused[funcNameSelector[name]] = paused;
    }

    // ==== GETTERS =====

    /**
     * @dev Returns primary address for secondary address of bundle.
     * @param user secondary address in bundle
     * @return address primary address of bundle
     */
    function getPrimaryAddress(address user) external view returns (address) {
        return secondaryToPrimary[user];
    }

    /**
     * @dev returns the bundle stored against a given tokenId
     * @param tokenId NFCS token id
     * @return address bundle addresses array
     */
    function getBundle(uint256 tokenId) external view exists(tokenId) returns (address[] memory) {
        return _tokenBundle[tokenId];
    }

    /**
     * @dev returns the token owned by tokenOwner, if any.
     * @param tokenOwner address of NFCS token owner
     * @return id of NFCS token
     */
    function getToken(address tokenOwner) external view returns (uint256) {
        return tokenOfOwnerByIndex(tokenOwner, 0);
    }

    /**
     * @dev Returns current version of NFCS contract
     * @return version current version of NFCS
     */
    function currentVersion() public pure virtual override returns (string memory) {
        return NFCS_VERSION;
    }

    function _domainTypedHash() internal pure returns (bytes32) {
        return
            keccak256(
                abi.encode(
                    _DOMAIN_TYPE_HASH,
                    keccak256(bytes("NFCS")),
                    keccak256(bytes(NFCS_VERSION))
                )
            );
    }

    function _primaryTypedHash(address[] memory _bundle) internal pure returns (bytes32) {
        bytes32 bundleHash = keccak256(
            abi.encode(keccak256(bytes(_PRIMARY_TYPE)), keccak256(abi.encodePacked(_bundle)))
        );

        return keccak256(abi.encodePacked("\x19\x01", _domainTypedHash(), bundleHash));
    }

    function _secondaryTypedHash(address _primary) internal pure returns (bytes32) {
        bytes32 primaryHash = keccak256(abi.encode(keccak256(bytes(_SECONDARY_TYPE)), _primary));

        return keccak256(abi.encodePacked("\x19\x01", _domainTypedHash(), primaryHash));
    }

    function _baseURI() internal view override returns (string memory) {
        return baseUri;
    }

    function isMainChain() internal view returns (bool) {
        require(mainChainId != 0, "Main Chain Name is not set");
        return block.chainid == mainChainId;
    }

    // ==== MINTING AND BUNDLING =====

    /**
     * @dev mints a new token and stores an address bundle against the tokenId.
     * @param bundle array of addresses; first address is a primary address
     * @param signatures signatures of bundle;
     * @notice first signature is from primary address that confirms bundle addresses
     * @notice other signatures are from bundle addresses that confirms primary address
     * @param version version of NFCS contract
     */
    function mintToken(
        address[] memory bundle,
        bytes[] memory signatures,
        string memory version
    ) public payable ifNotPaused checkVersion(version) {
        require(bundle.length > 0 && bundle.length == signatures.length, Errors.ARGUMENTS_LENGTH);
        require(secondaryToPrimary[bundle[0]] == address(0), Errors.NFCS_TOKEN_MINTED);
        if (isMainChain()) {
            _mintTokenMainChain(bundle, signatures);
        } else {
            _mintTokenCrossChain(bundle, signatures);
        }
    }

    function _mintTokenMainChain(address[] memory bundle, bytes[] memory signatures) internal {
        uint256 tokenId = _tokenIdCounter.current();
        _tokenBundle[tokenId].push(bundle[0]);
        secondaryToPrimary[bundle[0]] = bundle[0];
        _verifyAdd(bundle, signatures, tokenId, true);
        _tokenIdCounter.increment();
        _safeMint(bundle[0], tokenId);
        emit TokenMinted(block.timestamp, bundle[0], tokenId, bundle);
    }

    function _mintTokenCrossChain(address[] memory bundle, bytes[] memory signatures) internal {
        _verifyAdd(bundle, signatures, 0, false);
        bytes memory payload = abi.encode(CrossChainAction.MINT, bundle, signatures);
        string memory mainChainAddress = chainNameToAddress[mainChainName].toString();
        gasReceiver.payNativeGasForContractCall{value: msg.value}(
            address(this),
            mainChainName,
            mainChainAddress,
            payload,
            msg.sender
        );
        gateway.callContract(mainChainName, mainChainAddress, payload);
    }

    /**
     * @dev Add new address to existing bundle.
     * @param bundle array of new addresses; first address is a primary address
     * @param signatures signatures of bundle;
     * @notice first signature is from primary address that confirms bundle addresses
     * @notice other signatures are from bundle addresses which confirm primary address
     * @param version version of NFCS contract
     */
    function addAddressToBundle(
        address[] calldata bundle,
        bytes[] calldata signatures,
        string calldata version
    ) external ifNotPaused checkVersion(version) {
        require(isMainChain(), Errors.NFCS_ADD_ADDRESS_NOT_POLYGON);
        require(bundle.length > 1 && bundle.length == signatures.length, Errors.ARGUMENTS_LENGTH);

        address primaryAddress = bundle[0];

        uint256 tokenId = tokenOfOwnerByIndex(primaryAddress, 0);

        _verifyAdd(bundle, signatures, tokenId, true);

        emit BundleUpdate(block.timestamp, primaryAddress, tokenId, bundle);
    }

    /**
     * @dev Verification of addresses bundle
     * @param bundle array of addresses; first address is a primary address
     * @param signatures signatures of bundle;
     * @notice first signature is from primary address that confirms bundle addresses
     * @notice other signatures are from bundle addresses that confirms primary address
     * @param tokenId if of the NFCS token
     */
    function _verifyAdd(
        address[] memory bundle,
        bytes[] memory signatures,
        uint256 tokenId,
        bool isMain
    ) internal {
        address primaryAddress = bundle[0];

        require(
            _primaryTypedHash(bundle).recover(signatures[0]) == primaryAddress,
            Errors.NFCS_WALLET_VERIFICATION_FAILED
        );

        for (uint256 i = 1; i < bundle.length; i++) {
            require(secondaryToPrimary[bundle[i]] == address(0), Errors.NFCS_ADDRESS_BUNDLED);

            require(
                _secondaryTypedHash(primaryAddress).recover(signatures[i]) == bundle[i],
                Errors.NFCS_WALLET_VERIFICATION_FAILED
            );

            if (isMain) {
                secondaryToPrimary[bundle[i]] = primaryAddress;
                _tokenBundle[tokenId].push(bundle[i]);
            }
        }
    }

    // ==== AXELAR CROSS-CHAIN FUNCTIONALITY

    function execute(
        bytes32 commandId,
        string calldata sourceChain,
        string calldata sourceAddress,
        bytes calldata payload
    ) external override {
        if (
            !gateway.validateContractCall(commandId, sourceChain, sourceAddress, keccak256(payload))
        ) revert NotApprovedByGateway();

        CrossChainAction action = abi.decode(payload[:32], (CrossChainAction));

        if (action == CrossChainAction.RECEIVE) {
            _executeReceive(payload);
        } else if (action == CrossChainAction.MINT) {
            _executeMint(payload);
        } else if (action == CrossChainAction.BRIDGE) {
            _executeBridge(sourceChain, payload);
        }
    }

    function executeWithToken(
        bytes32 commandId,
        string calldata sourceChain,
        string calldata sourceAddress,
        bytes calldata payload,
        string calldata tokenSymbol,
        uint256 amount
    ) external override {}

    function _executeReceive(bytes calldata payload) internal {
        (, uint256 tokenId, address[] memory bundle) = abi.decode(
            payload,
            (CrossChainAction, uint256, address[])
        );
        _safeMint(bundle[0], tokenId);
        _mintedNonce[bundle[0]] = true;
        _bundleNonce[tokenId] = true;
        _tokenBundle[tokenId] = bundle;
        for (uint256 i; i < bundle.length; i++) {
            secondaryToPrimary[bundle[i]] = bundle[0];
        }
    }

    function _executeMint(bytes calldata payload) internal {
        (, address[] memory bundle, bytes[] memory signatures) = abi.decode(
            payload,
            (CrossChainAction, address[], bytes[])
        );
        mintToken(bundle, signatures, currentVersion());
    }

    function _executeBridge(string calldata sourceChain, bytes calldata payload) internal {
        (, , address[] memory bundle) = abi.decode(payload, (CrossChainAction, uint256, address[]));
        _bridge(bundle[0], sourceChain, false);
    }

    function bridgeTo(string calldata targetChain) external payable {
        _bridge(msg.sender, targetChain, true);
    }

    function bridgeFrom(
        uint256 tokenId,
        address[] calldata bundle,
        string calldata originChain,
        uint256 gasFeePing,
        uint256 gasFeePong
    ) external payable {
        require(gasFeePing + gasFeePong == msg.value, Errors.NFCS_CROSS_CHAIN_GAS);
        gasReceiver.payNativeGasForContractCall{value: gasFeePing}(
            address(this),
            originChain,
            chainNameToAddress[originChain].toString(),
            abi.encode(CrossChainAction.BRIDGE, tokenId, bundle),
            msg.sender
        );
        gasReceiver.payNativeGasForContractCall{value: gasFeePong}(
            chainNameToAddress[originChain],
            currentChainName,
            chainNameToAddress[currentChainName].toString(),
            abi.encode(CrossChainAction.RECEIVE, tokenId, bundle),
            msg.sender
        );
        gateway.callContract(
            originChain,
            chainNameToAddress[originChain].toString(),
            abi.encode(CrossChainAction.BRIDGE, tokenId, bundle)
        );
    }

    function _bridge(
        address user,
        string calldata targetChain,
        bool needPayGas
    ) internal {
        uint256 tokenId = tokenOfOwnerByIndex(user, 0);
        _burn(tokenId);
        bytes memory payloadBack = abi.encode(
            CrossChainAction.RECEIVE,
            tokenId,
            _tokenBundle[tokenId]
        );
        if (needPayGas) {
            gasReceiver.payNativeGasForContractCall{value: msg.value}(
                address(this),
                targetChain,
                chainNameToAddress[targetChain].toString(),
                payloadBack,
                msg.sender
            );
        }
        gateway.callContract(targetChain, chainNameToAddress[targetChain].toString(), payloadBack);
    }

    /**
   * @notice Removing some ERC721 functionality not yet needed.-----------------
     @dev the functions below are all impotent and all revert when called.
   */

    function approve(address, uint256) public virtual override(ERC721Upgradeable) {
        revert("ModifiedApprove: cannot approve other addresses");
    }

    function getApproved(uint256)
        public
        view
        virtual
        override(ERC721Upgradeable)
        returns (address)
    {
        revert("ModifiedGetApproved: cannot get approved address");
    }

    function setApprovalForAll(address, bool) public virtual override(ERC721Upgradeable) {
        revert("ModifiedSetApprovedForAll: cannot set approved address for all owned tokens");
    }

    function isApprovedForAll(address, address)
        public
        view
        virtual
        override(ERC721Upgradeable)
        returns (bool)
    {
        revert("ModifiedIsApprovedForAll: cannot check approval");
    }

    function transferFrom(
        address,
        address,
        uint256
    ) public virtual override(ERC721Upgradeable) {
        revert("ModifiedTransferFrom: transferFrom not supported");
    }

    function safeTransferFrom(
        address,
        address,
        uint256
    ) public virtual override(ERC721Upgradeable) {
        revert("ModifiedSafeTransferFrom: safeTransferFrom not supported");
    }

    function safeTransferFrom(
        address,
        address,
        uint256,
        bytes memory
    ) public virtual override(ERC721Upgradeable) {
        revert("ModifiedSafeTransferFrom: safeTransferFrom not supported");
    }

    /**
     * @notice unused hook for compatibility with OZ base contracts
     */
    function _beforeTokenTransfer(
        address from,
        address to,
        uint256 tokenId
    ) internal override(ERC721Upgradeable, ERC721EnumerableUpgradeable) whenNotPaused {
        super._beforeTokenTransfer(from, to, tokenId);
    }

    /**
     * @notice returns true if a given interface is supported
     */
    function supportsInterface(bytes4 interfaceId)
        public
        view
        override(ERC721Upgradeable, ERC721EnumerableUpgradeable)
        returns (bool)
    {
        return super.supportsInterface(interfaceId);
    }

    /**
  * @notice Modified this function to only check for ownership and not approved owner
    since approval functionality has been disabled. Keeping the same name for compatibility.
  */
    function _isApprovedOrOwner(address spender, uint256 tokenId)
        internal
        view
        override
        exists(tokenId)
        returns (bool)
    {
        address owner = ERC721Upgradeable.ownerOf(tokenId);
        return (spender == owner);
    }
}
