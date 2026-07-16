// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.26;

/// @title IGenesisExpedition Interface
/// @author luoyhang003
/// @notice Interface for the Genesis Expedition core game contract.
/// @dev
///  This interface defines:
///   - Core structs for player inventory and GoldenStone mechanics.
///   - Events emitted during forging, GoldenStone operations, lotteries, and admin updates.
///   - Functions for forging, distributing resources, querying state, and validating signatures.
interface IGenesisExpedition {
    /*//////////////////////////////////////////////////////////////////////////
                                    STRUCTS
    //////////////////////////////////////////////////////////////////////////*/

    /// @notice Represents both stored and system resources of a player.
    /// @dev
    ///  - rawStones: stored raw stones (not including daily system raw stones).
    ///  - goldenStones: number of GoldenStones owned (not yet activated).
    ///  - hammers: stored hammers (not including rewarded system hammers).
    struct PlayerInventory {
        uint256 rawStones;
        uint256 goldenStones;
        uint256 hammers;
    }

    /// @notice Represents the state of an activated GoldenStone.
    /// @dev
    ///  - deadline: expiration timestamp beyond which it can be auto-forged.
    ///  - isForged: marks whether the GoldenStone has been forged.
    ///  - participants: array of participant addresses (owner is always index 0).
    struct GoldenStone {
        uint256 deadline;
        bool isForged;
        address[] participants;
    }

    /*//////////////////////////////////////////////////////////////////////////
                                    EVENTS
    //////////////////////////////////////////////////////////////////////////*/

    /// @notice Emitted when a player successfully forges gems.
    /// @param player Address of the forging player.
    /// @param gems Amount of gems forged.
    event GemsForged(address indexed player, uint256 gems);

    /// @notice Emitted when a GoldenStone is activated by a player.
    /// @param owner GoldenStone owner.
    /// @param index Index of the GoldenStone.
    /// @param deadline Activation expiry timestamp.
    event GoldenStoneActivated(
        address indexed owner,
        uint256 index,
        uint256 deadline
    );

    /// @notice Emitted when a player taps (joins) someone's GoldenStone.
    /// @param owner Owner of the GoldenStone.
    /// @param player Player who tapped.
    /// @param index GoldenStone index.
    event GoldenStoneTapped(
        address indexed owner,
        address indexed player,
        uint256 index
    );

    /// @notice Emitted when a GoldenStone is successfully forged.
    /// @param owner Owner of the GoldenStone.
    /// @param index Index of the GoldenStone.
    /// @param participants Final participant count.
    event GoldenStoneForged(
        address indexed owner,
        uint256 index,
        uint256 participants
    );

    /// @notice Emitted once per forged raw stone for each player.
    /// @param player Address receiving the lottery ticket.
    /// @param code 4-byte lottery code generated via keccak256.
    event LotteryGenerated(address indexed player, bytes4 code);

    /// @notice Emitted when raw stones are distributed to a player.
    /// @param player Player receiving raw stones.
    /// @param amount Amount distributed.
    event RawStonesDistributed(address indexed player, uint256 amount);

    /// @notice Emitted when hammers are distributed to a player.
    /// @param player Player receiving hammers.
    /// @param amount Amount distributed.
    event HammersDistributed(address indexed player, uint256 amount);

    /// @notice Emitted when GoldenStones are distributed.
    /// @param player Player receiving GoldenStones.
    /// @param amount Amount distributed.
    event GoldenStonesDistributed(address indexed player, uint256 amount);

    /// @notice Emitted when daily hammer rewards are activated.
    /// @param player Player who activated daily hammer rewards.
    /// @param activatedAt UTC-day timestamp marking activation.
    event DailyHammerRewardsActivated(
        address indexed player,
        uint256 activatedAt
    );

    /// @notice Emitted when raw stones are forged.
    /// @param player Player performing forging.
    /// @param amount Raw stones forged.
    /// @param nonce Forge nonce.
    /// @param gems Total gems earned.
    event RawStonesForged(
        address indexed player,
        uint256 amount,
        uint256 nonce,
        uint256 gems
    );

    /// @notice Emitted when system daily raw stones are consumed.
    event RewardedRawStonesConsumed(address indexed player, uint256 amount);

    /// @notice Emitted when stored raw stones are consumed.
    event StoredRawStonesConsumed(address indexed player, uint256 amount);

    /// @notice Emitted when system daily hammers are consumed.
    event RewardedHammersConsumed(address indexed player, uint256 amount);

    /// @notice Emitted when stored hammers are consumed.
    event StoredHammersConsumed(address indexed player, uint256 amount);

    /// @notice Emitted when staking contract permissions change.
    /// @param staking Address of staking contract.
    /// @param flag True if enabled, false if disabled.
    event SetStakings(address indexed staking, bool flag);

    /// @notice Emitted when master forge signer is updated.
    /// @param oldSigner Previous signer.
    /// @param newSigner New signer.
    event SetMasterSigner(address indexed oldSigner, address indexed newSigner);

    /// @notice Emitted when GoldenStone config updates occur.
    event SetGoldenStoneConfigs(
        uint256 oldDuration,
        uint256 newDuration,
        uint256 oldMinParticipants,
        uint256 newMinParticipants,
        uint256 oldMaxParticipants,
        uint256 newMaxParticipants
    );

    /// @notice Emitted when GoldenStone reward settings change.
    event SetGoldenStoneReward(
        uint256 oldReward,
        uint256 newReward,
        uint256 oldBps,
        uint256 newBps
    );

    /// @notice Emitted when per-referral hammer reward is updated.
    event SetHammersPerReferral(uint256 oldVal, uint256 newVal);

    /*//////////////////////////////////////////////////////////////////////////
                                    FORGE RAW STONE
    //////////////////////////////////////////////////////////////////////////*/

    /// @notice Forges raw stones into gems using a valid EIP-712 signature.
    /// @dev Validates:
    ///  - player identity
    ///  - nonce uniqueness
    ///  - array length
    ///  - signature validity
    ///  - deadline
    /// Consumes hammers & raw stones, distributes gems, generates lottery codes.
    /// @param _player Address performing the forge.
    /// @param _nonce Unique nonce preventing replay.
    /// @param _amount Raw stones to forge.
    /// @param _gems Gem rewards for each stone.
    /// @param _deadline Signature expiration timestamp.
    /// @param _referrer Optional referrer who may receive bonus hammers.
    /// @param _signature EIP-712 signature from master signer.
    function forge(
        address _player,
        uint256 _nonce,
        uint256 _amount,
        uint256[] memory _gems,
        uint256 _deadline,
        address _referrer,
        bytes calldata _signature
    ) external;

    /*//////////////////////////////////////////////////////////////////////////
                                    PERMISSIONED FUNCTIONS
    //////////////////////////////////////////////////////////////////////////*/

    /// @notice Distributes raw stones to a player.
    /// @dev Only callable by whitelisted staking contracts.
    /// @param _player Player receiving raw stones.
    /// @param _amount Amount to distribute.
    function distributeRawStones(address _player, uint256 _amount) external;

    /// @notice Distributes hammers to a player.
    /// @dev Only callable by staking contracts.
    /// @param _player Player receiving hammers.
    /// @param _amount Amount to distribute.
    function distributeHammers(address _player, uint256 _amount) external;

    /// @notice Distributes GoldenStones to a player.
    /// @dev Only callable by staking contracts.
    /// @param _player Player receiving GoldenStones.
    /// @param _amount Amount to distribute.
    function distributeGoldenStones(address _player, uint256 _amount) external;

    /// @notice Activates daily hammer reward accumulation for a player.
    /// @dev Only callable by staking contracts.
    /// @param _player Player whose daily rewards are activated.
    function activateDailyHammerRewards(address _player) external;

    /*//////////////////////////////////////////////////////////////////////////
                                    VIEW FUNCTIONS
    //////////////////////////////////////////////////////////////////////////*/

    /// @notice Returns the player's stored (non-system) inventory.
    /// @param _player Player address.
    /// @return inventory_ PlayerInventory struct.
    function getPlayerInventory(
        address _player
    ) external view returns (PlayerInventory memory inventory_);

    /// @notice Returns daily system resources available to the player.
    /// @dev Includes only fresh (non-stored) daily rewards.
    /// @param _player Player address.
    /// @return inventory_ System resources for today.
    function getSystemResources(
        address _player
    ) external view returns (PlayerInventory memory inventory_);

    /// @notice Returns total resources a player has (stored + daily system).
    /// @param _player Player address.
    /// @return inventory_ Aggregated inventory.
    function getTotalResources(
        address _player
    ) external view returns (PlayerInventory memory inventory_);

    /// @notice Returns number of activated GoldenStones owned by player.
    /// @param _player Player address.
    /// @return amount_ Activation count.
    function getActivatedGoldenStoneAmount(
        address _player
    ) external view returns (uint256 amount_);

    /// @notice Returns all activated GoldenStones for a player.
    /// @param _player Player address.
    /// @return goldenStones_ Array of GoldenStone structs.
    function getActivatedGoldenStones(
        address _player
    ) external view returns (GoldenStone[] memory goldenStones_);

    /// @notice Returns paginated GoldenStones for a player.
    /// @param _player Player address.
    /// @param _start Start index.
    /// @param _limit Number of entries.
    /// @return goldenStones_ Array of GoldenStone structs.
    function getActivatedGoldenStones(
        address _player,
        uint256 _start,
        uint256 _limit
    ) external view returns (GoldenStone[] memory goldenStones_);

    /// @notice Returns a single GoldenStone at index.
    /// @param _player Player address.
    /// @param _index GoldenStone index.
    /// @return goldenStone_ GoldenStone struct.
    function getActivatedGoldenStone(
        address _player,
        uint256 _index
    ) external view returns (GoldenStone memory goldenStone_);

    /// @notice Returns number of hammers rewarded per referral.
    /// @return hammers Number of hammers per referral.
    function getHammersPerReferral() external view returns (uint256);

    /// @notice Checks whether forge nonce is still unused.
    /// @param _player Player address.
    /// @param _nonce Nonce to query.
    /// @return valid_ True if nonce is unconsumed.
    function checkNonce(
        address _player,
        uint256 _nonce
    ) external view returns (bool valid_);

    /// @notice Returns today's forged gems for player & total forged gems globally.
    /// @param _player Player address.
    /// @return forged_ Player's forged gems today.
    /// @return total_ Total forged gems today.
    function getForgedGems(
        address _player
    ) external view returns (uint256 forged_, uint256 total_);

    /// @notice Returns forged gems for a given UTC day.
    /// @param _player Player address.
    /// @param _day Any timestamp within the desired day.
    /// @return forged_ Player's forged gems that day.
    /// @return total_ Total forged gems globally that day.
    function getForgedGems(
        address _player,
        uint256 _day
    ) external view returns (uint256 forged_, uint256 total_);

    /// @notice Verifies whether a signature is a valid forge EIP-712 signature.
    /// @param _player Player address.
    /// @param _nonce Nonce in signature.
    /// @param _amount Raw stones amount.
    /// @param _gems Gem array.
    /// @param _deadline Signature expiration.
    /// @param _signature Provided signature.
    /// @return valid_ True if signature is valid and from master signer.
    function verifyForgeSignature(
        address _player,
        uint256 _nonce,
        uint256 _amount,
        uint256[] memory _gems,
        uint256 _deadline,
        bytes calldata _signature
    ) external view returns (bool valid_);

    /// @notice Returns EIP-712 digest for Forge message (for off-chain debugging).
    /// @param _player Player address.
    /// @param _nonce Nonce.
    /// @param _amount Raw stone amount.
    /// @param _gems Gems array.
    /// @param _deadline Deadline.
    /// @return digest_ EIP-712 digest.
    function getForgeDigest(
        address _player,
        uint256 _nonce,
        uint256 _amount,
        uint256[] memory _gems,
        uint256 _deadline
    ) external view returns (bytes32 digest_);
}
