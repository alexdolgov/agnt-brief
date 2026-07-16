// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

import {ERC721} from "solady/tokens/ERC721.sol";
import {Ownable} from "solady/auth/Ownable.sol";
import {ReentrancyGuard} from "solady/utils/ReentrancyGuard.sol";
import {SafeTransferLib} from "solady/utils/SafeTransferLib.sol";
import {IUniswapV4Router04} from "v4-router/interfaces/IUniswapV4Router04.sol";
import {IHooks} from "@uniswap/v4-core/src/interfaces/IHooks.sol";
import {Currency} from "@uniswap/v4-core/src/types/Currency.sol";
import {PoolKey} from "@uniswap/v4-core/src/types/PoolKey.sol";
import {IPositionManager} from "@uniswap/v4-periphery/src/interfaces/IPositionManager.sol";
import {Actions} from "@uniswap/v4-periphery/src/libraries/Actions.sol";
import {IFW2Token, IFW2Hook, IRenderer} from "./Interfaces.sol";


/// @title FundingWorks - A better way to fund creators
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

    /// @notice Price in ETH required to mint one token
    uint256 public immutable MINT_PRICE;
    /// @notice Duration of the minting period in seconds
    uint256 public immutable MINT_PERIOD;
    /// @notice Duration of the vesting period in seconds
    uint256 public immutable VESTING_PERIOD;
    /// @notice Initial payout percentage taken from mint price for owner
    uint256 public immutable INITIAL_PAYOUT_PCT;

    /// @notice Uniswap V4 Router for token swaps
    IUniswapV4Router04 public immutable router;
    /// @notice Uniswap V4 Position Manager for LP operations
    IPositionManager public immutable posm;

    /// @notice PunkStrategy token contract address
    address public constant PNKSTR_ADDRESS = 0xc50673EDb3A7b94E8CAD8a7d4E0cD68864E33eDF;
    /// @notice PunkStrategy hook contract address
    address public constant PNKSTR_HOOK_ADDRESS = 0xfAaad5B731F52cDc9746F2414c823eca9B06E844;

    /// @notice Name of the token
    string private tokenName;
    /// @notice Symbol of the token
    string private tokenSymbol;

    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */
    /*                   STATE VARIABLES                   */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */

    /// @notice Flag indicating if minting is enabled
    bool public mintEnabled;
    /// @notice Timestamp when minting started
    uint256 public mintStartTime;
    /// @notice Current token ID counter
    uint256 private currentTokenId = 1;
    /// @notice Flag indicating if vesting has started
    bool public vestingStarted;
    /// @notice Timestamp when vesting started
    uint256 public vestingStartTime;
    /// @notice Timestamp of the last owner payout
    uint256 public lastOwnerPayoutTime;
    /// @notice Count of burned tokens (total ever burned)
    uint256 public burnedTokenCount;
    /// @notice Count of reminted tokens (total ever reminted)
    uint256 public remintedCount;
    /// @notice Initial amount paid out per token in wei
    uint256 public initialPayoutPerToken;
    /// @notice Initial locked amount per token in wei
    uint256 public initialLockedPerToken;

    /// @notice Total amount paid to the owner (fees + vested funds), already transferred
    uint256 public ownerPaidAmount;
    /// @notice Initial fees accrued during mint phase, awaiting payout until finalize()
    uint256 public initialPayoutAccrued;

    /// @notice The FW2Token contract
    IFW2Token public fw2Token;
    /// @notice The FW2Hook address
    address public fw2Hook;
    /// @notice Flag to indicate this contract is currently swapping (for hook authorization)
    bool public isSwapping;
    /// @notice Flag to allow NFT transfers (disabled by default)
    bool public allowTransfers;
    /// @notice Flag to pause minting
    bool public mintPaused;
    /// @notice The Uniswap V4 pool key
    PoolKey public poolKey;
    /// @notice  Onchain metadata renderer
    address public renderer;
    /// @notice Mapping of tokenId to mint hash (used for deterministic art generation)
    mapping(uint256 => bytes32) public mintHash;

    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */
    /*                    CUSTOM ERRORS                    */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */

    /// @notice Thrown when the sent amount doesn't match the required amount
    error WrongAmount();
    /// @notice Thrown when caller is not the token owner
    error NotTokenOwner();
    /// @notice Thrown when burning is not allowed
    error CannotBurn();
    /// @notice Thrown when contract has insufficient balance
    error InsufficientContractBalance();
    /// @notice Thrown when minting is not enabled
    error MintNotEnabled();
    /// @notice Thrown when minting is paused
    error MintIsPaused();
    /// @notice Thrown when minting period has ended
    error MintPeriodEnded();
    /// @notice Thrown when vesting has already started
    error VestingAlreadyStarted();
    /// @notice Thrown when minting is not complete
    error MintNotComplete();
    /// @notice Thrown when minting is already enabled
    error MintAlreadyEnabled();
    /// @notice Thrown when the value passed is zero
    error CannotBeZero();
    /// @notice Thrown when operation is not allowed
    error NotAllowed();
    /// @notice Thrown when no burned slots are available for reminting
    error NoSlotsAvailable();
    /// @notice Thrown when reminting is not allowed (not in vesting period)
    error CannotRemint();
    /// @notice Thrown when token/hook are not set
    error TokenNotSet();
    /// @notice Thrown when token/hook are already set
    error TokenAlreadySet();
    /// @notice Thrown when more than one swap occurred (reentrancy protection)
    error UnexpectedSwapCount();
    /// @notice Thrown when vesting period is zero
    error InvalidVestingPeriod();
    /// @notice Thrown when initial payout percentage is invalid (must be 0-99)
    error InvalidPayoutPercent();
    /// @notice Thrown when mint price is zero
    error InvalidMintPrice();
    /// @notice Thrown when deployer address is zero
    error InvalidDeployer();
    /// @notice Thrown when router address is zero
    error InvalidRouter();
    /// @notice Thrown when position manager address is zero
    error InvalidPositionManager();

    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */
    /*                    CUSTOM EVENTS                    */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */

    /// @notice Emitted when minting starts
    /// @param startTime The timestamp when minting started
    /// @param endTime The timestamp when minting will end
    event MintStarted(uint256 startTime, uint256 endTime);

    /// @notice Emitted when token is minted
    /// @param userAddress The address of the user minting
    /// @param tokenId Token ID of the NFT
    /// @param fw2Tokens The amount of ERC20 tokens purchased from the mint
    event TokenMinted(address indexed userAddress, uint256 tokenId, uint256 fw2Tokens, bytes32 mintHash);

    /// @notice Emitted when the funding is finalized and vesting begins
    /// @param vestingStartTime The timestamp when vesting started
    /// @param vestingEndTime The timestamp when vesting will end
    /// @param shortfall The amount of extra ETH needed to cover LP rounding (typically ~1 wei per mint)
    event Finalized(uint256 vestingStartTime, uint256 vestingEndTime, uint256 shortfall);

    /// @notice Emitted when someone remints a burned slot
    /// @param minter The address that reminted
    /// @param tokenId The new token ID
    /// @param vestedToOwner Amount of already-vested ETH sent to owner
    event Reminted(address indexed minter, uint256 tokenId, uint256 vestedToOwner, bytes32 mintHash);

    /// @notice Emitted when a holder burns their token for a refund
    /// @param holder The address that burned the token
    /// @param tokenId The token ID that was burned
    /// @param refundAmount Amount of ETH refunded to the holder
    event Burned(address indexed holder, uint256 tokenId, uint256 refundAmount);

    /// @notice Emitted when the renderer is updated
    /// @param renderer The new renderer contract address
    event RendererSet(address renderer);

    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */
    /*                     CONSTRUCTOR                     */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */

    /// @notice Initializes the contract with the deployer as the owner and configurable parameters
    /// @param _mintPrice Price in ETH required to mint one token
    /// @param _mintPeriod Duration of the minting period in seconds
    /// @param _vestingPeriod Duration of the vesting period in seconds
    /// @param _initialPayoutPct Initial payout percentage taken from mint price for owner
    /// @param _deployer Address that becomes the owner of the contract
    /// @param _tokenName Name of the token
    /// @param _tokenSymbol Symbol of the token
    /// @param _router Uniswap V4 Router address
    constructor(
        uint256 _mintPrice,
        uint256 _mintPeriod,
        uint256 _vestingPeriod,
        uint256 _initialPayoutPct,
        address _deployer,
        string memory _tokenName,
        string memory _tokenSymbol,
        address payable _router,
        address _posm
    ) {
        // Validate constructor parameters
        if (_vestingPeriod == 0) revert InvalidVestingPeriod();
        if (_initialPayoutPct > 99) revert InvalidPayoutPercent();
        if (_mintPrice == 0) revert InvalidMintPrice();
        if (_deployer == address(0)) revert InvalidDeployer();
        if (_router == address(0)) revert InvalidRouter();
        if (_posm == address(0)) revert InvalidPositionManager();

        MINT_PRICE = _mintPrice;
        MINT_PERIOD = _mintPeriod;
        VESTING_PERIOD = _vestingPeriod;
        INITIAL_PAYOUT_PCT = _initialPayoutPct;
        tokenName = _tokenName;
        tokenSymbol = _tokenSymbol;

        router = IUniswapV4Router04(_router);
        posm = IPositionManager(_posm);

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

    /// @notice Sets the FW2Token and FW2Hook addresses
    /// @param _token The FW2Token address
    /// @param _hook The FW2Hook address
    function setToken(address _token, address _hook) external onlyOwner {
        if (address(fw2Token) != address(0)) revert TokenAlreadySet();
        fw2Token = IFW2Token(_token);
        fw2Hook = _hook;
    }

    /// @notice Enables minting, initializes LP, and starts the mint period
    /// @dev Can only be called by the owner, sets initial fee calculations
    /// @dev Requires 2 wei to be sent for initial LP creation
    function enableMint() external payable onlyOwner {
        if (mintEnabled) revert MintAlreadyEnabled();
        if (address(fw2Token) == address(0)) revert TokenNotSet();
        if (msg.value != 2) revert WrongAmount();

        mintEnabled = true;
        mintStartTime = block.timestamp;

        initialPayoutPerToken = (MINT_PRICE * INITIAL_PAYOUT_PCT) / 100;
        initialLockedPerToken = MINT_PRICE - initialPayoutPerToken;

        poolKey = PoolKey({
            currency0: Currency.wrap(address(0)), // ETH
            currency1: Currency.wrap(address(fw2Token)),
            fee: 0,
            tickSpacing: 60,
            hooks: IHooks(fw2Hook)
        });

        fw2Token.start{value: msg.value}(fw2Hook);

        emit MintStarted(mintStartTime, mintStartTime + MINT_PERIOD);
    }

    /// @notice Finalizes sale, withdraws liquidity from LP, pays accumulated fees, starts vesting stream.
    /// @dev Payable to cover small rounding losses from LP math. Excess refunded.
    /// @param pnkstrAmountOutMin Minimum amount of PNKSTR tokens to receive (slippage protection)
    function finalize(uint256 pnkstrAmountOutMin) external payable nonReentrant {
        if (msg.sender != owner()) revert NotAllowed();
        if (block.timestamp <= mintStartTime + MINT_PERIOD) revert MintNotComplete();
        if (vestingStarted) revert VestingAlreadyStarted();
        if (currentTokenId == 1) revert CannotBeZero();

        // Withdraw all liquidity from the LP position first (sends ETH to this contract)
        // Must happen before vestingStarted = true so receive() accepts the ETH
        _withdrawLiquidity();

        vestingStarted = true;
        vestingStartTime = block.timestamp;
        lastOwnerPayoutTime = block.timestamp;

        uint256 totalMints = currentTokenId - 1;
        uint256 expectedEth = totalMints * MINT_PRICE;

        // Current balance is ETH from LP withdrawal + any msg.value to cover shortfall
        uint256 currentBalance = address(this).balance;

        // Calculate shortfall (how much extra ETH was needed beyond LP withdrawal)
        // This is typically ~1 wei per mint due to LP math rounding
        uint256 shortfall = 0;
        if (currentBalance >= expectedEth) {
            // Refund any excess ETH to owner
            if (currentBalance > expectedEth) {
                SafeTransferLib.forceSafeTransferETH(owner(), currentBalance - expectedEth);
            }
        } else {
            // Not enough ETH even with msg.value
            revert InsufficientContractBalance();
        }

        // Calculate actual shortfall (msg.value that was used, not refunded)
        uint256 refunded = currentBalance > expectedEth ? currentBalance - expectedEth : 0;
        shortfall = msg.value > refunded ? msg.value - refunded : 0;

        // Pay the upfront fees once, here (50% ETH, 50% PNKSTR)
        uint256 ownerPayoutAmount = initialPayoutAccrued;

        if (ownerPayoutAmount > 0) {
            initialPayoutAccrued = 0;
            ownerPaidAmount += ownerPayoutAmount;

            // Split 50/50: half as ETH, half swapped to PNKSTR
            uint256 ethAmount = ownerPayoutAmount / 2;
            uint256 pnkstrAmount = ownerPayoutAmount - ethAmount;

            // Send ETH portion to owner
            SafeTransferLib.forceSafeTransferETH(owner(), ethAmount);

            // Buy PNKSTR and send to owner
            _buyPNKSTR(pnkstrAmount, pnkstrAmountOutMin);
        }

        emit Finalized(vestingStartTime, vestingStartTime + VESTING_PERIOD, shortfall);
    }

    /// @notice Owner may trigger payment of newly‑vested ETH to themselves.
    function claimOwnerShare() external onlyOwner nonReentrant {
        _payOwnerShare();
    }

    /// @notice Enables or disables NFT transfers
    /// @param _allowTransfers Whether to allow transfers
    function setAllowTransfers(bool _allowTransfers) external onlyOwner {
        allowTransfers = _allowTransfers;
    }

    /// @notice Sets the onchain metadata renderer
    /// @param _renderer The renderer contract address
    function setRenderer(address _renderer) external onlyOwner {
        renderer = _renderer;
        emit RendererSet(renderer);
    }

    /// @notice Pauses or unpauses minting
    /// @param _paused Whether minting should be paused
    function pauseMint(bool _paused) external onlyOwner {
        mintPaused = _paused;
    }

    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */
    /*                    USER FUNCTIONS                   */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */

    /// @notice Allows anyone to mint tokens during the public mint phase
    /// @param quantity Number of tokens to mint
    /// @return tokenIds Array of all minted token IDs
    /// @dev Requires the correct ETH payment, swaps ETH for tokens on curve for each mint
    function mint(uint256 quantity) external payable nonReentrant returns (uint256[] memory tokenIds) {
        if (quantity == 0) revert CannotBeZero();
        _preMintChecks(msg.value, quantity);

        tokenIds = new uint256[](quantity);

        for (uint256 i = 0; i < quantity; i++) {
            // Swap ETH for tokens on the curve (tokens stay in this contract)
            uint256 fw2Tokens = _buyTokens(MINT_PRICE);
            uint256 tokenId = _mintToken();
            tokenIds[i] = tokenId;

            // Generate and store mint hash for deterministic art generation
            bytes32 hash = keccak256(abi.encodePacked(tokenId, msg.sender, block.timestamp));
            mintHash[tokenId] = hash;

            emit TokenMinted(msg.sender, tokenId, fw2Tokens, hash);
        }
    }

    /// @notice Allows anyone to remint a burned slot during vesting
    /// @return The ID of the newly minted token
    /// @dev Calculates how much has already vested and sends that to owner immediately
    function remint() external payable nonReentrant returns (uint256) {
        if (!vestingStarted) revert CannotRemint();
        if (mintPaused) revert MintIsPaused();
        if (block.timestamp >= vestingStartTime + VESTING_PERIOD) revert CannotRemint();
        if (remintedCount >= burnedTokenCount) revert NoSlotsAvailable();
        if (msg.value != MINT_PRICE) revert WrongAmount();

        // Pay out any pending owner share for existing active tokens first
        // (also updates lastOwnerPayoutTime to prevent double-counting on this remint)
        _payOwnerShare();

        // Increment reminted count (slot is being filled)
        remintedCount++;

        // Calculate how much has already vested for this slot
        uint256 elapsed = block.timestamp - vestingStartTime;
        uint256 vestedAmount = (initialLockedPerToken * elapsed) / VESTING_PERIOD;

        // Mint new token
        uint256 id = currentTokenId++;
        _mint(msg.sender, id);

        // Generate and store mint hash for deterministic art generation
        bytes32 hash = keccak256(abi.encodePacked(id, msg.sender, block.timestamp));
        mintHash[id] = hash;

        // Send initial payout + already vested amount to owner
        uint256 toOwner = initialPayoutPerToken + vestedAmount;
        ownerPaidAmount += toOwner;
        SafeTransferLib.forceSafeTransferETH(owner(), toOwner);

        emit Reminted(msg.sender, id, vestedAmount, hash);
        return id;
    }

    /// @notice Burns a token and returns the remaining locked ETH to the token owner
    /// @param tokenId The ID of the token to burn
    /// @dev Requires vesting to have started but not completed, and caller to be the token owner
    /// @dev Pays out any pending owner share before calculating the refund amount
    function burn(uint256 tokenId) external nonReentrant {
        if (!vestingStarted) revert CannotBurn();
        if (block.timestamp >= vestingStartTime + VESTING_PERIOD) revert CannotBurn();
        if (ownerOf(tokenId) != msg.sender) revert NotTokenOwner();
        uint256 locked = getRemainingLockedEth(tokenId);
        _payOwnerShare();
        burnedTokenCount++;
        _burn(tokenId);
        if (locked > 0) SafeTransferLib.forceSafeTransferETH(msg.sender, locked);
        emit Burned(msg.sender, tokenId, locked);
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
    /// @return On-chain rendered metadata
    function tokenURI(uint256 tokenId) public view override returns (string memory) {
        if (!_exists(tokenId)) revert TokenDoesNotExist();
        return IRenderer(renderer).tokenURI(tokenId);
    }

    /// @notice Returns the contract-level metadata URI
    /// @return The base64 encoded data URI containing JSON metadata
    function contractURI() external view returns (string memory) {
        return IRenderer(renderer).contractURI();
    }

    /// @notice Returns the current supply of active tokens
    /// @return The number of tokens currently in circulation
    function getCurrentSupply() external view returns (uint256) {
        return currentTokenId - 1 - burnedTokenCount;
    }

    /// @notice Returns the number of available slots for reminting
    /// @return The number of burned slots that haven't been reminted
    function getAvailableSlots() external view returns (uint256) {
        return burnedTokenCount - remintedCount;
    }

    /// @notice Returns whether vesting has completed
    /// @return True if vesting started and the vesting period has passed
    function vestingComplete() external view returns (bool) {
        if (!vestingStarted) return false;
        return block.timestamp >= vestingStartTime + VESTING_PERIOD;
    }

    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */
    /*                  INTERNAL FUNCTIONS                 */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */

    /// @notice Performs pre-mint validation checks
    /// @param amountSent The amount of ETH sent with the mint transaction
    /// @param quantity The number of tokens being minted
    /// @dev Reverts if minting is not enabled, period has ended, or wrong amount sent
    function _preMintChecks(uint256 amountSent, uint256 quantity) private view {
        if (!mintEnabled) revert MintNotEnabled();
        if (mintPaused) revert MintIsPaused();
        if (block.timestamp > mintStartTime + MINT_PERIOD) revert MintPeriodEnded();
        if (amountSent != MINT_PRICE * quantity) revert WrongAmount();
    }

    /// @notice Internal function to mint a new token
    /// @return id The ID of the newly minted token
    /// @dev Updates fee accrual and marks minting as complete if max supply is reached
    function _mintToken() private returns (uint256 id) {
        id = currentTokenId++;
        initialPayoutAccrued += initialPayoutPerToken; // accumulate owner fee
        _mint(msg.sender, id);
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
        return (initialLockedPerToken * secondsElapsed * active) / VESTING_PERIOD;
    }

    /// @notice Transfers the owner's share of vested ETH
    /// @dev Reverts if contract has insufficient balance
    /// @dev Always updates the last payout time to prevent double-counting
    function _payOwnerShare() internal {
        uint256 share = _calculateOwnerShare();
        lastOwnerPayoutTime = block.timestamp;
        if (share == 0) return;
        if (address(this).balance < share) revert InsufficientContractBalance();
        ownerPaidAmount += share;
        SafeTransferLib.forceSafeTransferETH(owner(), share);
    }

    /// @notice Swaps ETH for FW2 tokens on the Uniswap V4 curve
    /// @param ethAmount The amount of ETH to swap
    /// @return tokensBought The amount of FW2 tokens received
    function _buyTokens(uint256 ethAmount) internal returns (uint256 tokensBought) {
        IFW2Hook hook = IFW2Hook(fw2Hook);
        uint256 swapCountBefore = hook.swapCount();
        uint256 balanceBefore = fw2Token.balanceOf(address(this));

        isSwapping = true;

        // Swap ETH for tokens (zeroForOne = true means ETH -> Token)
        router.swapExactTokensForTokens{value: ethAmount}(
            ethAmount,
            0,
            true, // zeroForOne (ETH -> Token)
            poolKey,
            "", 
            address(this),
            block.timestamp
        );

        isSwapping = false;

        // Verify only one swap occurred
        if (hook.swapCount() != swapCountBefore + 1) revert UnexpectedSwapCount();

        tokensBought = fw2Token.balanceOf(address(this)) - balanceBefore;
    }

    /// @notice Buys PNKSTR tokens with ETH and sends to owner
    /// @param amountIn Amount of ETH to swap for PNKSTR
    /// @param amountOutMin Minimum amount of PNKSTR tokens to receive (slippage protection)
    function _buyPNKSTR(uint256 amountIn, uint256 amountOutMin) internal {
        PoolKey memory key = PoolKey(
            Currency.wrap(address(0)),
            Currency.wrap(PNKSTR_ADDRESS),
            0,
            60,
            IHooks(PNKSTR_HOOK_ADDRESS)
        );

        router.swapExactTokensForTokens{value: amountIn}(
            amountIn,
            amountOutMin,
            true,
            key,
            "",
            owner(),
            block.timestamp
        );
    }

    /// @notice Withdraws all liquidity from the LP position
    /// @dev Burns the LP NFT and takes all ETH. FW2 tokens are left in this contract.
    function _withdrawLiquidity() internal {
        uint256 tokenId = fw2Token.lpTokenId();

        uint128 liquidity = posm.getPositionLiquidity(tokenId);

        bytes memory actions = abi.encodePacked(
            uint8(Actions.DECREASE_LIQUIDITY),
            uint8(Actions.TAKE_PAIR),
            uint8(Actions.BURN_POSITION)
        );

        bytes[] memory params = new bytes[](3);

        params[0] = abi.encode(
            tokenId,
            liquidity,
            0,
            0,
            ""
        );

        params[1] = abi.encode(
            poolKey.currency0,
            poolKey.currency1,
            address(this)
        );

        params[2] = abi.encode(
            tokenId,
            0,
            0,
            ""
        );

        posm.modifyLiquidities(abi.encode(actions, params), block.timestamp);
    }

    /// @notice Hook called before any token transfer
    /// @param from The address sending the token
    /// @param to The address receiving the token
    /// @param tokenId The ID of the token being transferred
    /// @dev Only allows minting, burning, and transfers if allowTransfers is true
    function _beforeTokenTransfer(address from, address to, uint256 tokenId) internal virtual override {
        // Allow minting (from == address(0))
        // Allow burning (to == address(0))
        // Allow transfers if allowTransfers is true
        // Reject all other transfers
        if (from != address(0) && to != address(0) && !allowTransfers) {
            revert NotAllowed();
        }
        super._beforeTokenTransfer(from, to, tokenId);
    }

    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */
    /*                   BLOCKED FUNCTIONS                 */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */
    /// @notice Function blocks granting approvals when transfers disabled, but allows revocation
    function setApprovalForAll(address operator, bool approved) public virtual override {
        // Block granting approvals when transfers disabled, but always allow revocation
        if (!allowTransfers && approved) revert NotAllowed();
        super.setApprovalForAll(operator, approved);
    }

    /// @notice Function blocks granting approvals when transfers disabled, but allows revocation
    function approve(address to, uint256 tokenId) public payable virtual override {
        // Block granting approvals when transfers disabled, but always allow revocation (to = address(0))
        if (!allowTransfers && to != address(0)) revert NotAllowed();
        super.approve(to, tokenId);
    }

    /// @notice Allows receiving ETH only before vesting starts
    /// @dev Rejects ETH after finalization to prevent stranded funds
    receive() external payable {
        if (vestingStarted) revert NotAllowed();
    }

}
