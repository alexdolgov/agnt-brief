// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.25;

import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {Initializable} from "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {ExitVaultStorage} from "src/ExitVaultStorage.sol";
import {IRewardRouterV2} from "src/interfaces/IRewardRouterV2.sol";
import {IRewardTracker} from "src/interfaces/IRewardTracker.sol";
import {IesTokenVester} from "src/interfaces/gmx/IesTokenVester.sol";
import {TOKEN_WETH, TOKEN_GMX, HUNDRED_PERCENT} from "src/Constants.sol";

import {console} from "forge-std/console.sol";

/**
 * @title TokenVester
 * @notice This contract manages the vesting and distribution of GMX and GLP rewards for users.
 * @dev The TokenVester contract allows users to deposit GMX and GLP tokens, updating their
 *      reward shares and reward debts accordingly. It interacts with GMX reward trackers to claim
 *      and distribute rewards in GMX and WETH. The contract maintains user-specific data
 *      to facilitate accurate reward calculations and distributions.
 *
 *      Key Features:
 *      - Deposit GMX and GLP tokens with proper accounting.
 *      - Claim rewards based on deposited shares.
 *      - Distribute rewards between the user and the contract owner.
 */
abstract contract TokenVester is Initializable, ExitVaultStorage {
    using SafeERC20 for IERC20;

    event TokensDistributed(
        address indexed vault,
        address indexed staker,
        uint256 protocolGmx,
        uint256 vaultOwnerGmx,
        uint256 stakerVestedGmx,
        uint256 stakerStakingGmx,
        uint256 stakerStakingWeth
    );

    /**
     * @notice Deposits GMX tokens and updates the user's reward shares and debts.
     * @dev This function updates the reward vester before processing the deposit.
     *      It calculates any pending GMX and WETH rewards and distributes them
     *      to the user before updating their share count and reward debts.
     * @param _amount The amount of GMX tokens to deposit.
     */
    function _depositGMX(uint256 _amount, address _recipient) internal {
        GmxAStorage storage s = _getStorage();
        _updateVester();

        uint256 shares = s.userInfo[_recipient].gmxStream.shares;
        uint256 esGmxToVest = s.userInfo[_recipient].gmxStream.esGmxVest;
        uint256 lastClaim = s.userInfo[_recipient].gmxStream.lastClaim;
        uint256 claimedGmx = s.userInfo[_recipient].gmxStream.claimedGmx;
        uint256 wethRewardDebt = s.userInfo[_recipient].gmxStream.wethRewardDebt;
        uint256 extGmxRewardDebt = s.userInfo[_recipient].gmxStream.gmxRewardDebt;
        uint256 cutOff = s.vestingStoppedGmx == 0 ? block.timestamp : s.vestingStoppedGmx;
        uint256 pendingGmx;

        if (shares > 0) {
            //Send the reward debt
            if (lastClaim < cutOff) {
                //Check if we have claimed last rewards after vesting was withdrawn.
                pendingGmx = esGmxToVest * (cutOff - lastClaim) / 365 days;
                pendingGmx = claimedGmx + pendingGmx >= esGmxToVest ? esGmxToVest - claimedGmx : pendingGmx;
                s.userInfo[_recipient].gmxStream.claimedGmx += pendingGmx;
            }

            uint256 pendingWeth = shares * s.accumulatedGmxWethPerShare / 1e18 - wethRewardDebt;
            uint256 pendingExtGmx = shares * s.accumulatedGmxGmxPerShare / 1e18 - extGmxRewardDebt;
            _distributeTokens(_recipient, pendingGmx, pendingExtGmx, pendingWeth, true);
        }
        shares += _amount;
        s.gmxSupply += _amount;
        s.userInfo[_recipient].gmxStream.shares += _amount;
        s.userInfo[_recipient].gmxStream.lastClaim = cutOff;
        s.userInfo[_recipient].gmxStream.wethRewardDebt = shares * s.accumulatedGmxWethPerShare / 1e18;
        s.userInfo[_recipient].gmxStream.gmxRewardDebt = shares * s.accumulatedGmxGmxPerShare / 1e18;
    }

    function _withdrawGMX(uint256 _amount, address _recipient) internal {
        GmxAStorage storage s = _getStorage();
        _updateVester();

        uint256 shares = s.userInfo[_recipient].gmxStream.shares;
        uint256 esGmxToVest = s.userInfo[_recipient].gmxStream.esGmxVest;
        uint256 lastClaim = s.userInfo[_recipient].gmxStream.lastClaim;
        uint256 claimedGmx = s.userInfo[_recipient].gmxStream.claimedGmx;
        uint256 wethRewardDebt = s.userInfo[_recipient].gmxStream.wethRewardDebt;
        uint256 extGmxRewardDebt = s.userInfo[_recipient].gmxStream.gmxRewardDebt;
        uint256 cutOff = s.vestingStoppedGmx == 0 ? block.timestamp : s.vestingStoppedGmx;
        uint256 pendingGmx;

        if (shares > 0) {
            //Send the reward debt
            if (lastClaim < cutOff) {
                //Check if we have claimed last rewards after vesting was withdrawn.
                pendingGmx = esGmxToVest * (cutOff - lastClaim) / 365 days;
                pendingGmx = claimedGmx + pendingGmx >= esGmxToVest ? esGmxToVest - claimedGmx : pendingGmx;
                s.userInfo[_recipient].gmxStream.claimedGmx += pendingGmx;
            }
            uint256 pendingWeth = shares * s.accumulatedGmxWethPerShare / 1e18 - wethRewardDebt;
            uint256 pendingExtGmx = shares * s.accumulatedGmxGmxPerShare / 1e18 - extGmxRewardDebt;
            _distributeTokens(_recipient, pendingGmx, pendingExtGmx, pendingWeth, true);
        }
        shares -= _amount;
        s.gmxSupply -= _amount;
        s.userInfo[_recipient].gmxStream.shares -= _amount;
        s.userInfo[_recipient].gmxStream.lastClaim = cutOff;
        s.userInfo[_recipient].gmxStream.wethRewardDebt = shares * s.accumulatedGmxWethPerShare / 1e18;
        s.userInfo[_recipient].gmxStream.gmxRewardDebt = shares * s.accumulatedGmxGmxPerShare / 1e18;
    }

    /**
     * @notice Deposits staked GLP tokens and updates the user's reward shares and debts.
     * @dev This function updates the reward vester before processing the deposit.
     *      It calculates any pending GMX and WETH rewards and distributes them
     *      to the user before updating their share count and reward debts.
     * @param _amount The amount of staked GLP tokens to deposit.
     */
    function _depositGLP(uint256 _amount, address _recipient) internal {
        GmxAStorage storage s = _getStorage();
        _updateVester();

        uint256 shares = s.userInfo[_recipient].glpStream.shares;
        uint256 esGmxToVest = s.userInfo[_recipient].glpStream.esGmxVest;
        uint256 lastClaim = s.userInfo[_recipient].glpStream.lastClaim;
        uint256 claimedGmx = s.userInfo[_recipient].glpStream.claimedGmx;
        uint256 wethRewardDebt = s.userInfo[_recipient].glpStream.wethRewardDebt;
        uint256 cutOff = s.vestingStoppedGlp != 0 ? s.vestingStoppedGlp : block.timestamp;
        uint256 pendingGmx;

        if (shares > 0) {
            //Send the reward debt
            if (lastClaim < cutOff) {
                //Check if we have claimed last rewards after vesting was withdrawn.
                pendingGmx = esGmxToVest * (cutOff - lastClaim) / 365 days;
                pendingGmx = claimedGmx + pendingGmx >= esGmxToVest ? esGmxToVest - claimedGmx : pendingGmx;
                s.userInfo[_recipient].glpStream.claimedGmx += pendingGmx;
            }
            uint256 pendingWeth = shares * s.accumulatedGlpWethPerShare / 1e18 - wethRewardDebt;
            _distributeTokens(_recipient, pendingGmx, 0, pendingWeth, false);
        }
        shares += _amount;
        s.glpSupply += _amount;
        s.userInfo[_recipient].glpStream.shares += _amount;
        s.userInfo[_recipient].glpStream.lastClaim = cutOff;
        s.userInfo[_recipient].glpStream.wethRewardDebt = shares * s.accumulatedGlpWethPerShare / 1e18;
    }

    function _withdrawGLP(uint256 _amount, address _recipient) internal {
        GmxAStorage storage s = _getStorage();
        _updateVester();

        uint256 shares = s.userInfo[_recipient].glpStream.shares;
        uint256 esGmxToVest = s.userInfo[_recipient].glpStream.esGmxVest;
        uint256 lastClaim = s.userInfo[_recipient].glpStream.lastClaim;
        uint256 claimedGmx = s.userInfo[_recipient].glpStream.claimedGmx;
        uint256 wethRewardDebt = s.userInfo[_recipient].glpStream.wethRewardDebt;
        uint256 cutOff = s.vestingStoppedGlp != 0 ? s.vestingStoppedGlp : block.timestamp;
        uint256 pendingGmx;

        if (shares > 0) {
            //Send the reward debt
            if (lastClaim < cutOff) {
                //Check if we have claimed last rewards after vesting was withdrawn.
                pendingGmx = esGmxToVest * (cutOff - lastClaim) / 365 days;
                pendingGmx = claimedGmx + pendingGmx >= esGmxToVest ? esGmxToVest - claimedGmx : pendingGmx;
                s.userInfo[_recipient].glpStream.claimedGmx += pendingGmx;
            }

            uint256 pendingWeth = shares * s.accumulatedGlpWethPerShare / 1e18 - wethRewardDebt;
            _distributeTokens(_recipient, pendingGmx, 0, pendingWeth, false);
        }
        shares -= _amount;
        s.glpSupply -= _amount;
        s.userInfo[_recipient].glpStream.shares -= _amount;
        s.userInfo[_recipient].glpStream.lastClaim = cutOff;
        s.userInfo[_recipient].glpStream.wethRewardDebt = shares * s.accumulatedGlpWethPerShare / 1e18;
    }

    /**
     * @notice Distributes the pending GMX and WETH rewards to the user and the contract owner.
     * @dev This function calculates the portion of GMX rewards that goes to the user and
     *      the owner based on the specified donation percentage. It also transfers the
     *      WETH rewards directly to the user.
     * @param _gmx The amount of GMX rewards to distribute.
     * @param _weth The amount of WETH rewards to distribute.
     */
    function _distributeTokens(address _recipient, uint256 _gmx, uint256 _extGmx, uint256 _weth, bool _isGMXStream)
        private
    {
        GmxAStorage storage s = _getStorage();

        uint256 protocolPart = _gmx * s.protocolPart / HUNDRED_PERCENT;
        uint256 donationPart = _isGMXStream ? s.donationPartGmx : s.donationPartGlp;
        uint256 stakerPart = _gmx * donationPart / HUNDRED_PERCENT;
        uint256 contractBalance = IERC20(TOKEN_GMX).balanceOf(address(this));
        uint256 transferAmount = stakerPart + _extGmx;

        // if donation is 100%
        if (stakerPart == _gmx) {
            transferAmount = stakerPart + _extGmx > contractBalance ? contractBalance : stakerPart + _extGmx;
        }

        // Vested GMX distribution.
        IERC20(TOKEN_GMX).safeTransfer(s.treasury, protocolPart);
        IERC20(TOKEN_GMX).safeTransfer(_recipient, transferAmount);

        uint256 ownerTransfer = _gmx - stakerPart - protocolPart;
        contractBalance = IERC20(TOKEN_GMX).balanceOf(address(this));
        ownerTransfer = ownerTransfer > contractBalance ? contractBalance : ownerTransfer; // esGMX holder takes on the rounding errors.

        IERC20(TOKEN_GMX).safeTransfer(s.owner, ownerTransfer);

        // wETH from staking distribution.
        contractBalance = IERC20(TOKEN_WETH).balanceOf(address(this));
        transferAmount = _weth > contractBalance ? contractBalance : _weth;
        IERC20(TOKEN_WETH).safeTransfer(_recipient, transferAmount);
        emit TokensDistributed(
            address(this), _recipient, protocolPart, ownerTransfer, stakerPart, _extGmx, transferAmount
        );
    }

    /**
     * @notice Updates the reward vester and claims rewards for both GMX and GLP.
     * @dev This function claims pending rewards from the GMX and GLP reward trackers,
     *      calculates the accumulated rewards per share, and updates the state accordingly.
     *      It ensures rewards are only claimed if there are active deposits.
     */
    function _updateVester() internal {
        GmxAStorage storage s = _getStorage();
        if (s.gmxSupply + s.glpSupply == 0) return;

        IRewardTracker(s.gmxVester).claim(); // GMX
        IRewardTracker(s.glpVester).claim(); // GMX

        uint256 stakedGmxClaim = IRewardTracker(s.gmxRewardsTracker).claim(address(this)); //weth
        uint256 stakedGlpClaim = IRewardTracker(s.glpRewardsTracker).claim(address(this)); // weth
        uint256 extGmxClaim = IRewardTracker(s.extGmxRewardsTracker).claim(address(this)); // gmx

        uint256 gmxSide = s.gmxSupply;
        uint256 glpSide = s.glpSupply;

        if (gmxSide > 0) {
            s.accumulatedGmxWethPerShare += stakedGmxClaim * 1e18 / gmxSide;
            s.accumulatedGmxGmxPerShare += extGmxClaim * 1e18 / gmxSide;
        }
        if (glpSide > 0) {
            s.accumulatedGlpWethPerShare += stakedGlpClaim * 1e18 / glpSide;
        }
    }
}
