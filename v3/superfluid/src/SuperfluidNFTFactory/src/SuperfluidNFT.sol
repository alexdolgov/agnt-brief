// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.26;

/* OpenZeppelin Imports */
import { ERC721Upgradeable } from "@openzeppelin/contracts-upgradeable/contracts/token/ERC721/ERC721Upgradeable.sol";
import { OwnableUpgradeable } from "@openzeppelin/contracts-upgradeable/contracts/access/OwnableUpgradeable.sol";

/* Solady Imports */
import { ECDSA } from "solady/utils/ECDSA.sol";

/**
 * @title SuperfluidNFT
 * @author Superfluid Technical Team
 * @notice A reusable NFT contract for minting Superfluid NFTs with referral system
 */
contract SuperfluidNFT is ERC721Upgradeable, OwnableUpgradeable {

    //      ____                          __        __    __        _____ __        __
    //     /  _/___ ___  ____ ___  __  __/ /_____ _/ /_  / /__     / ___// /_____ _/ /____  _____
    //     / // __ `__ \/ __ `__ \/ / / / __/ __ `/ __ \/ / _ \    \__ \/ __/ __ `/ __/ _ \/ ___/
    //   _/ // / / / / / / / / / / /_/ / /_/ /_/ / /_/ / /  __/   ___/ / /_/ /_/ / /_/  __(__  )
    //  /___/_/ /_/ /_/_/ /_/ /_/\__,_/\__/\__,_/_.___/_/\___/   /____/\__/\__,_/\__/\___/____/

    /// @notice The length of a standard ECDSA signature
    uint256 private constant _SIGNATURE_LENGTH = 65;

    //     _____ __        __
    //    / ___// /_____ _/ /____  _____
    //    \__ \/ __/ __ `/ __/ _ \/ ___/
    //   ___/ / /_/ /_/ / /_/  __(__  )
    //  /____/\__/\__,_/\__/\___/____/

    /// @notice The start date of the minting window (0 = no restriction)
    uint256 public mintStartDate;

    /// @notice The end date of the minting window
    uint256 public mintEndDate;

    /// @notice The mint price of a single token
    uint256 public mintPrice;

    /// @notice The maximum number of tokens a user can mint
    uint256 public maxTokensPerUser;

    /// @notice The total number of tokens minted
    uint256 public tokenCount;

    /// @notice The signer address
    address public signer;

    /// @notice The treasury address
    address public treasury;

    /// @notice The base URI for the token metadata
    string private _baseDomainURI;

    /// @notice The mapping of user addresses to the number of tokens they have minted
    mapping(address user => uint256 tokensMinted) public tokensMinted;

    /// @notice The mapping of user addresses to the last valid nonce they used
    mapping(address user => uint256 lastValidNonce) private _lastValidNonces;

    //      ______                 __
    //     / ____/   _____  ____  / /______
    //    / __/ | | / / _ \/ __ \/ __/ ___/
    //   / /___ | |/ /  __/ / / / /_(__  )
    //  /_____/ |___/\___/_/ /_/\__/____/

    /// @notice The event emitted when a referral is made
    event ReferralMade(address indexed referrer, address indexed referree, uint256 tokensMinted);

    //     ______           __                     ______
    //    / ____/_  _______/ /_____  ____ ___     / ____/_____________  __________
    //   / /   / / / / ___/ __/ __ \/ __ `__ \   / __/ / ___/ ___/ __ \/ ___/ ___/
    //  / /___/ /_/ (__  ) /_/ /_/ / / / / / /  / /___/ /  / /  / /_/ / /  (__  )
    //  \____/\__,_/____/\__/\____/_/ /_/ /_/  /_____/_/  /_/   \____/_/  /____/

    /// @notice The error emitted when the minting window has not started yet
    error MINT_NOT_STARTED();

    /// @notice The error emitted when the minting window has ended
    error MINT_ENDED();

    /// @notice The error emitted when the payment is insufficient
    error INSUFFICIENT_PAYMENT();

    /// @notice The error emitted when the user has exceeded the maximum number of tokens they can mint
    error EXCEEDED_MAX_TOKENS_PER_USER();

    /// @notice The error emitted when the user is referring themself
    error SELF_REFERRAL_NOT_ALLOWED();

    /// @notice The error emitted when the mint fee transfer fails
    error FAILED_TO_TRANSFER_MINT_FEE();

    /// @notice The error emitted when the signature is invalid
    error INVALID_SIGNATURE(string reason);

    /// @notice The error emitted when the parameter is invalid
    error INVALID_PARAMETER();

    //     ______                 __                  __
    //    / ____/___  ____  _____/ /________  _______/ /_____  _____
    //   / /   / __ \/ __ \/ ___/ __/ ___/ / / / ___/ __/ __ \/ ___/
    //  / /___/ /_/ / / / (__  ) /_/ /  / /_/ / /__/ /_/ /_/ / /
    //  \____/\____/_/ /_/____/\__/_/   \__,_/\___/\__/\____/_/

    /**
     * @notice Contract constructor
     * @param _domainUri The base domain URI for the token metadata
     */
    constructor(string memory _domainUri) {
        _disableInitializers();
        _baseDomainURI = _domainUri;
    }

    /**
     * @notice Contract initializer
     * @param _owner The owner of the NFT contract
     * @param _name The name of the NFT
     * @param _symbol The symbol of the NFT
     * @param _mintStartDate The start date of the minting window (0 = no restriction)
     * @param _mintEndDate The end date of the minting window
     * @param _mintPrice The price of a single token
     * @param _maxTokensPerUser The maximum number of tokens a user can mint
     * @param _signer The signer address
     * @param _treasury The treasury address
     * @param _domainUri The base domain URI for the token metadata
     */
    function initialize(
        address _owner,
        string memory _name,
        string memory _symbol,
        uint256 _mintStartDate,
        uint256 _mintEndDate,
        uint256 _mintPrice,
        uint256 _maxTokensPerUser,
        address _signer,
        address _treasury,
        string memory _domainUri
    ) external initializer {
        __ERC721_init(_name, _symbol);
        __Ownable_init(_owner);
        mintStartDate = _mintStartDate;
        mintEndDate = _mintEndDate;
        mintPrice = _mintPrice;
        maxTokensPerUser = _maxTokensPerUser;
        signer = _signer;
        treasury = _treasury;
        _baseDomainURI = _domainUri;
    }

    /**
     * @notice Sets the signer address
     * @dev Only callable by the owner
     * @param _signer The new signer address
     */
    function setSigner(address _signer) external onlyOwner {
        if (_signer == address(0)) revert INVALID_PARAMETER();
        signer = _signer;
    }

    /**
     * @notice Sets the treasury address
     * @dev Only callable by the owner
     * @param _treasury The new treasury address
     */
    function setTreasury(address _treasury) external onlyOwner {
        if (_treasury == address(0)) revert INVALID_PARAMETER();
        treasury = _treasury;
    }

    /**
     * @notice Sets the mint price
     * @dev Only callable by the owner
     * @param _mintPrice The new mint price
     */
    function setMintPrice(uint256 _mintPrice) external onlyOwner {
        mintPrice = _mintPrice;
    }

    /**
     * @notice Sets the mint start date
     * @dev Only callable by the owner
     * @param _mintStartDate The new mint start date (0 = no restriction)
     */
    function setMintStartDate(uint256 _mintStartDate) external onlyOwner {
        mintStartDate = _mintStartDate;
    }

    /**
     * @notice Sets the mint end date
     * @dev Only callable by the owner
     * @param _mintEndDate The new mint end date
     */
    function setMintEndDate(uint256 _mintEndDate) external onlyOwner {
        mintEndDate = _mintEndDate;
    }

    /**
     * @notice Sets the maximum number of tokens a user can mint
     * @dev Only callable by the owner
     * @param _maxTokensPerUser The new maximum tokens per user
     */
    function setMaxTokensPerUser(uint256 _maxTokensPerUser) external onlyOwner {
        if (_maxTokensPerUser == 0) revert INVALID_PARAMETER();
        maxTokensPerUser = _maxTokensPerUser;
    }

    /**
     * @notice Sets the base domain URI for token metadata
     * @dev Only callable by the owner
     * @param _domainUri The new base domain URI
     */
    function setDomainUri(string memory _domainUri) external onlyOwner {
        _baseDomainURI = _domainUri;
    }

    //      ______     __                        __   ______                 __  _
    //     / ____/  __/ /____  _________  ____ _/ /  / ____/_  ______  _____/ /_(_)___  ____  _____
    //    / __/ | |/_/ __/ _ \/ ___/ __ \/ __ `/ /  / /_  / / / / __ \/ ___/ __/ / __ \/ __ \/ ___/
    //   / /____>  </ /_/  __/ /  / / / / /_/ / /  / __/ / /_/ / / / / /__/ /_/ / /_/ / / / (__  )
    //  /_____/_/|_|\__/\___/_/  /_/ /_/\__,_/_/  /_/    \__,_/_/ /_/\___/\__/_/\____/_/ /_/____/

    /**
     * @notice Mints a quantity of tokens to the caller
     * @param quantity The quantity of tokens to mint
     * @param nonce The nonce used in the signature
     * @param signature The signature to verify
     * @param referrer The referrer address
     */
    function mint(uint256 quantity, uint256 nonce, bytes memory signature, address referrer) external payable {
        // Verify mint parameters & conditions validity
        _verifyMintValidity(quantity, nonce, signature, referrer);

        // Update the last valid nonce for the caller
        _lastValidNonces[msg.sender] = nonce;

        // Increment the token count
        uint256 nextTokenId = tokenCount;
        tokenCount += quantity;

        tokensMinted[msg.sender] += quantity;

        // Transfer the unlocking fee to the DAO Treasury
        (bool success,) = payable(treasury).call{ value: msg.value }("");

        // Revert if the transfer fails
        if (!success) {
            revert FAILED_TO_TRANSFER_MINT_FEE();
        }

        // Mint the token(s) to the caller
        for (uint256 i = 0; i < quantity; ++i) {
            _safeMint(msg.sender, nextTokenId + i);
        }

        // Emit the referral event
        emit ReferralMade(referrer, msg.sender, quantity);
    }

    //      ____      __                        __   ______                 __  _
    //     /  _/___  / /____  _________  ____ _/ /  / ____/_  ______  _____/ /_(_)___  ____  _____
    //     / // __ \/ __/ _ \/ ___/ __ \/ __ `/ /  / /_  / / / / __ \/ ___/ __/ / __ \/ __ \/ ___/
    //   _/ // / / / /_/  __/ /  / / / / /_/ / /  / __/ / /_/ / / / / /__/ /_/ / /_/ / / / (__  )
    //  /___/_/ /_/\__/\___/_/  /_/ /_/\__,_/_/  /_/    \__,_/_/ /_/\___/\__/_/\____/_/ /_/____/

    /**
     * @notice Verifies the validity of the mint parameters & conditions
     * @param quantity The quantity of tokens to mint
     * @param nonce The nonce used in the signature
     * @param signature The signature to verify
     * @param referrer The referrer address
     */
    function _verifyMintValidity(uint256 quantity, uint256 nonce, bytes memory signature, address referrer)
        internal
        view
    {
        // Verify that the minting window has started
        if (mintStartDate != 0 && block.timestamp < mintStartDate) revert MINT_NOT_STARTED();

        // Verify that the minting window is still open
        if (block.timestamp > mintEndDate) revert MINT_ENDED();

        // Verify that the payment is correct
        if (msg.value != mintPrice * quantity) revert INSUFFICIENT_PAYMENT();

        // Verify that the user has not exceeded the maximum number of tokens they can mint
        if (tokensMinted[msg.sender] + quantity > maxTokensPerUser) revert EXCEEDED_MAX_TOKENS_PER_USER();

        // Verify that the user is not referring themself
        if (referrer == msg.sender) revert SELF_REFERRAL_NOT_ALLOWED();

        // Verify that the signature length is valid
        if (signature.length != _SIGNATURE_LENGTH) revert INVALID_SIGNATURE("signature length");

        // Verify that the nonce is valid
        if (nonce <= _lastValidNonces[msg.sender]) revert INVALID_SIGNATURE("nonce");

        // Verify signature validity
        if (!_verifySignature(msg.sender, nonce, signature)) revert INVALID_SIGNATURE("signer");
    }

    /**
     * @notice Verifies a signature for minting tokens
     *  @param user The user whose units are being updated
     *  @param nonce The nonce used in the signature
     *  @param signature The signature to verify
     *  @return isValid True if the signature is valid
     */
    function _verifySignature(address user, uint256 nonce, bytes memory signature)
        internal
        view
        returns (bool isValid)
    {
        bytes32 hash = ECDSA.toEthSignedMessageHash(keccak256(abi.encodePacked(user, nonce)));

        isValid = ECDSA.recover(hash, signature) == signer;
    }

    /**
     * @notice Returns the collection-level metadata URI
     * @dev Used by wallets and marketplaces (OpenSea, etc.) to display collection info
     * @return The URI for the collection metadata JSON
     */
    function contractURI() public view returns (string memory) {
        return string(abi.encodePacked(_baseDomainURI, symbol(), "/collection"));
    }

    /// @inheritdoc ERC721Upgradeable
    function _baseURI() internal view override returns (string memory uri) {
        uri = string(abi.encodePacked(_baseDomainURI, symbol(), "/"));
    }

}
