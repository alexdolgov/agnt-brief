// SPDX-License-Identifier: MIT
pragma solidity =0.8.23;

import {FixedPointMathLib} from "solady/utils/FixedPointMathLib.sol";
import {MerkleProofLib} from "solady/utils/MerkleProofLib.sol";
import {ERC20} from "solmate/tokens/ERC20.sol";
import {Owned} from "solmate/auth/Owned.sol";

import {IERC20Rebasing, YieldMode} from "../interfaces/IBlast.sol";

import {BAsset} from "./bAsset.sol";
import {BlastClaimer} from "./BlastClaimer.sol";

contract PreAsset is Owned {

    ERC20 public immutable reserve;
    bytes32 public immutable merkleRoot;
    address public immutable baselineFactory;
    uint256 public immutable deployTime;

    // allow anyone to abort presale after `timeLimit` from `deployTime`
    uint256 public constant timeLimit = 2 weeks;

    BAsset public bAsset;
    bool public active;
    uint256 public totalDeposits;
    mapping(address => uint256) public whitelist;
    mapping(address => uint256) public deposits;

    event Deposit(address indexed user, uint256 amount);
    event Claim(address indexed user, uint256 amount);
    event Withdraw(address indexed user, uint256 amount);
    event Seeded(uint256 amount);
    event Aborted();

    error InvalidCaller();
    error InvalidInput();
    error InvalidWithdraw();
    error MaxDepositExceeded();
    error MintInactive();
    error MintActive();
    error ClaimNotAvailable();

    constructor(
        ERC20 reserve_,
        address baselineFactory_,
        address owner_,
        bytes32 merkleRoot_
    ) Owned(owner_) {
        // set immutable variables
        reserve = reserve_;
        baselineFactory = baselineFactory_;
        merkleRoot = merkleRoot_;
        deployTime = block.timestamp;

        // turn on minting
        active = true;

        BlastClaimer.configure(owner_);
        IERC20Rebasing(address(reserve)).configure(YieldMode.CLAIMABLE);
    }

    // Verify user deposit against merkle tree and deposit
    function deposit(
        uint256 amount_,
        uint256 limit_,
        bytes32[] calldata proofs_
    ) external {

        // Verify user
        bytes32 leaf = keccak256(bytes.concat(keccak256(abi.encode(msg.sender, limit_))));
        if (!MerkleProofLib.verifyCalldata(proofs_, merkleRoot, leaf)) revert InvalidCaller();

        _deposit(amount_, limit_);
    }

    // Verify user deposit against whitelist and deposit
    function whitelistDeposit(uint256 amount_) external {
        _deposit(amount_, whitelist[msg.sender]);
    }

    function _deposit(uint256 amount_, uint256 limit_) internal {
        if (amount_ == 0) revert InvalidInput();

        // If mint has ended revert
        if (!active) revert MintInactive();

        // If user has already deposited the max amount, revert
        if ((deposits[msg.sender] += amount_) > limit_) revert MaxDepositExceeded();

        // Take reserves
        totalDeposits += amount_;
        reserve.transferFrom(msg.sender, address(this), amount_);

        emit Deposit(msg.sender, amount_);
    }

    // Claim bAssets
    function claim() external returns (uint256){
        // Cannot claim while mint is active
        if (active) revert MintActive();

        // Cannot claim if there are no bAssets in the contract or if user has no deposits
        uint256 totalBAssets = bAsset.balanceOf(address(this));
        uint256 depositAmount = deposits[msg.sender];
        if (totalBAssets == 0 || depositAmount == 0) revert ClaimNotAvailable();

        // Calculate amount claimable
        uint256 percent = depositAmount * 1e18 / totalDeposits;
        uint256 claimable = percent * totalBAssets / 1e18;

        // Update state
        totalDeposits -= depositAmount;
        deposits[msg.sender] = 0;

        bAsset.transfer(msg.sender, claimable);

        emit Claim(msg.sender, claimable);
        return claimable;
    }

    // Allow users to withdraw their bAssets if the presale is cancelled
    function withdraw() external returns (uint256) {
        if (active) revert MintActive();

        // Ensure user has a deposit
        uint256 amount = deposits[msg.sender];
        if (amount == 0) revert InvalidWithdraw();

        // zero out users deposit
        deposits[msg.sender] = 0;
        totalDeposits -= amount;

        // send user back their deposit
        reserve.transfer(msg.sender, amount);

        emit Withdraw(msg.sender, amount);
        return amount;
    }

    // Transfer reserves to baseline to seed the pool
    function seed() external returns (uint256) {
        if (!active) revert MintInactive();

        // ensure caller is baseline
        address baseline = bAsset.baseline();
        if (msg.sender != baseline) revert InvalidCaller();

        active = false;
        uint256 totalReserves = reserve.balanceOf(address(this));
        reserve.transfer(baseline, totalReserves);

        emit Seeded(totalReserves);
        return totalReserves;
    }

    // Set the precalculated BAsset address, must be called before baseline deployment
    function setBAsset(BAsset bAsset_) external {
        if (msg.sender != baselineFactory) revert InvalidCaller();
        if (address(bAsset) != address(0)) revert InvalidInput();
        bAsset = bAsset_;
    }

    // Manually add users to whitelist to deposit through manual deposit
    function modifyWhitelist(
        address[] calldata users_,
        uint256[] calldata limits_
    ) external onlyOwner {
        if (users_.length != limits_.length) revert InvalidInput();

        uint256 totalUsers = users_.length;
        for (uint256 i; i < totalUsers; i++) {
            whitelist[users_[i]] = limits_[i];
        }
    }

    // Abort the presale and allow users to withdraw their reserves
    function abort() external {
        if (
            msg.sender == owner ||
            block.timestamp > deployTime + timeLimit
        ) {
            active = false;
            emit Aborted();
        } else {
            revert InvalidCaller();
        }

    }

    function claimYield() external onlyOwner {
        IERC20Rebasing(address(reserve)).claim(
            owner,
            IERC20Rebasing(address(reserve)).getClaimableAmount(address(this))
        );
    }

}