// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.27;

import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/proxy/beacon/UpgradeableBeacon.sol";
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

contract EzRVault is
    ERC20Upgradeable,
    OwnableUpgradeable,
    ReentrancyGuardUpgradeable,
    EzRVaultStorageV3
{
    using SafeERC20 for IERC20;

    uint256 public constant BASIS_POINTS = 10000; // BASIS_POINTS used for percentage (10000 basis points equal 100%)
    uint256 public constant SHARE_OFFSET = 1e3;
    uint256 public constant BALANCE_OFFSET = 1e3;

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

    /// @dev Only allows deposit when Delegated
    modifier onlyWhenDelegated() {
        if (delegationManager.delegatedTo(address(this)) == address(0)) revert VaultNotDelegated();
        _;
    }

    /// @dev Only allows deposit and withdraw when not paused
    modifier whenNotPaused() {
        if (paused) revert VaultPaused();
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

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor(
        IStrategyManager _strategyManager,
        IDelegationManager _delegationManager,
        IRewardsCoordinator _rewardsCoordinator,
        IERC20 _eigen,
        IERC20 _bEigen,
        uint256 _protocolFee,
        address _protocolTreasury,
        uint256 _maxCooldownBlocksBasisPoints
    ) {
        if (
            address(_strategyManager) == address(0) ||
            address(_delegationManager) == address(0) ||
            address(_rewardsCoordinator) == address(0) ||
            address(_eigen) == address(0) ||
            address(_bEigen) == address(0) ||
            _protocolFee == 0 ||
            _protocolTreasury == address(0) ||
            _maxCooldownBlocksBasisPoints == 0
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

    function decimals() public view override returns (uint8) {
        return underlyingDecimals;
    }

    /// @dev Sets the address to delegate tokens to in EigenLayer - Can only delegate to Single Operator
    function setDelegateAddress(
        address _delegateAddress,
        ISignatureUtilsMixinTypes.SignatureWithExpiry memory approverSignatureAndExpiry,
        bytes32 approverSalt
    ) external nonReentrant onlyOwner {
        if (address(_delegateAddress) == address(0x0)) revert InvalidZeroInput();
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
        if (_rewardsDestination == address(0)) revert InvalidZeroInput();
        emit VaultRewardsDestinationUpdated(vaultRewardsDestination, _rewardsDestination);
        vaultRewardsDestination = _rewardsDestination;
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
        if (_rewardsProofSubmitter == address(0)) revert InvalidZeroInput();
        emit RewardsProofSubmitterUpdated(rewardsProofSubmitter, _rewardsProofSubmitter);
        rewardsProofSubmitter = _rewardsProofSubmitter;
    }

    /**
     * @notice  Update pauser address
     * @dev     permissioned call (onlyOwner)
     * @param   _pauser  new pauser address
     */
    function setPauser(address _pauser) external onlyOwner {
        if (_pauser == address(0)) revert InvalidZeroInput();
        emit PauserUpdated(pauser, _pauser);
        pauser = _pauser;
    }

    /// @dev Deposit tokens into the EigenLayer.  This call assumes any balance of tokens in this contract will be delegated
    /// so do not directly send tokens here or they will be delegated and attributed to the next caller.
    /// @return shares The amount of new shares in the `strategy` created as part of the action.
    function deposit(
        uint256 tokenAmount
    ) external nonReentrant onlyWhenDelegated whenNotPaused returns (uint256 shares) {
        if (tokenAmount == 0) revert InvalidZeroInput();

        // Move the tokens into vault
        underlying.safeTransferFrom(msg.sender, address(this), tokenAmount);

        // calculate mint amount
        // if totalSupply of LP token is 0 mint the initial amount at 1:1
        uint256 mintAmount = (tokenAmount * scaleFactor()) / getRate();

        // sanity check
        if (mintAmount == 0) revert InvalidTokenAmount();
        _mint(msg.sender, mintAmount);
        shares = _deposit(tokenAmount);

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

        // verify withdrawal is not user initiated
        if (withdrawRequest[withdrawalRoot].withdrawer != address(0))
            revert UserWithdrawalAlreadyTracked();

        // verify emergency withdrawal is not tracked
        if (emergencyWithdrawal[withdrawalRoot]) revert WithdrawalAlreadyTracked();

        // verify withdrawal is pending and vault not double counting
        if (!delegationManager.pendingWithdrawals(withdrawalRoot))
            revert WithdrawalAlreadyCompleted();

        uint256 withdrawableShares;
        // Note: using try catch to handle EigenLayer slashing upgrade
        // get current shares of queuedWithdrawal from EigenLayer DelegationManager
        try delegationManager.getQueuedWithdrawal(withdrawalRoot) returns (
            IDelegationManager.Withdrawal memory,
            uint256[] memory currentShares
        ) {
            // track queued shares for the underlying in withdrawable shares
            queuedShares += currentShares[0];
            withdrawableShares = currentShares[0];
        } catch {
            // track queued shares for the underlying in scaled shares
            queuedShares += withdrawal.scaledShares[0];
            withdrawableShares = withdrawal.scaledShares[0];
        }

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

        // Note: Using try catch to handle the slashing upgrade of EL.
        // complete the queued withdrawal from EigenLayer with receiveAsToken set to true
        try delegationManager.completeQueuedWithdrawal(withdrawal, tokens, true) {} catch {
            delegationManager.completeQueuedWithdrawal(withdrawal, tokens, 0, true);
        }

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
            // revert if withdrawalRoot not in withdrawRequest and not emergencyWithdrawal
            if (
                withdrawRequest[withdrawalRoots[i]].withdrawer == address(0) &&
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
        if (tokenAmount == 0) revert InvalidZeroInput();
        // Move LP tokens to vault
        _transfer(msg.sender, address(this), tokenAmount);

        // get rate of LP tokens -> underlying tokens
        uint256 underlyingAmount = (tokenAmount * getRate()) / scaleFactor();

        // create queuedWithdrawalParams struct for withdrawRequest
        (
            IDelegationManager.QueuedWithdrawalParams[] memory queuedWithdrawalParams,
            uint256 withdrawableShares
        ) = _getQueuedWithdrawalParam(underlyingAmount);

        // track queued shares by withdrawable shares
        queuedShares += withdrawableShares;

        // Save the nonce before starting the withdrawal
        uint96 nonce = uint96(delegationManager.cumulativeWithdrawalsQueued(address(this)));

        // queue withdrawal in EigenLayer
        bytes32 withdrawalRoot = delegationManager.queueWithdrawals(queuedWithdrawalParams)[0];

        // track initial withdrawable shares of the token in queuedWithdrawal
        queuedWithdrawalInfo[withdrawalRoot].initialWithdrawableShares = withdrawableShares;

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

        if (block.number - withdrawRequest[withdrawalRoot].createdAt < cooldownBlocks())
            revert EarlyClaim();

        IERC20[] memory tokens = new IERC20[](1);
        tokens[0] = underlying;

        // burn LP token
        _burn(address(this), withdrawRequest[withdrawalRoot].lpTokenAmountLocked);

        // reduce initial withdrawable queued Shares for this request
        queuedShares -= queuedWithdrawalInfo[withdrawalRoot].initialWithdrawableShares;

        // reset slashing delta to avoid double counting
        _resetSlashingDelta(withdrawalRoot);

        // check balance before completing queuedWithdrawal
        uint256 balanceBefore = underlying.balanceOf(address(this));

        // Note: Using try catch to handle the slashing upgrade of EL.
        // complete the queued withdrawal from EigenLayer with receiveAsToken set to true
        try delegationManager.completeQueuedWithdrawal(withdrawal, tokens, true) {} catch {
            delegationManager.completeQueuedWithdrawal(withdrawal, tokens, 0, true);
        }

        uint256 underlyingClaimAmount = underlying.balanceOf(address(this)) - balanceBefore;

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
     * @notice  Allows anyone to incentivize the vault by donating underlying
     * @dev     does not mint LP token for the incentive deposited
     * @param   amount  amount of underlying tokens
     */
    function depositIncentive(uint256 amount) external nonReentrant {
        if (amount == 0) revert InvalidZeroInput();

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
        IStrategy[] memory strategies = new IStrategy[](1);
        strategies[0] = underlyingStrategy;

        // Note: Using try catch to handle the slashing upgrade of EL.
        try delegationManager.getWithdrawableShares(address(this), strategies) returns (
            uint256[] memory withdrawableShares,
            uint256[] memory
        ) {
            // get withdrawable shares from EigenLayer
            uint256 collateralBalance = withdrawableShares[0];

            // add queued shares for the token with slashing
            collateralBalance += _getQueuedSharesWithSlashing();

            // convert shares to underlying
            return underlyingStrategy.sharesToUnderlyingView(collateralBalance);
        } catch {
            return
                underlyingStrategy.userUnderlyingView(address(this)) +
                underlyingStrategy.sharesToUnderlyingView(queuedShares);
        }
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

    /// @dev build the QueuedWithdrawalParam struct for EigenLayer withdrawals
    function _getQueuedWithdrawalParam(
        uint256 underlyingAmount
    )
        internal
        view
        returns (IDelegationManager.QueuedWithdrawalParams[] memory queuedWithdrawalParams, uint256)
    {
        // create queuedWithdrawalParams struct for withdrawRequest
        queuedWithdrawalParams = new IDelegationManager.QueuedWithdrawalParams[](1);
        queuedWithdrawalParams[0].strategies = new IStrategy[](1);

        queuedWithdrawalParams[0].depositShares = new uint256[](1);
        // length 1 array for withdrawableShares
        uint256[] memory withdrawableShares = new uint256[](1);
        // set vault strategy for 0th index only
        queuedWithdrawalParams[0].strategies[0] = underlyingStrategy;

        // set the withdrawable shares of the underlying
        withdrawableShares[0] = underlyingStrategy.underlyingToSharesView(underlyingAmount);

        // Note: using try catch to handle Eigenlayer slashing upgrade
        // set deposit shares for the token
        // After upgrade
        try
            delegationManager.convertToDepositShares(
                address(this),
                queuedWithdrawalParams[0].strategies,
                withdrawableShares
            )
        returns (uint256[] memory depositShares) {
            queuedWithdrawalParams[0].depositShares[0] = depositShares[0];
        } catch {
            // Before upgrade
            queuedWithdrawalParams[0].depositShares[0] = withdrawableShares[0];
        }

        // set withdrawer as this contract address
        queuedWithdrawalParams[0].__deprecated_withdrawer = address(this);

        return (queuedWithdrawalParams, withdrawableShares[0]);
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
}
