// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.26;

import {
    Ownable2Step,
    Ownable
} from "@openzeppelin/contracts/access/Ownable2Step.sol";

import {EIP712} from "@openzeppelin/contracts/utils/cryptography/EIP712.sol";
import {ECDSA} from "@openzeppelin/contracts/utils/cryptography/ECDSA.sol";

import {IGenesisExpedition} from "./interfaces/IGenesisExpedition.sol";
import {IReferralRegistry} from "./interfaces/IReferralRegistry.sol";

import {Errors} from "./libraries/Errors.sol";

/// @title GenesisExpedition
/// @author luoyhang003
/// @notice Core game logic contract for the Genesis Expedition event.
/// @dev
///  - Manages player inventories (raw stones, hammers, golden stones).
///  - Handles forging of raw stones into gems via EIP-712 server signatures.
///  - Manages GoldenStone activation, tapping, and group forging mechanics.
///  - Tracks daily system rewards (daily raw stones & daily hammers).
///  - Aggregates gem forging statistics for daily STO reward sharing.
///  - Only registered staking contracts can distribute base resources.
contract GenesisExpedition is IGenesisExpedition, EIP712, Ownable2Step {
    using ECDSA for bytes32;

    /*//////////////////////////////////////////////////////////////////////////
                                    STATE VARIABLES
    //////////////////////////////////////////////////////////////////////////*/

    /// @notice EIP-712 typehash used for forging typed data messages.
    /// @dev
    ///  keccak256("Forge(address player,uint256 nonce,uint256 amount,bytes32 gemsHash,uint256 deadline)")
    ///  This defines the struct used in server-side signing for forge operations.
    bytes32 public constant FORGE_TYPEHASH =
        keccak256(
            "Forge(address player,uint256 nonce,uint256 amount,bytes32 gemsHash,uint256 deadline)"
        );

    /// @notice Denominator used for basis points (BPS) math.
    /// @dev
    ///  - 100 == 1x (100%)
    ///  - e.g. slopeBps = 5 means 5% of baseReward.
    uint256 internal constant BPS_DENOMINATOR = 100;

    /// @notice Duration of the Genesis Expedition event.
    /// @dev Used together with START_TIME to derive END_TIME.
    uint256 public constant DURATION = 70 days;

    /// @notice Daily rewarded hammer count (system-level, per eligible user).
    /// @dev
    ///  - Given once per UTC day after daily hammer rewards are activated.
    ///  - These are stored virtually and consumed during golden stone actions / forging.
    uint256 public constant DAILY_REWARDED_HAMMERS = 2;

    /// @notice Daily rewarded raw stones (system-level, per user).
    /// @dev
    ///  - 3 system raw stones are granted virtually per day.
    ///  - They expire daily if not used (tracked via consumedRawStones).
    uint256 public constant DAILY_REWARDED_RAW_STONES = 3;

    /// @notice Address of the ReferralRegistry contract.
    /// @dev Used in off-chain indexing / integrity checks; not called directly here.
    address public immutable REFERRAL_REGISTRY_ADDR;

    /// @notice Event start timestamp (UTC-0 aligned).
    /// @dev All time-based logic (daily rewards, availability, etc.) depends on this.
    uint256 public immutable START_TIME;

    /// @notice Event end timestamp.
    /// @dev After this time, the event is considered inactive for time-gated actions.
    uint256 public immutable END_TIME;

    /// @notice Number of hammers rewarded per valid referral.
    /// @dev Used by staking contracts to reward referrers via this core contract.
    uint256 public hammersPerReferral = 2;

    /// @notice Duration for which a GoldenStone remains active after activation.
    /// @dev
    ///  - Used for both manual forging and auto-forging conditions.
    ///  - Measured in seconds; default is 3 days.
    uint256 public goldenStoneActiveDuration = 3 days;

    /// @notice Minimum number of participants required to successfully forge a GoldenStone.
    /// @dev Must be >= 3 by design.
    uint256 public goldenStoneMinParticipants = 3;

    /// @notice Maximum number of participants allowed for a single GoldenStone.
    /// @dev Upper cap for fairness & gas constraints (default 10).
    uint256 public goldenStoneMaxParticipants = 10;

    /// @notice Base gem reward per participant when forging a GoldenStone.
    /// @dev
    ///  - Actual reward scales with participant count via `rewardLinearSlopeBps`.
    ///  - Final reward per participant = baseReward + baseReward * slopeBps * N / BPS_DENOMINATOR.
    uint256 public goldenStoneBaseReward = 1000;

    /// @notice Linear slope (in BPS) used to scale GoldenStone rewards with participants.
    /// @dev
    ///  - Example: slopeBps = 5 -> +5% per extra participant (relative to baseReward).
    uint256 public rewardLinearSlopeBps = 5;

    /// @notice Address of the master signer used for EIP-712 forge signatures.
    /// @dev
    ///  - Private key is used off-chain to sign forge messages.
    ///  - This address is used on-chain for signature verification.
    address public masterSigner;

    /// @notice Player inventory of stored resources (non-system, non-expiring).
    /// @dev Tracks raw stones, hammers, and golden stones that belong to players.
    mapping(address => PlayerInventory) private inventories;

    /// @notice Tracks how many system raw stones a user has consumed on a given day.
    /// @dev
    ///  - Keyed by user and floored UTC day timestamp.
    ///  - Used to compute "available" daily system raw stones = DAILY_REWARDED_RAW_STONES - consumed.
    mapping(address => mapping(uint256 => uint256)) private consumedRawStones;

    /// @notice Tracks total system hammers consumed by a user (across days).
    /// @dev
    ///  - System rewarded hammers are computed from activation day and consumed count.
    ///  - This value is not keyed by day, only total count.
    mapping(address => uint256) private consumedRewardedHammers;

    /// @notice Registry of staking contracts allowed to call distributing functions.
    /// @dev Only staking contracts can mint raw stones/hammers/golden stones.
    mapping(address => bool) private stakings;

    /// @notice Activated GoldenStone instances per player and index.
    /// @dev
    ///  - Each entry contains deadline, forged flag, and participant addresses.
    ///  - Indexed by player & `activatedGoldenStoneAmount[player]`.
    mapping(address => mapping(uint256 => GoldenStone))
        private activatedGoldenStones;

    /// @notice Count of GoldenStones a player has activated.
    /// @dev Also used as upper bound for indexing into `activatedGoldenStones`.
    mapping(address => uint256) private activatedGoldenStoneAmount;

    /// @notice Day on which a user first activated daily hammer rewards (UTC-floor).
    /// @dev
    ///  - Zero means user has not activated daily hammer rewards.
    ///  - After activation, user accrues DAILY_REWARDED_HAMMERS per full day.
    mapping(address => uint256) private dailyHammerRewardsActivatedAt;

    /// @notice Tracks whether a forge nonce has been consumed for a given player.
    /// @dev Used to prevent replay of EIP-712 signed forge messages.
    mapping(address => mapping(uint256 => bool)) private isNonceConsumed;

    /// @notice Per-player gems forged on a given UTC day.
    /// @dev Used for-share-of-daily rewards / analytics.
    mapping(address => mapping(uint256 => uint256)) private forgedGems;

    /// @notice Total gems forged by all players on a given day.
    /// @dev Combined with `forgedGems` to compute proportional STO rewards.
    mapping(uint256 => uint256) private totalForgedGems;

    /// @notice Internal nonce used in lottery code generation.
    /// @dev Incremented per-code to perturb randomness inputs.
    uint256 private internalLotteryNonce;

    /*//////////////////////////////////////////////////////////////////////////
                                    MODIFIERS
    //////////////////////////////////////////////////////////////////////////*/

    /// @notice Restricts function to authorized staking contracts only.
    /// @dev Reverts with NotStakingContract if caller is not whitelisted.
    modifier onlyStakings() {
        _onlyStakings();
        _;
    }

    /// @notice Restricts function to when the event is active.
    /// @dev Reverts if `block.timestamp` is outside [START_TIME, END_TIME].
    modifier onlyEventActive() {
        _onlyEventActive();
        _;
    }

    /*//////////////////////////////////////////////////////////////////////////
                                    CONSTRUCTOR
    //////////////////////////////////////////////////////////////////////////*/

    /// @notice Initializes the Genesis Expedition core contract.
    /// @dev
    ///  - `_startTime` must be in the future and aligned to UTC-0 (mod 1 days == 0).
    ///  - EIP-712 domain is configured with name "GenesisExpedition" and version "1".
    /// @param _referralRegistryAddr Address of the ReferralRegistry contract.
    /// @param _masterSigner Address of the EIP-712 master signer (with off-chain private key).
    /// @param _startTime UTC-0 aligned start timestamp of the event.
    constructor(
        address _referralRegistryAddr,
        address _masterSigner,
        uint256 _startTime
    ) EIP712("GenesisExpedition", "1") Ownable(msg.sender) {
        if (_referralRegistryAddr == address(0) || _masterSigner == address(0))
            revert Errors.ZeroAddress();

        if (_startTime % 1 days != 0 || block.timestamp >= _startTime)
            revert Errors.InvalidStartTime();

        START_TIME = _startTime;
        END_TIME = _startTime + DURATION;

        REFERRAL_REGISTRY_ADDR = _referralRegistryAddr;

        masterSigner = _masterSigner;
    }

    /*//////////////////////////////////////////////////////////////////////////
                                    VIEW FUNCTIONS
    //////////////////////////////////////////////////////////////////////////*/

    /// @notice Returns the player's stored inventory (non-system resources only).
    /// @dev
    ///  - Before event start, always returns zero-initialized inventory.
    ///  - This does not include daily system raw stones or system hammers.
    /// @param _player The address of the player.
    /// @return inventory_ The player's stored inventory (rawStones, hammers, goldenStones).
    function getPlayerInventory(
        address _player
    ) public view returns (PlayerInventory memory inventory_) {
        if (block.timestamp < START_TIME) return inventory_;

        PlayerInventory memory inventory = inventories[_player];

        inventory_.rawStones = inventory.rawStones;
        inventory_.hammers = inventory.hammers;
        inventory_.goldenStones = inventory.goldenStones;
    }

    /// @notice Returns system-level resources available to a player (daily rewards).
    /// @dev
    ///  - Daily raw stones: 3 per day minus consumed.
    ///  - Daily hammers: accrues since activation and minus consumed.
    ///  - GoldenStones are not system-level here (always 0 in this struct).
    /// @param _player The address of the player.
    /// @return inventory_ Inventory representing system resources available today.
    function getSystemResources(
        address _player
    ) public view returns (PlayerInventory memory inventory_) {
        uint256 today = _floorToDay(block.timestamp);
        if (today < START_TIME) return inventory_;

        uint256 rawStonesConsumed = consumedRawStones[_player][today];
        inventory_.rawStones = DAILY_REWARDED_RAW_STONES > rawStonesConsumed
            ? DAILY_REWARDED_RAW_STONES - rawStonesConsumed
            : 0;

        uint256 activatedAt = dailyHammerRewardsActivatedAt[_player];
        if (activatedAt != 0) {
            uint256 rewardedHammersConsumed = consumedRewardedHammers[_player];

            /// forge-lint: disable-next-item(divide-before-multiply)
            uint256 allRewardedHammers = ((today - activatedAt) / 1 days) *
                DAILY_REWARDED_HAMMERS;

            inventory_.hammers = allRewardedHammers > rewardedHammersConsumed
                ? allRewardedHammers - rewardedHammersConsumed
                : 0;
        }

        // inventory_.goldenStones is left as 0 (system does not grant daily golden stones).
    }

    /// @notice Returns total resources (stored + system) for a player.
    /// @dev
    ///  - Aggregates getPlayerInventory and getSystemResources.
    ///  - Before event start, returns empty inventory.
    /// @param _player The address of the player.
    /// @return inventory_ Aggregated inventory (stored + system resources).
    function getTotalResources(
        address _player
    ) external view returns (PlayerInventory memory inventory_) {
        if (block.timestamp < START_TIME) return inventory_;

        PlayerInventory memory playerInventory = getPlayerInventory(_player);
        PlayerInventory memory systemResources = getSystemResources(_player);

        inventory_.rawStones =
            playerInventory.rawStones +
            systemResources.rawStones;
        inventory_.goldenStones =
            playerInventory.goldenStones +
            systemResources.goldenStones;
        inventory_.hammers = playerInventory.hammers + systemResources.hammers;
    }

    /// @notice Returns how many golden stones a player has activated.
    /// @dev This describes the length of the player's activatedGoldenStones list.
    /// @param _player The address of the player.
    /// @return amount_ The number of activated golden stones.
    function getActivatedGoldenStoneAmount(
        address _player
    ) external view returns (uint256 amount_) {
        amount_ = activatedGoldenStoneAmount[_player];
    }

    /// @notice Returns all activated golden stones for a player.
    /// @dev
    ///  - Iterates from 0 up to activatedGoldenStoneAmount.
    /// @param _player The address of the player.
    /// @return goldenStones_ Array of GoldenStone structures.
    function getActivatedGoldenStones(
        address _player
    ) external view returns (GoldenStone[] memory goldenStones_) {
        uint256 length = activatedGoldenStoneAmount[_player];
        goldenStones_ = new GoldenStone[](length);

        uint256 i;
        for (i; i < length; i++) {
            GoldenStone memory goldenStone = activatedGoldenStones[_player][i];
            goldenStones_[i] = goldenStone;
        }

        assembly {
            mstore(goldenStones_, i)
        }
    }

    /// @notice Returns a paginated slice of activated golden stones for a player.
    /// @param _player The address of the player.
    /// @param _start The starting index (inclusive).
    /// @param _limit The number of entries to fetch.
    /// @return goldenStones_ Array of GoldenStone structures of size `_limit`.
    function getActivatedGoldenStones(
        address _player,
        uint256 _start,
        uint256 _limit
    ) external view returns (GoldenStone[] memory goldenStones_) {
        if (_limit == 0) revert Errors.InvalidArrayLength();

        uint256 activatedAmount = activatedGoldenStoneAmount[_player];
        if (_start >= activatedAmount) revert Errors.IndexOutOfBounds();

        goldenStones_ = new GoldenStone[](_limit);
        uint256 i;
        for (i; i < _limit; i++) {
            uint256 index = i + _start;
            if (index >= activatedAmount) break;
            GoldenStone memory goldenStone = activatedGoldenStones[_player][
                index
            ];

            goldenStones_[i] = goldenStone;
        }

        assembly {
            mstore(goldenStones_, i)
        }
    }

    /// @notice Returns a single activated golden stone for a player by index.
    /// @dev Reverts if `_index` is out of range.
    /// @param _player The address of the player.
    /// @param _index Index of the activated golden stone.
    /// @return goldenStone_ The GoldenStone data at the given index.
    function getActivatedGoldenStone(
        address _player,
        uint256 _index
    ) external view returns (GoldenStone memory goldenStone_) {
        if (_index >= activatedGoldenStoneAmount[_player])
            revert Errors.IndexOutOfBounds();

        goldenStone_ = activatedGoldenStones[_player][_index];
    }

    /// @notice Returns the current configured hammers reward per referral.
    /// @dev Used by staking contracts to query the up-to-date per-referral reward.
    /// @return The number of hammers rewarded per valid referral.
    function getHammersPerReferral() external view returns (uint256) {
        return hammersPerReferral;
    }

    /// @notice Checks whether a given forge nonce is still valid for a player.
    /// @dev Returns false if the nonce has already been consumed.
    /// @param _player The address of the player.
    /// @param _nonce The nonce to check.
    /// @return valid_ True if nonce has not yet been consumed.
    function checkNonce(
        address _player,
        uint256 _nonce
    ) external view returns (bool valid_) {
        valid_ = !_isNonceConsumed(_player, _nonce);
    }

    /// @notice Returns the gems forged by a player today versus total forged today.
    /// @dev Uses current UTC day derived from `block.timestamp`.
    /// @param _player The address of the player.
    /// @return forged_ Gems forged today by the player.
    /// @return total_ Total gems forged today by all players.
    function getForgedGems(
        address _player
    ) external view returns (uint256 forged_, uint256 total_) {
        uint256 today = _floorToDay(block.timestamp);

        forged_ = forgedGems[_player][today];
        total_ = totalForgedGems[today];
    }

    /// @notice Returns the gems forged by a player on a specific day.
    /// @dev
    ///  - `_day` can be any timestamp; it is floored to UTC day.
    /// @param _player The address of the player.
    /// @param _day Any timestamp in the desired day (UTC).
    /// @return forged_ Gems forged by the player on that day.
    /// @return total_ Total gems forged by all players on that day.
    function getForgedGems(
        address _player,
        uint256 _day
    ) external view returns (uint256 forged_, uint256 total_) {
        uint256 day = _floorToDay(_day);

        forged_ = forgedGems[_player][day];
        total_ = totalForgedGems[day];
    }

    /// @notice Verifies an off-chain EIP-712 forge signature.
    /// @dev
    ///  - Does not mutate state.
    ///  - Returns true if signature is valid and signer == masterSigner.
    /// @param _player Player address in the signed struct.
    /// @param _nonce Unique nonce for replay protection.
    /// @param _amount Number of raw stones to forge.
    /// @param _gems Array of gem rewards per raw stone.
    /// @param _deadline Signature expiry timestamp.
    /// @param _signature Off-chain EIP-712 signature.
    /// @return valid_ True if signature is valid and from masterSigner.
    function verifyForgeSignature(
        address _player,
        uint256 _nonce,
        uint256 _amount,
        uint256[] memory _gems,
        uint256 _deadline,
        bytes calldata _signature
    ) external view returns (bool valid_) {
        return
            _verifyForgeSignature(
                _player,
                _nonce,
                _amount,
                _gems,
                _deadline,
                _signature
            );
    }

    /// @notice Computes the EIP-712 digest for a forge operation.
    /// @dev
    ///  - Helpful for debugging and off-chain tooling verification.
    /// @param _player Player address in the struct.
    /// @param _nonce Unique nonce.
    /// @param _amount Number of raw stones to forge.
    /// @param _gems Array of gem amounts.
    /// @param _deadline Signature expiry timestamp.
    /// @return digest_ The EIP-712 message digest used for signing.
    function getForgeDigest(
        address _player,
        uint256 _nonce,
        uint256 _amount,
        uint256[] memory _gems,
        uint256 _deadline
    ) external view returns (bytes32 digest_) {
        digest_ = _hashTypedDataV4(
            _hashForForge(
                FORGE_TYPEHASH,
                _player,
                _nonce,
                _amount,
                _gems,
                _deadline
            )
        );
    }

    /*//////////////////////////////////////////////////////////////////////////
                                    FORGE FUNCTIONS
    //////////////////////////////////////////////////////////////////////////*/

    /// @notice Forges raw stones into gems using a server-side signature.
    /// @dev
    ///  Flow:
    ///  - Validates caller is the player.
    ///  - Validates array length and non-zero amount.
    ///  - Checks deadline, nonce, and EIP-712 signature.
    ///  - Marks nonce consumed.
    ///  - Consumes required resources (raw stones + hammers; system then stored).
    ///  - Emits gem rewards and generates lottery codes.
    /// @param _player Address of the player (must equal msg.sender).
    /// @param _nonce Unique nonce provided in signed data.
    /// @param _amount Number of raw stones to forge (length of `_gems`).
    /// @param _gems Gem rewards array for each forged raw stone.
    /// @param _deadline UNIX timestamp after which signature is invalid.
    /// @param _referrer Optional referrer who may receive bonus hammers.
    /// @param _signature Off-chain EIP-712 signature from masterSigner.
    function forge(
        address _player,
        uint256 _nonce,
        uint256 _amount,
        uint256[] memory _gems,
        uint256 _deadline,
        address _referrer,
        bytes calldata _signature
    ) external onlyEventActive {
        if (_player != msg.sender) revert Errors.NotRawStoneOwner();
        if (_gems.length != _amount || _amount == 0)
            revert Errors.InvalidArrayLength();
        if (block.timestamp > _deadline) revert Errors.SignatureExpired();
        if (
            !_verifyForgeSignature(
                _player,
                _nonce,
                _amount,
                _gems,
                _deadline,
                _signature
            )
        ) revert Errors.InvalidSignature();

        isNonceConsumed[_player][_nonce] = true;

        _consumeResources(_player, _amount);

        uint256 gemsForged = _distributeGems(_player, _gems);
        _generateLotteryCodes(_player, _amount);

        if (_bindReferral(_player, _referrer)) {
            PlayerInventory storage inventory = inventories[_referrer];
            inventory.hammers += hammersPerReferral;

            emit HammersDistributed(_referrer, hammersPerReferral);
        }

        emit RawStonesForged(_player, _amount, _nonce, gemsForged);
    }

    /*//////////////////////////////////////////////////////////////////////////
                                    GOLDEN STONE OPERATIONS
    //////////////////////////////////////////////////////////////////////////*/

    /// @notice Activates one GoldenStone for the caller so others can join and forge together.
    /// @dev
    ///  - Requires caller to have more golden stones than already activated.
    ///  - Creates a GoldenStone record with `deadline = now + goldenStoneActiveDuration`.
    ///  - First participant is always the owner.
    /// @custom:events Emits GoldenStoneActivated.
    function activateGoldenStone() external onlyEventActive {
        address player = msg.sender;
        uint256 activatedAmount = activatedGoldenStoneAmount[player];
        uint256 deadline = block.timestamp + goldenStoneActiveDuration;

        if (inventories[player].goldenStones == activatedAmount)
            revert Errors.GoldenStoneNotEnough();

        GoldenStone storage goldenStone = activatedGoldenStones[player][
            activatedAmount
        ];
        goldenStone.deadline = deadline;
        goldenStone.participants.push(player);

        activatedGoldenStoneAmount[player]++;

        emit GoldenStoneActivated(player, activatedAmount, deadline);
    }

    /// @notice Allows a user to tap (join) another player's activated GoldenStone.
    /// @dev
    ///  - Requires golden stone to be active and not yet forged.
    ///  - Enforces max participants.
    ///  - Ensures participant cannot join twice.
    ///  - Consumes either system rewarded hammer or stored hammer.
    /// @param _owner The owner of the GoldenStone.
    /// @param _index Index of the GoldenStone in the owner's list.
    function tapGoldenStone(
        address _owner,
        uint256 _index
    ) external onlyEventActive {
        address player = msg.sender;
        GoldenStone storage goldenStone = activatedGoldenStones[_owner][_index];
        uint256 length = goldenStone.participants.length;

        if (_index >= activatedGoldenStoneAmount[_owner])
            revert Errors.IndexOutOfBounds();
        if (block.timestamp > goldenStone.deadline)
            revert Errors.GoldenStoneExpired();
        if (goldenStone.isForged) revert Errors.GoldenStoneAlreadyForged();
        if (length >= goldenStoneMaxParticipants)
            revert Errors.ExceedMaxParticipants();
        for (uint256 i; i < length; i++)
            if (goldenStone.participants[i] == player)
                revert Errors.AlreadyTapped();

        goldenStone.participants.push(player);

        uint256 activatedAt = dailyHammerRewardsActivatedAt[player];
        uint256 availableRewardedHammers;
        if (activatedAt != 0) {
            uint256 today = _floorToDay(block.timestamp);
            /// forge-lint: disable-next-item(divide-before-multiply)
            availableRewardedHammers =
                ((today - activatedAt) / 1 days) *
                DAILY_REWARDED_HAMMERS -
                consumedRewardedHammers[player];
        }

        PlayerInventory storage inventory = inventories[player];
        if (availableRewardedHammers > 0) {
            consumedRewardedHammers[player]++;
            emit RewardedHammersConsumed(player, 1);
        } else if (inventory.hammers > 0) {
            inventory.hammers--;
            emit StoredHammersConsumed(player, 1);
        } else {
            revert Errors.HammerNotEnough();
        }

        emit GoldenStoneTapped(_owner, player, _index);
    }

    /// @notice Manually forges an activated GoldenStone by its owner.
    /// @dev
    ///  - Only the owner can call.
    ///  - Enforces participant count and deadline conditions.
    /// @param _index Index of the GoldenStone in the owner's list.
    function forgeGoldenStone(uint256 _index) external onlyEventActive {
        _forgeGoldenStone(msg.sender, _index, false);
    }

    /// @notice Auto-forges a GoldenStone after expiration using the master signer.
    /// @dev
    ///  - Can only be called by masterSigner.
    ///  - Requires the GoldenStone to have expired.
    /// @param _owner Owner address of the GoldenStone.
    /// @param _index Index of the GoldenStone in the owner's list.
    function autoForgeGoldenStone(
        address _owner,
        uint256 _index
    ) external onlyEventActive {
        _forgeGoldenStone(_owner, _index, true);
    }

    /*//////////////////////////////////////////////////////////////////////////
                                    PERMISSIONED FUNCTIONS
    //////////////////////////////////////////////////////////////////////////*/

    /// @notice Distributes raw stones to a player (called by staking contracts).
    /// @dev
    ///  - Restricted to registered staking contracts via `onlyStakings`.
    ///  - Increases the player's stored rawStones.
    /// @param _player The address of the player.
    /// @param _amount Amount of raw stones to distribute.
    function distributeRawStones(
        address _player,
        uint256 _amount
    ) external onlyStakings onlyEventActive {
        PlayerInventory storage inventory = inventories[_player];
        inventory.rawStones += _amount;

        emit RawStonesDistributed(_player, _amount);
    }

    /// @notice Distributes hammers to a player (called by staking contracts).
    /// @dev Increases the player's stored hammers.
    /// @param _player The address of the player.
    /// @param _amount Amount of hammers to distribute.
    function distributeHammers(
        address _player,
        uint256 _amount
    ) external onlyStakings onlyEventActive {
        PlayerInventory storage inventory = inventories[_player];
        inventory.hammers += _amount;

        emit HammersDistributed(_player, _amount);
    }

    /// @notice Distributes golden stones to a player (called by staking contracts).
    /// @dev Increases the player's stored goldenStones.
    /// @param _player The address of the player.
    /// @param _amount Amount of golden stones to distribute.
    function distributeGoldenStones(
        address _player,
        uint256 _amount
    ) external onlyStakings onlyEventActive {
        PlayerInventory storage inventory = inventories[_player];
        inventory.goldenStones += _amount;

        emit GoldenStonesDistributed(_player, _amount);
    }

    /// @notice Activates daily hammer rewards for a player (called by staking).
    /// @dev
    ///  - Only callable once per player (re-activating simply resets date).
    ///  - Daily rewards start counting from this day forward.
    /// @param _player The address of the player.
    function activateDailyHammerRewards(
        address _player
    ) external onlyStakings onlyEventActive {
        uint256 activatedAt = _floorToDay(block.timestamp);
        dailyHammerRewardsActivatedAt[_player] = activatedAt;

        emit DailyHammerRewardsActivated(_player, activatedAt);
    }

    /*//////////////////////////////////////////////////////////////////////////
                                    ADMIN FUNCTIONS
    //////////////////////////////////////////////////////////////////////////*/

    /// @notice Sets or unsets a staking contract address.
    /// @dev Only callable by owner.
    /// @param _staking The staking contract address.
    /// @param _flag True to enable as staking, false to disable.
    function setStakings(address _staking, bool _flag) external onlyOwner {
        if (_staking == address(0)) revert Errors.ZeroAddress();

        stakings[_staking] = _flag;

        emit SetStakings(_staking, _flag);
    }

    /// @notice Updates the master signer address used for EIP-712 forging.
    /// @dev
    ///  - Only callable by owner.
    ///  - Critical for security: masterSigner compromise requires changing this.
    /// @param _key New master signer address.
    function setMasterSigner(address _key) external onlyOwner {
        if (_key == address(0)) revert Errors.ZeroAddress();

        emit SetMasterSigner(masterSigner, _key);

        masterSigner = _key;
    }

    /// @notice Updates configuration for GoldenStone activation and participant limits.
    /// @dev
    ///  - _activeDuration must be > 0.
    ///  - _minParticipants must be > 1.
    ///  - _maxParticipants must be >= _minParticipants.
    /// @param _activeDuration New active duration in seconds.
    /// @param _minParticipants New minimum participants.
    /// @param _maxParticipants New maximum participants.
    function setGoldenStoneConfigs(
        uint256 _activeDuration,
        uint256 _minParticipants,
        uint256 _maxParticipants
    ) external onlyOwner {
        if (
            _activeDuration == 0 ||
            _minParticipants <= 1 ||
            _maxParticipants < _minParticipants
        ) revert Errors.InvalidGoldenStoneConfig();

        emit SetGoldenStoneConfigs(
            goldenStoneActiveDuration,
            _activeDuration,
            goldenStoneMinParticipants,
            _minParticipants,
            goldenStoneMaxParticipants,
            _maxParticipants
        );

        goldenStoneActiveDuration = _activeDuration;
        goldenStoneMinParticipants = _minParticipants;
        goldenStoneMaxParticipants = _maxParticipants;
    }

    /// @notice Updates the GoldenStone base reward and linear slope.
    /// @dev
    ///  - No explicit bounds on `_baseReward` and `_slopeBps`; must be configured carefully.
    /// @param _baseReward New base gem reward per participant.
    /// @param _slopeBps New BPS slope value for linear reward scaling.
    function setGoldenStoneReward(
        uint256 _baseReward,
        uint256 _slopeBps
    ) external onlyOwner {
        emit SetGoldenStoneReward(
            goldenStoneBaseReward,
            _baseReward,
            rewardLinearSlopeBps,
            _slopeBps
        );

        goldenStoneBaseReward = _baseReward;
        rewardLinearSlopeBps = _slopeBps;
    }

    /// @notice Updates the number of hammers rewarded per referral.
    /// @dev Does not enforce a max; must be set to reasonable values via governance.
    /// @param _hammersPerReferral New hammer reward amount per referral.
    function setHammersPerReferral(
        uint256 _hammersPerReferral
    ) external onlyOwner {
        emit SetHammersPerReferral(hammersPerReferral, _hammersPerReferral);

        hammersPerReferral = _hammersPerReferral;
    }

    /*//////////////////////////////////////////////////////////////////////////
                                    INTERNAL FUNCTIONS
    //////////////////////////////////////////////////////////////////////////*/

    /// @notice Internal check that caller is a registered staking contract.
    /// @dev Reverts with NotStakingContract if `stakings[msg.sender]` is false.
    function _onlyStakings() internal view {
        if (!stakings[msg.sender]) revert Errors.NotStakingContract();
    }

    /// @notice Internal check that event is active.
    /// @dev Reverts with EventNotActive if timestamp not in [START_TIME, END_TIME].
    function _onlyEventActive() internal view {
        if (block.timestamp < START_TIME || block.timestamp > END_TIME)
            revert Errors.EventNotActive();
    }

    /// @notice Floors a timestamp down to its UTC-0 day boundary.
    /// @dev E.g. 2024-01-01 15:23 -> 2024-01-01 00:00.
    /// @param timestamp The original timestamp.
    /// @return The floored timestamp at 00:00 UTC of that day.
    function _floorToDay(uint256 timestamp) internal pure returns (uint256) {
        return timestamp - (timestamp % 1 days);
    }

    /// @notice Generates lottery codes for a forge action.
    /// @dev
    ///  - Uses blockhash, timestamp, gasleft, player, and internalLotteryNonce as entropy.
    ///  - Emits LotteryGenerated per code.
    /// @param _player The player address receiving lottery codes.
    /// @param _amount The number of lottery codes to generate.
    function _generateLotteryCodes(address _player, uint256 _amount) internal {
        bytes32 bh = blockhash(block.number - 1);
        uint256 ts = block.timestamp;

        bytes4 lotteryCode;
        for (uint256 i = 0; i < _amount; i++) {
            lotteryCode = bytes4(
                keccak256(
                    abi.encodePacked(
                        bh,
                        _player,
                        ts,
                        gasleft(),
                        internalLotteryNonce++
                    )
                )
            );
            emit LotteryGenerated(_player, lotteryCode);
        }
    }

    /// @notice Distributes gem rewards from a forge request.
    /// @dev
    ///  - Emits a GemsForged event per entry.
    ///  - Aggregates per-player and global forged gems for the current day.
    /// @param _player The player who receives the gems.
    /// @param _gems Array of gem amounts per forged raw stone.
    /// @return gemsForged_ Total gems forged in this operation.
    function _distributeGems(
        address _player,
        uint256[] memory _gems
    ) internal returns (uint256 gemsForged_) {
        uint256 length = _gems.length;
        for (uint256 i = 0; i < length; i++) {
            uint256 gems = _gems[i];
            gemsForged_ += gems;
            emit GemsForged(_player, gems);
        }

        uint256 today = _floorToDay(block.timestamp);
        forgedGems[_player][today] += gemsForged_;
        totalForgedGems[today] += gemsForged_;
    }

    /// @notice Consumes raw stones and hammers for a forge operation.
    /// @dev
    ///  - Prioritizes consumption of system (daily) resources before stored resources.
    ///  - Reverts if not enough total raw stones or hammers.
    /// @param _player The player performing the forge.
    /// @param _amount The number of raw stones to consume.
    function _consumeResources(address _player, uint256 _amount) internal {
        uint256 requiredRawStones = _amount;
        uint256 requiredHammers = _amount;

        PlayerInventory storage inventory = inventories[_player];

        uint256 today = _floorToDay(block.timestamp);

        uint256 consumedRawStonesToday = consumedRawStones[_player][today];
        uint256 availableRewardedRawStones = DAILY_REWARDED_RAW_STONES >
            consumedRawStonesToday
            ? DAILY_REWARDED_RAW_STONES - consumedRawStonesToday
            : 0;
        if (availableRewardedRawStones >= requiredRawStones) {
            consumedRawStones[_player][today] += requiredRawStones;

            emit RewardedRawStonesConsumed(_player, requiredRawStones);
        } else {
            consumedRawStones[_player][today] += requiredRawStones;

            if (availableRewardedRawStones > 0) {
                requiredRawStones -= availableRewardedRawStones;

                emit RewardedRawStonesConsumed(
                    _player,
                    availableRewardedRawStones
                );
            }

            if (requiredRawStones > inventory.rawStones)
                revert Errors.RawStoneNotEnough();

            inventory.rawStones -= requiredRawStones;

            emit StoredRawStonesConsumed(_player, requiredRawStones);
        }

        uint256 activatedAt = dailyHammerRewardsActivatedAt[_player];
        /// forge-lint: disable-next-item(divide-before-multiply)
        uint256 availableRewardedHammers = ((today - activatedAt) / 1 days) *
            DAILY_REWARDED_HAMMERS -
            consumedRewardedHammers[_player];
        if (
            activatedAt == 0 ||
            activatedAt == today ||
            availableRewardedHammers == 0
        ) {
            if (requiredHammers > inventory.hammers)
                revert Errors.HammerNotEnough();

            inventory.hammers -= requiredHammers;

            emit StoredHammersConsumed(_player, requiredHammers);
        } else if (availableRewardedHammers >= requiredHammers) {
            consumedRewardedHammers[_player] += requiredHammers;

            emit RewardedHammersConsumed(_player, requiredHammers);
        } else {
            consumedRewardedHammers[_player] += availableRewardedHammers;

            requiredHammers -= availableRewardedHammers;

            if (requiredHammers > inventory.hammers)
                revert Errors.HammerNotEnough();

            inventory.hammers -= requiredHammers;

            emit StoredHammersConsumed(_player, requiredHammers);
            emit RewardedHammersConsumed(_player, availableRewardedHammers);
        }
    }

    /// @notice Internal helper to check if a forge nonce is consumed.
    /// @dev Returns true if `isNonceConsumed[_player][_nonce]` is true.
    /// @param _player The player address.
    /// @param _nonce The nonce to check.
    /// @return consumed_ True if nonce is already used.
    function _isNonceConsumed(
        address _player,
        uint256 _nonce
    ) internal view returns (bool consumed_) {
        return isNonceConsumed[_player][_nonce];
    }

    /// @notice Internal logic to forge a GoldenStone, manual or auto.
    /// @dev
    ///  - If `_isAuto` is false:
    ///      * Caller must be the owner.
    ///      * GoldenStone must not be expired.
    ///  - If `_isAuto` is true:
    ///      * Caller must be masterSigner.
    ///      * GoldenStone must be expired.
    ///  - Enforces participant count and not-yet-forged.
    ///  - Distributes gem rewards to all participants.
    /// @param _owner The owner of the GoldenStone.
    /// @param _index Index of the GoldenStone in the owner's list.
    /// @param _isAuto True if called by auto-forge logic (masterSigner).
    function _forgeGoldenStone(
        address _owner,
        uint256 _index,
        bool _isAuto
    ) internal {
        if (_isAuto && msg.sender != masterSigner)
            revert Errors.NotMasterSigner();

        GoldenStone storage goldenStone = activatedGoldenStones[_owner][_index];
        uint256 length = goldenStone.participants.length;

        if (goldenStone.isForged) revert Errors.GoldenStoneAlreadyForged();
        if (_index >= activatedGoldenStoneAmount[_owner])
            revert Errors.IndexOutOfBounds();
        if (_isAuto && block.timestamp <= goldenStone.deadline)
            revert Errors.GoldenStoneNotExpired();
        if (length < goldenStoneMinParticipants)
            revert Errors.NotEnoughParticipants();

        uint256 extraParticipants = length - goldenStoneMinParticipants;

        uint256 gemRewardsPerParticipant = goldenStoneBaseReward +
            (goldenStoneBaseReward * rewardLinearSlopeBps * extraParticipants) /
            BPS_DENOMINATOR;
        uint256 today = _floorToDay(block.timestamp);

        for (uint256 i = 0; i < length; i++) {
            address participant = goldenStone.participants[i];
            forgedGems[participant][today] += gemRewardsPerParticipant;

            _generateLotteryCodes(participant, 1);

            emit GemsForged(participant, gemRewardsPerParticipant);
        }

        totalForgedGems[today] += gemRewardsPerParticipant * length;
        goldenStone.isForged = true;

        emit GoldenStoneForged(_owner, _index, length);
    }

    /// @notice Internal EIP-712 signature verification for forge operations.
    /// @dev
    ///  - Reverts if nonce already consumed.
    ///  - Returns true if recovered signer equals masterSigner.
    /// @param _player Player address in the message.
    /// @param _nonce Nonce used for replay protection.
    /// @param _amount Amount of raw stones to forge.
    /// @param _gems Array of gem rewards.
    /// @param _deadline Signature expiry timestamp.
    /// @param _signature EIP-712 off-chain signature.
    /// @return valid_ True if signature is valid and from masterSigner.
    function _verifyForgeSignature(
        address _player,
        uint256 _nonce,
        uint256 _amount,
        uint256[] memory _gems,
        uint256 _deadline,
        bytes calldata _signature
    ) internal view returns (bool valid_) {
        if (_isNonceConsumed(_player, _nonce)) revert Errors.InvalidNonce();

        bytes32 digest = _hashTypedDataV4(
            _hashForForge(
                FORGE_TYPEHASH,
                _player,
                _nonce,
                _amount,
                _gems,
                _deadline
            )
        );

        address signer = ECDSA.recover(digest, _signature);
        if (signer == masterSigner) return true;
    }

    /// @notice Internal helper to compute the struct hash for Forge EIP-712 messages.
    /// @dev
    ///  - Computes keccak256(abi.encode(FORGE_TYPEHASH, ...)) with inline assembly.
    ///  - `_gems` is hashed first with keccak256 to a `bytes32 gemsHash`.
    /// @param _typehash The typehash of the Forge struct.
    /// @param _player Player address.
    /// @param _nonce Unique nonce.
    /// @param _amount Forge amount.
    /// @param _gems Array of gem values.
    /// @param _deadline Signature deadline.
    /// @return hash_ The keccak256 hash of the encoded struct.
    function _hashForForge(
        bytes32 _typehash,
        address _player,
        uint256 _nonce,
        uint256 _amount,
        uint256[] memory _gems,
        uint256 _deadline
    ) internal pure returns (bytes32 hash_) {
        bytes32 gemsHash;
        assembly {
            let len := mload(_gems)
            let data := add(_gems, 32)

            gemsHash := keccak256(data, mul(len, 32))
        }

        assembly {
            let m := mload(0x40)
            mstore(m, _typehash)
            mstore(add(m, 0x20), _player)
            mstore(add(m, 0x40), _nonce)
            mstore(add(m, 0x60), _amount)
            mstore(add(m, 0x80), gemsHash)
            mstore(add(m, 0xa0), _deadline)

            hash_ := keccak256(m, 0xc0)
        }
    }

    /// @notice Binds referee–referrer relationship.
    /// @param _referee User being referred.
    /// @param _referrer Referrer.
    /// @return Whether binding succeeded.
    function _bindReferral(
        address _referee,
        address _referrer
    ) internal returns (bool) {
        return
            IReferralRegistry(REFERRAL_REGISTRY_ADDR).bindReferral(
                _referee,
                _referrer
            );
    }
}
