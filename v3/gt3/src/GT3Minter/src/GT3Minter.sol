// SPDX-License-Identifier: Unlicense
pragma solidity 0.8.24;

import {UUPSOwnable2Step} from "src/proxy/UUPSOwnable2Step.sol";
import {IGT3} from "src/interfaces/IGT3.sol";
import {IGT3Voter} from "src/interfaces/IGT3Voter.sol";
import {IGT3Minter} from "src/interfaces/IGT3Minter.sol";
import {IGT3Rebase} from "src/interfaces/IGT3Rebase.sol";
import {IxGT3} from "src/interfaces/IxGT3.sol";
import {ProtocolTimeLibrary} from "src/libraries/ProtocolTimeLibrary.sol";
import {MintAssignation} from "src/libraries/MintAssignation.sol";

/// @title GT3Minter Contract
/// @author gt3.finance
/// @notice Manages the emission and distribution of GT3 tokens
/// @dev Implements a decaying emission schedule with rebase mechanism
contract GT3Minter is IGT3Minter, UUPSOwnable2Step {
    /// @notice Initial monthly emission amount
    uint256 public constant MONTHLY_START = 1_400_000 ether;

    /// @notice Monthly decay rate in basis points (2.5%)
    uint256 public constant MONTHLY_DECAY = 250;

    /// @notice Basis points denominator
    uint256 public constant MAX_BPS = 10_000;

    /// @notice Maximum total supply of GT3 tokens
    uint256 public constant GT3_SUPPLY_CAP = 200_000_000 ether;

    /// GT3 token contract
    IGT3 public gt3;

    /// xGT3 token contract
    IxGT3 public xGt3;

    /// Rebase contract
    IGT3Rebase public rebase;

    /// @inheritdoc IGT3Minter
    address public voter;

    /// @inheritdoc IGT3Minter
    uint256 public activePeriod;

    /// @inheritdoc IGT3Minter
    uint256 public monthly;

    /// @dev Prevents implementation contract from being initialized
    constructor() {
        _disableInitializers();
    }

    /// @inheritdoc IGT3Minter
    function initialize(address owner_, address gt3_, address xGt3_, address rebase_) public initializer {
        __Ownable_init(owner_);
        __Ownable2Step_init();
        __UUPSUpgradeable_init();
        __UUPSOwnable2Step_init();

        if (gt3_ == address(0)) revert MinterInitZeroGT3();
        gt3 = IGT3(gt3_);
        if (xGt3_ == address(0)) revert MinterInitZeroXGT3();
        xGt3 = IxGT3(xGt3_);
        rebase = IGT3Rebase(rebase_);
        rebase.initialize(owner_, xGt3_);
        monthly = MONTHLY_START;
        activePeriod = ProtocolTimeLibrary.epochStart(block.timestamp);

        gt3.mint(MintAssignation.GT3_DAO, MintAssignation.GT3_DAO_AMOUNT);
        gt3.mint(MintAssignation.TUTELLUS, MintAssignation.TUTELLUS_AMOUNT);
        gt3.mint(MintAssignation.TUT_GT3_AIRDROP, MintAssignation.TUT_GT3_AIRDROP_AMOUNT);
        gt3.mint(MintAssignation.GT3_LIQUIDITY, MintAssignation.GT3_LIQUIDITY_AMOUNT);
    }

    /// @inheritdoc IGT3Minter
    function calculateRebase() external view returns (uint256 rebaseAmount) {
        (rebaseAmount,) = _calculateRebase(monthly, ProtocolTimeLibrary.epochStart(block.timestamp));
        return rebaseAmount;
    }

    /// @inheritdoc IGT3Minter
    function setVoter(address voter_) external {
        if (voter != address(0)) revert MinterVoterAlreadySetted();
        _updateVoter(voter_);
    }

    /// @inheritdoc IGT3Minter
    function duration() external pure returns (uint256) {
        return ProtocolTimeLibrary.DURATION;
    }

    /// @inheritdoc IGT3Minter
    function updatePeriod() external {
        uint256 period_ = activePeriod;
        if (block.timestamp >= period_ + ProtocolTimeLibrary.DURATION) {
            period_ = ProtocolTimeLibrary.epochStart(block.timestamp);
            activePeriod = period_;
            uint256 emission_ = monthly;
            uint256 decay_ = (emission_ * MONTHLY_DECAY) / MAX_BPS;
            monthly = decay_ > monthly ? 0 : monthly - decay_;
            (uint256 rebaseAmount_, uint256 gt3Supply_) = _calculateRebase(emission_, activePeriod);
            uint256 balanceOf_ = gt3.balanceOf(address(this));
            uint256 needed_ = emission_ + rebaseAmount_;
            uint256 left_ = gt3Supply_ >= GT3_SUPPLY_CAP ? 0 : GT3_SUPPLY_CAP - gt3Supply_;

            if (needed_ > balanceOf_) {
                uint256 toMint = needed_ - balanceOf_;
                if (toMint > left_) {
                    if (left_ > 0) {
                        gt3.mint(address(this), left_);
                    }
                    uint256 totalAvailable = balanceOf_ + left_;
                    if (totalAvailable <= emission_) {
                        emission_ = totalAvailable;
                        rebaseAmount_ = 0;
                    } else {
                        rebaseAmount_ = totalAvailable - emission_;
                    }
                } else {
                    gt3.mint(address(this), toMint);
                }
            }
            if (rebaseAmount_ != 0) {
                gt3.transfer(address(rebase), rebaseAmount_);
                rebase.checkpoint();
            }
            if (emission_ != 0) {
                gt3.approve(voter, emission_);
                IGT3Voter(voter).notifyRewardAmount(emission_);
            }
        }
    }

    /// @dev Updates the voter address and emits an event
    /// @param voter_ The new voter address
    function _updateVoter(address voter_) private {
        if (voter_ == address(0)) revert MinterZeroAddress();
        voter = voter_;
        emit UpdateVoter(voter);
    }

    /// @dev Calculates the rebase amount based on current emission and locked tokens
    /// @param emission_ Current emission amount
    /// @return rebase_ Amount of tokens to be rebased
    /// @return totalSupply_ Current total supply of GT3 tokens
    function _calculateRebase(uint256 emission_, uint256 currentPeriod_)
        private
        view
        returns (uint256 rebase_, uint256 totalSupply_)
    {
        uint256 xGt3Locked_ = xGt3.totalSupplyAtTimestamp(currentPeriod_ - 1);
        totalSupply_ = IGT3(gt3).totalSupply();
        if (totalSupply_ == 0 || xGt3Locked_ >= totalSupply_) {
            return (0, totalSupply_);
        }
        uint256 unlocked_ = totalSupply_ - xGt3Locked_;
        rebase_ = (emission_ * unlocked_ * unlocked_) / (totalSupply_ * totalSupply_ * 2);
        return (rebase_, totalSupply_);
    }
}
