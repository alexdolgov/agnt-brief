// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts-upgradeable/token/ERC721/ERC721Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC721/extensions/ERC721EnumerableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/utils/ReentrancyGuardUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC721/IERC721.sol";
import "./interfaces/IStakeNOON.sol";
import "@openzeppelin/contracts/interfaces/IERC165.sol";
import "@openzeppelin/contracts/utils/cryptography/MerkleProof.sol";
import "./interfaces/IStakeNOONVesting.sol";

/**
 * @title stakeNOON
 * @dev Implementation of the staking contract for NOON tokens.
 * This contract allows users to stake NOON tokens and receive voting power based on their stake duration.
 * It also supports VIP stakes with additional benefits and vesting schedules.
 */
contract stakeNOON is
    Initializable,
    ERC721Upgradeable,
    ERC721EnumerableUpgradeable,
    OwnableUpgradeable,
    ReentrancyGuardUpgradeable,
    IStakeNOON
{
    /// @dev Reference to the NOON token contract
    IERC20 public noon;
    /// @dev Reference to the vesting contract
    IStakeNOONVesting public vestingContract;
    /// @dev Maximum stake duration (4 years)
    uint256 public constant MAX_STAKE_TIME = 4 * 365 days;
    /// @dev Maximum multiplier for stakes (4x)
    uint256 public constant MAX_MULTIPLIER = 4 * 1e18;
    /// @dev Minimum stake duration (1 week)
    uint256 public constant MIN_STAKE_TIME = 1 weeks;
    /// @dev One year in seconds
    uint256 public constant ONE_YEAR = 365 days;
    /// @dev Period required for VIP stake unlocking
    uint256 public vipUnlockingPeriod;
    /// @dev Maximum number of normal stakes per user
    uint256 public maxNormalStakes;
    /// @dev Maximum number of VIP stakes per user
    uint256 public maxVipStakes;

    /// @dev Total amount of tokens staked
    uint256 public totalStaked;
    /// @dev Flag indicating if NFT transfers are enabled
    bool public isTransferable;
    /// @dev Next token ID to be minted
    uint256 private _nextTokenId;

    /// @dev Mapping of stake data by token ID
    mapping(uint256 => Stake) public stakes;
    /// @dev Mapping of VIP unlock start times by token ID
    mapping(uint256 => uint256) public vipUnlockStartTime;
    /// @dev Mapping of VIP stake counts by user
    mapping(address => uint256) public userVipStakeCount;

    /// @dev Merkle root for VIP claims
    bytes32 public merkleRoot;
    /// @dev Total amount of tokens available for claiming
    uint256 public totalClaimableAmount;
    /// @dev Mapping of claimed amounts by user
    mapping(address => uint256) public claimedAmounts;

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    /**
     * @dev Initializes the contract with required addresses and parameters
     * @param _noon Address of the NOON token contract
     * @param initialOwner Address of the contract owner
     */
    function initialize(address _noon, address initialOwner) public initializer {
        __ERC721_init("Stake NOON NFT", "sNOON");
        __ERC721Enumerable_init();
        __Ownable_init(initialOwner);
        __ReentrancyGuard_init();

        noon = IERC20(_noon);
        isTransferable = false;
        maxNormalStakes = 3;
        maxVipStakes = 1;
        vipUnlockingPeriod = 7 days;
        _nextTokenId = 1;
    }

    /**
     * @dev Gets the balance of NFTs owned by an address
     * @param owner Address to check balance for
     * @return Number of NFTs owned
     */
    function balanceOf(address owner) public view override(ERC721Upgradeable, IERC721) returns (uint256) {
        return super.balanceOf(owner);
    }

    /**
     * @dev Gets the owner of a specific NFT
     * @param tokenId ID of the NFT
     * @return Address of the NFT owner
     */
    function ownerOf(uint256 tokenId) public view override(ERC721Upgradeable, IERC721) returns (address) {
        return super.ownerOf(tokenId);
    }

    /**
     * @dev Updates the maximum number of stakes allowed per user
     * @param _maxNormalStakes Maximum number of normal stakes
     * @param _maxVipStakes Maximum number of VIP stakes
     */
    function updateMaxStakes(uint256 _maxNormalStakes, uint256 _maxVipStakes) external onlyOwner {
        if (_maxNormalStakes == 0) revert MaxNormalStakesMustBeGreaterThanZero();
        if (_maxVipStakes == 0) revert MaxVIPStakesMustBeGreaterThanZero();
        maxNormalStakes = _maxNormalStakes;
        maxVipStakes = _maxVipStakes;
        emit MaxStakesUpdated(_maxNormalStakes, _maxVipStakes);
    }

    /**
     * @dev Creates a new stake
     * @param amount Amount of tokens to stake
     * @param stakeDuration Duration of the stake in seconds
     * @return tokenId ID of the newly created stake NFT
     */
    function createStake(uint256 amount, uint256 stakeDuration) external nonReentrant returns (uint256) {
        if (amount == 0) revert AmountMustBeGreaterThanZero();
        if (stakeDuration < MIN_STAKE_TIME) revert StakeDurationTooShort();
        if (stakeDuration > MAX_STAKE_TIME) revert StakeDurationTooLong();

        // Check normal stake limit
        uint256 normalStakeCount = balanceOf(msg.sender) - userVipStakeCount[msg.sender];
        if (normalStakeCount >= maxNormalStakes) revert MaxNormalStakesReached();

        // Calculate multiplier based on stake duration
        uint256 multiplier = calculateMultiplier(stakeDuration);

        // Transfer NOON tokens
        noon.transferFrom(msg.sender, address(this), amount);

        // Create new stake
        uint256 tokenId = _nextTokenId++;
        Stake memory newStake = Stake({
            amount: amount,
            end: block.timestamp + stakeDuration,
            multiplier: multiplier,
            isVip: false,
            stakeDate: block.timestamp,
            isPermanent: false
        });

        // Store stake data
        stakes[tokenId] = newStake;

        // Update global state
        totalStaked += amount;

        // Mint NFT
        _safeMint(msg.sender, tokenId);

        emit StakeCreated(msg.sender, tokenId, amount, newStake.end, multiplier);
        return tokenId;
    }

    /**
     * @dev Extends the duration of an existing stake
     * @param tokenId ID of the stake to extend
     * @param newStakeDuration New duration for the stake
     */
    function extendStake(uint256 tokenId, uint256 newStakeDuration) external nonReentrant {
        if (ownerOf(tokenId) != msg.sender) revert NotOwner();
        Stake storage stake = stakes[tokenId];
        if (stake.amount == 0) revert StakeNotFound();
        if (newStakeDuration > MAX_STAKE_TIME) revert StakeDurationTooLong();

        uint256 newEnd = block.timestamp + newStakeDuration;
        if (newEnd <= stake.end) revert NewStakeMustBeLonger();

        // Calculate new multiplier based on total stake duration
        uint256 newMultiplier = calculateMultiplier(newStakeDuration);

        // Update stake
        stake.end = newEnd;
        stake.multiplier = newMultiplier;

        emit StakeExtended(tokenId, newEnd, newMultiplier);
    }

    /**
     * @dev Withdraws tokens from an expired stake
     * @param tokenId ID of the stake to withdraw from
     */
    function withdraw(uint256 tokenId) external nonReentrant {
        if (ownerOf(tokenId) != msg.sender) revert NotOwner();
        Stake storage stake = stakes[tokenId];
        if (stake.amount == 0) revert StakeNotFound();
        if (block.timestamp < stake.end) revert StakeNotExpired();

        uint256 amount = stake.amount;

        // Update global state
        totalStaked -= amount;

        // Clear stake
        delete stakes[tokenId];

        // Burn NFT
        _burn(tokenId);

        // Transfer NOON tokens back
        noon.transfer(msg.sender, amount);

        emit StakeWithdrawn(tokenId, amount);
    }

    /**
     * @dev Calculates the voting power for a user based on their stakes
     * @param user Address of the user
     * @return Total voting power
     */
    function getVotingPower(address user) external view override returns (uint256) {
        uint256 totalVotingPower = 0;
        uint256 balance = balanceOf(user);

        for (uint256 i = 0; i < balance; i++) {
            uint256 tokenId = tokenOfOwnerByIndex(user, i);
            Stake storage stake = stakes[tokenId];
            if (stake.amount == 0 || block.timestamp >= stake.end) continue;

            uint256 baseVotingPower = 0;
            if (stake.isVip) {
                baseVotingPower =
                    ((stake.amount + vestingContract.getVestedAmountForStake(tokenId)) * stake.multiplier) /
                    1e18;
            } else if (stake.isPermanent) {
                // For permanent stakes, voting power is constant (amount * multiplier)
                baseVotingPower = (stake.amount * stake.multiplier) / 1e18;
            } else {
                // For non-permanent stakes, voting power decays linearly
                uint256 timeLeft = stake.end - block.timestamp;
                uint256 stakeDuration = stake.end - stake.stakeDate;
                baseVotingPower = (stake.amount * timeLeft * stake.multiplier) / (stakeDuration * 1e18);
            }
            totalVotingPower += baseVotingPower;
        }

        return totalVotingPower;
    }

    /**
     * @dev Gets the voting power for a specific stake
     * @param tokenId ID of the stake
     * @return Voting power of the stake
     */
    function getTokenVotingPower(uint256 tokenId) external view override returns (uint256) {
        Stake storage stake = stakes[tokenId];
        if (stake.amount == 0) revert StakeNotFound();

        uint256 baseVotingPower = 0;
        if (stake.isVip) {
            // For VIP stakes, apply multiplier to (amount + vested amount)
            if (address(vestingContract) != address(0)) {
                baseVotingPower =
                    ((stake.amount + vestingContract.getVestedAmountForStake(tokenId)) * stake.multiplier) /
                    1e18;
            }
        } else if (stake.isPermanent) {
            // For permanent stakes, voting power is constant
            baseVotingPower = (stake.amount * stake.multiplier) / 1e18;
        } else {
            // For non-permanent stakes, voting power decays linearly
            uint256 timeLeft = stake.end - block.timestamp;
            uint256 stakeDuration = stake.end - stake.stakeDate;
            baseVotingPower = (stake.amount * timeLeft * stake.multiplier) / (stakeDuration * 1e18);
        }

        return baseVotingPower;
    }

    /**
     * @dev Calculates the multiplier for a stake duration
     * @param stakeDuration Duration of the stake in seconds
     * @return Multiplier value
     */
    function calculateMultiplier(uint256 stakeDuration) public pure returns (uint256) {
        return (stakeDuration * 1e18) / ONE_YEAR;
    }

    /**
     * @dev Gets all stakes for a user
     * @param user Address of the user
     * @return Array of stake data
     */
    function getUserStakes(address user) external view returns (Stake[] memory) {
        uint256 balance = balanceOf(user);
        Stake[] memory userStakes = new Stake[](balance);

        for (uint256 i = 0; i < balance; i++) {
            uint256 tokenId = tokenOfOwnerByIndex(user, i);
            userStakes[i] = stakes[tokenId];
        }

        return userStakes;
    }

    /**
     * @dev Gets all stake IDs for a user
     * @param user Address of the user
     * @return Array of stake IDs
     */
    function getUserStakeIds(address user) external view returns (uint256[] memory) {
        uint256 balance = balanceOf(user);
        uint256[] memory userStakeIds = new uint256[](balance);
        for (uint256 i = 0; i < balance; i++) {
            userStakeIds[i] = tokenOfOwnerByIndex(user, i);
        }

        return userStakeIds;
    }

    /**
     * @dev Sets whether NFT transfers are enabled
     * @param _isTransferable True to enable transfers, false to disable
     */
    function setTransferable(bool _isTransferable) external onlyOwner {
        isTransferable = _isTransferable;
        emit TransferabilityUpdated(_isTransferable);
    }

    /**
     * @dev Internal function to handle NFT transfers with restrictions
     * @param to Address receiving the NFT
     * @param tokenId ID of the NFT being transferred
     * @param auth Address authorized to perform the transfer
     * @return Address that initiated the transfer
     */
    function _update(
        address to,
        uint256 tokenId,
        address auth
    ) internal virtual override(ERC721Upgradeable, ERC721EnumerableUpgradeable) returns (address) {
        address from = super._update(to, tokenId, auth);

        // Allow minting and burning
        if (from == address(0) || to == address(0)) {
            return from;
        }

        // Check if transfer is allowed
        if (!isTransferable) revert TransfersNotEnabled();
        if (stakes[tokenId].isVip) revert VIPTokensNotTransferable();

        return from;
    }

    /**
     * @dev Internal function to increase an account's balance
     * @param account Address whose balance to increase
     * @param amount Amount to increase by
     */
    function _increaseBalance(
        address account,
        uint128 amount
    ) internal virtual override(ERC721Upgradeable, ERC721EnumerableUpgradeable) {
        super._increaseBalance(account, amount);
    }

    /**
     * @dev Checks if the contract supports a specific interface
     * @param interfaceId ID of the interface to check
     * @return True if the interface is supported
     */
    function supportsInterface(
        bytes4 interfaceId
    ) public view virtual override(ERC721Upgradeable, ERC721EnumerableUpgradeable, IERC165) returns (bool) {
        return super.supportsInterface(interfaceId);
    }

    /**
     * @dev Checks if a token exists
     * @param tokenId ID of the token to check
     * @return True if the token exists
     */
    function _exists(uint256 tokenId) internal view returns (bool) {
        return _ownerOf(tokenId) != address(0);
    }

    /**
     * @dev Makes a stake permanent
     * @param tokenId ID of the stake to make permanent
     */
    function restakePermanent(uint256 tokenId) external nonReentrant {
        if (ownerOf(tokenId) != msg.sender) revert NotOwner();
        Stake storage stake = stakes[tokenId];
        if (stake.amount == 0) revert StakeNotFound();

        uint256 newEnd = block.timestamp + MAX_STAKE_TIME;
        if (newEnd <= stake.end) revert NewStakeMustBeLonger();
        uint256 newMultiplier = calculateMultiplier(MAX_STAKE_TIME);

        // Update stake
        stake.multiplier = newMultiplier;
        stake.isPermanent = true;

        emit PermanentStakeRestaked(tokenId, newEnd);
    }

    /**
     * @dev Removes permanent status from a stake
     * @param tokenId ID of the stake to modify
     */
    function unstakePermanent(uint256 tokenId) external nonReentrant {
        if (ownerOf(tokenId) != msg.sender) revert NotOwner();
        Stake storage stake = stakes[tokenId];
        if (stake.amount == 0) revert StakeNotFound();
        if (!stake.isPermanent) revert NotPermanentStake();

        // Remove permanent status
        stake.isPermanent = false;
        // Set end time to current time
        stake.end = block.timestamp + MAX_STAKE_TIME;
        stake.stakeDate = block.timestamp;

        emit PermanentStakeUnlocked(tokenId);
    }

    /**
     * @dev Sets the merkle root for VIP claims
     * @param _merkleRoot New merkle root
     * @param totalAmount Total amount of tokens available for claiming
     */
    function setMerkleRoot(bytes32 _merkleRoot, uint256 totalAmount) external onlyOwner {
        if (totalAmount == 0) revert AmountMustBeGreaterThanZero();
        require(noon.transferFrom(msg.sender, address(this), totalAmount), TokenTransferFailed());

        merkleRoot = _merkleRoot;
        totalClaimableAmount += totalAmount;
        emit MerkleRootUpdated(_merkleRoot, totalAmount);
    }

    /**
     * @dev Claims and stakes tokens using a merkle proof
     * @param amount Amount of tokens to claim and stake
     * @param proof Merkle proof for the claim
     * @return tokenId ID of the newly created stake
     */
    function claimAndStake(uint256 amount, bytes32[] calldata proof) external nonReentrant returns (uint256) {
        if (amount == 0) revert AmountMustBeGreaterThanZero();
        if (totalClaimableAmount < amount - claimedAmounts[msg.sender]) revert InsufficientClaimableAmount();

        // Verify merkle proof
        bytes32 leaf = keccak256(abi.encodePacked(msg.sender, amount));
        if (!MerkleProof.verifyCalldata(proof, merkleRoot, leaf)) revert InvalidProof();

        // Check if user has already claimed
        if (claimedAmounts[msg.sender] >= amount) revert AlreadyClaimed();

        // Calculate multiplier for 4 years
        uint256 multiplier = calculateMultiplier(4 * ONE_YEAR);

        uint256 tokenId;
        if (userVipStakeCount[msg.sender] > 0) {
            // Find existing VIP stake
            uint256 balance = balanceOf(msg.sender);
            for (uint256 i = 0; i < balance; i++) {
                uint256 currentTokenId = tokenOfOwnerByIndex(msg.sender, i);
                if (stakes[currentTokenId].isVip) {
                    tokenId = currentTokenId;
                    if (vipUnlockStartTime[currentTokenId] != 0) revert VIPStakeInWithdrawingPeriod();
                    break;
                }
            }
            if (tokenId == 0) revert NoVIPStakeFound();

            // Update existing stake
            Stake storage stake = stakes[tokenId];
            uint256 additionalAmount = amount - claimedAmounts[msg.sender];
            stake.amount += additionalAmount;
            stake.end = block.timestamp + MAX_STAKE_TIME;
            stake.multiplier = multiplier;
            stake.stakeDate = block.timestamp;

            // Create vesting schedule for the additional amount
            if (address(vestingContract) != address(0)) {
                vestingContract.createVestingSchedule(msg.sender, additionalAmount, tokenId);
            }
        } else {
            // Create new stake with a new token ID
            tokenId = _nextTokenId++;
            Stake memory newStake = Stake({
                amount: amount,
                end: block.timestamp + MAX_STAKE_TIME,
                multiplier: multiplier,
                isVip: true,
                stakeDate: block.timestamp,
                isPermanent: false
            });

            // Store stake data
            stakes[tokenId] = newStake;
            userVipStakeCount[msg.sender]++;

            // Mint NFT
            _safeMint(msg.sender, tokenId);
            // Create vesting schedule for the full amount
            if (address(vestingContract) != address(0)) {
                vestingContract.createVestingSchedule(msg.sender, amount, tokenId);
            }
        }

        // Update global state
        totalStaked += amount - claimedAmounts[msg.sender];
        totalClaimableAmount -= amount - claimedAmounts[msg.sender];
        claimedAmounts[msg.sender] = amount;

        emit ClaimAndStaked(msg.sender, tokenId, amount, block.timestamp + MAX_STAKE_TIME, multiplier);
        return tokenId;
    }

    /**
     * @dev Gets the claimed amount for a user
     * @param user Address of the user
     * @return Amount of tokens that have been claimed
     */
    function getClaimedAmount(address user) external view returns (uint256) {
        return claimedAmounts[user];
    }

    /**
     * @dev Gets the total amount of tokens available for claiming
     * @return Total claimable amount
     */
    function getTotalClaimableAmount() external view returns (uint256) {
        return totalClaimableAmount;
    }

    /**
     * @dev Gets the VIP unlock start time for a stake
     * @param tokenId ID of the stake
     * @return Start time of the unlock period
     */
    function getVIPUnlockStartTime(uint256 tokenId) external view returns (uint256) {
        return vipUnlockStartTime[tokenId];
    }

    /**
     * @dev Starts the VIP unlock process for a stake
     * @param tokenId ID of the stake to unlock
     */
    function startVIPUnstake(uint256 tokenId) external nonReentrant {
        if (ownerOf(tokenId) != msg.sender) revert NotOwner();
        Stake storage stake = stakes[tokenId];
        if (stake.amount == 0) revert StakeNotFound();

        if (!stake.isVip) revert NotVIPStake();
        if (vipUnlockStartTime[tokenId] != 0) revert UnlockAlreadyStarted();

        uint256 unlockStartTime = block.timestamp;
        vipUnlockStartTime[tokenId] = unlockStartTime;

        emit VIPUnlockStarted(tokenId, unlockStartTime);
    }

    /**
     * @dev Withdraws tokens from a VIP stake after the unlock period
     * @param tokenId ID of the stake to withdraw from
     */
    function withdrawVip(uint256 tokenId) external nonReentrant {
        if (ownerOf(tokenId) != msg.sender) revert NotOwner();
        Stake storage stake = stakes[tokenId];
        if (stake.amount == 0) revert StakeNotFound();
        if (!stake.isVip) revert NotVIPStake();

        // Check if unlocking period has started and completed
        if (vipUnlockStartTime[tokenId] == 0) revert UnlockNotStarted();
        if (block.timestamp < vipUnlockStartTime[tokenId] + vipUnlockingPeriod) revert UnlockPeriodNotCompleted();

        if (address(vestingContract) != address(0)) {
            IStakeNOONVesting.VestingSchedule[] memory schedules = vestingContract.getVestingSchedulesForStake(tokenId);
            uint256 length = schedules.length;

            for (uint256 i = length; i > 0; i--) {
                vestingContract.claimVesting(msg.sender, i - 1);
            }
        }

        uint256 amount = stake.amount;

        // Update global state
        totalStaked -= amount;

        // Clear stake
        delete stakes[tokenId];
        delete vipUnlockStartTime[tokenId];

        // Decrease VIP stake count
        userVipStakeCount[msg.sender]--;

        // Burn NFT
        _burn(tokenId);

        // Transfer NOON tokens back
        noon.transfer(msg.sender, amount);

        emit StakeWithdrawn(tokenId, amount);
    }

    /**
     * @dev Increases the amount of tokens in a stake
     * @param tokenId ID of the stake to increase
     * @param additionalAmount Additional amount of tokens to stake
     */
    function increaseStakeAmount(uint256 tokenId, uint256 additionalAmount) external nonReentrant {
        if (ownerOf(tokenId) != msg.sender) revert NotOwner();
        if (!_exists(tokenId)) revert StakeNotFound();
        Stake storage stake = stakes[tokenId];
        if (stake.amount == 0) revert StakeNotFound();
        if (additionalAmount == 0) revert AmountMustBeGreaterThanZero();
        if (stake.isVip) revert CannotIncreaseVIPStakeAmount();

        // Transfer additional NOON tokens
        noon.transferFrom(msg.sender, address(this), additionalAmount);

        // Update stake amount
        stake.amount += additionalAmount;

        // Update global state
        totalStaked += additionalAmount;

        emit StakeAmountIncreased(tokenId, additionalAmount, stake.amount);
    }

    /**
     * @dev Sets the vesting contract address
     * @param _vestingContract Address of the vesting contract
     */
    function setVestingContract(address _vestingContract) external onlyOwner {
        if (_vestingContract == address(0)) revert InvalidVestingContractAddress();
        vestingContract = IStakeNOONVesting(_vestingContract);
    }

    /**
     * @dev Claims vested tokens for a stake
     * @param tokenId ID of the stake
     * @param scheduleId ID of the vesting schedule to claim from
     */
    function claimVesting(uint256 tokenId, uint256 scheduleId) external nonReentrant {
        address user = msg.sender;
        if (ownerOf(tokenId) != user) revert NotOwner();
        if (address(vestingContract) == address(0)) revert VestingContractNotSet();
        if (vipUnlockStartTime[tokenId] == 0) revert UnlockNotStarted();
        if (block.timestamp < vipUnlockStartTime[tokenId] + vipUnlockingPeriod) revert UnlockPeriodNotCompleted();

        // Get all vesting schedules for this stake
        IStakeNOONVesting.VestingSchedule[] memory schedules = vestingContract.getVestingSchedulesForStake(tokenId);
        if (schedules.length == 0) revert NoVestingSchedulesForStake();

        vestingContract.claimVesting(user, scheduleId);

        emit VestingClaimed(user, tokenId, scheduleId);
    }

    /**
     * @dev Claims VIP tokens using a merkle proof
     * @param amount Amount of tokens to claim
     * @param proof Merkle proof for the claim
     */
    function claimVIP(uint256 amount, bytes32[] calldata proof) external nonReentrant {
        if (amount == 0) revert AmountMustBeGreaterThanZero();

        // Check if user has already claimed
        if (claimedAmounts[msg.sender] >= amount) revert AlreadyClaimed();

        // Calculate the additional amount to claim
        uint256 additionalAmount = amount - claimedAmounts[msg.sender];

        if (totalClaimableAmount < additionalAmount) revert InsufficientClaimableAmount();

        // Verify merkle proof
        bytes32 leaf = keccak256(abi.encodePacked(msg.sender, amount));
        if (!MerkleProof.verifyCalldata(proof, merkleRoot, leaf)) revert InvalidProof();

        // Update global state
        claimedAmounts[msg.sender] = amount;
        totalClaimableAmount -= additionalAmount;

        // Transfer tokens directly to user
        require(noon.transfer(msg.sender, additionalAmount), TokenTransferFailed());

        emit VIPClaimed(msg.sender, additionalAmount);
    }

    /**
     * @dev Sets the VIP unlocking period
     * @param _vipUnlockingPeriod New unlocking period in seconds
     */
    function setVipUnlockingPeriod(uint256 _vipUnlockingPeriod) external onlyOwner {
        vipUnlockingPeriod = _vipUnlockingPeriod;
        emit VipUnlockingPeriodUpdated(_vipUnlockingPeriod);
    }

    /**
     * @dev This empty reserved space is put in place to allow future versions to add new
     * variables without shifting down storage in the inheritance chain.
     * See https://docs.openzeppelin.com/contracts/4.x/upgradeable#storage_gaps
     */
    uint256[50] private __gap;
}
