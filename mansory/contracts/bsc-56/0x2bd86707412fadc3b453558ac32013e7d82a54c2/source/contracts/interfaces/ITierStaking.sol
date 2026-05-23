// SPDX-License-Identifier: MIT
pragma solidity >0.8.20;

/**
 * @title  ITierStaking
 * @notice Interface for an upgrade-safe “tiered staking” system where users
 *         lock an ERC-20 token to receive a non-transferable ERC-721 that
 *         tracks their stake, expiry and tier.
 * @dev    Implemented by {NftTierStakingUpgradeable}.  Designed for use behind
 *         an OpenZeppelin TransparentUpgradeableProxy.
 */
interface ITierStaking {
    /**
     * @notice Describes a single tier in the tier table.
     * @param  name           Human-readable tier name (e.g. “Silver”).
     * @param  requireAmount  Minimum total stake (inclusive) required to reach
     *                        this tier, denominated in staking token units.
     * @param  description    Human-readable tier description (e.g. "The ...").
     */
    struct TierData {
        string name;
        uint256 requireAmount;
        string image;
        string description;
    }

    /**
     * @notice Snapshot of a staking position bound to an NFT.
     * @param  tokenId          ERC-721 identifier of the position.
     * @param  amount           Total tokens currently locked.
     * @param  expireTimestamp  Unix time (seconds) when withdrawal is allowed.
     * @param  tier             Current tier index within the global tier table.
     */
    struct NftData {
        uint256 tokenId;
        uint256 amount;
        uint256 expireTimestamp;
        uint256 tier;
    }

    /**
     * @notice Single instruction processed inside an {airdrop} call.
     * @param  recipient  Address that will receive the NFT or top-up.
     * @param  amount     Amount of tokens to lock for `recipient`.
     */

    struct AirdropRow {
        address recipient;
        uint256 amount;
    }

    /**
     * @notice Emitted when the admin sets or replaces the helper contract that
     *         builds metadata URIs for NFTs.
     * @param  caller           Address that executed {setTokenUriBuilder}.
     * @param  tokenUriBuilder  New helper contract address.
     */
    event UpdateTokenUriBuilder(address indexed caller, address indexed tokenUriBuilder);

    /**
     * @notice Emitted when the admin changes the global lock duration.
     * @param  caller    Address that executed {setLockTime}.
     * @param  lockTime  New lock duration in seconds.
     */
    event UpdateLockTime(address indexed caller, uint256 lockTime);

    /**
     * @notice Emitted when the admin replaces the entire tier table.
     * @param  caller  Address that executed the tier update.
     * @param  tiers   Full, ordered array of the new tiers.
     */
    event UpdateTiers(address indexed caller, TierData[] tiers);

    /**
     * @notice Emitted when the admin sets or replaces a tier’s image URI.
     * @param  caller     Address that executed {setTierImage}.
     * @param  tierIndex  Index of the tier being modified.
     * @param  image      New image URI.
     */
    event UpdateTierImage(address indexed caller, uint256 indexed tierIndex, string image);

    /**
     * @notice Emitted when a new lock is created and an NFT is minted.
     * @param  user             Owner of the newly-minted NFT.
     * @param  tokenId          Identifier of the NFT.
     * @param  tier             Tier index assigned to the position.
     * @param  amount           Amount of tokens locked.
     * @param  expireTimestamp  Timestamp when the lock will expire.
     * @param  airdrop          True if the lock was created via {airdrop}.
     */
    event CreateLock(
        address indexed user,
        uint256 indexed tokenId,
        uint256 indexed tier,
        uint256 amount,
        uint256 expireTimestamp,
        bool airdrop
    );

    /**
     * @notice Emitted when additional tokens are deposited into a lock.
     * @param  user             Owner of the NFT.
     * @param  tokenId          Identifier of the NFT.
     * @param  tier             New tier index after the deposit.
     * @param  amount           Amount of tokens added.
     * @param  expireTimestamp  New expiry timestamp (reset to now + lockTime).
     * @param  airdrop          True if the deposit was triggered by {airdrop}.
     */
    event Deposit(
        address indexed user,
        uint256 indexed tokenId,
        uint256 indexed tier,
        uint256 amount,
        uint256 expireTimestamp,
        bool airdrop
    );

    /**
     * @notice Emitted when a position is withdrawn and the NFT is burned.
     * @param  user     Previous owner of the NFT.
     * @param  tokenId  Identifier of the burned NFT.
     * @param  amount   Amount of tokens returned to the user.
     */
    event Withdraw(address indexed user, uint256 indexed tokenId, uint256 amount);

    /**
     * @notice Emitted after a successful {airdrop} execution.
     * @param  caller       Address that executed the airdrop.
     * @param  rows         Exact copy of the input rows that were processed.
     * @param  totalAmount  Aggregate amount of tokens transferred.
     */
    event Airdrop(address indexed caller, AirdropRow[] rows, uint256 totalAmount);

    /**
     * @notice Proxy initialiser (replaces constructor).
     * @param  nftName_       ERC-721 collection name.
     * @param  nftSymbol_     ERC-721 symbol.
     * @param  stakingToken_  ERC-20 token accepted for staking.
     * @param  tiers_         Strictly ascending array of tier definitions.
     */
    function initialize(
        string memory nftName_,
        string memory nftSymbol_,
        address stakingToken_,
        TierData[] calldata tiers_
    ) external;

    /**
     * @notice Pauses all state-changing operations in the implementation.
     */
    function pause() external;

    /**
     * @notice Unpauses the contract, re-enabling deposits and withdrawals.
     */
    function unpause() external;

    /**
     * @notice Sets a new global lock duration.
     * @param  lockTime_ Lock period in seconds.
     */
    function setLockTime(uint256 lockTime_) external;

    function setTokenUriBuilder(address tokenUriBuilder_) external;

    /**
     * @notice Sets (or replaces) the image URI associated with a given tier.
     * @param  tierIndex_ Index in the {@link tiers} array to update.
     * @param  image_     New image URI (IPFS, HTTPS, or data-URI).
     */
    function setTierImage(uint256 tierIndex_, string calldata image_) external;

    /**
     * @notice Creates a lock and mints the position NFT.
     * @param  amount_  Amount of tokens to lock.
     * @return tokenId  Identifier of the newly-minted NFT.
     */
    function createLock(uint256 amount_) external returns (uint256 tokenId);

    /**
     * @notice Adds more tokens to an existing lock and resets its expiry.
     * @param tokenId_ NFT to top-up.
     * @param amount_  Additional amount to lock.
     */
    function deposit(uint256 tokenId_, uint256 amount_) external;

    /**
     * @notice Batch-creates or tops-up locks for multiple recipients without
     *         requiring allowances from each address.
     * @dev    The caller (owner) transfers the cumulative `totalAmount` once.
     *         Each row results in either a fresh NFT or an additional deposit
     *         into an existing position.
     * @param  rows_        Array of recipients and corresponding stake amounts.
     * @return totalAmount  Total ERC-20 tokens moved from the caller to
     *                       the contract.
     */
    function airdrop(AirdropRow[] calldata rows_) external returns (uint256 totalAmount);

    /**
     * @notice Burns the NFT and withdraws the staked tokens after expiry.
     * @param tokenId_ NFT to redeem.
     */
    function withdraw(uint256 tokenId_) external;

    /**
     * @notice Returns the staking token address.
     * @return token Address of the ERC-20 token accepted for staking.
     */
    function stakingToken() external view returns (address token);

    /**
     * @notice Returns the current lock duration.
     * @return duration Lock period in seconds.
     */
    function lockTime() external view returns (uint256 duration);

    /**
     * @notice Returns the ID that will be assigned to the next minted NFT.
     * @return id Next NFT identifier.
     */
    function nextTokenId() external view returns (uint256 id);

    /**
     * @notice Returns the aggregate amount of ERC-20 tokens currently locked in
     *         all staking positions.
     * @return amount  Current total staked balance.
     */
    function totalStaked() external view returns (uint256);

    /**
     * @notice Returns the address of the external helper contract that builds
     *         NFT metadata URIs.
     * @return builder  Contract address, or zero if the default {tokenURI}
     *                  implementation is in use.
     */
    function tokenUriBuilder() external view returns (address);

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
        returns (string memory, string memory, bool, address, uint256, TierData[] memory, uint256, NftData memory);

    /**
     * @notice Returns data for `tiers[index_]`.
     * @param  index_          Index into the tier table.
     * @return name            Tier name.
     * @return requireAmount   Minimum stake required.
     * @return image           Image URI associated with the tier.
     */
    function tiers(
        uint256 index_
    ) external view returns (string memory name, uint256 requireAmount, string memory image, string memory description);

    /**
     * @notice Returns on-chain metadata for `tokenId_`.
     * @param  tokenId_ NFT identifier.
     * @return tokenId          Same as input.
     * @return amount           Tokens locked.
     * @return expireTimestamp  Expiry timestamp.
     * @return tier             Current tier index.
     */
    function nftData(
        uint256 tokenId_
    ) external view returns (uint256 tokenId, uint256 amount, uint256 expireTimestamp, uint256 tier);

    /**
     * @notice Returns the entire tier table.
     * @return allTiers Array containing every defined tier.
     */
    function getTiers() external view returns (TierData[] memory);

    /**
     * @notice Estimates which tier an arbitrary `amount_` would achieve.
     * @param  amount_    Hypothetical stake amount.
     * @return tierIndex  Index of the qualifying tier.
     * @return tierData   Full {TierData} struct for that tier.
     */
    function getEstimateTierByAmount(
        uint256 amount_
    ) external view returns (uint256 tierIndex, TierData memory tierData);
}
