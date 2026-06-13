// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.25;

import {ERC20Upgradeable as ERC20} from "@openzeppelin/contracts-upgradeable/token/ERC20/ERC20Upgradeable.sol";
import {ERC1967FactoryConstants} from "@solady/utils/ERC1967FactoryConstants.sol";
import {ERC1967Factory} from "@solady/utils/ERC1967Factory.sol";
import {Initializable} from "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {ExitVaultStorage, GmxStream, GlpStream, WithdrawRequest, UserInfo} from "src/ExitVaultStorage.sol";
import {IStakedGmx} from "src/interfaces/gmx/IStakedGmx.sol";
import {IGmxDAO} from "src/interfaces/gmx/IGmxDAO.sol";
import {IesTokenVester} from "src/interfaces/gmx/IesTokenVester.sol";
import {IGmxReader} from "src/interfaces/gmx/IGmxReader.sol";
import {Clones} from "@openzeppelin/contracts/proxy/Clones.sol";
import {IEntryPoint} from "src/interfaces/IEntryPoint.sol";
import {IExitVault} from "src/interfaces/IExitVault.sol";
import {TokenVester} from "src/TokenVester.sol";
import {IRewardRouterV2} from "src/interfaces/IRewardRouterV2.sol";
import {IWithdrawEscrow} from "src/interfaces/IWithdrawEscrow.sol";
import {IExitVaultEntrypoint} from "src/interfaces/IExitVaultEntrypoint.sol";
import {IPause} from "src/interfaces/IPause.sol";
import {GmxAddresses} from "src/ExitVaultEntryPoint.sol";
import {
    TOKEN_GMX,
    TOKEN_sbfGMX,
    TOKEN_GLP,
    TOKEN_STAKED_GLP,
    TOKEN_STAKED_GMX,
    TOKEN_ESGMX,
    TOKEN_GMX_DAO,
    HUNDRED_PERCENT,
    SECONDS_IN_YEAR
} from "src/Constants.sol";

ERC1967Factory constant ERC1967_FACTORY = ERC1967Factory(ERC1967FactoryConstants.ADDRESS);

contract ExitVault is Initializable, TokenVester, IExitVault {
    using SafeERC20 for IERC20;
    using Clones for address;

    constructor() {
        _disableInitializers();
    }

    /**
     * @notice Initializes the ExitVault contract with the specified owner and entry point.
     * @dev 1. This function accepts the transfer of the GMX account.
     *      2. Unstakes any staked esGMX for it to be used in vesting.
     *      3. Deposits staked GMX and staked GLP for vesting.
     *      4. Reimburses all the unused staked GMX and staked GLP tokens.
     *      5. Delegates all voting power to the DAO.
     * @param _owner The address of the owner who will control this ExitVault.
     * @param _donationPartGmx The percentage (in basis points) of rewards from vesting with staked GMX to donate.
     * @param _donationPartGlp The percentage (in basis points) of rewards from vesting with staked GLP to donate.
     * @param _gmxAmount Amount of staked GMX to use in vesting.
     * @param _glpAmount Amount of staked GLP to use in vesting.
     * @param _protocolPart The percentage that will be sent to the treasury.
     * @param _treasury Address where the fees and delegation will go.
     */
    function initialize(
        address _owner,
        uint256 _donationPartGmx,
        uint256 _donationPartGlp,
        uint256 _gmxAmount,
        uint256 _glpAmount,
        uint256 _protocolPart,
        address _treasury,
        GmxAddresses calldata _gmxAddresses
    ) external initializer {
        if (_donationPartGmx + _protocolPart > HUNDRED_PERCENT) revert InvalidDonationAmount();
        if (_donationPartGlp + _protocolPart > HUNDRED_PERCENT) revert InvalidDonationAmount();
        if (_treasury == address(0)) revert ZeroAddress();

        GmxAStorage storage s = _getStorage();

        s.owner = _owner;
        s.donationPartGmx = _donationPartGmx;
        s.donationPartGlp = _donationPartGlp;
        s.protocolPart = _protocolPart;
        s.treasury = _treasury;
        s.entryPoint = msg.sender;

        s.gmxVester = _gmxAddresses.gmxVester;
        s.glpVester = _gmxAddresses.glpVester;
        s.gmxRewardsTracker = _gmxAddresses.gmxRewardsTracker;
        s.extGmxRewardsTracker = _gmxAddresses.extGmxRewardsTracker;
        s.glpRewardsTracker = _gmxAddresses.glpRewardsTracker;
        s.gmxRewardsRouter = _gmxAddresses.gmxRewardsRouter;

        // Transfer GMX assets from caller to this vault.
        _acceptAccountTransfer();

        // Unstake any staked esGMX
        _unstakeEsGmx(_gmxAddresses.gmxRewardsRouter);

        // All GMX required for vesting here needs to be staked in previous transaction.
        if (_gmxAmount > 0) _depositWithGmx(_gmxAmount, _owner, false);
        if (_glpAmount > 0) _depositWithGlp(_glpAmount, _owner);

        // Unstake any extra stakedGMX/stakedGLP and return it.
        _returnUnusedTokens(_owner, _gmxAddresses.gmxRewardsRouter);

        // Delegate all votes to BonsaiDAO.
        IGmxDAO(TOKEN_GMX_DAO).delegate(_treasury);
    }

    function _unstakeEsGmx(address _rewardRouter) private {
        uint256 stakedEsGmxBalance = IStakedGmx(TOKEN_STAKED_GMX).depositBalances(address(this), TOKEN_ESGMX);
        if (stakedEsGmxBalance > 0) IRewardRouterV2(_rewardRouter).unstakeEsGmx(stakedEsGmxBalance);
    }

    function _returnUnusedTokens(address _owner, address _rewardRouter) private {
        GmxAStorage storage s = _getStorage();
        // Convert to stakedGMX that is not used in vesting and send back.
        uint256 stakedGmxBalance = IERC20(TOKEN_sbfGMX).balanceOf(address(this));
        uint256 shares = s.userInfo[_owner].gmxStream.shares;
        uint256 pairAmountUsed = IesTokenVester(s.gmxVester).pairAmounts(address(this));
        if (stakedGmxBalance > (shares - pairAmountUsed)) {
            IRewardRouterV2(_rewardRouter).unstakeGmx(stakedGmxBalance - (shares - pairAmountUsed));
            IERC20(TOKEN_GMX).safeTransfer(_owner, stakedGmxBalance - (shares - pairAmountUsed));
        }

        // Send back the staked GLP
        uint256 stakedGlpBalance = IERC20(TOKEN_GLP).balanceOf(address(this));
        pairAmountUsed = IesTokenVester(s.glpVester).pairAmounts(address(this));
        shares = s.userInfo[_owner].glpStream.shares;
        if (stakedGlpBalance > (shares - pairAmountUsed)) {
            IERC20(TOKEN_STAKED_GLP).safeTransfer(_owner, stakedGlpBalance - (shares - pairAmountUsed));
        }
    }

    /**
     * @notice  Allows users to deposit specified amounts of GMX or staked GLP tokens into the contract.
     * @dev     This function allows participants to contribute GMX and GLP to start vesting esGMX.
     *          Vault owner is also allowed to deposit via this function to help vest their own esGMX.
     *          Owner exit and withdrawals lock for 1 year after the first non-owner deposit.
     * @param   _token The address of the token being deposited (must be either GMX or staked GLP).
     * @param   _amount The amount of tokens to deposit.
     * @custom:require `_token` must be either GMX or staked GLP.
     */
    function deposit(address _token, uint256 _amount, string calldata _refcode) external checkFullPausedVault {
        GmxAStorage storage s = _getStorage();

        if (s.vestingStoppedGmx != 0 && s.vestingStoppedGlp != 0) revert VaultIsClosed();
        if (_token != TOKEN_GMX && _token != TOKEN_STAKED_GLP) revert InvalidTokenSupplied();
        // Invalidate pending withdraw requests to avoind amount manipulation when matching.
        if (s.withdrawRequests[msg.sender][_token].token != address(0)) {
            invalidateWithdrawRequest(_token);
        }

        if (_token == TOKEN_GMX) {
            if (s.vestingStoppedGmx != 0) revert VaultIsClosed();
            IERC20(TOKEN_GMX).safeTransferFrom(msg.sender, address(this), _amount);
            _depositWithGmx(_amount, msg.sender, true);
            if (s.gmxUnlockDate == 0 && msg.sender != s.owner) {
                s.gmxUnlockDate = block.timestamp + SECONDS_IN_YEAR;
                emit GMXVestingStarted(msg.sender, s.gmxUnlockDate);
            }
        } else if (_token == TOKEN_STAKED_GLP) {
            if (s.vestingStoppedGlp != 0) revert VaultIsClosed();
            IERC20(TOKEN_STAKED_GLP).safeTransferFrom(msg.sender, address(this), _amount);
            _depositWithGlp(_amount, msg.sender);
            if (s.glpUnlockDate == 0 && msg.sender != s.owner) {
                s.glpUnlockDate = block.timestamp + SECONDS_IN_YEAR;
                emit GLPVestingStarted(msg.sender, s.glpUnlockDate);
            }
        }

        emit Deposit(msg.sender, _token, _amount, _refcode);
    }

    /**
     * @notice  Allows users to withdraw their shares 1 year after first non-owner deposit.
     * @dev     If vault owner did not exit yet, the vesting will stop to withdraw user funds.
     *
     */
    function withdraw() external checkFullPausedVault {
        GmxAStorage storage s = _getStorage();
        if (block.timestamp < s.gmxUnlockDate && block.timestamp < s.glpUnlockDate) revert VaultHasBeenLocked();

        uint256 gmxShares = s.userInfo[msg.sender].gmxStream.shares;
        uint256 glpShares = s.userInfo[msg.sender].glpStream.shares;

        uint256 transferAmount;

        if (gmxShares != 0 && block.timestamp >= s.gmxUnlockDate) {
            _withdrawGMX(gmxShares, msg.sender); // Claim rewards
            // Check if the vaultOwner already transferred all esGMX or not.
            if (IesTokenVester(s.gmxVester).pairAmounts(address(this)) > 0) {
                IesTokenVester(s.gmxVester).withdraw();
                s.vestingStoppedGmx = block.timestamp;
            }
            IRewardRouterV2(s.gmxRewardsRouter).unstakeGmx(gmxShares);
            uint256 gmxBalance = IERC20(TOKEN_GMX).balanceOf(address(this));
            transferAmount = gmxShares > gmxBalance ? gmxBalance : gmxShares;
            IERC20(TOKEN_GMX).safeTransfer(msg.sender, transferAmount);
            delete s.userInfo[msg.sender].gmxStream;
        }

        if (glpShares != 0 && block.timestamp >= s.glpUnlockDate) {
            _withdrawGLP(glpShares, msg.sender);
            if (IesTokenVester(s.glpVester).pairAmounts(address(this)) > 0) {
                IesTokenVester(s.glpVester).withdraw();
                s.vestingStoppedGlp = block.timestamp;
            }
            uint256 glpBalance = IERC20(TOKEN_STAKED_GLP).balanceOf(address(this));
            transferAmount = glpShares > glpBalance ? glpBalance : glpShares;
            IERC20(TOKEN_STAKED_GLP).safeTransfer(msg.sender, transferAmount);
            delete s.userInfo[msg.sender].glpStream;
        }
    }

    /**
     * @notice  Allows vault owner to exit after a year since first non-owner deposit.
     * @dev     Vault will deploy a temporary escrow contract that will hold vault owners funds.
     *          Vault owner's staked GMX and GLP as well as remaining esGMX will account transfer.
     *          Reward tokens are in GMX so are not transferred. They are also not staked at the end either.
     *          Both vesters have to reach their own corresponding 1 year mark.
     */
    function ownerExit() external onlyOwner checkFullPausedVault {
        GmxAStorage storage s = _getStorage();

        // Both sides should pass one year mark.
        if (block.timestamp < s.gmxUnlockDate || block.timestamp < s.glpUnlockDate) revert VaultHasBeenLocked();

        uint256 gmxShares = s.userInfo[msg.sender].gmxStream.shares;
        uint256 glpShares = s.userInfo[msg.sender].glpStream.shares;

        // Claim rewards even if owner has not shares in the vault for the vault transfer to succeed.
        _withdrawGMX(gmxShares, msg.sender);
        _withdrawGLP(glpShares, msg.sender);

        // Record GMX balance so we do not stake stakers rewards in the future.
        uint256 rewardsBalance = IERC20(TOKEN_GMX).balanceOf(address(this));

        address escrow = s.withdrawEscrow = ERC1967_FACTORY.deploy(
            IExitVaultEntrypoint(s.entryPoint).withdrawEscrowImplementation(),
            IExitVaultEntrypoint(s.entryPoint).admin()
        );

        IWithdrawEscrow(escrow).initialize(s.gmxRewardsRouter, s.owner);

        // Withdraw both sides.
        if (IesTokenVester(s.gmxVester).pairAmounts(address(this)) > 0) IesTokenVester(s.gmxVester).withdraw();
        if (IesTokenVester(s.glpVester).pairAmounts(address(this)) > 0) IesTokenVester(s.glpVester).withdraw();

        // Transfer account to escrow.
        _signalAccountTransfer(escrow);
        IWithdrawEscrow(escrow).acceptAccountTransfer(gmxShares, glpShares);

        // Escrow will reimburse the staked tokens that did not belong to the vault owner.
        // Stake the raw GMX that was sent from the escrow to continue making staking rewards.
        // Make sure not to stake the earned but yet unclaimed by stakers GMX rewards.
        uint256 gmxBalance = IERC20(TOKEN_GMX).balanceOf(address(this));
        // Reward balance is in GMX so it never left the contract on account transfer
        // thus GMX balance here is always equals or more than rewardsBalance
        if (gmxBalance - rewardsBalance > 0) {
            IERC20(TOKEN_GMX).approve(address(TOKEN_STAKED_GMX), gmxBalance - rewardsBalance);
            IRewardRouterV2(s.gmxRewardsRouter).stakeGmx(gmxBalance - rewardsBalance);
        }

        // Delete vault owners shares accounting
        delete s.userInfo[msg.sender];

        s.vestingStoppedGmx = block.timestamp;
        s.vestingStoppedGlp = block.timestamp;
    }

    /**
     * @notice  Claims rewards for both GMX and GLP tokens.
     * @dev     This function processes the reward claims by invoking the appropriate deposit functions
     *          for GMX and GLP, allowing users to receive their accumulated rewards. It does not require
     *          any input parameters and can be called by any user with rewards to claim.
     */
    function claimRewards() external checkFullPausedVault {
        GmxAStorage storage s = _getStorage();

        // If rewards unclaimed, they will be claimed on withdraw.
        if (s.vestingStoppedGmx != 0 && s.vestingStoppedGlp != 0) revert VaultIsClosed();

        uint256 gmxShares = s.userInfo[msg.sender].gmxStream.shares;
        uint256 glpShares = s.userInfo[msg.sender].glpStream.shares;

        if (gmxShares == 0 && glpShares == 0) return;

        if (gmxShares != 0) _depositGMX(0, msg.sender);
        if (glpShares != 0) _depositGLP(0, msg.sender);
    }

    /**
     * @notice  Creates a withdrawal request for the stakers tokens prior to 1 year lock end.
     *          OTC style.
     * @dev     This function allows a user to specify an amount of discount they would like the matcher to have - donation.
     * @param   _newRequest The withdrawal request details, including the token type, amount, donation, and remaining balance.
     */
    function createWithdrawRequest(WithdrawRequest calldata _newRequest) external checkFullPausedVault {
        GmxAStorage storage s = _getStorage();

        if (_newRequest.token == TOKEN_GMX && s.vestingStoppedGmx != 0) revert VaultIsClosed();
        if (_newRequest.token == TOKEN_STAKED_GLP && s.vestingStoppedGlp != 0) revert VaultIsClosed();

        uint256 shares = _newRequest.token == TOKEN_GMX
            ? s.userInfo[msg.sender].gmxStream.shares
            : s.userInfo[msg.sender].glpStream.shares;

        if (_newRequest.token != TOKEN_GMX && _newRequest.token != TOKEN_STAKED_GLP) revert InvalidTokenSupplied();
        if (_newRequest.donation > shares) revert SharesBalanceExceeded(); // Can not donate more shares than one has.

        s.withdrawRequests[msg.sender][_newRequest.token] =
            WithdrawRequest({token: _newRequest.token, donation: _newRequest.donation});

        emit WithdrawRequestCreated(msg.sender, _newRequest);
    }

    /**
     * @notice  Matches a withdrawal request from a staker, allowing another user to substitute entirety of the staker's position.
     * @dev     No support for partial fills.
     * @param   _staker The address of the staker who created the original withdrawal request.
     * @param   _token The address of the token being withdrawn (must be either GMX or staked GLP).
     * @param   _minDonation The minimum donation amount that the new staker is willing to accept. Required to prevent front running.
     * @param   _minUnclaimed The minimum amount of esGMX that can still be claimed as the result of the vesing.
     */
    function matchWithdrawRequest(address _staker, address _token, uint256 _minDonation, uint256 _minUnclaimed)
        external
        checkFullPausedVault
    {
        GmxAStorage storage s = _getStorage();
        WithdrawRequest storage request = s.withdrawRequests[_staker][_token];

        if (_token != TOKEN_GMX && _token != TOKEN_STAKED_GLP) revert InvalidTokenSupplied();
        if (request.token == address(0)) revert RequestDoesNotExist();
        if (request.token == TOKEN_GMX && s.vestingStoppedGmx != 0) revert VaultIsClosed();
        if (request.token == TOKEN_STAKED_GLP && s.vestingStoppedGlp != 0) revert VaultIsClosed();
        if (_staker == msg.sender) revert FillingSelfRequest();

        UserInfo storage stakerInfo = s.userInfo[_staker];
        uint256 shares = _token == TOKEN_GMX ? stakerInfo.gmxStream.shares : stakerInfo.glpStream.shares;

        if (request.donation > shares) revert SharesBalanceExceeded();
        if (request.donation < _minDonation) revert DonationTooLow(); // Validates donation size to prevent front running.

        // Transfer the tokens that they want to substitute to old staker.
        IERC20(_token == TOKEN_GMX ? TOKEN_GMX : TOKEN_STAKED_GLP).safeTransferFrom(
            msg.sender, _staker, shares - request.donation
        );

        UserInfo storage matcherInfo = s.userInfo[msg.sender]; // New Matcher

        // Update the new staker UserInfo.
        if (_token == TOKEN_GMX) {
            // Compute proportion of the esGMX to pass as the result of this match.
            _withdrawGMX(shares, _staker);
            _depositGMX(shares, msg.sender);
            matcherInfo.gmxStream.esGmxVest += stakerInfo.gmxStream.esGmxVest;
            matcherInfo.gmxStream.claimedGmx += stakerInfo.gmxStream.claimedGmx;

            matcherInfo.gmxStream.claimedGmx = matcherInfo.gmxStream.claimedGmx > matcherInfo.gmxStream.esGmxVest
                ? matcherInfo.gmxStream.esGmxVest
                : matcherInfo.gmxStream.claimedGmx;

            if (matcherInfo.gmxStream.esGmxVest - matcherInfo.gmxStream.claimedGmx < _minUnclaimed) {
                revert UnclaimedTooLow();
            }
        } else {
            _withdrawGLP(shares, _staker);
            _depositGLP(shares, msg.sender);
            matcherInfo.glpStream.esGmxVest += stakerInfo.glpStream.esGmxVest;
            matcherInfo.glpStream.claimedGmx += stakerInfo.glpStream.claimedGmx;

            // This should never need to cap the claimed since for a particular user claimed can never go over
            // the esGmxToVest, so if we add two of such users, there relation should be preserved and esGmxToVest
            // will always be incremented by a larger number than the claimedGmx
            matcherInfo.glpStream.claimedGmx = matcherInfo.glpStream.claimedGmx > matcherInfo.glpStream.esGmxVest
                ? matcherInfo.glpStream.esGmxVest
                : matcherInfo.glpStream.claimedGmx;
            if (matcherInfo.glpStream.esGmxVest - matcherInfo.glpStream.claimedGmx < _minUnclaimed) {
                revert UnclaimedTooLow();
            }
        }

        if (request.token == TOKEN_GMX) delete stakerInfo.gmxStream;
        if (request.token == TOKEN_STAKED_GLP) delete stakerInfo.glpStream;
        delete s.withdrawRequests[_staker][_token];

        emit WithdrawRequestMatched(_staker, _token, shares);
    }

    /**
     * @notice  Invalidates a previously created withdrawal request for the specified token.
     * @param   _token The address of the token for which the withdrawal request is to be invalidated (must be either GMX or staked GLP).
     */
    function invalidateWithdrawRequest(address _token) public checkFullPausedVault {
        if (_token != TOKEN_GMX && _token != TOKEN_STAKED_GLP) revert InvalidTokenSupplied();
        GmxAStorage storage s = _getStorage();
        WithdrawRequest storage request = s.withdrawRequests[msg.sender][_token];
        if (request.token == address(0)) revert NoRequestFound();
        delete s.withdrawRequests[msg.sender][_token];
        emit WithdrawRequestInvalidated(msg.sender, _token);
    }

    /**
     * @notice Accepts the transfer of GMX Account.
     */
    function _acceptAccountTransfer() private {
        GmxAStorage storage s = _getStorage();
        IRewardRouterV2(s.gmxRewardsRouter).acceptTransfer(s.owner);
    }

    /**
     * @notice  Allows the current owner to exit the contract early if they are the only participant in the vault.
     * @dev     In this case all tokens in the vault belong to the vault owner and no escrow needed.
     * @param   _receiver The address to which ownership of the ExitVault is transferred upon the owner's early exit.
     */
    function earlyOwnerExit(address _receiver) external onlyOwner checkFullPausedVault {
        GmxAStorage storage s = _getStorage();

        // Claim rewards if vault owner has staked.
        uint256 gmxShares = s.userInfo[msg.sender].gmxStream.shares;
        uint256 glpShares = s.userInfo[msg.sender].glpStream.shares;
        if (gmxShares != 0) _withdrawGMX(gmxShares, msg.sender);
        if (glpShares != 0) _withdrawGLP(glpShares, msg.sender);

        if (_receiver == address(0) || _receiver == address(this)) revert InvalidReceiver();
        if (s.gmxUnlockDate != 0 || s.glpUnlockDate != 0) revert VaultHasBeenLocked();
        if (IesTokenVester(s.glpVester).pairAmounts(address(this)) > 0) IesTokenVester(s.glpVester).withdraw();
        if (IesTokenVester(s.gmxVester).pairAmounts(address(this)) > 0) IesTokenVester(s.gmxVester).withdraw();

        _signalAccountTransfer(_receiver);

        s.vestingStoppedGmx = block.timestamp;
        s.vestingStoppedGlp = block.timestamp;
        emit OwnerExited(s.owner, _receiver);
    }

    /**
     * @notice  Increases the donation percentage of the vault.
     * @dev     This function is restricted to the vault owner. Only increase is allowed.
     *          In the case where the donation is increased after the users deposit, user will get increased donation
     *          for the whole time they were present in the vault.
     * @param   _newDonation The new donation percentage to be set.
     */
    function increaseDonation(uint256 _newDonation, address _token) external onlyOwner checkFullPausedVault {
        if (_token != TOKEN_GMX && _token != TOKEN_STAKED_GLP) revert InvalidTokenSupplied();
        GmxAStorage storage s = _getStorage();
        if (_newDonation + s.protocolPart > HUNDRED_PERCENT) revert InvalidDonationAmount();

        if (_token == TOKEN_GMX) {
            if (s.donationPartGmx >= _newDonation) revert InvalidDonationAmount();
            if (s.vestingStoppedGmx != 0) revert VaultIsClosed();
            s.donationPartGmx = _newDonation;
        } else {
            if (s.donationPartGlp >= _newDonation) revert InvalidDonationAmount();
            if (s.vestingStoppedGmx != 0) revert VaultIsClosed();
            s.donationPartGlp = _newDonation;
        }

        emit IncreasedDonation(_token, _newDonation);
    }

    function getEsGmxForPairAmount(address _token, uint256 _amount) public view returns (uint256) {
        GmxAStorage storage s = _getStorage();
        address vester = _token == TOKEN_GMX ? s.gmxVester : s.glpVester;

        // ============ Compute esGMX to vest from _amount
        uint256 lastVest = IesTokenVester(vester).lastVestingTimes(address(this));
        uint256 depositedEsGmx = IesTokenVester(vester).balances(address(this));
        uint256 vestedEsGmx = IesTokenVester(vester).getVestedAmount(address(this));
        uint256 burned = vestedEsGmx * (block.timestamp - lastVest) / 365 days;
        uint256 pairAmount = IesTokenVester(vester).pairAmounts(address(this));
        uint256 maxVestable = IesTokenVester(vester).getMaxVestableAmount(address(this));
        uint256 combinedStakedAmount = IesTokenVester(vester).getCombinedAverageStakedAmount(address(this));
        if (combinedStakedAmount == 0) return 0;

        return ((_amount + pairAmount) * maxVestable / combinedStakedAmount) - depositedEsGmx + burned;
    }

    /**
     * @notice  Handles the deposit process for GMX tokens.
     * @dev     This function computes the amount of esGMX that will be vested using the stakers tokens.
     * @param   _amount The amount of GMX tokens to deposit.
     * @param   _recipient of the newly minted shares.
     * @param   _stake whether or not to stake the GMX tokens before the deposit in vester.
     */
    function _depositWithGmx(uint256 _amount, address _recipient, bool _stake) private {
        GmxAStorage storage s = _getStorage();
        uint256 excess;
        uint256 maxCapacity = getMaxGmxCapacity();
        if (maxCapacity == 0) revert VaultAtCapacity();
        if (_amount > maxCapacity) {
            excess = _amount - maxCapacity;
            _amount = maxCapacity;
        }

        (uint256 maxVestWithGMX,,,) = getMaxVestAmountForVault(address(this));
        if (maxVestWithGMX == 0) revert VaultAtCapacity();
        uint256 newESGMX = getEsGmxForPairAmount(TOKEN_GMX, _amount);
        if (newESGMX == 0) revert InvalidAmount();
        if (newESGMX > maxVestWithGMX) revert VaultAtCapacity();

        _depositGMX(_amount, _recipient);
        s.userInfo[_recipient].gmxStream.esGmxVest += newESGMX;

        if (_stake) {
            IERC20(TOKEN_GMX).approve(address(TOKEN_STAKED_GMX), _amount);
            IRewardRouterV2(s.gmxRewardsRouter).stakeGmx(_amount);
        }

        if (excess > 0) {
            IERC20(TOKEN_GMX).transfer(msg.sender, excess);
        }

        // Deposit tokens for vesting in GMX.
        IesTokenVester(s.gmxVester).deposit(newESGMX);
    }

    /**
     * @notice  Handles the deposit process for staked GLP tokens.
     * @dev     This function computes the amount of esGMX that will be vested using the stakers tokens.
     * @param   _amount The amount of staked GLP tokens to deposit.
     * @param   _recipient of the newly minted shares.
     */
    function _depositWithGlp(uint256 _amount, address _recipient) private {
        GmxAStorage storage s = _getStorage();
        uint256 excess;
        uint256 maxCapacity = getMaxGlpCapacity();
        if (maxCapacity == 0) revert VaultAtCapacity();
        if (_amount > maxCapacity) {
            excess = _amount - maxCapacity;
            _amount = maxCapacity;
        }

        (, uint256 maxVestWithGLP,,) = getMaxVestAmountForVault(address(this));
        if (maxVestWithGLP == 0) revert VaultAtCapacity();
        uint256 newESGMX = getEsGmxForPairAmount(TOKEN_GLP, _amount);
        if (newESGMX == 0) revert InvalidAmount();
        if (newESGMX > maxVestWithGLP) revert VaultAtCapacity();

        _depositGLP(_amount, _recipient);
        s.userInfo[_recipient].glpStream.esGmxVest += newESGMX;
        IesTokenVester(s.glpVester).deposit(newESGMX);

        if (excess > 0) {
            IERC20(TOKEN_GLP).transfer(msg.sender, excess);
        }
    }

    function delegate(address _delegate) external onlyEntryPoint {
        IGmxDAO(TOKEN_GMX_DAO).delegate(_delegate);
    }

    function setOwner(address _to) external onlyEntryPoint {
        GmxAStorage storage s = _getStorage();
        if (s.vestingStoppedGmx != 0 && s.vestingStoppedGlp != 0) revert VaultIsClosed();
        s.owner = _to;
    }

    function refreshGMXAddresses() external onlyEntryPoint {
        GmxAStorage storage s = _getStorage();
        IEntryPoint entryPoint = IEntryPoint(_getStorage().entryPoint);
        s.gmxVester = entryPoint.gmxVester();
        s.glpVester = entryPoint.glpVester();
        s.gmxRewardsTracker = entryPoint.gmxRewardsTracker();
        s.glpRewardsTracker = entryPoint.glpRewardsTracker();
        s.gmxRewardsRouter = entryPoint.gmxRewardsRouter();
    }

    function updateVester() external {
        _updateVester();
    }

    function _signalAccountTransfer(address _receiver) private {
        GmxAStorage storage s = _getStorage();
        IERC20(TOKEN_sbfGMX).approve(_receiver, IERC20(TOKEN_sbfGMX).balanceOf(address(this)));
        IERC20(TOKEN_GMX).approve(
            TOKEN_STAKED_GMX, IStakedGmx(TOKEN_STAKED_GMX).depositBalances(address(this), TOKEN_GMX)
        );
        IRewardRouterV2(s.gmxRewardsRouter).signalTransfer(_receiver);
    }

    modifier checkFullPausedVault() {
        if (IPause(_getStorage().entryPoint).isProtocolPaused()) revert IPause.ProtocolPaused();
        if (IPause(_getStorage().entryPoint).isVaultPaused(address(this))) revert IPause.VaultPaused();
        _;
    }

    modifier onlyEntryPoint() {
        if (msg.sender != _getStorage().entryPoint) revert OnlyEntryPoint();
        _;
    }
}
