// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

import {ERC721} from "solady/tokens/ERC721.sol";
import {Ownable} from "solady/auth/Ownable.sol";
import {ReentrancyGuard} from "solady/utils/ReentrancyGuard.sol";
import {SafeTransferLib} from "solady/utils/SafeTransferLib.sol";
import {MerkleProofLib} from "solady/utils/MerkleProofLib.sol";

/// @title FundingWorks
/// @author TokenWorks (https://token.works/)
contract FundingWorks is ERC721, Ownable, ReentrancyGuard {
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™                ™™™™™™™™™™™                ™™™™™™™™™™™ */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™               ™™™™™™™™™™™™               ™™™™™™™™™™  */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™              ™™™™™™™™™™™™™              ™™™™™™™™™™™  */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™             ™™™™™™™™™™™™™™            ™™™™™™™™™™™   */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™            ™™™™™™™™™™™™™™™            ™™™™™™™™™™™   */
    /*                ™™™™™™™™™™™            ™™™™™™™™™™™           ™™™™™™™™™™™™™™™           ™™™™™™™™™™™    */
    /*                ™™™™™™™™™™™             ™™™™™™™™™™          ™™™™™™™™™™™™™™™™™          ™™™™™™™™™™™    */
    /*                ™™™™™™™™™™™             ™™™™™™™™™™          ™™™™™™™™™™™™™™™™™          ™™™™™™™™™™     */
    /*                ™™™™™™™™™™™              ™™™™™™™™™™        ™™™™™™™™™™™™™™™™™™™        ™™™™™™™™™™™     */
    /*                ™™™™™™™™™™™              ™™™™™™™™™™™       ™™™™™™™™™ ™™™™™™™™™       ™™™™™™™™™™™      */
    /*                ™™™™™™™™™™™               ™™™™™™™™™™      ™™™™™™™™™™ ™™™™™™™™™™      ™™™™™™™™™™™      */
    /*                ™™™™™™™™™™™               ™™™™™™™™™™      ™™™™™™™™™   ™™™™™™™™™      ™™™™™™™™™™       */
    /*                ™™™™™™™™™™™                ™™™™™™™™™™    ™™™™™™™™™™    ™™™™™™™™™    ™™™™™™™™™™        */
    /*                ™™™™™™™™™™™                 ™™™™™™™™™™   ™™™™™™™™™     ™™™™™™™™™™  ™™™™™™™™™™™        */
    /*                ™™™™™™™™™™™                 ™™™™™™™™™™  ™™™™™™™™™™     ™™™™™™™™™™  ™™™™™™™™™™         */
    /*                ™™™™™™™™™™™                  ™™™™™™™™™™™™™™™™™™™™       ™™™™™™™™™™™™™™™™™™™™          */
    /*                ™™™™™™™™™™™                   ™™™™™™™™™™™™™™™™™™         ™™™™™™™™™™™™™™™™™™           */
    /*                ™™™™™™™™™™™                   ™™™™™™™™™™™™™™™™™™         ™™™™™™™™™™™™™™™™™™           */
    /*                ™™™™™™™™™™™                    ™™™™™™™™™™™™™™™™           ™™™™™™™™™™™™™™™™            */
    /*                ™™™™™™™™™™™                     ™™™™™™™™™™™™™™             ™™™™™™™™™™™™™™             */
    /*                ™™™™™™™™™™™                     ™™™™™™™™™™™™™™             ™™™™™™™™™™™™™™             */
    /*                ™™™™™™™™™™™                      ™™™™™™™™™™™™               ™™™™™™™™™™™™              */

    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */
    /*                      CONSTANTS                      */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */

    /// @notice Struct containing all immutable release information
    struct ReleaseInfo {
        uint256 maxSupply;
        uint256 tokensMinted;
        uint256 mintPrice;
        uint256 mintPeriod;
        uint256 vestingPeriod;
    }

    /// @notice Maximum number of tokens that can be minted
    uint256 public immutable MAX_SUPPLY;
    /// @notice Price in ETH required to mint one token
    uint256 public immutable MINT_PRICE;
    /// @notice Duration of the minting period in seconds
    uint256 public immutable MINT_PERIOD;
    /// @notice Duration of the vesting period in seconds
    uint256 public immutable VESTING_PERIOD;
    /// @notice Initial payout percentage taken from mint price for owner
    uint256 public immutable INITIAL_PAYOUT_PCT;
    /// @notice Fee percentage taken from mint price for TOKEN_WORKS
    uint256 public immutable TOKEN_WORKS_FEE_PCT;
    /// @notice Immutable TOKEN_WORKS address that receives a % of mint price
    address public immutable TOKEN_WORKS;
    
    /// @notice Name of the token
    string public tokenName;
    /// @notice Symbol of the token
    string public tokenSymbol;

    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */
    /*                   STATE VARIABLES                   */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */

    /// @notice Merkle root for allowlist verification
    bytes32 public merkleRoot;
    /// @notice Flag indicating if public minting is enabled
    bool public publicMintEnabled;
    /// @notice Flag indicating if minting is enabled
    bool public mintEnabled;
    /// @notice Timestamp when minting started
    uint256 public mintStartTime;
    /// @notice Current token ID counter
    uint256 private currentTokenId = 1;

    /// @notice Flag indicating if minting is complete
    bool public mintComplete;
    /// @notice Flag indicating if vesting has started
    bool public vestingStarted;
    /// @notice Timestamp when vesting started
    uint256 public vestingStartTime;
    /// @notice Timestamp of the last owner payout
    uint256 public lastOwnerPayoutTime;
    /// @notice Count of burned tokens
    uint256 public burnedTokenCount;
    /// @notice Initial amount paid out per token in wei
    uint256 public initialPayoutPerToken;
    /// @notice Initial amount paid to TOKEN_WORKS per token in wei
    uint256 public tokenWorksFeePerToken;
    /// @notice Initial locked amount per token in wei
    uint256 public initialLockedPerToken;

    /// @notice Total amount paid to the owner (fees + vested funds), already transferred
    uint256 public ownerPaidAmount;
    /// @notice Initial fees accrued during mint phase, awaiting payout until finalize()
    uint256 public initialPayoutAccrued;
    /// @notice TOKEN_WORKS fees accrued during mint phase, awaiting payout until finalize()
    uint256 public tokenWorksFeesAccrued;
    /// @notice IPFS hash for token metadata
    string public ipfsHash;

    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */
    /*                    CUSTOM ERRORS                    */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */

    /// @notice Thrown when the sent amount doesn't match the required amount
    error WrongAmount();
    /// @notice Thrown when all tokens have been minted
    error TokensFullyMinted();
    /// @notice Thrown when caller is not the token owner
    error NotTokenOwner();
    /// @notice Thrown when burning is not allowed
    error CannotBurn();
    /// @notice Thrown when contract has insufficient balance
    error InsufficientContractBalance();
    /// @notice Thrown when minting is not enabled
    error MintNotEnabled();
    /// @notice Thrown when minting period has ended
    error MintPeriodEnded();
    /// @notice Thrown when vesting has already started
    error VestingAlreadyStarted();
    /// @notice Thrown when minting is not complete
    error MintNotComplete();
    /// @notice Thrown when address is not allowlisted
    error NotAllowlisted();
    /// @notice Thrown when minting is already enabled
    error MintAlreadyEnabled();
    /// @notice Thrown when the value passed is zero
    error CannotBeZero();
    /// @notice Thrown when operation is not allowed
    error NotAllowed();

    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */
    /*                    CUSTOM EVENTS                    */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */

    /// @notice Emitted when public minting is enabled
    event PublicMintEnabled();

    /// @notice Emitted when minting starts
    /// @param startTime The timestamp when minting started
    /// @param endTime The timestamp when minting will end
    event MintStarted(uint256 startTime, uint256 endTime);

    /// @notice Emitted when the funding is finalized and vesting begins
    /// @param vestingStartTime The timestamp when vesting started
    /// @param vestingEndTime The timestamp when vesting will end
    event Finalized(uint256 vestingStartTime, uint256 vestingEndTime);

    /// @notice Emitted when the IPFS hash is updated
    /// @param newHash The new IPFS hash
    event IpfsHashUpdated(string newHash);

    /// @notice Emitted when the merkle root is updated
    /// @param newRoot The new merkle root hash
    event MerkleRootUpdated(bytes32 newRoot);

    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */
    /*                     CONSTRUCTOR                     */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */

    /// @notice Initializes the contract with the deployer as the owner and configurable parameters
    /// @param _maxSupply Maximum number of tokens that can be minted
    /// @param _mintPrice Price in ETH required to mint one token
    /// @param _mintPeriod Duration of the minting period in seconds
    /// @param _vestingPeriod Duration of the vesting period in seconds
    /// @param _initialPayoutPct Initial payout percentage taken from mint price for owner
    /// @param _tokenWorksFeePct Fee percentage taken from mint price for TOKEN_WORKS
    /// @param _deployer Address that becomes the owner of the contract
    /// @param _tokenWorks Address that receives the TOKEN_WORKS fee
    /// @param _ipfsHash IPFS hash for token metadata
    /// @param _tokenName Name of the token
    /// @param _tokenSymbol Symbol of the token
    constructor(
        uint256 _maxSupply,
        uint256 _mintPrice,
        uint256 _mintPeriod,
        uint256 _vestingPeriod,
        uint256 _initialPayoutPct,
        uint256 _tokenWorksFeePct,
        address _deployer,
        address _tokenWorks,
        string memory _ipfsHash,
        string memory _tokenName,
        string memory _tokenSymbol
    ) {
        MAX_SUPPLY = _maxSupply;
        MINT_PRICE = _mintPrice;
        MINT_PERIOD = _mintPeriod;
        VESTING_PERIOD = _vestingPeriod;
        INITIAL_PAYOUT_PCT = _initialPayoutPct;
        TOKEN_WORKS_FEE_PCT = _tokenWorksFeePct;
        TOKEN_WORKS = _tokenWorks;
        tokenName = _tokenName;
        tokenSymbol = _tokenSymbol;
        ipfsHash = _ipfsHash;

        _initializeOwner(_deployer);
    }

    /// @notice Returns the name of the token
    /// @return The token name as a string
    function name() public view override returns (string memory) { 
        return tokenName; 
    }

    /// @notice Returns the symbol of the token
    /// @return The token symbol as a string
    function symbol() public view override returns (string memory) { 
        return tokenSymbol; 
    }

    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */
    /*                    ADMIN FUNCTIONS                  */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */

    /// @notice Sets the merkle root for allowlist verification
    /// @param _merkleRoot The merkle root to set
    /// @dev Reverts if the merkle root is zero
    function setMerkleRoot(bytes32 _merkleRoot) external onlyOwner {
        if (_merkleRoot == bytes32(0)) revert CannotBeZero();
        merkleRoot = _merkleRoot;
        emit MerkleRootUpdated(_merkleRoot);
    }

    /// @notice Enables public minting
    /// @dev Can only be called by the owner
    function enablePublicMint() external onlyOwner {
        publicMintEnabled = true;
        emit PublicMintEnabled();
    }

    /// @notice Enables public minting and initializes the mint period
    /// @dev Can only be called by the owner, sets initial fee calculations
    function enablePublicAndEnableMint() external onlyOwner {
        if (mintEnabled) revert MintAlreadyEnabled();
        mintEnabled = true;
        publicMintEnabled = true;
        mintStartTime = block.timestamp;

        initialPayoutPerToken = (MINT_PRICE * INITIAL_PAYOUT_PCT) / 100;
        tokenWorksFeePerToken = (MINT_PRICE * TOKEN_WORKS_FEE_PCT) / 100;
        initialLockedPerToken = MINT_PRICE - initialPayoutPerToken - tokenWorksFeePerToken;

        emit PublicMintEnabled();
        emit MintStarted(mintStartTime, mintStartTime + MINT_PERIOD);
    }

    /// @notice Enables minting and initializes the mint period
    /// @dev Can only be called by the owner, sets initial fee calculations
    function enableMint() external onlyOwner {
        if (mintEnabled) revert MintAlreadyEnabled();
        mintEnabled = true;
        mintStartTime = block.timestamp;

        initialPayoutPerToken = (MINT_PRICE * INITIAL_PAYOUT_PCT) / 100;
        tokenWorksFeePerToken = (MINT_PRICE * TOKEN_WORKS_FEE_PCT) / 100;
        initialLockedPerToken = MINT_PRICE - initialPayoutPerToken - tokenWorksFeePerToken;

        emit MintStarted(mintStartTime, mintStartTime + MINT_PERIOD);
    }

    /// @notice Finalizes sale, pays accumulated fees, starts vesting stream.
    function finalize() external nonReentrant {
        if (msg.sender != owner() && msg.sender != TOKEN_WORKS) revert NotAllowed();
        if (!mintComplete && block.timestamp <= mintStartTime + MINT_PERIOD) revert MintNotComplete();
        if (vestingStarted) revert VestingAlreadyStarted();

        // pay the upfront fees once, here
        uint256 ownerPayoutAmount = initialPayoutAccrued;
        uint256 tokenWorksFeeAmount = tokenWorksFeesAccrued;
        
        if (ownerPayoutAmount > 0) {
            if (address(this).balance < ownerPayoutAmount) revert InsufficientContractBalance();
            initialPayoutAccrued = 0;
            ownerPaidAmount += ownerPayoutAmount;
            SafeTransferLib.forceSafeTransferETH(owner(), ownerPayoutAmount);
        }

        if (tokenWorksFeeAmount > 0) {
            if (address(this).balance < tokenWorksFeeAmount) revert InsufficientContractBalance();
            tokenWorksFeesAccrued = 0;
            SafeTransferLib.forceSafeTransferETH(TOKEN_WORKS, tokenWorksFeeAmount);
        }

        vestingStarted = true;
        vestingStartTime = block.timestamp;
        lastOwnerPayoutTime = block.timestamp;

        emit Finalized(vestingStartTime, vestingStartTime + VESTING_PERIOD);
    }

    /// @notice Owner may trigger payment of newly‑vested ETH to themselves.
    function claimOwnerShare() external onlyOwner nonReentrant {
        _payOwnerShare();
    }

    /// @notice Sets the IPFS hash for token metadata
    /// @param _ipfsHash The IPFS hash
    function updateIpfsHash(string calldata _ipfsHash) external onlyOwner {
        ipfsHash = _ipfsHash;
        emit IpfsHashUpdated(_ipfsHash);
    }

    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */
    /*                    USER FUNCTIONS                   */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */

    /// @notice Allows allowlisted addresses to mint tokens during the allowlist phase
    /// @param proof Merkle proof verifying the caller is on the allowlist
    /// @return The ID of the newly minted token
    /// @dev Requires the correct ETH payment and verifies caller is on the allowlist
    function allowlistMint(bytes32[] calldata proof) external payable nonReentrant returns (uint256) {
        _preMintChecks(msg.value);
        if (!MerkleProofLib.verifyCalldata(proof, merkleRoot, keccak256(abi.encodePacked(msg.sender)))) revert NotAllowlisted();
        return _mintToken();
    }

    /// @notice Allows anyone to mint tokens during the public mint phase
    /// @return The ID of the newly minted token
    /// @dev Requires the correct ETH payment and public minting to be enabled
    function mint() external payable nonReentrant returns (uint256) {
        _preMintChecks(msg.value);
        if (!publicMintEnabled) revert MintNotEnabled();
        return _mintToken();
    }

    /// @notice Burns a token and returns the remaining locked ETH to the token owner
    /// @param tokenId The ID of the token to burn
    /// @dev Requires vesting to have started and caller to be the token owner
    /// @dev Pays out any pending owner share before calculating the refund amount
    function burn(uint256 tokenId) external nonReentrant {
        if (!vestingStarted) revert CannotBurn();
        if (ownerOf(tokenId) != msg.sender) revert NotTokenOwner();
        uint256 locked = getRemainingLockedEth(tokenId);
        _payOwnerShare();
        burnedTokenCount++;
        _burn(tokenId);
        if (locked > 0) SafeTransferLib.forceSafeTransferETH(msg.sender, locked);
    }

    /// @notice Returns the rate at which ETH vests per token per second
    /// @return The amount of ETH that vests per second for each token
    /// @dev Returns 0 if vesting hasn't started yet
    function getVestingRatePerToken() public view returns (uint256) {
        if (!vestingStarted) return 0;
        return initialLockedPerToken / VESTING_PERIOD;
    }

    /// @notice Calculates the remaining locked ETH for a specific token
    /// @param tokenId The ID of the token to check
    /// @return The amount of ETH still locked for the given token
    /// @dev Returns the full initial amount if vesting hasn't started
    function getRemainingLockedEth(uint256 tokenId) public view returns (uint256) {
        if (!_exists(tokenId)) revert TokenDoesNotExist();
        if (!vestingStarted) return initialLockedPerToken;
        uint256 elapsed = block.timestamp - vestingStartTime;
        if (elapsed >= VESTING_PERIOD) return 0;
        uint256 vested = (initialLockedPerToken * elapsed) / VESTING_PERIOD;
        return initialLockedPerToken - vested;
    }

    /// @notice Returns the metadata URI for a specific token
    /// @param tokenId The ID of the token to get the URI for
    /// @return The IPFS URI containing the token's JSON metadata
    function tokenURI(uint256 tokenId) public view override returns (string memory) {
        if (!_exists(tokenId)) revert TokenDoesNotExist();
        return string.concat("ipfs://", ipfsHash);
    }

    /// @notice Returns all release information
    /// @return info Struct containing all parameters in one call
    function getReleaseInfo() external view returns (ReleaseInfo memory) {
        return ReleaseInfo({
            maxSupply: MAX_SUPPLY,
            tokensMinted: currentTokenId - 1,
            mintPrice: MINT_PRICE,
            mintPeriod: MINT_PERIOD,
            vestingPeriod: VESTING_PERIOD
        });
    }

    /// @notice Returns the current supply of active tokens
    /// @return The number of tokens currently in circulation
    function getCurrentSupply() external view returns (uint256) {
        return currentTokenId - burnedTokenCount - 1;
    }

    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */
    /*                  INTERNAL FUNCTIONS                 */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */

    /// @notice Performs pre-mint validation checks
    /// @param amountSent The amount of ETH sent with the mint transaction
    /// @dev Reverts if minting is not enabled, period has ended, wrong amount sent, or max supply reached
    function _preMintChecks(uint256 amountSent) private view {
        if (!mintEnabled) revert MintNotEnabled();
        if (block.timestamp > mintStartTime + MINT_PERIOD) revert MintPeriodEnded();
        if (amountSent != MINT_PRICE) revert WrongAmount();
        if (currentTokenId > MAX_SUPPLY) revert TokensFullyMinted();
    }

    /// @notice Internal function to mint a new token
    /// @return id The ID of the newly minted token
    /// @dev Updates fee accrual and marks minting as complete if max supply is reached
    function _mintToken() private returns (uint256 id) {
        id = currentTokenId++;
        initialPayoutAccrued += initialPayoutPerToken; // accumulate owner fee
        tokenWorksFeesAccrued += tokenWorksFeePerToken; // accumulate TOKEN_WORKS fee
        _mint(msg.sender, id);
        if (currentTokenId > MAX_SUPPLY) mintComplete = true;
    }

    /// @notice Calculates the owner's share of vested ETH
    /// @return The amount of ETH that should be paid to the owner
    /// @dev Returns 0 if vesting hasn't started or no active tokens exist
    function _calculateOwnerShare() internal view returns (uint256) {
        if (!vestingStarted) return 0;
        uint256 active = currentTokenId - 1 - burnedTokenCount;
        if (active == 0) return 0;
        uint256 vestingEnd = vestingStartTime + VESTING_PERIOD;
        uint256 endTime = block.timestamp < vestingEnd ? block.timestamp : vestingEnd;
        if (endTime <= lastOwnerPayoutTime) return 0;
        uint256 secondsElapsed = endTime - lastOwnerPayoutTime;
        return getVestingRatePerToken() * secondsElapsed * active;
    }

    /// @notice Transfers the owner's share of vested ETH
    /// @dev Reverts if contract has insufficient balance
    /// @dev Updates the last payout time and owner paid amount
    function _payOwnerShare() internal {
        uint256 share = _calculateOwnerShare();
        if (share == 0) return;
        if (address(this).balance < share) revert InsufficientContractBalance();
        ownerPaidAmount += share;
        lastOwnerPayoutTime = block.timestamp;
        SafeTransferLib.forceSafeTransferETH(owner(), share);
    }

    /// @notice Hook called before any token transfer
    /// @param from The address sending the token
    /// @param to The address receiving the token
    /// @param tokenId The ID of the token being transferred
    /// @dev Only allows minting and burning, rejects all other transfers
    function _beforeTokenTransfer(
        address from,
        address to,
        uint256 tokenId
    ) internal virtual override {
        // Allow minting (from == address(0))
        // Allow burning (to == address(0))
        // Reject all other transfers
        if (from != address(0) && to != address(0)) {
            revert NotAllowed();
        }
        super._beforeTokenTransfer(from, to, tokenId);
    }

    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */
    /*                   BLOCKED FUNCTIONS                 */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */

    /// @notice Function is blocked - transfers are not allowed
    function setApprovalForAll(address, bool) public virtual override {
        revert NotAllowed();
    }

    /// @notice Function is blocked - transfers are not allowed
    function approve(address, uint256) public payable virtual override {
        revert NotAllowed();
    }

    /// @notice Function is blocked - direct ETH transfers are not allowed
    receive() external payable { 
        revert NotAllowed(); 
    }

    /// @notice Function is blocked - direct ETH transfers are not allowed
    fallback() external payable { 
        revert NotAllowed(); 
    }
}
