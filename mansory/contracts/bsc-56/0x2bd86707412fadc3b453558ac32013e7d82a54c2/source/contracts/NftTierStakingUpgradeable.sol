// SPDX-License-Identifier: MIT
pragma solidity =0.8.28;

import '@openzeppelin/contracts-upgradeable/token/ERC721/extensions/ERC721EnumerableUpgradeable.sol';
import '@openzeppelin/contracts-upgradeable/access/Ownable2StepUpgradeable.sol';
import '@openzeppelin/contracts-upgradeable/utils/PausableUpgradeable.sol';
import '@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol';
import './interfaces/ITierStaking.sol';
import './interfaces/ITierStakingTokenUriBuilder.sol';
import './interfaces/IERC7572.sol';

/**
 * @title  NftTierStakingUpgradeable
 * @notice Soul-bound ERC-721 that represents a time-locked stake in an ERC-20
 *         token and grants the holder a tier according to the total locked
 *         amount.
 * @dev    Deploy the implementation once and interact through an
 *         OpenZeppelin **TransparentUpgradeableProxy**; all state-initialising
 *         logic therefore lives in {initialize}. The constructor disables
 *         initialisers to protect the implementation contract.
 */
contract NftTierStakingUpgradeable is
    ITierStaking,
    IERC7572,
    PausableUpgradeable,
    ERC721EnumerableUpgradeable,
    Ownable2StepUpgradeable
{
    using SafeERC20 for IERC20;

    /**
     * ERC-20 token that users lock in exchange for a non-transferable NFT.
     * @dev Set once during {initialize} and never changed thereafter.
     */
    address public override stakingToken;

    /**
     * @notice External helper contract that builds metadata URIs for NFTs.
     * @dev    If the value is the zero address, the default {ERC721#tokenURI}
     *         implementation SHOULD be used. Left mutable for future upgrades.
     */
    address public override tokenUriBuilder;

    /**
     * Uniform lock duration applied to every position, measured in seconds.
     * @dev May only be modified by an admin while the contract is paused.
     */
    uint256 public override lockTime;

    /**
     * @notice Aggregate amount of ERC-20 tokens currently locked in all
     *         staking positions.
     * @dev    Increases on {createLock}, {deposit}, and {airdrop}; decreases
     *         on {withdraw}. Exposed for analytics and TVL calculations.
     */
    uint256 public override totalStaked;

    /**
     * Sequential identifier for the next NFT to be minted.
     * @dev Starts at 1 and auto-increments after each successful {createLock}.
     */
    uint256 public override nextTokenId;

    /**
     * Tier table sorted by ascending `requireAmount`.
     * @dev Index 0 is a sentinel “NONE” tier with `requireAmount == 0`.
     */
    TierData[] public override tiers;

    /**
     * Per-position metadata keyed by `tokenId`.
     * @dev The struct stores:
     *      • `tokenId` – unique NFT id
     *      • `amount`  – total ERC-20 locked in the position
     *      • `expireTimestamp` – Unix time when withdrawal is allowed
     *      • `tier` – current tier index within {tiers}
     */
    mapping(uint256 tokenId => NftData) public override nftData;

    /** @notice Zero address supplied where a non-zero address is required. */
    error AddressZero();

    /** @notice @notice Zero-token amount supplied where a non-zero value is required. */
    error AmountZero();

    /** @notice Caller lacks the required ownership. */
    error AccessDenied();

    /** @notice Transfer attempted between two non-zero addresses (NFT is non-transferable). */
    error TransferDisabled();

    /** @notice Action requires an **active** lock but the NFT is already expired. */
    error NftExpired();

    /** @notice Action requires an **expired** lock but the NFT is still active. */
    error NftNotExpired();

    /** @notice Caller already owns a lock; only one lock per address is allowed. */
    error LockAlreadyExist();

    /** @notice Supplied tier list is not strictly ascending by `requireAmount`. */
    error InvalidTierRequireAmountsOrder();

    /** @notice Thrown when the supplied lock amount is below `tiers[0].requireAmount`. */
    error CreateLockMinAmount();

    /**
     * @notice Restricts call-site to the owner of `tokenId_`.
     * @param  tokenId_ NFT whose ownership is checked.
     * @custom:error Reverts {AccessDenied} if `_msgSender()` is not the owner.
     */
    modifier onlyNftOwner(uint256 tokenId_) {
        require(ownerOf(tokenId_) == _msgSender(), AccessDenied());
        _;
    }

    /**
     * @dev Disables all initialisers on the implementation contract. Required
     *      when using proxy patterns to avoid direct initialisation.
     */
    constructor() {
        _disableInitializers();
    }

    /**
     * @notice Proxy initialiser (replaces constructor).
     * @param  nftName_       ERC-721 collection name.
     * @param  nftSymbol_     ERC-721 symbol.
     * @param  stakingToken_  ERC-20 token to be staked.
     * @param  tiers_         Strictly ascending list of tier definitions.
     *
     * Requirements
     *  • `stakingToken_` must be non-zero.
     *  • `tiers_` items must be strictly increasing by `requireAmount`.
     *
     * Effects
     *  • Grants DEFAULT_ADMIN_ROLE to the deployer.
     *  • Starts the contract in *paused* state for safety.
     *
     * Emits {UpdateTiers}.
     */
    function initialize(
        string calldata nftName_,
        string calldata nftSymbol_,
        address stakingToken_,
        TierData[] calldata tiers_
    ) external virtual override initializer {
        _checkAddress(stakingToken_);

        __Pausable_init();
        __ERC721_init(nftName_, nftSymbol_);
        __ERC721Enumerable_init();
        __Ownable_init(_msgSender());
        __Ownable2Step_init();

        stakingToken = stakingToken_;
        lockTime = 15724800;
        nextTokenId = 1;

        uint256 lastRequireAmount;
        for (uint256 i = 0; i < tiers_.length; i++) {
            require(tiers_[i].requireAmount > lastRequireAmount, InvalidTierRequireAmountsOrder());
            lastRequireAmount = tiers_[i].requireAmount;
            tiers.push(tiers_[i]);
        }

        emit UpdateTiers(_msgSender(), tiers);

        _pause();
    }

    /**
     * @notice Sets the helper contract that builds metadata URIs for NFTs.
     * @param  tokenUriBuilder_ Contract address that implements the URI logic.
     *                          Pass the zero address to fall back on the
     *                          default {ERC721-tokenURI} implementation.
     *
     * Requirements:
     * - Caller **must** be the contract owner.
     *
     * Emits an {UpdateTokenUriBuilder} event.
     */
    function setTokenUriBuilder(address tokenUriBuilder_) external virtual override onlyOwner {
        _checkAddress(tokenUriBuilder_);
        tokenUriBuilder = tokenUriBuilder_;
        emit UpdateTokenUriBuilder(_msgSender(), tokenUriBuilder_);
    }

    /**
     * @notice Global circuit breaker; disables deposits, and
     *         lock creates. Only DEFAULT_ADMIN_ROLE may call.
     * @custom:emit Emits the standard {Paused} event.
     */
    function pause() external virtual override onlyOwner {
        _pause();
    }

    /**
     * @notice Lifts the pause imposed by {pause}. Only DEFAULT_ADMIN_ROLE may call.
     * @custom:emit Emits the standard {Unpaused} event.
     */
    function unpause() external virtual override onlyOwner {
        _unpause();
    }

    /**
     * @notice Updates the global lock duration.
     * @param  lockTime_ New lock period in seconds.
     *
     * @custom:requirements
     * - Contract **must** be paused.
     * - Only DEFAULT_ADMIN_ROLE can call.
     *
     * @custom:emit Emits `UpdateLockTime`.
     */
    function setLockTime(uint256 lockTime_) external virtual override whenPaused onlyOwner {
        lockTime = lockTime_;
        emit UpdateLockTime(_msgSender(), lockTime_);
    }

    /**
     * @notice Sets (or replaces) the image URI associated with a given tier.
     * @param  tierIndex_ Index in the {@link tiers} array to update.
     * @param  image_     New image URI (IPFS, HTTPS, or data-URI).
     *
     * Requirements:
     * - Caller **must** be the contract owner.
     *
     * Emits a {UpdateTierImage} event.
     */
    function setTierImage(uint256 tierIndex_, string calldata image_) external virtual override onlyOwner {
        tiers[tierIndex_].image = image_;
        emit UpdateTierImage(_msgSender(), tierIndex_, image_);
    }

    /**
     * @notice Creates a lock and mints a non-transferable NFT representing it.
     * @param  amount_ Amount of staking tokens to lock.
     * @return tokenId ID of the newly-minted NFT.
     *
     * @custom:requirements
     * - Caller must **not** already own a lock.
     * - Contract must be unpaused.
     * - `amount_` must have been pre-approved for transfer.
     *
     * @custom:effects
     * - Transfers ERC-20 from caller to contract.
     * - Updates `nextTokenId`, `nftData`, and tier.
     *
     * @custom:emit Emits `CreateLock`.
     * @custom:reverts CreateLockMinAmount If `amount_` is below the minimum.
     */
    function createLock(uint256 amount_) external virtual override whenNotPaused returns (uint256) {
        require(balanceOf(_msgSender()) == 0, LockAlreadyExist());

        _checkCreateLockAmount(amount_);

        IERC20(stakingToken).safeTransferFrom(_msgSender(), address(this), amount_);

        return _createLockUnsafe(_msgSender(), amount_, false);
    }

    /**
     * @notice Batch-creates or tops-up locks for multiple recipients without
     *         requiring allowances from each address.
     * @dev    The caller (owner) transfers the cumulative `totalAmount` once.
     *         Each row results in either a fresh NFT or an additional deposit
     *         into an existing position.
     * @param  rows_        Array of recipients and corresponding stake amounts.
     * @return totalAmount  Total ERC-20 tokens moved from the caller to
     *                       the contract.
     *
     * Requirements:
     * - Caller **must** be the contract owner.
     * - Contract **must** be unpaused.
     * - Every `rows_[i].recipient` MUST be non-zero.
     * - Every `rows_[i].amount`    MUST be non-zero.
     *
     * Effects:
     * - Transfers `totalAmount` of staking tokens from caller to contract.
     * - Mints or tops-up NFT positions for each row.
     *
     * Emits an {Airdrop} event.
     */
    function airdrop(AirdropRow[] calldata rows_) external virtual override onlyOwner returns (uint256 totalAmount) {
        uint256 length = rows_.length;
        for (uint256 i; i < length; ++i) {
            _checkAddress(rows_[i].recipient);
            uint256 amount = rows_[i].amount;
            _checkAmount(amount);
            totalAmount += amount;
        }

        _checkAmount(totalAmount);

        IERC20(stakingToken).safeTransferFrom(_msgSender(), address(this), totalAmount);

        for (uint256 i; i < length; ++i) {
            address recipient = rows_[i].recipient;
            uint256 amount = rows_[i].amount;

            if (balanceOf(recipient) == 0) {
                _checkCreateLockAmount(amount);
                _createLockUnsafe(recipient, amount, true);
            } else {
                _depositUnsafe(recipient, tokenOfOwnerByIndex(recipient, 0), amount, true);
            }
        }

        emit Airdrop(_msgSender(), rows_, totalAmount);
    }

    /**
     * @notice Increases an existing lock and refreshes its expiry.
     * @param tokenId_ NFT whose stake is increased.
     * @param amount_  Additional tokens to lock.
     *
     * @custom:requirements
     * - Caller must own `tokenId_`.
     * - Contract must be unpaused.
     *
     * @custom:emit Emits `Deposit`.
     */
    function deposit(uint256 tokenId_, uint256 amount_) external virtual override whenNotPaused onlyNftOwner(tokenId_) {
        _checkAmount(amount_);

        IERC20(stakingToken).safeTransferFrom(_msgSender(), address(this), amount_);

        _depositUnsafe(_msgSender(), tokenId_, amount_, false);
    }

    /**
     * @notice Burns the NFT and returns the staked tokens after expiry.
     * @param tokenId_ NFT to redeem.
     *
     * @custom:requirements
     * - Caller must own `tokenId_`.
     * - Lock **must** be expired.
     *
     * @custom:returns
     * - All ERC-20 tokens locked in `tokenId_` are transferred to the caller.
     *
     * @custom:emit Emits `Withdraw`.
     */
    function withdraw(uint256 tokenId_) external virtual override onlyNftOwner(tokenId_) {
        _requireExpired(tokenId_);

        uint256 amount = nftData[tokenId_].amount;

        _burn(tokenId_);

        delete nftData[tokenId_];

        totalStaked -= amount;

        IERC20(stakingToken).safeTransfer(_msgSender(), amount);

        emit Withdraw(_msgSender(), tokenId_, amount);
    }

    /**
     * @notice Convenience view that returns all key contract data in a single call.
     * @dev    Useful for front-ends to minimise JSON-RPC requests.
     * @param  user_ Address for which to fetch lock information.
     * @return collectionName     ERC-721 collection name.
     * @return collectionSymbol   ERC-721 symbol.
     * @return paused             Returns true if the contract is paused, and false otherwise.
     * @return stakingToken       ERC-20 token accepted for staking.
     * @return lockTime           Current uniform lock duration in seconds.
     * @return tiers              Full tier array (index 0 is the NONE tier).
     * @return userTokenId        NFT ID owned by `user_` (0 if none).
     * @return userNftdata        {NftData} struct describing the user’s position
     *                            (all zeroes if `userTokenId == 0`).
     */
    function getInfo(
        address user_
    )
        external
        view
        virtual
        override
        returns (string memory, string memory, bool, address, uint256, TierData[] memory, uint256, NftData memory)
    {
        NftData memory userNftData;
        uint256 userTokenId;
        if (balanceOf(user_) != 0) {
            userTokenId = tokenOfOwnerByIndex(user_, 0);
            userNftData = nftData[userTokenId];
        }
        return (super.name(), super.symbol(), super.paused(), stakingToken, lockTime, tiers, userTokenId, userNftData);
    }

    /**
     * @notice Returns the tier index and data that `amount_` would qualify for.
     * @param  amount_    Hypothetical staking amount.
     * @return tierIndex  Index into `tiers`.
     * @return tierData   Full {TierData} struct for that index.
     * @custom:reverts CreateLockMinAmount If `amount_` is below the minimum.
     */
    function getEstimateTierByAmount(
        uint256 amount_
    ) external view virtual override returns (uint256 tierIndex, TierData memory tierData) {
        _checkCreateLockAmount(amount_);
        uint256 index = _getActualTierIndex(amount_);
        return (index, tiers[index]);
    }

    /**
     * @notice Returns the entire tier table.
     * @dev    Intended mainly for off-chain consumption.
     */
    function getTiers() external view virtual override returns (TierData[] memory) {
        return tiers;
    }

    /**
     * @dev See {IERC7572-contractURI}.
     */
    function contractURI() external view override returns (string memory) {
        return ITierStakingTokenUriBuilder(tokenUriBuilder).buildERC7572();
    }

    /**
     * @dev See {IERC721Metadata-tokenURI}.
     */
    function tokenURI(uint256 tokenId_) public view virtual override returns (string memory) {
        _requireOwned(tokenId_);
        return ITierStakingTokenUriBuilder(tokenUriBuilder).build(tokenId_, ownerOf(tokenId_), nftData[tokenId_]);
    }

    /**
     * @notice Mints a new soul-bound NFT and records an initial locked stake.
     * @dev    “Unsafe” — caller MUST have:
     *         • transferred `amount_` of {stakingToken} to this contract
     *         • verified that `recipient_` is non-zero
     *         • ensured the contract is *not* paused and, unless `airdrop_`
     *           is true, that `recipient_` owns no other lock
     *         Side-effects: increments {nextTokenId}, updates {totalStaked},
     *         writes a fresh {NftData} entry, and emits {CreateLock}.
     * @param recipient_  Address that receives the newly-minted NFT.
     * @param amount_     Amount of tokens represented by the position.
     * @param airdrop_    True when invoked from {airdrop}; included in event
     *                    for analytics.
     * @return tokenId    Identifier of the freshly-minted NFT.
     *
     * Emits a {CreateLock} event.
     */
    function _createLockUnsafe(address recipient_, uint256 amount_, bool airdrop_) internal virtual returns (uint256) {
        uint256 newTokenId = nextTokenId++;

        _mint(recipient_, newTokenId);

        uint256 expireTimestamp = block.timestamp + lockTime;
        uint256 tierIndex = _getActualTierIndex(amount_);

        totalStaked += amount_;
        nftData[newTokenId] = NftData({
            tokenId: newTokenId,
            expireTimestamp: block.timestamp + lockTime,
            amount: amount_,
            tier: tierIndex
        });

        emit CreateLock(recipient_, newTokenId, tierIndex, amount_, expireTimestamp, airdrop_);

        return newTokenId;
    }

    /**
     * @notice Adds `amount_` to an existing lock and (optionally) refreshes its
     *         expiry and tier.
     * @dev    “Unsafe” — caller MUST have:
     *         • transferred `amount_` of {stakingToken} to this contract
     *         • verified that `tokenOwnerCache_` is the owner of `tokenId_`
     *         • ensured the contract is *not* paused
     *         When `airdrop_` is true, the original expiry timestamp is kept;
     *         otherwise it is reset to `block.timestamp + lockTime`. Updates
     *         {totalStaked}, position balance, expiry (conditional), tier
     *         (conditional), and emits {Deposit}.
     * @param tokenOwnerCache_  Cached owner address used in the {Deposit} event.
     * @param tokenId_          NFT whose staked balance is being increased.
     * @param amount_           Additional tokens to credit to the position.
     * @param airdrop_          True when called from {airdrop}; suppresses
     *                          expiry refresh.
     *
     * Emits a {Deposit} event.
     */
    function _depositUnsafe(
        address tokenOwnerCache_,
        uint256 tokenId_,
        uint256 amount_,
        bool airdrop_
    ) internal virtual {
        NftData memory oldData = nftData[tokenId_];

        uint256 newBalance = oldData.amount + amount_;

        uint256 expireTimestamp = airdrop_ ? oldData.expireTimestamp : block.timestamp + lockTime;

        uint256 tierIndex = _getActualTierIndex(newBalance);

        totalStaked += amount_;

        nftData[tokenId_].amount = newBalance;

        if (!airdrop_) {
            nftData[tokenId_].expireTimestamp = expireTimestamp;
        }

        if (oldData.tier != tierIndex) {
            nftData[tokenId_].tier = tierIndex;
        }

        emit Deposit(tokenOwnerCache_, tokenId_, tierIndex, amount_, expireTimestamp, airdrop_);
    }

    /**
     * @inheritdoc ERC721EnumerableUpgradeable
     * @dev Prevents transfers between arbitrary addresses, making the NFT
     *      effectively soul-bound (only mint and burn are allowed).
     */
    function _update(address to_, uint256 tokenId_, address auth_) internal virtual override returns (address) {
        address previousOwner = super._update(to_, tokenId_, auth_);
        require(previousOwner == address(0) || to_ == address(0), TransferDisabled());
        return previousOwner;
    }

    /**
     * @notice Finds the highest tier whose `requireAmount` ≤ `amount_`.
     * @dev    Iteration is performed top-down for gas efficiency when `amount_`
     *         is large (best case O(1)).
     * @param  amount_ Amount to evaluate.
     * @return Index of the qualifying tier.
     */
    function _getActualTierIndex(uint256 amount_) internal view virtual returns (uint256) {
        uint256 size = tiers.length;
        for (uint256 index = size; index > 0; --index) {
            if (amount_ >= tiers[index - 1].requireAmount) return index - 1;
        }
        return 0;
    }

    /**
     * @dev Checks that the lock for `tokenId_` has expired; otherwise reverts.
     * @param tokenId_ NFT to check.
     */
    function _requireExpired(uint256 tokenId_) internal view virtual {
        require(nftData[tokenId_].expireTimestamp <= block.timestamp, NftNotExpired());
    }

    /**
     * @dev Reverts {AddressZero} if `addr_` equals the zero address.
     */
    function _checkAddress(address addr_) internal pure virtual {
        require(addr_ != address(0), AddressZero());
    }

    /**
     * @dev Ensures that `amount_` meets the minimum staking requirement.
     * @param amount_ Amount of tokens to validate.
     * @custom:reverts CreateLockMinAmount If `amount_` is less than `tiers[0].requireAmount`.
     */
    function _checkCreateLockAmount(uint256 amount_) internal view virtual {
        require(amount_ >= tiers[0].requireAmount, CreateLockMinAmount());
    }

    /**
     * @dev Reverts {AmountZero} if `amount_` equals the zero.
     */
    function _checkAmount(uint256 amount_) internal pure virtual {
        require(amount_ != 0, AmountZero());
    }
}
