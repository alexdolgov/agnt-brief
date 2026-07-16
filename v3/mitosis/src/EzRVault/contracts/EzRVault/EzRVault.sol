// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.27;

import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC20/ERC20Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/security/ReentrancyGuardUpgradeable.sol";
import "./EzRvaultStorage.sol";
import "../Errors/Errors.sol";
import "../EigenLayer/interfaces/IStrategyManager.sol";
import "../EigenLayer/interfaces/IDelegationManager.sol";
import "../EigenLayer/interfaces/IRewardsCoordinator.sol";
import {
    OwnableUpgradeable
} from "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import { IBeacon } from "@openzeppelin/contracts/proxy/beacon/BeaconProxy.sol";
import "./libraries/EzRVaultLib.sol";

contract EzRVault is
    ERC20Upgradeable,
    OwnableUpgradeable,
    ReentrancyGuardUpgradeable,
    EzRVaultStorageV5
{
    using SafeERC20 for IERC20;

    uint256 public constant BASIS_POINTS = 10000; // BASIS_POINTS used for percentage (10000 basis points equal 100%)
    uint256 public constant SHARE_OFFSET = 1e3;
    uint256 public constant BALANCE_OFFSET = 1e3;

    // Withdraw buffer Beacon
    IBeacon public immutable withdrawBufferBeacon;

    // EigenLayer configs
    IStrategyManager public immutable strategyManager;
    IDelegationManager public immutable delegationManager;
    IRewardsCoordinator public immutable rewardsCoordinator;
    IERC20 public immutable EIGEN;
    IERC20 public immutable B_EIGEN;

    // Protocol fee on rewards
    uint256 public immutable protocolFee;
    address public immutable protocolTreasury;

    // 7 days in blocks number (60*60*24*7 / 12)
    uint256 public constant SEVEN_DAYS_BLOCKS = 50_400;

    // Max cooldown blocks basis points
    uint256 public immutable maxCooldownBlocksBasisPoints;

    event DelegationAddressUpdated(address delegateAddress);

    event VaultCooldownUpdated(uint256 oldVaultCooldown, uint256 newVaultCooldown);

    event Deposit(address user, uint256 underlyingAmount, uint256 lpMinted);

    event WithdrawStarted(
        bytes32 withdrawRoot,
        address user,
        address staker,
        address delegatedTo,
        address withdrawer,
        uint nonce,
        uint startBlock,
        IStrategy[] strategies,
        uint256[] shares
    );

    event WithdrawRequestClaimed(
        bytes32 withdrawalRoot,
        address user,
        uint256 underlyingClaimAmount,
        IDelegationManager.Withdrawal withdrawal
    );

    event AdminWithdrawalStarted(
        bytes32 withdrawRoot,
        address admin,
        address staker,
        address delegatedTo,
        address withdrawer,
        uint nonce,
        uint startBlock,
        IStrategy[] strategies,
        uint256[] shares
    );

    event AdminWithdrawalCompleted(
        bytes32 withdrawalRoot,
        address admin,
        uint256 underlyingClaimAmount,
        IDelegationManager.Withdrawal withdrawal
    );

    event EmergencyWithdrawalTracked(IDelegationManager.Withdrawal withdrawal);
    event EmergencyWithdrawalCompleted(IDelegationManager.Withdrawal withdrawal);
    event IncentiveDeposited(uint256 amount);
    event Paused(bool paused);
    event PauserUpdated(address oldPauser, address newPauser);
    event VaultRewardsDestinationUpdated(
        address oldRewardsDestination,
        address newRewardsDestination
    );
    event RewardsProofSubmitterUpdated(
        address oldRewardsProofSubmitter,
        address newRewardsProofSubmitter
    );
    event TvlLimitUpdated(uint256 newTvlLimit);
    event WithdrawUnlockTimestampUpdated(uint256 newWithdrawUnlockTimestamp);
    event WithdrawalBufferFilled(uint256 _amount);
    event InstantWithdrawEnabled(IWithdrawalBuffer _withdrawalBuffer);
    event WithdrawalBufferAdminUpdated(address oldAdmin, address newAdmin);

    /// @dev Only allows deposit when Delegated
    modifier onlyWhenDelegated() {
        _checkIfDelegated();
        _;
    }

    /// @dev Only allows deposit and withdraw when not paused
    modifier whenNotPaused() {
        _checkIfPaused();
        _;
    }

    /// @dev Only allowed pauser and owner to change pause state
    modifier onlyOwnerOrPauser() {
        if (msg.sender != owner() && msg.sender != pauser) revert NotPauser();
        _;
    }

    /// @dev only allowed rewardsProodSubmitter(If set) and owner can submit proofs to claim rewards.
    modifier onlyRewardsProofSubmitter() {
        if (msg.sender != owner() && msg.sender != rewardsProofSubmitter)
            revert NotRewardsProofSubmitter();
        _;
    }

    /// @dev only allowed withdrawalBuffer(If set) can burn LP tokens through instant withdrawal
    modifier onlyWithdrawalBuffer() {
        if (msg.sender != address(withdrawalBuffer) || address(withdrawalBuffer) == address(0))
            revert NotWithdrawalBuffer();
        _;
    }

    /// @dev only allows owner or withdrawalBufferAdmin to call the function
    modifier onlyOwnerOrWithdrawalBufferAdmin() {
        _checkIfOwnerOrWithdrawalBufferAdmin();
        _;
    }

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor(
        IStrategyManager _strategyManager,
        IDelegationManager _delegationManager,
        IRewardsCoordinator _rewardsCoordinator,
        IERC20 _eigen,
        IERC20 _bEigen,
        uint256 _protocolFee,
        address _protocolTreasury,
        uint256 _maxCooldownBlocksBasisPoints,
        IBeacon _withdrawBufferBeacon
    ) {
        if (
            address(_strategyManager) == address(0) ||
            address(_delegationManager) == address(0) ||
            address(_rewardsCoordinator) == address(0) ||
            address(_eigen) == address(0) ||
            address(_bEigen) == address(0) ||
            _protocolFee == 0 ||
            _protocolTreasury == address(0) ||
            _maxCooldownBlocksBasisPoints == 0 ||
            address(_withdrawBufferBeacon) == address(0)
        ) revert InvalidZeroInput();

        // verify protocol fee
        if (_protocolFee > BASIS_POINTS) revert InvalidFee();
        if (_maxCooldownBlocksBasisPoints > BASIS_POINTS)
            revert InvalidMaxCooldownBlocksBasisPoints();

        strategyManager = _strategyManager;
        delegationManager = _delegationManager;
        rewardsCoordinator = _rewardsCoordinator;
        protocolFee = _protocolFee;
        protocolTreasury = _protocolTreasury;
        maxCooldownBlocksBasisPoints = _maxCooldownBlocksBasisPoints;
        EIGEN = _eigen;
        B_EIGEN = _bEigen;
        withdrawBufferBeacon = _withdrawBufferBeacon;
        _disableInitializers();
    }

    function initialize(
        string memory _name,
        string memory _symbol,
        IERC20 _underlying,
        IStrategy _strategy,
        address vaultOwner,
        uint256 _cooldownBlocks,
        uint256 _vaultFee,
        address _vaultFeeDestination,
        address _rewardsDestination
    ) public initializer {
        // check for zero values
        if (
            address(_underlying) == address(0) ||
            address(_strategy) == address(0) ||
            vaultOwner == address(0) ||
            _vaultFeeDestination == address(0) ||
            _rewardsDestination == address(0) ||
            bytes(_name).length == 0 ||
            bytes(_symbol).length == 0
        ) revert InvalidZeroInput();

        // verify vault fee
        if (_vaultFee + protocolFee > BASIS_POINTS) revert InvalidFee();

        // check strategy whitelisted,
        // Note: beaconStrategy will fail as it is not whitelisted under strategyManager
        if (!strategyManager.strategyIsWhitelistedForDeposit(_strategy)) revert InvalidStrategy();

        // check if underlying token is EIGEN
        if (_underlying == EIGEN || _underlying == B_EIGEN) {
            // revert if strategy underlying is not bEIGEN
            if (IStrategy(_strategy).underlyingToken() != B_EIGEN) revert InvalidUnderlyingToken();
        } else {
            // check underlying token
            if (IStrategy(_strategy).underlyingToken() != _underlying)
                revert InvalidUnderlyingToken();
        }

        // check for cooldown blocks
        if (_cooldownBlocks < delegationManager.minWithdrawalDelayBlocks())
            revert InvalidWithdrawalCooldown();

        __ERC20_init(_name, _symbol);

        // ReentrancyGuard init
        __ReentrancyGuard_init();

        // transfer ownership to vaultOwner
        _transferOwnership(vaultOwner);

        // set underlying asset and strategy
        underlying = _underlying;
        underlyingStrategy = _strategy;
        underlyingDecimals = ERC20(address(_underlying)).decimals();
        vaultCooldownBlocks = _cooldownBlocks;
        cooldownBlocksUpdatedAt = block.number;
        vaultFee = _vaultFee;
        vaultFeeDestination = _vaultFeeDestination;
        vaultRewardsDestination = _rewardsDestination;
    }

    // /**
    //  * @notice  reinitializing the EzRVaults to track pre Slashing Upgrade queued shares,
    //  * @notice  reinitialize with version 2
    //  * @dev     permissioned call (onlyOwner)
    //  * @param   withdrawRoots  list of pending withdrawal roots
    //  * @param   initialWithdrawableShares  list of initial withdrawable shares for each withdrawal root
    //  */
    // function reinitialize(
    //     bytes32[] calldata withdrawRoots,
    //     uint256[] calldata initialWithdrawableShares
    // ) external onlyOwner reinitializer(2) {
    //     // check for zero values
    //     if (withdrawRoots.length != initialWithdrawableShares.length) revert InvalidZeroInput();

    //     // set the initial withdrawable shares for each withdrawal root
    //     for (uint256 i = 0; i < withdrawRoots.length; ) {
    //         queuedWithdrawalInfo[withdrawRoots[i]]
    //             .initialWithdrawableShares = initialWithdrawableShares[i];
    //         unchecked {
    //             ++i;
    //         }
    //     }
    // }

    function decimals() public view override returns (uint8) {
        return underlyingDecimals;
    }

    /// @dev Sets the address to delegate tokens to in EigenLayer - Can only delegate to Single Operator
    function setDelegateAddress(
        address _delegateAddress,
        ISignatureUtilsMixinTypes.SignatureWithExpiry memory approverSignatureAndExpiry,
        bytes32 approverSalt
    ) external nonReentrant onlyOwner {
        _checkZeroValue(address(_delegateAddress));
        // check the delegation status on EigenLayer
        // Note: In case of force undelegation by delegatedOperator delegatedTo will be updated to address(0)
        if (delegationManager.delegatedTo(address(this)) != address(0)) revert AlreadyDelegated();

        delegationManager.delegateTo(_delegateAddress, approverSignatureAndExpiry, approverSalt);

        emit DelegationAddressUpdated(_delegateAddress);
    }

    function setCooldownBlocks(uint256 _cooldownBlocks) external nonReentrant onlyOwner {
        uint256 minCooldownBlocks = delegationManager.minWithdrawalDelayBlocks();
        // check for cooldown blocks
        if (_cooldownBlocks < minCooldownBlocks || _cooldownBlocks == 0)
            revert InvalidWithdrawalCooldown();
        // check for valid cooldownBlocks config
        if (_cooldownBlocks > minCooldownBlocks) {
            uint256 maxCooldownBlocksAllowed = minCooldownBlocks +
                (minCooldownBlocks * maxCooldownBlocksBasisPoints) /
                BASIS_POINTS;
            // check for max cooldownblocks allowed
            if (_cooldownBlocks > maxCooldownBlocksAllowed) revert ExceedMaxCooldownBlocks();

            // check for cooldown config last updated
            _checkCooldownBlocksUpdateDelay();
        }
        emit VaultCooldownUpdated(vaultCooldownBlocks, _cooldownBlocks);
        vaultCooldownBlocks = _cooldownBlocks;
        cooldownBlocksUpdatedAt = block.number;
    }

    function setRewardsDestination(address _rewardsDestination) external nonReentrant onlyOwner {
        _checkZeroValue(_rewardsDestination);
        emit VaultRewardsDestinationUpdated(vaultRewardsDestination, _rewardsDestination);
        vaultRewardsDestination = _rewardsDestination;
    }

    /**
     * @notice  Sets the TVL limit for the vault
     * @dev     permissioned call (onlyOwner), 0 means no limit
     * @param   _tvlLimit  new TVL limit for the vault
     */
    function setTvlLimit(uint256 _tvlLimit) external onlyOwner {
        // Set the value
        tvlLimit = _tvlLimit;

        // Emit event for tvl limit update
        emit TvlLimitUpdated(_tvlLimit);
    }

    /**
     * @notice  Sets the withdraw unlock timestamp for the vault
     * @dev     permissioned call (onlyOwner), this is the timestamp after which users can withdraw their funds, 0 means no unlock timestamp (users can withdraw immediately)
     * @param   _withdrawUnlockTimestamp  new withdraw unlock timestamp for the vault
     */
    function setWithdrawUnlockTimestamp(uint256 _withdrawUnlockTimestamp) external onlyOwner {
        // Ensure the new timestamp is not in the past
        if (_withdrawUnlockTimestamp > 0 && _withdrawUnlockTimestamp <= block.timestamp) {
            revert InvalidWithdrawUnlockTimestamp();
        }

        // set the withdraw unlock timestamp
        withdrawUnlockTimestamp = _withdrawUnlockTimestamp;

        // Emit event for withdraw unlock timestamp update
        emit WithdrawUnlockTimestampUpdated(_withdrawUnlockTimestamp);
    }

    /**
     * @notice  Pause the vault
     * @dev     permissioned call (onlyPuaser)
     */
    function pause() external onlyOwnerOrPauser {
        paused = true;
        emit Paused(true);
    }

    /**
     * @notice  UnPause the vault
     * @dev     permissioned call (onlyOwner)
     */
    function unpause() external onlyOwner {
        paused = false;
        emit Paused(false);
    }

    /**
     * @notice  Sets a proof submitter address which can call processRewards
     * @dev     permissioned call (onlyOwner), cannot be set to address(0)
     * @param   _rewardsProofSubmitter  new proof submitter address
     */
    function setRewardsProofSubmitter(address _rewardsProofSubmitter) external onlyOwner {
        _checkZeroValue(_rewardsProofSubmitter);
        emit RewardsProofSubmitterUpdated(rewardsProofSubmitter, _rewardsProofSubmitter);
        rewardsProofSubmitter = _rewardsProofSubmitter;
    }

    /**
     * @notice  Update pauser address
     * @dev     permissioned call (onlyOwner)
     * @param   _pauser  new pauser address
     */
    function setPauser(address _pauser) external onlyOwner {
        _checkZeroValue(_pauser);
        emit PauserUpdated(pauser, _pauser);
        pauser = _pauser;
    }

    function setWithdrawalBufferAdmin(address _withdrawalBufferAdmin) external onlyOwner {
        _checkZeroValue(_withdrawalBufferAdmin);
        emit WithdrawalBufferAdminUpdated(withdrawalBufferAdmin, _withdrawalBufferAdmin);
        withdrawalBufferAdmin = _withdrawalBufferAdmin;
    }

    /**
     * @notice  Enable InstantWithdrawal by deploying a withdrawal buffer beacon proxy
     * @dev     permissioned call (onlyOwner), can be called only once
     * @param   _instantWithdrawalFeeBps  Fee BPS for instant withdrawal
     * @param   _withdrawalBufferTarget  Max Buffer capacity for Instant Withdrawals
     * @param   _feeDestination  destination address for instant withdrawal fee
     */
    function enableInstantWithdrawals(
        uint256 _instantWithdrawalFeeBps,
        uint256 _withdrawalBufferTarget,
        address _feeDestination,
        address _withdrawalBufferAdmin
    ) external onlyOwner {
        // Check for zero values
        _checkZeroValue(_withdrawalBufferAdmin);

        // Check if withdrawalBuffer is already enabled
        if (address(withdrawalBuffer) != address(0)) revert InstantWithdrawAlreadyEnabled();
        withdrawalBuffer = IWithdrawalBuffer(
            EzRVaultLib.createWithdrawBuffer(
                address(withdrawBufferBeacon),
                _instantWithdrawalFeeBps,
                _withdrawalBufferTarget,
                _feeDestination,
                owner()
            )
        );

        // update withdrawal buffer admin
        emit WithdrawalBufferAdminUpdated(withdrawalBufferAdmin, _withdrawalBufferAdmin);
        withdrawalBufferAdmin = _withdrawalBufferAdmin;

        emit InstantWithdrawEnabled(withdrawalBuffer);
    }

    /// @dev Deposit tokens into the EigenLayer.  This call assumes any balance of tokens in this contract will be delegated
    /// so do not directly send tokens here or they will be delegated and attributed to the next caller.
    /// @return shares The amount of new shares in the `strategy` created as part of the action.
    function deposit(
        uint256 tokenAmount
    ) external nonReentrant onlyWhenDelegated whenNotPaused returns (uint256 shares) {
        _checkZeroValue(tokenAmount);

        // Verify it is not over the TVL limit
        if (tvlLimit > 0) {
            uint256 currentTvl = getUnderlyingBalanceFromStrategy();
            if (currentTvl + tokenAmount > tvlLimit) revert TvlLimitExceeded();
        }

        // Move the tokens into vault
        underlying.safeTransferFrom(msg.sender, address(this), tokenAmount);

        // calculate mint amount
        // if totalSupply of LP token is 0 mint the initial amount at 1:1
        uint256 mintAmount = (tokenAmount * scaleFactor()) / getRate();

        // sanity check
        if (mintAmount == 0) revert InvalidTokenAmount();
        _mint(msg.sender, mintAmount);

        // check and fill the withdraw buffer if it is set
        uint256 remainingAmount = _checkAndFillWithdrawBuffer(tokenAmount);

        // deposit the remaining amount into EigenLayer
        if (remainingAmount > 0) {
            _deposit(remainingAmount);
        }

        emit Deposit(msg.sender, tokenAmount, mintAmount);
    }

    /**
     * @notice  Perform necessary checks on input data and deposits into EigenLayer
     * @param   _tokenAmount  amount of given token to deposit
     * @return  shares  shares for deposited amount
     */
    function _deposit(uint256 _tokenAmount) internal returns (uint256 shares) {
        // Approve the strategy manager to spend the tokens
        underlying.safeIncreaseAllowance(address(strategyManager), _tokenAmount);

        // Deposit the tokens via the strategy manager
        return strategyManager.depositIntoStrategy(underlyingStrategy, underlying, _tokenAmount);
    }

    /**
     * @notice  Tracks the pending queued withdrawal shares cause by Operator force undelegating the Vault
     * @dev     permissioned call (onlyOwner of Vault),
     *          EigenLayer link - https://github.com/Layr-Labs/eigenlayer-contracts/blob/dev/src/contracts/core/DelegationManager.sol#L242
     * @param   withdrawal  Withdrawal struct needs to be tracked
     */
    function emergencyTrackQueuedWithdrawal(
        IDelegationManager.Withdrawal memory withdrawal
    ) external onlyOwner {
        if (withdrawal.strategies[0] != underlyingStrategy) revert InvalidStrategy();
        bytes32 withdrawalRoot = delegationManager.calculateWithdrawalRoot(withdrawal);

        // verify withdrawal is not user initiated or admin initiated
        if (
            withdrawRequest[withdrawalRoot].withdrawer != address(0) ||
            adminWithdrawalRequest[withdrawalRoot].shares != 0
        ) revert WithdrawalAlreadyTracked();

        // verify emergency withdrawal is not tracked
        if (emergencyWithdrawal[withdrawalRoot]) revert WithdrawalAlreadyTracked();

        // verify withdrawal is pending and vault not double counting
        if (!delegationManager.pendingWithdrawals(withdrawalRoot))
            revert WithdrawalAlreadyCompleted();

        uint256 withdrawableShares;

        // get current shares of queuedWithdrawal from EigenLayer DelegationManager
        (, uint256[] memory currentShares) = delegationManager.getQueuedWithdrawal(withdrawalRoot);
        // track queued shares for the underlying in withdrawable shares
        queuedShares += currentShares[0];
        withdrawableShares = currentShares[0];

        // track initial withdrawable shares of the underlying in queuedWithdrawal
        queuedWithdrawalInfo[withdrawalRoot].initialWithdrawableShares = withdrawableShares;

        // track in emergencyWithdrawal
        emergencyWithdrawal[withdrawalRoot] = true;

        emit EmergencyWithdrawalTracked(withdrawal);
    }

    /**
     * @notice  Complete Emergency queued withdrwal initiated by force undelegation by Operator
     * @dev     permissioned call by OnlyOwner of vault
     * @param   withdrawal  Withdrawal struct for EigenLayer
     */
    function completeEmergencyTrackedWithdrawal(
        IDelegationManager.Withdrawal memory withdrawal
    ) external onlyOwner {
        bytes32 withdrawalRoot = delegationManager.calculateWithdrawalRoot(withdrawal);

        if (!emergencyWithdrawal[withdrawalRoot]) revert InvalidWithdrawal();
        IERC20[] memory tokens = new IERC20[](1);
        tokens[0] = underlying;

        // reduce queuedShares to avoid double counting
        queuedShares -= queuedWithdrawalInfo[withdrawalRoot].initialWithdrawableShares;

        // reset slashing delta to avoid double counting
        _resetSlashingDelta(withdrawalRoot);

        // complete the queued withdrawal from EigenLayer with receiveAsToken set to true
        delegationManager.completeQueuedWithdrawal(withdrawal, tokens, true);

        // reset emergencyQueuedWithdrawal
        delete emergencyWithdrawal[withdrawalRoot];

        // redeposit funds to strategy
        _deposit(underlying.balanceOf(address(this)));

        emit EmergencyWithdrawalCompleted(withdrawal);
    }

    // TODO: emergency track slashed queued withdrawal
    /**
     * @notice  Tracks Slashing delta of queuedWithdrawal
     * @param   withdrawalRoots  EigenLayer withdrawal roots to track slashing delta for
     */
    function emergencyTrackSlashedQueuedWithdrawalDelta(
        bytes32[] calldata withdrawalRoots
    ) external {
        for (uint256 i = 0; i < withdrawalRoots.length; ) {
            // revert if withdrawalRoot not in withdrawRequest, not in adminWithdrawalRequest and not emergencyWithdrawal
            if (
                withdrawRequest[withdrawalRoots[i]].withdrawer == address(0) &&
                adminWithdrawalRequest[withdrawalRoots[i]].shares == 0 &&
                !emergencyWithdrawal[withdrawalRoots[i]]
            ) revert WithdrawalNotQueued();

            // get withdrawal and current shares of queuedWithdrawal from EigenLayer DelegationManager
            (, uint256[] memory currentShares) = delegationManager.getQueuedWithdrawal(
                withdrawalRoots[i]
            );

            // Only underlying token will be present in queuedWithdrawal. Therefore currentShares length will be 1
            // calculate new slashing delta for each token
            uint256 slashingDelta = (queuedWithdrawalInfo[withdrawalRoots[i]]
                .initialWithdrawableShares > currentShares[0])
                ? queuedWithdrawalInfo[withdrawalRoots[i]].initialWithdrawableShares -
                    currentShares[0]
                : 0;

            // reduce totalQueuedSharesSlashedDelta with old slashing delta for queuedWithdrawal
            totalQueuedSharesSlashedDelta -= queuedWithdrawalInfo[withdrawalRoots[i]]
                .sharesSlashedDelta;

            // track new slashed delta for each token
            totalQueuedSharesSlashedDelta += slashingDelta;

            // track new slashed delta for queuedWithdrawal
            queuedWithdrawalInfo[withdrawalRoots[i]].sharesSlashedDelta = slashingDelta;

            unchecked {
                ++i;
            }
        }
    }

    /**
     * @notice  Creates a withdraw request for user and queueWithdrawal on EigenLayer
     * @param   tokenAmount  amount of LP token to withdraw
     */
    function withdraw(
        uint256 tokenAmount
    ) external nonReentrant onlyWhenDelegated whenNotPaused returns (bytes32) {
        _checkZeroValue(tokenAmount);

        // check if withdraw unlock timestamp is set and not reached
        if (withdrawUnlockTimestamp > 0 && block.timestamp < withdrawUnlockTimestamp)
            revert WithdrawUnlockNotReached();

        // Move LP tokens to vault
        _transfer(msg.sender, address(this), tokenAmount);

        // get rate of LP tokens -> underlying tokens
        uint256 underlyingAmount = (tokenAmount * getRate()) / scaleFactor();

        // start withdrawal from EigenLayer
        (
            IDelegationManager.QueuedWithdrawalParams[] memory queuedWithdrawalParams,
            bytes32 withdrawalRoot,
            uint256 withdrawableShares,
            uint96 nonce
        ) = _startWithdrawFromEigen(underlyingAmount);

        // track user withdraw request
        withdrawRequest[withdrawalRoot] = UserWithdrawRequest(
            msg.sender,
            tokenAmount,
            block.number
        );

        // Emit the withdrawal started event
        emit WithdrawStarted(
            withdrawalRoot,
            msg.sender,
            address(this),
            delegationManager.delegatedTo(address(this)),
            address(this),
            nonce,
            block.number,
            queuedWithdrawalParams[0].strategies,
            queuedWithdrawalParams[0].depositShares
        );

        return withdrawalRoot;
    }

    /**
     * @notice  Claim the requested withdraw
     * @dev     only the withdrawer can claim the request after vault cooldownBlocks
     * @param   withdrawal  Withdrawal struct for EigenLayer completeQueuedWithdrawal
     */
    function claim(
        IDelegationManager.Withdrawal calldata withdrawal
    ) external nonReentrant onlyWhenDelegated whenNotPaused {
        bytes32 withdrawalRoot = delegationManager.calculateWithdrawalRoot(withdrawal);

        if (msg.sender != withdrawRequest[withdrawalRoot].withdrawer || msg.sender == address(0))
            revert UnAuthorizedClaimer();

        _checkEarlyClaim(withdrawRequest[withdrawalRoot].createdAt);

        // burn LP token
        _burn(address(this), withdrawRequest[withdrawalRoot].lpTokenAmountLocked);

        uint256 underlyingClaimAmount = _trackSharesAndCompleteWithdrawal(
            withdrawalRoot,
            withdrawal
        );

        // transfer received amount of underlying to msg.sender
        underlying.safeTransfer(msg.sender, underlyingClaimAmount);

        emit WithdrawRequestClaimed(withdrawalRoot, msg.sender, underlyingClaimAmount, withdrawal);

        // delete recorded withdrawRequest
        delete withdrawRequest[withdrawalRoot];
    }

    /**
     * @notice  Claim ERC20 rewards from EigenLayer
     * @dev     permissioned call (onlyOwner)
     * @param   _claim  RewardsMerkleClaim object to process claim
     */
    function processRewards(
        IRewardsCoordinator.RewardsMerkleClaim calldata _claim
    ) external onlyRewardsProofSubmitter {
        // check rewards Destination is configured
        if (vaultRewardsDestination == address(0)) revert RewardsDestinationNotConfigured();

        rewardsCoordinator.processClaim(_claim, address(this));

        for (uint256 i = 0; i < _claim.tokenLeaves.length; ) {
            // deduct fee for each rewards token
            uint256 remainingRewards = _processRewardsFee(_claim.tokenLeaves[i].token);
            // process the rewards
            _processRewards(_claim.tokenLeaves[i].token, remainingRewards);
            unchecked {
                ++i;
            }
        }
    }

    /**
     * @notice  Allows admin to start a withdrawal from EigenLayer to Fill the withdrawal buffer
     * @dev     permissioned call (onlyOwner or withdrawalBufferAdmin),
     * @param   underlyingAmount  amount of underlying tokens to withdraw from EigenLayer
     */
    function adminStartWithdrawal(
        uint256 underlyingAmount
    )
        external
        nonReentrant
        onlyOwnerOrWithdrawalBufferAdmin
        whenNotPaused
        onlyWhenDelegated
        returns (bytes32)
    {
        _checkZeroValue(underlyingAmount);

        // check if withdrawalBuffer is enabled
        _checkIfWithdrawalBufferEnabled();

        // start withdrawal from EigenLayer
        (
            IDelegationManager.QueuedWithdrawalParams[] memory queuedWithdrawalParams,
            bytes32 withdrawalRoot,
            uint256 withdrawableShares,
            uint96 nonce
        ) = _startWithdrawFromEigen(underlyingAmount);

        // track admin withdrawal request
        adminWithdrawalRequest[withdrawalRoot] = AdminWithdrawRequest(
            withdrawableShares,
            block.number
        );

        // Emit the withdrawal started event
        emit AdminWithdrawalStarted(
            withdrawalRoot,
            msg.sender,
            address(this),
            delegationManager.delegatedTo(address(this)),
            address(this),
            nonce,
            block.number,
            queuedWithdrawalParams[0].strategies,
            queuedWithdrawalParams[0].depositShares
        );

        return withdrawalRoot;
    }

    /**
     * @notice  Allows admin to complete a withdrawal request from EigenLayer and fill the withdraw buffer or redeposit
     * @dev     permissioned call (onlyOwner or withdrawalBufferAdmin),
     * @param   withdrawal  Withdrawal struct for EigenLayer completeQueuedWithdrawal
     */
    function adminCompleteWithdrawal(
        IDelegationManager.Withdrawal calldata withdrawal
    ) external nonReentrant onlyOwnerOrWithdrawalBufferAdmin whenNotPaused onlyWhenDelegated {
        bytes32 withdrawalRoot = delegationManager.calculateWithdrawalRoot(withdrawal);

        _checkIfWithdrawalBufferEnabled();

        _checkEarlyClaim(adminWithdrawalRequest[withdrawalRoot].createdAt);

        uint256 underlyingClaimAmount = _trackSharesAndCompleteWithdrawal(
            withdrawalRoot,
            withdrawal
        );

        // check and fill the withdraw buffer if it is set
        uint256 remainingAmount = _checkAndFillWithdrawBuffer(underlyingClaimAmount);

        // redeposit the remaining amount into EigenLayer
        if (remainingAmount > 0) {
            _deposit(remainingAmount);
        }
        emit AdminWithdrawalCompleted(
            withdrawalRoot,
            msg.sender,
            underlyingClaimAmount,
            withdrawal
        );

        // delete recorded admin withdraw request
        delete adminWithdrawalRequest[withdrawalRoot];
    }

    /**
     * @notice  Burn LP tokens from user account through instant withdrawal
     * @dev     permissioned call (onlyWithdrawalBuffer),
     * @param   _user  address of user to burn LP tokens from
     * @param   _amount  amount of LP tokens to burn
     */
    function burnByInstantWithdrawal(address _user, uint256 _amount) external onlyWithdrawalBuffer {
        // burn the LP tokens from user
        _burn(_user, _amount);
    }

    /**
     * @notice  Allows anyone to incentivize the vault by donating underlying
     * @dev     does not mint LP token for the incentive deposited
     * @param   amount  amount of underlying tokens
     */
    function depositIncentive(uint256 amount) external nonReentrant {
        _checkZeroValue(amount);

        // transfer underlying from caller to vault
        underlying.safeTransferFrom(msg.sender, address(this), amount);

        // deposit the underlying in underlyingStrategy
        _deposit(amount);

        emit IncentiveDeposited(amount);
    }

    /**
     * @notice  sweep any ERC20 token from vault contract
     * @dev     considers any token balance in vault as rewards, permissioned call (onlyOwner)
     * @param   token  token contract to perform sweep
     */
    function sweepERC20(IERC20 token) external nonReentrant onlyOwner {
        // revert if owner tries to sweep lp tokens
        if (address(token) == address(this)) revert InvalidTokenSweep();
        uint256 tokenBalance = token.balanceOf(address(this));
        if (tokenBalance == 0) revert InvalidZeroBalance();

        uint256 remainingBalance = _processRewardsFee(token);
        _processRewards(token, remainingBalance);
    }

    /// @dev getter for vault cooldown blocks. returns max cooldown blocks for strategy
    function cooldownBlocks() public view returns (uint256) {
        return
            (delegationManager.minWithdrawalDelayBlocks() > vaultCooldownBlocks)
                ? delegationManager.minWithdrawalDelayBlocks()
                : vaultCooldownBlocks;
    }

    /// @dev Gets the underlying token amount from the amount of shares + queued withdrawal shares
    function getUnderlyingBalanceFromStrategy() public view returns (uint256) {
        // calculate the underlying balance from the strategy through lib
        return
            EzRVaultLib.getUnderlyingBalance(
                underlyingStrategy,
                delegationManager,
                _getQueuedSharesWithSlashing(),
                underlying.balanceOf(address(withdrawalBuffer))
            );
    }

    function _getQueuedSharesWithSlashing() internal view returns (uint256) {
        return queuedShares - totalQueuedSharesSlashedDelta;
    }

    /// @dev returns the scale factor according to underlying decimals
    function scaleFactor() public view returns (uint256) {
        return (10 ** underlyingDecimals);
    }

    /// @dev Gets the current rate of LP token
    function getRate() public view returns (uint256) {
        return
            ((getUnderlyingBalanceFromStrategy() + BALANCE_OFFSET) * scaleFactor()) /
            (totalSupply() + SHARE_OFFSET);
    }

    /**
     * @notice  View function for getting a user's underlying token balance
     * @dev     For the user specified, get the amount of tokens they can claim
     * @param   userAddress  user address to query
     * @return  uint256  Amount of underlying tokens they have a claim on
     */
    function userUnderlying(address userAddress) public view returns (uint256) {
        return (balanceOf(userAddress) * getRate()) / scaleFactor();
    }

    /// @dev process the rewards received for specified token
    function _processRewards(IERC20 token, uint256 rewardsAmount) internal {
        // if reward token is underlying then redeposit
        if (token == underlying) {
            // redeposit into strategy
            _deposit(rewardsAmount);
        } else {
            // if reward token is not underlying then forward to RewardsDestination
            token.safeTransfer(vaultRewardsDestination, rewardsAmount);
        }
    }

    /// @dev process fee for the rewards received
    function _processRewardsFee(IERC20 token) internal returns (uint256) {
        uint256 totalRewards = token.balanceOf(address(this));
        // transfer protocol fee to protocol treasury
        uint256 protocolFeeShare = (totalRewards * protocolFee) / BASIS_POINTS;
        token.safeTransfer(protocolTreasury, protocolFeeShare);

        // transfer vault fee to configured vault fee destination
        uint256 vaultFeeShare = (totalRewards * vaultFee) / BASIS_POINTS;
        token.safeTransfer(vaultFeeDestination, vaultFeeShare);

        return totalRewards - (protocolFeeShare + vaultFeeShare);
    }

    /// @dev ensures users have 7 days window to withdraw funds before owner can update the vaulCooldownBlocks
    function _checkCooldownBlocksUpdateDelay() internal view {
        if (block.number - cooldownBlocksUpdatedAt < vaultCooldownBlocks + SEVEN_DAYS_BLOCKS)
            revert EarlyCooldownBlocksUpdate();
    }

    function _resetSlashingDelta(bytes32 withdrawalRoot) internal {
        if (queuedWithdrawalInfo[withdrawalRoot].sharesSlashedDelta > 0) {
            // reduce total slashed delta with queuedWithdrawalInfo
            totalQueuedSharesSlashedDelta -= queuedWithdrawalInfo[withdrawalRoot]
                .sharesSlashedDelta;

            // delete queuedWithdrawalInfo for the withdrawal root
            delete queuedWithdrawalInfo[withdrawalRoot].sharesSlashedDelta;
        }
    }

    function _checkAndFillWithdrawBuffer(
        uint256 _amount
    ) internal returns (uint256 remainingAmount) {
        remainingAmount = _amount;
        // Check if withdrawal Buffer is enabled
        if (address(withdrawalBuffer) != address(0)) {
            // check if withdraw buffer is set and fill it with underlying balance
            uint256 deficit = withdrawalBuffer.getBufferDeficit();
            if (deficit > 0) {
                uint256 bufferToFill = deficit > _amount ? _amount : deficit;

                // Transfer the deficit amount to withdrawal buffer
                underlying.safeTransfer(address(withdrawalBuffer), bufferToFill);

                // update the remaining amount
                remainingAmount -= bufferToFill;

                emit WithdrawalBufferFilled(bufferToFill);
            }
        }
    }

    function _startWithdrawFromEigen(
        uint256 underlyingAmount
    )
        internal
        returns (
            IDelegationManager.QueuedWithdrawalParams[] memory queuedWithdrawalParams,
            bytes32 withdrawalRoot,
            uint256 withdrawableShares,
            uint96 nonce
        )
    {
        // create queuedWithdrawalParams struct for withdrawRequest
        (queuedWithdrawalParams, withdrawableShares, nonce) = EzRVaultLib.getQueuedWithdrawalParam(
            underlyingAmount,
            delegationManager,
            underlyingStrategy
        );

        // queue withdrawal in EigenLayer
        withdrawalRoot = _trackSharesAndQueueWithdrawal(withdrawableShares, queuedWithdrawalParams);
    }

    function _checkZeroValue(uint256 value) internal pure {
        if (value == 0) revert InvalidZeroInput();
    }

    function _checkZeroValue(address value) internal pure {
        if (value == address(0)) revert InvalidZeroInput();
    }

    function _checkIfDelegated() internal view {
        if (delegationManager.delegatedTo(address(this)) == address(0)) revert VaultNotDelegated();
    }

    function _checkIfPaused() internal view {
        if (paused) revert VaultPaused();
    }

    function _checkEarlyClaim(uint256 createdAt) internal view {
        // check if cooldownBlocks is set and not reached
        if (block.number - createdAt < cooldownBlocks()) revert EarlyClaim();
    }

    function _checkIfOwnerOrWithdrawalBufferAdmin() internal view {
        if (msg.sender != owner() && msg.sender != withdrawalBufferAdmin)
            revert NotWithdrawalBufferAdmin();
    }

    function _checkIfWithdrawalBufferEnabled() internal view {
        // check if withdrawalBuffer is enabled
        if (address(withdrawalBuffer) == address(0)) revert InstantWithdrawNotEnabled();

        // check if withdrawalBuffer is paused
        if (withdrawalBuffer.paused()) revert InstantWithdrawPaused();
    }

    function _trackSharesAndQueueWithdrawal(
        uint256 withdrawableShares,
        IDelegationManager.QueuedWithdrawalParams[] memory queuedWithdrawalParams
    ) internal returns (bytes32 withdrawalRoot) {
        // track queued shares by withdrawable shares
        queuedShares += withdrawableShares;

        // queue withdrawal in EigenLayer
        withdrawalRoot = delegationManager.queueWithdrawals(queuedWithdrawalParams)[0];

        // track initial withdrawable shares of the token in queuedWithdrawal
        queuedWithdrawalInfo[withdrawalRoot].initialWithdrawableShares = withdrawableShares;
    }

    function _trackSharesAndCompleteWithdrawal(
        bytes32 withdrawalRoot,
        IDelegationManager.Withdrawal memory withdrawal
    ) internal returns (uint256 underlyingClaimAmount) {
        IERC20[] memory tokens = new IERC20[](1);
        tokens[0] = underlying;

        // reduce initial withdrawable queued Shares for this request
        queuedShares -= queuedWithdrawalInfo[withdrawalRoot].initialWithdrawableShares;

        // reset slashing delta to avoid double counting
        _resetSlashingDelta(withdrawalRoot);

        // check balance before completing queuedWithdrawal
        uint256 balanceBefore = underlying.balanceOf(address(this));

        // complete the queued withdrawal from EigenLayer with receiveAsToken set to true
        delegationManager.completeQueuedWithdrawal(withdrawal, tokens, true);

        // Calculate the amount of underlying tokens claimed
        underlyingClaimAmount = underlying.balanceOf(address(this)) - balanceBefore;
    }
}
