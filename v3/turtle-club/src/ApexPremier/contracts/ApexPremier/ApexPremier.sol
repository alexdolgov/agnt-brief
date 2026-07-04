// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import "./interfaces/IApexPremierAccess.sol";
import "./libraries/ApexPremierTypes.sol";
import "./libraries/ApexPremierErrors.sol";
import "./libraries/ApexPremierEvents.sol";

contract ApexPremier is ReentrancyGuard, ApexPremierEvents {
    using SafeERC20 for IERC20;

    /// @notice Basis points denominator used for percentage calculations (100% = 10000)
    uint256 public constant BASIS_POINTS = 10000;
    /// @notice Minimum duration required for vesting period
    uint256 public constant MIN_VESTING_DURATION = 1 days;
    /// @notice Minimum AVAX amount required to participate
    uint256 public constant MIN_BUY_IN = 0.01 ether;

    /// @notice Main premier sale configuration and state
    Premier public premier;
    /// @notice Vesting configuration for token distribution
    Vesting public vesting;
    /// @notice Current phase of the premier sale (Whitelist, Staking, Public)
    PremierPhases public premierPhase;
    /// @notice Parameters for the whitelist phase (min/max AVAX contributions)
    PhaseParameters public whitelistPhaseParameters;
    /// @notice Parameters for the staking phase (min/max AVAX contributions)
    PhaseParameters public stakingPhaseParameters;
    /// @notice Parameters for the public phase (min/max AVAX contributions)
    PhaseParameters public publicPhaseParameters;
    /// @notice Current state of the premier sale
    PremierState public premierState;
    /// @notice Interface for admin access control
    IApexPremierAccess public adminAccess;
    /// @notice One-time fee charged for launching the sale
    uint256 public launchFee;
    /// @notice Percentage fee taken from raised funds (in basis points)
    uint256 public feePercentage;
    /// @notice Percentage of fees allocated to treasury (in basis points)
    uint256 public treasuryFeePercentage;
    /// @notice Timestamp when vesting period begins
    uint256 public vestingStart;
    /// @notice Timestamp of last token price update
    uint256 public lastPriceUpdate;
    /// @notice Address of the factory contract that deployed this premier
    address public factory;
    /// @notice Address receiving the revenue fees
    address public revenue;
    /// @notice Address receiving the treasury fees
    address public treasury;
    /// @notice Address of the premier moderator
    address public moderator;
    /// @notice Address of the token expected to be sold
    address public expectedToken;
    /// @notice Whether vesting has been initialized
    bool public vestingInitialized;
    /// @notice Whether unsold tokens have been claimed
    bool public claimedUnsoldTokens;

    /// @notice Array of all addresses that have participated
    address[] public allParticipants;
    /// @notice Array of all whitelisted addresses
    address[] public allWhitelistAddresses;
    /// @notice Array of all staking-eligible addresses
    address[] public allStakingAddresses;

    /// @notice Mapping of address to participant details
    mapping(address => Participant) public participants;
    /// @notice Mapping of address and phase to participation status
    mapping(address => mapping(PremierPhases => bool)) public hasParticipated;

    /// @notice Mapping of address to whitelist status
    mapping(address => bool) public whitelistedAddresses;
    /// @notice Mapping of address to staking eligibility status
    mapping(address => bool) public stakingAddresses;
    /// @notice Mapping of address to global participation status
    mapping(address => bool) public globalParticipants;

    /// @notice Modifier that restricts access to admin users only
    /// @dev Checks if the caller has admin access through the adminAccess contract
    /// @custom:error NotAdmin if caller is not an admin
    modifier onlyAdmin() {
        if (!adminAccess.isAdmin(msg.sender)) revert NotAdmin();
        _;
    }

    /// @notice Modifier that restricts access to the premier moderator only
    /// @dev Checks if the caller is the designated moderator address
    /// @custom:error NotModerator if caller is not the moderator
    modifier onlyModerator() {
        if (msg.sender != moderator) revert NotModerator();
        _;
    }

    /// @notice Modifier that ensures parameters can only be set during valid states
    /// @dev Checks if the premier is initialized and in a valid state for parameter setting
    /// @custom:error NotInitialized if premier is not initialized
    /// @custom:error NotInParametersSet if premier state is invalid for parameter setting
    modifier canSetParameters() {
        if (premierState == PremierState.Uninitialized) {
            revert NotInitialized();
        }

        bool isInvalidState = premierState >= PremierState.InReview && // Too late (in review or later)
            premierState != PremierState.Initialized &&
            premierState != PremierState.ParametersSet;

        if (isInvalidState) {
            revert NotInParametersSet();
        }
        _;
    }

    /// @notice Modifier that ensures tokens can only be deposited during valid states
    /// @dev Checks if the premier is approved but tokens haven't been deposited yet
    /// @custom:error NotApproved if premier is not approved or tokens already deposited
    modifier canDepositTokens() {
        if (
            premierState < PremierState.Approved || // Too early
            premierState >= PremierState.TokensDeposited
        ) // Already deposited or later
        {
            revert NotApproved();
        }
        _;
    }

    /// @notice Modifier that ensures price updates follow timing and state rules
    /// @dev Checks if:
    /// - Premier is in review state
    /// - Sale hasn't ended
    /// - Last price update was at least 5 minutes ago
    /// @custom:error NotInReview if premier is not in review state
    /// @custom:error Ended if sale has ended
    /// @custom:error UpdatePriceTooSoon if attempting to update price before 5 minute cooldown
    modifier canUpdatePrice() {
        // If the sale is not in review, it's too early to update the price
        if (premierState < PremierState.InReview) revert NotInReview();
        // If the sale is ended, it's too late to update the price
        if (premierState >= PremierState.Ended) revert Ended();

        // If the last price update was less than 5 minutes ago, revert
        if (block.timestamp - lastPriceUpdate < 5 minutes)
            revert UpdatePriceTooSoon();
        _;
    }

    /**
     * @notice Ensures vesting parameters can only be updated during specific sale states and before vesting is initialized
     * @dev Vesting can only be updated:
     * - After sale is approved (TokensDeposited or SaleActive states)
     * - Before sale ends
     * - Before vesting is initialized
     *
     * State progression:
     * Uninitialized -> Initialized -> ParametersSet -> InReview -> Approved -> TokensDeposited -> SaleActive -> SaleEnded
     *                                                              ^^^^^^^^     Can update         ^^^^^^^^
     */
    modifier canUpdateVesting() {
        // Cannot update during initial states (before approval)
        if (premierState < PremierState.Approved) revert InReview();

        // Cannot update after sale ends
        if (premierState >= PremierState.Ended) revert Ended();

        // Cannot update if vesting is already initialized
        if (vestingInitialized) revert VestingAlreadyInitialized();
        _;
    }

    /// @notice Ensures function can only be called in a specific premier state
    /// @param requiredState The exact state the premier must be in
    /// @custom:error InvalidState if premier is not in the required state
    modifier onlyState(PremierState requiredState) {
        if (premierState != requiredState)
            revert InvalidState(premierState, requiredState);
        _;
    }

    /// @notice Ensures function can only be called when premier is at least in a specific state
    /// @param requiredState The minimum state the premier must be in
    /// @custom:error InvalidState if premier state is less than required state
    modifier atLeastState(PremierState requiredState) {
        if (uint8(premierState) < uint8(requiredState))
            revert InvalidState(premierState, requiredState);
        _;
    }

    /// @notice Ensures function can only be called when premier is at most in a specific state
    /// @param requiredState The maximum state the premier can be in
    /// @custom:error InvalidState if premier state is greater than required state
    modifier atMostState(PremierState requiredState) {
        if (uint8(premierState) > uint8(requiredState))
            revert InvalidState(premierState, requiredState);
        _;
    }

    /// @notice Initializes the contract state
    /// @dev Sets initial state to Uninitialized
    constructor() {
        premierState = PremierState.Uninitialized;
    }

    /// @notice Initializes the premier with its core parameters
    /// @dev Can only be called once when contract is in Uninitialized state
    /// @param name_ Name of the premier
    /// @param expectedToken_ Address of the token being sold
    /// @param premierModerator_ Address of the premier moderator
    /// @param adminAccess_ Address of the admin access contract
    /// @param launchFee_ Fee charged for launching the premier
    /// @param feePercentage_ Percentage of sales taken as fee
    /// @param treasuryFeePercentage_ Percentage of launch fee going to treasury
    /// @param revenue_ Address receiving the revenue fees
    /// @param treasury_ Address receiving the treasury fees
    /// @custom:error InvalidAddress if any address parameter is zero address
    /// @custom:error InvalidName if name is empty
    function initialize(
        string memory name_,
        address expectedToken_,
        address premierModerator_,
        address adminAccess_,
        uint256 launchFee_,
        uint256 feePercentage_,
        uint256 treasuryFeePercentage_,
        address revenue_,
        address treasury_
    ) external onlyState(PremierState.Uninitialized) {
        if (
            revenue_ == address(0) ||
            treasury_ == address(0) ||
            adminAccess_ == address(0) ||
            premierModerator_ == address(0) ||
            expectedToken_ == address(0)
        ) {
            revert InvalidAddress();
        }

        if (bytes(name_).length == 0) {
            revert InvalidName();
        }

        factory = msg.sender;
        adminAccess = IApexPremierAccess(adminAccess_);
        launchFee = launchFee_;
        feePercentage = feePercentage_;
        treasuryFeePercentage = treasuryFeePercentage_;
        revenue = revenue_;
        treasury = treasury_;
        moderator = premierModerator_;
        expectedToken = expectedToken_;
        premier.name = name_;

        premierState = PremierState.Initialized;
        premierPhase = PremierPhases.Whitelist;
    }

    /// @notice Sets the premier's core parameters, vesting configuration and phase parameters
    /// @dev Can only be called by moderator when parameters can be set
    /// @param premierParameters Core parameters for the premier
    /// @param vestingParameters Vesting configuration for token distribution
    /// @param whitelistPhaseParameters_ Parameters for whitelist phase
    /// @param publicPhaseParameters_ Parameters for public phase
    /// @custom:emits PremierParametersSet when parameters are successfully set
    function setPremierParameters(
        PremierParameters calldata premierParameters,
        Vesting calldata vestingParameters,
        PhaseParameters calldata whitelistPhaseParameters_,
        PhaseParameters calldata publicPhaseParameters_
    ) external onlyModerator nonReentrant canSetParameters {
        _setBasicParameters(premierParameters);
        _setVestingParameters(vestingParameters);

        _validatePhaseParameters(whitelistPhaseParameters_);
        _validatePhaseParameters(publicPhaseParameters_);

        publicPhaseParameters = publicPhaseParameters_;
        whitelistPhaseParameters = whitelistPhaseParameters_;

        premierState = PremierState.ParametersSet;

        emit PremierParametersSet();
    }

    /// @notice Marks the premier as ready for review and processes launch fee
    /// @dev Can only be called by moderator when in ParametersSet state
    /// @custom:error InvalidLaunchFee if sent value is less than required launch fee
    /// @custom:emits ReadyForReview when premier is successfully marked for review
    function setReadyForReview()
        external
        payable
        onlyModerator
        onlyState(PremierState.ParametersSet)
        nonReentrant
    {
        if (msg.value < launchFee) revert InvalidLaunchFee();

        // return any extra AVAX
        if (msg.value > launchFee) {
            safeTransferAVAX(msg.sender, msg.value - launchFee);
        }

        // set readyForReview to true
        premierState = PremierState.InReview;

        emit ReadyForReview();
    }

    /// @notice Approves or rejects a premier that is in review
    /// @dev Can only be called by admin when premier is in InReview state
    /// @param isApproved_ True to approve the premier, false to reject it
    /// @custom:throws NotEnoughFundsForFees if contract doesn't have enough AVAX to cover launch fees
    /// @custom:emits PremierApproved event indicating approval status
    function approvePremier(
        bool isApproved_
    ) external onlyAdmin onlyState(PremierState.InReview) nonReentrant {
        // If launch fee is set, check if the contract has enough AVAX to cover the fees and/or return the launch fee
        if (launchFee > 0 && address(this).balance < launchFee) {
            revert NotEnoughFundsForFees();
        }

        if (!isApproved_) {
            // return launch fee to the fee payer
            premierState = PremierState.ParametersSet;
            safeTransferAVAX(moderator, launchFee);
        } else {
            premierState = PremierState.Approved;

            uint256 treasuryFee = (launchFee * treasuryFeePercentage) /
                BASIS_POINTS;
            uint256 revenueFee = launchFee - treasuryFee;

            // send fees to treasury and revenue
            safeTransferAVAX(revenue, revenueFee);
            safeTransferAVAX(treasury, treasuryFee);
        }

        emit PremierApproved(isApproved_);
    }

    /// @notice Allows users to participate in the premier sale by purchasing tokens with AVAX
    /// @dev Handles token purchase calculations, eligibility checks, and state updates
    /// @return amountBought The amount of tokens purchased by the participant
    /// @custom:throws InvalidAmount if sent AVAX is less than minimum buy-in
    /// @custom:throws Completed if all tokens have been sold
    /// @custom:throws InsufficientRemainingTokens if AVAX sent can't buy at least 1 wei of token
    /// @custom:emits Participated event with participant details and purchase info
    function participate()
        external
        payable
        nonReentrant
        returns (uint256 amountBought)
    {
        _canParticipate();
        if (msg.value < MIN_BUY_IN) revert InvalidAmount();

        uint256 remainingTokensToSell = premier.amountOfTokensToSell -
            premier.totalTokenSold;

        if (remainingTokensToSell == 0) {
            revert Completed();
        }

        Participant storage participant = participants[msg.sender];
        uint256 avaxSent = msg.value;

        // 1. Check eligibility
        _checkEligibility(
            msg.sender,
            avaxSent,
            participant.amountAvaxContributed
        );

        // 2. Calculate how many tokens that AVAX can buy
        uint256 possibleBought = (avaxSent * premier.oneTokenInWei) /
            premier.tokenPriceInAvax;
        if (possibleBought == 0) {
            // Means avaxSent < tokenPriceInAvax, so they can't buy even 1 wei of a token
            revert InsufficientRemainingTokens();
        }

        uint256 actualCost = avaxSent;
        // 3. Limit by the tokens left to sell
        if (possibleBought > remainingTokensToSell) {
            possibleBought = remainingTokensToSell;

            // 3a. Actual cost in AVAX
            actualCost =
                (possibleBought * premier.tokenPriceInAvax) /
                premier.oneTokenInWei;
        }

        // 5. Update contract state with the actual cost, not the initial msg.value
        amountBought = possibleBought;
        premier.totalAvaxRaised += actualCost;
        premier.totalTokenSold += possibleBought;
        participant.amountAvaxContributed += actualCost;
        participant.amountTokenBought += possibleBought;

        // 5a. Set the participant address if it's not set
        if (participant.participant == address(0)) {
            participant.participant = msg.sender;
        }

        // 6. Check if this is the user's first time
        if (!hasParticipated[msg.sender][premierPhase]) {
            hasParticipated[msg.sender][premierPhase] = true;
            // Add the sender to the global list only if they haven't been added before
            if (!globalParticipants[msg.sender]) {
                globalParticipants[msg.sender] = true;
                allParticipants.push(msg.sender);
            }
        }

        // 7. If we sold all tokens, end the sale
        if (premier.totalTokenSold >= premier.amountOfTokensToSell) {
            premierState = PremierState.Ended;
        }

        // 8. Refund leftover AVAX
        uint256 refund = msg.value - actualCost;
        if (refund > 0) {
            safeTransferAVAX(msg.sender, refund);
        }

        emit Participated(msg.sender, premierPhase, avaxSent, possibleBought);
    }

    /// @notice Allows moderator to deposit tokens for sale into the contract
    /// @dev Transfers tokens from moderator to contract and updates state
    /// @custom:throws InvalidToken if token address is not set
    /// @custom:throws InvalidAmount if token amount is 0 or transfer amount mismatch
    /// @custom:emits TokensDeposited event with depositor and amount
    function depositTokens()
        external
        onlyModerator
        canDepositTokens
        nonReentrant
    {
        if (address(premier.token) == address(0)) revert InvalidToken();

        uint256 totalTokensToDeposit = premier.amountOfTokensToSell;

        if (totalTokensToDeposit == 0) revert InvalidAmount();

        uint256 balanceBefore = premier.token.balanceOf(address(this));

        // Perform safe transfer
        premier.token.safeTransferFrom(
            msg.sender,
            address(this),
            totalTokensToDeposit
        );

        uint256 balanceAfter = premier.token.balanceOf(address(this));
        uint256 totalTokensDeposited = balanceAfter - balanceBefore;

        if (totalTokensDeposited != totalTokensToDeposit)
            revert InvalidAmount();

        // Mark that tokens are deposited
        premierState = PremierState.TokensDeposited;

        emit TokensDeposited(msg.sender, totalTokensDeposited);
    }

    /// @notice Allows moderator to withdraw raised funds after sale completion
    /// @dev Distributes raised AVAX between team wallet, treasury and revenue
    /// @custom:emits FundsWithdrawn event with distribution details
    function withdrawRaisedFunds() external onlyModerator nonReentrant {
        _canWithdrawFunds();
        // If there's no AVAX to withdraw, return
        uint256 balance = address(this).balance;
        uint256 totalAvaxRaised = premier.totalAvaxRaised;

        if (totalAvaxRaised == 0 || balance == 0) {
            premierState = PremierState.FundsWithdrawn;
            emit FundsWithdrawn(moderator, 0, 0, 0);
            return;
        }

        if (totalAvaxRaised > balance) {
            totalAvaxRaised = balance;
        }

        // calculate fees - Revenue is the total fee and treasury is a percentage of the revenue fee
        (uint256 revenueFee, uint256 treasuryFee) = _calculateFees(
            totalAvaxRaised
        );
        uint256 teamFunds = totalAvaxRaised - revenueFee;

        safeTransferAVAX(premier.teamWallet, teamFunds);
        safeTransferAVAX(treasury, treasuryFee);
        safeTransferAVAX(revenue, revenueFee - treasuryFee);

        premierState = PremierState.FundsWithdrawn;

        emit FundsWithdrawn(
            moderator,
            teamFunds,
            treasuryFee,
            revenueFee - treasuryFee
        );
    }

    /// @notice Allows moderator to reclaim unsold tokens after sale ends
    /// @dev Transfers remaining tokens to specified beneficiary
    /// @param beneficiary Address to receive the unsold tokens
    /// @custom:throws InvalidAddress if beneficiary address is zero
    /// @custom:throws UnsoldTokensAlreadyClaimed if tokens were already reclaimed
    /// @custom:throws InvalidAmount if no tokens remain to reclaim
    /// @custom:emits UnsoldTokensReclaimed event with beneficiary and amount
    function reclaimUnsoldTokens(
        address beneficiary
    ) external onlyModerator atLeastState(PremierState.Ended) nonReentrant {
        if (beneficiary == address(0)) revert InvalidAddress();
        if (claimedUnsoldTokens) revert UnsoldTokensAlreadyClaimed();

        uint256 remainingTokens = premier.amountOfTokensToSell -
            premier.totalTokenSold;

        if (remainingTokens == 0) revert InvalidAmount();

        claimedUnsoldTokens = true;

        premier.token.safeTransfer(beneficiary, remainingTokens);

        emit UnsoldTokensReclaimed(beneficiary, remainingTokens);
    }

    /// @notice Safely transfers AVAX to a recipient address
    /// @dev Uses low-level call to transfer AVAX and checks for success
    /// @param to The recipient address
    /// @param value The amount of AVAX to transfer in wei
    /// @custom:throws InvalidTransfer if the transfer fails
    function safeTransferAVAX(address to, uint256 value) internal {
        (bool success, ) = to.call{value: value}(new bytes(0));
        if (!success) revert InvalidTransfer();
    }

    /// @notice Allows admin to remove accidentally sent tokens from the contract
    /// @dev Cannot be used to remove the premier sale token
    /// @param token_ The ERC20 token contract to remove
    /// @param beneficiary The address to receive the tokens
    /// @param amount The amount of tokens to remove
    /// @custom:throws InvalidToken if attempting to remove the premier token
    /// @custom:throws InvalidAmount if amount exceeds contract balance
    /// @custom:emits StuckTokensWithdrawn when tokens are successfully removed
    function removeStuckTokens(
        IERC20 token_,
        address beneficiary,
        uint256 amount
    ) external onlyAdmin nonReentrant {
        if (token_ == premier.token) revert InvalidToken();
        if (amount > token_.balanceOf(address(this))) revert InvalidAmount();

        token_.safeTransfer(beneficiary, amount);

        emit StuckTokensWithdrawn(beneficiary, amount);
    }

    /// @notice Allows admin to withdraw any unused AVAX from the contract
    /// @dev Can only be called after funds have been withdrawn from the sale
    /// @custom:throws InvalidAmount if contract has no AVAX balance
    /// @custom:emits UnusedFundsWithdrawn when AVAX is successfully withdrawn
    function withdrawUnusedFunds()
        external
        onlyAdmin
        nonReentrant
        atLeastState(PremierState.FundsWithdrawn)
    {
        if (address(this).balance == 0) revert InvalidAmount();

        uint256 balance = address(this).balance;
        safeTransferAVAX(msg.sender, balance);

        emit UnusedFundsWithdrawn(msg.sender, balance);
    }

    /// @notice Increases the duration of the premier sale
    /// @dev Can only be called while sale is active and not ended
    /// @param duration Additional time in seconds to add to sale duration
    /// @custom:throws InvalidState if sale is not in correct state
    /// @custom:throws InvalidDuration if duration is 0
    function increaseSaleDuration(uint256 duration) external onlyAdmin {
        if (
            premierState < PremierState.Approved ||
            premierState >= PremierState.Ended
        ) revert InvalidState(premierState, PremierState.TokensDeposited);
        if (duration == 0) revert InvalidDuration();
        premier.duration += duration;
    }

    /// @notice Sets a new duration for the premier sale
    /// @dev Can only be called while sale is active and not ended
    /// @param duration New total duration in seconds for the sale
    /// @custom:throws InvalidState if sale is not in correct state
    /// @custom:throws InvalidDuration if duration is 0
    /// @custom:throws DurationTooShort if new duration would end sale immediately
    function setSaleDuration(uint256 duration) external onlyAdmin {
        if (
            premierState < PremierState.Approved ||
            premierState >= PremierState.Ended
        ) revert InvalidState(premierState, PremierState.TokensDeposited);
        if (duration == 0) revert InvalidDuration();

        // Prevent ending sale immediately
        if (block.timestamp >= premier.startTime + duration)
            revert DurationTooShort();

        premier.duration = duration;
    }

    /// @notice Adds addresses to the whitelist for the Whitelisted phase
    /// @dev Only adds addresses that aren't already whitelisted
    /// @param accounts Array of addresses to add to whitelist
    /// @custom:emits WhitelistedAddressesAdded when addresses are added
    function addWhitelistedAddresses(
        address[] calldata accounts
    ) external onlyModerator atMostState(PremierState.TokensDeposited) {
        uint256 accountsLength = accounts.length;
        for (uint256 i = 0; i < accountsLength; i++) {
            // Only add if not already whitelisted
            if (!whitelistedAddresses[accounts[i]]) {
                whitelistedAddresses[accounts[i]] = true;
                allWhitelistAddresses.push(accounts[i]);
            }
        }

        emit WhitelistedAddressesAdded(accounts);
    }

    /// @notice Adds addresses eligible for the Staking phase
    /// @dev Only adds addresses that aren't already eligible
    /// @param accounts Array of addresses to add to staking eligibility
    /// @custom:emits StakingAddressesAdded when addresses are added
    function addStakingAddresses(
        address[] calldata accounts
    ) external onlyAdmin atMostState(PremierState.TokensDeposited) {
        uint256 accountsLength = accounts.length;
        for (uint256 i = 0; i < accountsLength; i++) {
            // Only add if not already added as a staking address
            if (!stakingAddresses[accounts[i]]) {
                stakingAddresses[accounts[i]] = true;
                allStakingAddresses.push(accounts[i]);
            }
        }
        emit StakingAddressesAdded(accounts);
    }

    /// @notice Removes addresses from the whitelist
    /// @dev Removes addresses from both mapping and array
    /// @param accounts Array of addresses to remove from whitelist
    /// @custom:emits WhitelistedAddressesRemoved when addresses are removed
    function removeWhitelistedAddresses(
        address[] calldata accounts
    ) external onlyModerator atMostState(PremierState.TokensDeposited) {
        for (uint256 i = 0; i < accounts.length; i++) {
            whitelistedAddresses[accounts[i]] = false;

            // Find and remove from allWhitelistAddresses array
            for (uint256 j = 0; j < allWhitelistAddresses.length; j++) {
                if (allWhitelistAddresses[j] == accounts[i]) {
                    // Move last element to current position and pop
                    allWhitelistAddresses[j] = allWhitelistAddresses[
                        allWhitelistAddresses.length - 1
                    ];
                    allWhitelistAddresses.pop();
                    break;
                }
            }
        }
        emit WhitelistedAddressesRemoved(accounts);
    }

    /// @notice Removes addresses from staking eligibility
    /// @dev Removes addresses from both mapping and array
    /// @param accounts Array of addresses to remove from staking eligibility
    /// @custom:emits StakingAddressesRemoved when addresses are removed
    function removeStakingAddresses(
        address[] calldata accounts
    ) external onlyAdmin atMostState(PremierState.TokensDeposited) {
        for (uint256 i = 0; i < accounts.length; i++) {
            stakingAddresses[accounts[i]] = false;

            // Find and remove from allStakingAddresses array
            for (uint256 j = 0; j < allStakingAddresses.length; j++) {
                if (allStakingAddresses[j] == accounts[i]) {
                    // Move last element to current position and pop
                    allStakingAddresses[j] = allStakingAddresses[
                        allStakingAddresses.length - 1
                    ];
                    allStakingAddresses.pop();
                    break;
                }
            }
        }
        emit StakingAddressesRemoved(accounts);
    }

    /// @notice Sets parameters for the staking phase
    /// @dev Validates parameters before setting
    /// @param stakingPhaseParameters_ New parameters for staking phase
    /// @custom:throws InvalidMinAvaxPerParticipant if parameters are invalid
    function setStakingPhaseParameters(
        PhaseParameters calldata stakingPhaseParameters_
    ) external onlyAdmin {
        // If a max avax is set, min avax must be less than max avax
        _validatePhaseParameters(stakingPhaseParameters_);

        stakingPhaseParameters = stakingPhaseParameters_;
    }

    /// @notice Sets parameters for the whitelist phase
    /// @dev Can only be called by admin before tokens are deposited
    /// @param whitelistPhaseParameters_ New parameters for whitelist phase
    /// @custom:throws InvalidMinAvaxPerParticipant if parameters are invalid
    function setWhitelistPhaseParameters(
        PhaseParameters calldata whitelistPhaseParameters_
    ) external onlyAdmin atMostState(PremierState.TokensDeposited) {
        _validatePhaseParameters(whitelistPhaseParameters_);
        whitelistPhaseParameters = whitelistPhaseParameters_;
    }

    /// @notice Sets parameters for the public phase
    /// @dev Can only be called by admin before tokens are deposited
    /// @param publicPhaseParameters_ New parameters for public phase
    /// @custom:throws InvalidMinAvaxPerParticipant if parameters are invalid
    function setPublicPhaseParameters(
        PhaseParameters calldata publicPhaseParameters_
    ) external onlyAdmin atMostState(PremierState.TokensDeposited) {
        _validatePhaseParameters(publicPhaseParameters_);
        publicPhaseParameters = publicPhaseParameters_;
    }

    /// @notice Changes the current phase of the premier sale
    /// @dev Can only be called after approval and before sale ends
    /// @param newPhase The phase to switch to
    /// @custom:throws Ended if sale has ended
    /// @custom:emits PhaseSet when phase is changed
    function setPhase(
        PremierPhases newPhase
    ) public onlyAdmin atLeastState(PremierState.Approved) {
        if (block.timestamp >= _endTime()) revert Ended();

        PremierPhases oldPhase = premierPhase;
        premierPhase = newPhase;
        emit PhaseSet(oldPhase, newPhase);
    }

    /// @notice Updates the moderator address
    /// @dev Cannot set to zero address
    /// @param newModerator Address of the new moderator
    /// @custom:throws InvalidAddress if new moderator is zero address
    /// @custom:emits ModeratorUpdated when moderator is changed
    function setModerator(address newModerator) external onlyAdmin {
        if (newModerator == address(0)) revert InvalidAddress();
        address oldModerator = moderator;
        moderator = newModerator;

        emit ModeratorUpdated(msg.sender, oldModerator, newModerator);
    }

    /// @notice Initializes the vesting schedule for the premier sale
    /// @dev Can only be called by admin when sale has ended (either by time or tokens sold out)
    /// @custom:throws VestingAlreadyInitialized if vesting was already initialized
    /// @custom:throws InvalidState if sale has not ended (neither by time nor tokens sold out)
    /// @custom:emits VestingInitialized when vesting is successfully initialized
    function initializeVesting() external onlyAdmin {
        if (
            block.timestamp >= _endTime() ||
            premier.totalTokenSold >= premier.amountOfTokensToSell
        ) {
            _initializeVesting();
        } else {
            revert InvalidState(premierState, PremierState.Ended);
        }
    }

    /// @notice Initializes the vesting schedule for the premier sale as moderator
    /// @dev Can only be called by moderator after funds have been withdrawn
    /// @custom:throws VestingAlreadyInitialized if vesting was already initialized
    /// @custom:throws NotEnded if sale has not ended
    /// @custom:emits VestingInitialized when vesting is successfully initialized
    function initializeVestingModerator()
        external
        onlyModerator
        atLeastState(PremierState.FundsWithdrawn)
    {
        _initializeVesting();
    }

    /// @notice Updates the vesting parameters for the premier sale
    /// @dev Can only be called by admin when vesting can be updated
    /// @param vestingParameters New vesting configuration parameters
    /// @custom:throws InvalidVestingDuration if duration is too short
    /// @custom:throws InvalidVestingCliff if cliff is invalid
    /// @custom:throws InvalidInitialVestingPercentage if initial percentage is invalid
    /// @custom:emits VestingParametersUpdated when parameters are changed
    function updateVestingParameters(
        Vesting calldata vestingParameters
    ) external onlyAdmin canUpdateVesting {
        _setVestingParameters(vestingParameters);
        emit VestingParametersUpdated(msg.sender, vestingParameters);
    }

    /// @notice Updates the name of the premier sale
    /// @dev Can only be called by admin
    /// @param name_ New name for the premier sale
    /// @custom:throws InvalidName if name is empty
    /// @custom:emits NameUpdated when name is changed
    function updateName(string calldata name_) external onlyAdmin {
        if (bytes(name_).length == 0) revert InvalidName();
        premier.name = name_;
        emit NameUpdated(msg.sender, name_);
    }

    /// @notice Updates the token price within allowed bounds
    /// @dev Can only be called by admin when price updates are allowed
    /// @param newPrice New price for the token in AVAX
    /// @custom:throws InvalidTokenPrice if price is 0 or outside ±30% range
    /// @custom:emits TokenPriceUpdated when price is changed
    function updateTokenPrice(
        uint256 newPrice
    ) external onlyAdmin canUpdatePrice {
        if (newPrice == 0) revert InvalidTokenPrice();

        uint256 oldPrice = premier.tokenPriceInAvax;

        uint256 seventyPercentOfCurrentPrice = (premier.tokenPriceInAvax *
            7000) / BASIS_POINTS;
        uint256 oneThirtyPercentOfCurrentPrice = (premier.tokenPriceInAvax *
            13000) / BASIS_POINTS;

        // Verify that price is not +/- 30% of the current price
        if (
            newPrice < seventyPercentOfCurrentPrice ||
            newPrice > oneThirtyPercentOfCurrentPrice
        ) revert InvalidTokenPrice();

        _updateTokenPrice(oldPrice, newPrice);
    }

    /// @notice Updates the launch fee for the premier
    /// @dev Can only be called by admin
    /// @param newLaunchFee New fee amount in AVAX
    /// @custom:emits LaunchFeeUpdated when fee is changed
    function updateLaunchFee(uint256 newLaunchFee) external onlyAdmin {
        launchFee = newLaunchFee;
        emit LaunchFeeUpdated(msg.sender, newLaunchFee);
    }

    /// @notice Overrides token price without restrictions before tokens are deposited
    /// @dev Can only be called by admin before tokens are deposited
    /// @param newPrice New price for the token in AVAX
    /// @custom:emits TokenPriceUpdated when price is changed
    function overrideTokenPrice(
        uint256 newPrice
    ) external onlyAdmin atMostState(PremierState.TokensDeposited) {
        _updateTokenPrice(premier.tokenPriceInAvax, newPrice);
    }

    /// @notice Emergency update for team wallet to recover from failed withdrawal
    /// @dev Can only be called by admin after sale ends if withdrawRaisedFunds fails
    /// @param newTeamWallet New address to receive team funds
    /// @custom:throws InvalidAddress if newTeamWallet is zero
    /// @custom:emits TeamWalletUpdated when address is changed
    function emergencyUpdateTeamWallet(
        address newTeamWallet
    ) external onlyAdmin {
        _canWithdrawFunds();
        if (newTeamWallet == address(0)) revert InvalidAddress();
        address oldTeamWallet = premier.teamWallet;
        premier.teamWallet = newTeamWallet;
        emit TeamWalletUpdated(msg.sender, oldTeamWallet, newTeamWallet);
    }

    /// @notice Emergency update for revenue address to recover from failed withdrawal
    /// @dev Can only be called by admin after sale ends if withdrawRaisedFunds fails
    /// @param newRevenue New address to receive revenue fees
    /// @custom:throws InvalidAddress if newRevenue is zero
    /// @custom:emits RevenueAddressUpdated when address is changed
    function emergencyUpdateRevenue(address newRevenue) external onlyAdmin {
        _canWithdrawFunds();
        if (newRevenue == address(0)) revert InvalidAddress();
        address oldRevenue = revenue;
        revenue = newRevenue;
        emit RevenueAddressUpdated(msg.sender, oldRevenue, newRevenue);
    }

    /// @notice Emergency update for treasury address to recover from failed withdrawal
    /// @dev Can only be called by admin after sale ends if withdrawRaisedFunds fails
    /// @param newTreasury New address to receive treasury fees
    /// @custom:throws InvalidAddress if newTreasury is zero
    /// @custom:emits TreasuryAddressUpdated when address is changed
    function emergencyUpdateTreasury(address newTreasury) external onlyAdmin {
        _canWithdrawFunds();
        if (newTreasury == address(0)) revert InvalidAddress();
        address oldTreasury = treasury;
        treasury = newTreasury;
        emit TreasuryAddressUpdated(msg.sender, oldTreasury, newTreasury);
    }

    /// @notice Gets details about the AVAX raised in the premier
    /// @dev Calculates platform fees and net amount from total raised
    /// @return totalRaised Total AVAX raised in the premier
    /// @return platformFees Amount of fees taken by the platform
    /// @return netAmount Net amount after deducting platform fees
    function getRaisedAvaxDetails()
        external
        view
        returns (uint256 totalRaised, uint256 platformFees, uint256 netAmount)
    {
        totalRaised = premier.totalAvaxRaised;
        platformFees = (totalRaised * feePercentage) / BASIS_POINTS;
        netAmount = totalRaised - platformFees;
    }

    /// @notice Gets the total number of participants in the premier
    /// @return Number of unique participants
    function getNumberOfParticipants() external view returns (uint256) {
        return allParticipants.length;
    }

    /// @notice Gets details of all participants in the premier
    /// @return Array of participant details including contributions and tokens
    function getParticipants() external view returns (Participant[] memory) {
        Participant[] memory participants_ = new Participant[](
            allParticipants.length
        );

        for (uint256 i = 0; i < allParticipants.length; i++) {
            participants_[i] = participants[allParticipants[i]];
        }
        return participants_;
    }

    /// @notice Gets the number of whitelisted addresses
    /// @return Number of addresses on the whitelist
    function getWhitelistedAddressesLength() external view returns (uint256) {
        return allWhitelistAddresses.length;
    }

    /// @notice Gets the number of staking-eligible addresses
    /// @return Number of addresses eligible for staking phase
    function getStakingAddressesLength() external view returns (uint256) {
        return allStakingAddresses.length;
    }

    /// @notice Gets all whitelisted addresses
    /// @return Array of whitelisted addresses
    function getWhitelistedAddresses()
        external
        view
        returns (address[] memory)
    {
        return allWhitelistAddresses;
    }

    /// @notice Gets all staking-eligible addresses
    /// @return Array of addresses eligible for staking phase
    function getStakingAddresses() external view returns (address[] memory) {
        return allStakingAddresses;
    }

    /// @notice Gets comprehensive information about the premier sale
    /// @dev Returns all major state variables and configurations in a single call
    /// @return moderator_ The address of the premier moderator
    /// @return premierInfo The main premier configuration and state
    /// @return vestingInfo The vesting configuration
    /// @return participants_ Array of all participant addresses
    /// @return premierState_ Current state of the premier
    /// @return premierPhase_ Current phase of the premier
    /// @return vestingInitialized_ Whether vesting has been initialized
    /// @return whitelistPhaseParameters_ Parameters for whitelist phase
    /// @return stakingPhaseParameters_ Parameters for staking phase
    /// @return publicPhaseParameters_ Parameters for public phase
    function getPremierInfo()
        external
        view
        returns (
            address moderator_,
            Premier memory premierInfo,
            Vesting memory vestingInfo,
            address[] memory participants_,
            PremierState premierState_,
            PremierPhases premierPhase_,
            bool vestingInitialized_,
            PhaseParameters memory whitelistPhaseParameters_,
            PhaseParameters memory stakingPhaseParameters_,
            PhaseParameters memory publicPhaseParameters_
        )
    {
        return (
            moderator,
            premier,
            vesting,
            allParticipants,
            premierState,
            premierPhase,
            vestingInitialized,
            whitelistPhaseParameters,
            stakingPhaseParameters,
            publicPhaseParameters
        );
    }

    /// @notice Gets the vesting schedule details for a specific beneficiary
    /// @dev Returns total tokens allocated and amount already released
    /// @param beneficiary_ Address of the beneficiary to check
    /// @return totalAmount Total amount of tokens allocated to beneficiary
    /// @return released Amount of tokens already released to beneficiary
    function getBeneficiarySchedule(
        address beneficiary_
    ) external view returns (uint256 totalAmount, uint256 released) {
        Participant memory participant = participants[beneficiary_];
        return (participant.amountTokenBought, participant.tokensReleased);
    }

    /// @notice Gets the vesting schedule timing parameters
    /// @dev Returns 0 values if vesting is not enabled
    /// @return start Timestamp when vesting begins
    /// @return cliff Timestamp when cliff period ends
    /// @return duration Total duration of vesting period in seconds
    function getVestingSchedule()
        external
        view
        returns (uint256 start, uint256 cliff, uint256 duration)
    {
        if (vesting.hasVesting) {
            return (
                vestingStart,
                vestingStart + vesting.cliffDuration,
                vesting.totalDuration
            );
        }
        return (0, 0, 0);
    }

    /// @notice Releases vested tokens to a beneficiary
    /// @dev Handles both vested and non-vested token releases
    /// @param beneficiary_ Address to release tokens to
    /// @return Amount of tokens released
    /// @custom:throws InvalidAddress if beneficiary address is zero
    /// @custom:throws NotEnded if sale hasn't ended for non-vested releases
    /// @custom:throws NotInitialized if vesting not initialized
    /// @custom:throws NoTokensDue if no tokens are available for release
    function releaseVestedTokens(
        address beneficiary_
    ) external nonReentrant returns (uint256) {
        if (beneficiary_ == address(0)) revert InvalidAddress();

        if (!vesting.hasVesting) {
            // If no vesting, user can get all immediately, but the sale must be ended
            if (premierState < PremierState.Ended) revert NotEnded();

            return _releaseNoVesting(beneficiary_);
        }

        if (!vestingInitialized) revert NotInitialized();

        Participant storage participant = participants[beneficiary_];
        uint256 claimableAmount = _releasableAmount(participant);
        if (claimableAmount == 0) revert NoTokensDue();

        participant.tokensReleased += claimableAmount;
        premier.token.safeTransfer(beneficiary_, claimableAmount);

        emit TokensClaimed(
            beneficiary_,
            claimableAmount,
            participant.tokensReleased,
            participant.amountTokenBought - participant.tokensReleased
        );

        return claimableAmount;
    }

    /// @notice Calculates the amount of tokens that can be released to a beneficiary
    /// @dev Accounts for both vested and non-vested scenarios
    /// @param beneficiary_ Address to check releasable amount for
    /// @return Amount of tokens that can be released
    function releasableAmount(
        address beneficiary_
    ) public view returns (uint256) {
        Participant memory participant = participants[beneficiary_];

        if (!vesting.hasVesting) {
            return participant.amountTokenBought - participant.tokensReleased;
        }

        if (!vestingInitialized) revert NotInitialized();

        return _releasableAmount(participant);
    }

    /// @notice Calculates the total amount of tokens vested for a participant
    /// @dev Handles TGE release, cliff period, and linear vesting
    /// @param participant The participant's vesting details
    /// @return Total amount of tokens vested at current time
    function vestedAmount(
        Participant memory participant
    ) internal view returns (uint256) {
        // If not initialized, no tokens are claimable
        if (!vestingInitialized) return 0;

        uint256 totalTokens = participant.amountTokenBought;

        // 'immediate portion' is the TGE release portion
        uint256 immediatePortion = (totalTokens * vesting.tgePercentage) /
            BASIS_POINTS;

        // 'linear portion' is the rest of the tokens
        uint256 linearPortion = totalTokens - immediatePortion;

        // If we're before vestingStart, no tokens are vested
        if (block.timestamp < vestingStart) {
            return 0;
        }

        // If there's no cliff, you can skip or treat 'vestingCliffDuration=0'
        // But let's assume we have a cliff.
        // If we're before the cliff ends, only the immediate portion is claimable
        if (block.timestamp < vestingStart + vesting.cliffDuration) {
            return immediatePortion;
        }

        // If we're beyond the full vesting duration, everything is vested
        if (block.timestamp >= vestingStart + vesting.totalDuration) {
            return totalTokens;
        }

        // Now handle partial vesting in the linear period.

        uint256 linearVestedSoFar;
        if (vesting.cliffAccumulates) {
            // Cliff with catch-up:
            // The linear portion notionally starts at vestingStart,
            // but tokens are locked until the cliff date.
            // So we simply do the standard formula from vestingStart -> now.
            uint256 timeElapsed = block.timestamp - vestingStart;
            uint256 vestedFraction = (timeElapsed * 1e18) /
                vesting.totalDuration;
            linearVestedSoFar = (linearPortion * vestedFraction) / 1e18;
        } else {
            // Time from cliff to current
            uint256 timeSinceCliff = block.timestamp -
                (vestingStart + vesting.cliffDuration);
            // The portion of the vesting duration after the cliff
            uint256 linearDuration = vesting.totalDuration -
                vesting.cliffDuration;
            // Calculate the fraction of the linear duration that has passed
            uint256 vestedFraction = (timeSinceCliff * 1e18) / linearDuration;
            // No accumulation during cliff:
            // The linear portion starts only after the cliff has ended,
            // so we measure time since the cliff ended.
            linearVestedSoFar = (linearPortion * vestedFraction) / 1e18;
        }

        return immediatePortion + linearVestedSoFar;
    }

    /// @notice Calculates the amount of tokens that can be released
    /// @dev Subtracts already released tokens from total vested amount
    /// @param participant The participant to calculate releasable amount for
    /// @return Amount of tokens that can be released
    function _releasableAmount(
        Participant memory participant
    ) private view returns (uint256) {
        return vestedAmount(participant) - participant.tokensReleased;
    }

    /// @notice Releases all tokens for non-vested participants
    /// @dev Only callable after sale has ended
    /// @param beneficiary_ Address to release tokens to
    /// @return Amount of tokens released
    /// @custom:throws NoTokensDue if no tokens are available to release
    function _releaseNoVesting(
        address beneficiary_
    ) internal returns (uint256) {
        Participant storage participant = participants[beneficiary_];

        uint256 totalBought = participant.amountTokenBought;
        uint256 alreadyReleased = participant.tokensReleased;
        // all leftover should be released to the beneficiary
        // Should always be the full amount
        uint256 claimable = totalBought - alreadyReleased;

        if (claimable == 0) revert NoTokensDue();

        participant.tokensReleased = totalBought;
        premier.token.safeTransfer(beneficiary_, claimable);

        emit TokensClaimed(beneficiary_, claimable, totalBought, 0);

        return claimable;
    }

    /// @notice Updates the token price and records the update time
    /// @dev Internal function to handle token price updates
    /// @param oldPrice Previous token price in AVAX
    /// @param newPrice New token price in AVAX
    function _updateTokenPrice(uint256 oldPrice, uint256 newPrice) internal {
        premier.tokenPriceInAvax = newPrice;
        lastPriceUpdate = block.timestamp;

        emit TokenPriceUpdated(msg.sender, oldPrice, newPrice);
    }

    /// @notice Validates the basic parameters for a premier sale
    /// @dev Checks that all required parameters are set and valid
    /// @param premierParameters The parameters to validate
    /// @custom:throws InvalidToken if token address is zero
    /// @custom:throws InvalidName if name is empty
    /// @custom:throws InvalidTeamWallet if team wallet is zero address
    /// @custom:throws InvalidStartTime if start time is 0 or in the past
    /// @custom:throws InvalidDuration if duration is 0
    /// @custom:throws InvalidTokenPrice if token price is 0
    /// @custom:throws InvalidAmountOfTokensToSell if token amount is 0
    function _validateParameters(
        PremierParameters calldata premierParameters
    ) private view {
        // token must be set
        if (address(premierParameters.token) == address(0))
            revert InvalidToken();
        // name must be set
        if (bytes(premierParameters.name).length == 0) revert InvalidName();
        // teamWallet must be set
        if (premierParameters.teamWallet == address(0))
            revert InvalidTeamWallet();

        // startTime must be in the future
        if (
            premierParameters.startTime == 0 ||
            premierParameters.startTime < block.timestamp
        ) revert InvalidStartTime();
        // duration must be greater than 0
        if (premierParameters.duration == 0) revert InvalidDuration();
        // tokenPriceInAvax must be greater than 0
        if (premierParameters.tokenPriceInAvax == 0) revert InvalidTokenPrice();
        // amountOfTokensToSell must be greater than 0
        if (premierParameters.amountOfTokensToSell == 0)
            revert InvalidAmountOfTokensToSell();
    }

    /// @notice Validates the vesting parameters for a premier sale
    /// @dev Checks that vesting parameters are valid if vesting is enabled
    /// @param vestingParameters The vesting parameters to validate
    /// @custom:throws InvalidVestingDuration if duration is 0 or less than minimum
    /// @custom:throws InvalidVestingCliff if cliff duration exceeds total duration
    /// @custom:throws InvalidInitialVestingPercentage if TGE percentage >= 100%
    function _validateVestingParameters(
        Vesting calldata vestingParameters
    ) private pure {
        if (vestingParameters.hasVesting) {
            // 1. Total duration must be non-zero
            if (vestingParameters.totalDuration == 0)
                revert InvalidVestingDuration();

            // 2. Cliff duration must not exceed total duration
            if (
                vestingParameters.cliffDuration >
                vestingParameters.totalDuration
            ) revert InvalidVestingCliff();

            // 3. TGE percentage must be less than 100% and not excessively high
            if (vestingParameters.tgePercentage >= BASIS_POINTS)
                revert InvalidInitialVestingPercentage();
            if (vestingParameters.tgePercentage > 7500)
                // 75% max
                revert InvalidInitialVestingPercentage(); // Consider adjusting threshold

            // 4. Total duration must meet minimum requirement
            if (vestingParameters.totalDuration < MIN_VESTING_DURATION)
                revert InvalidVestingDuration();

            // 5. Non-accumulating cliff equaling total duration locks tokens forever
            if (
                !vestingParameters.cliffAccumulates &&
                vestingParameters.totalDuration ==
                vestingParameters.cliffDuration &&
                vestingParameters.cliffDuration > 0 // Allow zero cliff
            ) {
                revert InvalidVestingCliff();
            }

            // 6. Ensure meaningful linear vesting period when cliff doesn’t accumulate
            if (
                !vestingParameters.cliffAccumulates &&
                vestingParameters.cliffDuration <
                vestingParameters.totalDuration &&
                (vestingParameters.totalDuration -
                    vestingParameters.cliffDuration) <
                MIN_VESTING_DURATION
            ) {
                revert InvalidVestingDuration(); // Linear period too short
            }
        }
    }

    /// @notice Validates the parameters for a sale phase
    /// @dev Checks minimum and maximum AVAX contribution limits
    /// @param parameters The phase parameters to validate
    /// @custom:throws InvalidMinAvaxPerParticipant if min/max values are invalid
    function _validatePhaseParameters(
        PhaseParameters calldata parameters
    ) private pure {
        // If a max avax is set, min avax must be less than max avax
        if (
            parameters.minAvax < MIN_BUY_IN ||
            (parameters.maxAvax > 0 && parameters.minAvax > parameters.maxAvax)
        ) revert InvalidMinAvaxPerParticipant();
    }

    /// @notice Sets the basic parameters for a premier sale
    /// @dev Validates and sets all basic premier parameters
    /// @param premierParameters The parameters to set
    function _setBasicParameters(
        PremierParameters calldata premierParameters
    ) private {
        _validateParameters(premierParameters);
        premier.token = premierParameters.token;
        premier.name = premierParameters.name;
        premier.teamWallet = premierParameters.teamWallet;
        premier.startTime = premierParameters.startTime;
        premier.duration = premierParameters.duration;
        premier.tokenPriceInAvax = premierParameters.tokenPriceInAvax;
        premier.amountOfTokensToSell = premierParameters.amountOfTokensToSell;
        premier.oneTokenInWei =
            10 ** IERC20Metadata(address(premier.token)).decimals();
    }

    /// @notice Sets the vesting parameters for a premier sale
    /// @dev Validates and sets all vesting parameters
    /// @param vestingParameters The vesting parameters to set
    function _setVestingParameters(Vesting calldata vestingParameters) private {
        _validateVestingParameters(vestingParameters);
        vesting.hasVesting = vestingParameters.hasVesting;
        vesting.totalDuration = vestingParameters.totalDuration;
        vesting.cliffDuration = vestingParameters.cliffDuration;
        vesting.tgePercentage = vestingParameters.tgePercentage;
        vesting.cliffAccumulates = vestingParameters.cliffAccumulates;
    }

    /// @notice Initializes the vesting schedule if enabled
    /// @dev Sets the vesting start time and marks vesting as initialized
    /// @custom:throws VestingAlreadyInitialized if vesting was already initialized
    /// @custom:emits VestingInitialized when vesting is successfully initialized
    function _initializeVesting() internal {
        // If vesting is enabled, initialize vesting
        if (!vesting.hasVesting) return;

        if (vestingInitialized) revert VestingAlreadyInitialized();

        vestingStart = block.timestamp;
        vestingInitialized = true;

        emit VestingInitialized(
            msg.sender,
            vestingStart,
            vesting.totalDuration,
            vesting.cliffDuration
        );
    }

    /// @notice Calculates the end time of the premier sale
    /// @dev Adds duration to start time to get end time
    /// @return uint256 The timestamp when the sale ends
    function _endTime() private view returns (uint256) {
        return premier.startTime + premier.duration;
    }

    /// @notice Calculates revenue and treasury fees for a given amount
    /// @dev Uses basis points for percentage calculations
    /// @param amount The amount to calculate fees for
    /// @return revenueFee The total revenue fee
    /// @return treasuryFee The portion of revenue fee that goes to treasury
    function _calculateFees(
        uint256 amount
    ) private view returns (uint256, uint256) {
        uint256 revenueFee = (amount * feePercentage) / BASIS_POINTS;
        uint256 treasuryFee = (revenueFee * treasuryFeePercentage) /
            BASIS_POINTS;
        return (revenueFee, treasuryFee);
    }

    /// @notice Checks if a buyer is eligible to participate in current phase
    /// @dev Verifies whitelist/staking status and contribution limits
    /// @param buyer Address of the potential buyer
    /// @param avaxContribution Amount of AVAX being contributed
    /// @param previousContribution Amount previously contributed by buyer
    /// @custom:throws NotEligible if buyer is not eligible for current phase
    /// @custom:throws AmountExceedsCap if contribution would exceed phase cap
    /// @custom:throws InvalidAmount if contribution is below minimum
    function _checkEligibility(
        address buyer,
        uint256 avaxContribution,
        uint256 previousContribution
    ) internal view {
        // Pick the phase-specific parameters and verify membership if needed
        PhaseParameters memory params;
        if (premierPhase == PremierPhases.Whitelist) {
            if (!whitelistedAddresses[buyer])
                revert NotEligible(PremierPhases.Whitelist);
            params = whitelistPhaseParameters;
        } else if (premierPhase == PremierPhases.Staking) {
            if (!stakingAddresses[buyer])
                revert NotEligible(PremierPhases.Staking);
            params = stakingPhaseParameters;
        } else if (premierPhase == PremierPhases.Public) {
            // For public phase, no membership check is required.
            params = publicPhaseParameters;
        } else {
            // Fallback in case of an undefined phase.
            revert("Invalid phase");
        }

        // Check the maximum cap (if set) on a cumulative basis.
        if (params.maxAvax != 0) {
            if (previousContribution + avaxContribution > params.maxAvax)
                revert AmountExceedsCap(premierPhase);
        }

        // Enforce a minimum contribution if this is the first purchase in the phase.
        if (previousContribution == 0 && avaxContribution < params.minAvax)
            revert InvalidAmount();
    }

    /// @notice Checks if participation in the sale is currently allowed
    /// @dev Handles state transitions and time-based checks
    /// @custom:throws Ended if sale has ended
    /// @custom:throws NotActive if sale is not in active state
    function _canParticipate() internal {
        // Only transition from TokensDeposited -> Active if within time window
        if (premierState == PremierState.TokensDeposited) {
            // If we're already past endTime, revert rather than setting Ended
            // (which would be undone by a revert anyway).
            if (block.timestamp >= _endTime()) {
                revert Ended();
            }

            // If startTime is reached move to Active
            if (block.timestamp >= premier.startTime) {
                premierState = PremierState.Active;
            }
        }

        if (premierState == PremierState.Ended) {
            revert Ended();
        }

        // We require the premierState to be exactly Active
        if (premierState != PremierState.Active) {
            revert NotActive();
        }
    }

    /// @notice Checks if funds can be withdrawn from the sale
    /// @dev Updates state to Ended if conditions are met
    /// @custom:throws NotEnded if sale has not ended
    function _canWithdrawFunds() internal {
        if (
            block.timestamp >= _endTime() ||
            premier.totalTokenSold >= premier.amountOfTokensToSell
        ) {
            premierState = PremierState.Ended;
        }

        if (premierState != PremierState.Ended) {
            revert NotEnded();
        }
    }
}
