// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

import { AccessControlUpgradeable } from "@openzeppelin-contracts-upgradeable-5.1.0/access/AccessControlUpgradeable.sol";
import { Initializable } from "@openzeppelin-contracts-upgradeable-5.1.0/proxy/utils/Initializable.sol";
import { UUPSUpgradeable } from "@openzeppelin-contracts-upgradeable-5.1.0/proxy/utils/UUPSUpgradeable.sol";
import { PausableUpgradeable } from "@openzeppelin-contracts-upgradeable-5.1.0/utils/PausableUpgradeable.sol";
import { ReentrancyGuardUpgradeable } from
    "@openzeppelin-contracts-upgradeable-5.1.0/utils/ReentrancyGuardUpgradeable.sol";
import { SafeERC20 } from "@openzeppelin-contracts-5.1.0/token/ERC20/utils/SafeERC20.sol";
import { IERC20 } from "@openzeppelin-contracts-5.1.0/token/ERC20/IERC20.sol";
import { Math } from "@openzeppelin-contracts-5.1.0/utils/math/Math.sol";
import { SafeTransferLib } from "solady-0.0.298/src/utils/SafeTransferLib.sol";
import { SafeCast } from "@openzeppelin-contracts-5.1.0/utils/math/SafeCast.sol";

import { IBGT } from "berachain-contracts-latest/src/pol/interfaces/IBGT.sol";
import { IRewardVault } from "berachain-contracts-latest/src/pol/interfaces/IRewardVault.sol";

import { LBGT } from "./LBGT.sol";
import { IBeraPawForge } from "./interfaces/IBeraPawForge.sol";
import { IBGTStaker } from "berachain-contracts-latest/src/pol/interfaces/IBGTStaker.sol";
import { Constants } from "../Constants.sol";

/**
 * @title BeraPawForge
 * @author BeraPaw
 * @notice Core contract for BeraPaw protocol that holds BGT and issues LBGT at 1:1 ratio.
 * It is also has hooks for delegation operations and reward distribution.
 * @dev This contract:
 * - Holds BGT tokens and issues LBGT at 1:1 ratio
 * - Manages redemption queue for LBGT->BGT conversions
 * - Handles reward collection and distribution
 * - Controls BGT boosting operations
 * - Collects BGT rewards from staking contract
 */
/// @custom:oz-upgrades-from BeraPawForgeV0
contract BeraPawForge is
    IBeraPawForge,
    Initializable,
    AccessControlUpgradeable,
    PausableUpgradeable,
    ReentrancyGuardUpgradeable,
    UUPSUpgradeable
{
    using SafeERC20 for IERC20;

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                        CONSTANTS                           */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    IBGT private constant bgt = IBGT(Constants.BGT);
    LBGT private constant lbgt = LBGT(Constants.LBGT);
    IBGTStaker private constant bgtStaker = IBGTStaker(Constants.BGT_STAKER);
    IERC20 private constant honey = IERC20(Constants.HONEY);

    bytes32 private constant ROLE_GOD = Constants.ROLE_GOD;
    bytes32 private constant ROLE_ADMIN = Constants.ROLE_ADMIN;
    bytes32 private constant ROLE_CURATOR = Constants.ROLE_CURATOR;
    bytes32 private constant ROLE_BOOSTER = Constants.ROLE_BOOSTER;
    bytes32 private constant ROLE_REWARD_COLLECTOR = Constants.ROLE_REWARD_COLLECTOR;
    bytes32 private constant ROLE_REDEMPTIONS_PROCESSOR = Constants.ROLE_REDEMPTIONS_PROCESSOR;

    uint256 private constant ONE_HUNDRED_PERCENT = 1e18;

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                          STORAGE                           */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    /// @inheritdoc IBeraPawForge
    mapping(address account => mapping(address rewardVault => address manager)) public lbgtManager;
    /// @inheritdoc IBeraPawForge
    mapping(address account => RedeemPosition) public redeemPosition;
    /// @inheritdoc IBeraPawForge
    RedeemQueue[] public redeemQueue;
    /// @inheritdoc IBeraPawForge
    uint128 public redeemQueueIndex;
    /// @inheritdoc IBeraPawForge
    uint128 public totalRedeemQueue;
    /// @inheritdoc IBeraPawForge
    uint256 public processingFee;
    /// @inheritdoc IBeraPawForge
    uint96 public queueDelay;
    /// @inheritdoc IBeraPawForge
    uint128 public minimumRedeemAmount;
    /// @inheritdoc IBeraPawForge
    bool public isProcessRedemptionsOpen;
    /// @inheritdoc IBeraPawForge
    uint256 public bribeBackFee;
    /// @inheritdoc IBeraPawForge
    address public bribeBackFeeRecipient;
    /// @inheritdoc IBeraPawForge
    mapping(address rewardVault => BribeBack) public bribeBack;

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                        MODIFIERS                           */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    modifier onlyUserOrManager(address _user, address _rewardVault) {
        address sender = _msgSender();
        require(_user == sender || lbgtManager[_user][_rewardVault] == sender, NotUserOrManager(_user, _rewardVault));
        _;
    }

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                      INITIALIZATION                        */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function initialize(address _owner) public initializer {
        __AccessControl_init();
        __Pausable_init();
        __ReentrancyGuard_init();
        __UUPSUpgradeable_init();

        _setRoleAdmin(ROLE_GOD, ROLE_GOD);
        _setRoleAdmin(ROLE_ADMIN, ROLE_GOD);
        _setRoleAdmin(ROLE_BOOSTER, ROLE_ADMIN);
        _setRoleAdmin(ROLE_CURATOR, ROLE_ADMIN);
        _setRoleAdmin(ROLE_REWARD_COLLECTOR, ROLE_GOD);
        _setRoleAdmin(ROLE_REDEMPTIONS_PROCESSOR, ROLE_ADMIN);

        _grantRole(ROLE_GOD, _owner);

        queueDelay = 20_000;
        minimumRedeemAmount = 1 ether;
        processingFee = 1e18 / 200; // 0.5%;
    }

    function initializeV2(address _bribeBackFeeRecipient) external reinitializer(2) {
        require(_bribeBackFeeRecipient != address(0), InvalidInput());
        bribeBackFeeRecipient = _bribeBackFeeRecipient;
        emit BribeBackFeeRecipientSet(bribeBackFeeRecipient);
    }

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                     ADMIN FUNCTIONS                        */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    /// @inheritdoc IBeraPawForge
    function pause() public onlyRole(ROLE_CURATOR) {
        _pause();
    }

    /// @inheritdoc IBeraPawForge
    function unpause() public onlyRole(ROLE_ADMIN) {
        _unpause();
    }

    /// @inheritdoc IBeraPawForge
    function delegate(address _delegate) public onlyRole(ROLE_ADMIN) {
        bgt.delegate(_delegate);
        emit Delegated(_delegate);
    }

    /// @inheritdoc IBeraPawForge
    function setQueueDelay(uint96 _queueDelay) public onlyRole(ROLE_ADMIN) {
        queueDelay = _queueDelay;
        emit QueueDelaySet(queueDelay);
    }

    /// @inheritdoc IBeraPawForge
    function setMinimumRedeemAmount(uint128 _minimumRedeemAmount) public onlyRole(ROLE_ADMIN) {
        minimumRedeemAmount = _minimumRedeemAmount;
        emit MinimumRedeemAmountSet(minimumRedeemAmount);
    }

    /// @inheritdoc IBeraPawForge
    function setProcessingFee(uint256 _processingFee) public onlyRole(ROLE_ADMIN) {
        require(_processingFee <= ONE_HUNDRED_PERCENT, InvalidInput());
        processingFee = _processingFee;
        emit ProcessingFeeSet(processingFee);
    }

    /// @inheritdoc IBeraPawForge
    function setOpenProcessRedemptions(bool _open) public onlyRole(ROLE_GOD) {
        isProcessRedemptionsOpen = _open;
        emit OpenProcessRedemptionsSet(isProcessRedemptionsOpen);
    }

    function setBribeBackFeeRecipient(address _bribeBackFeeRecipient) public onlyRole(ROLE_GOD) {
        require(_bribeBackFeeRecipient != address(0), ZeroAddress());
        bribeBackFeeRecipient = _bribeBackFeeRecipient;
        emit BribeBackFeeRecipientSet(_bribeBackFeeRecipient);
    }

    /// @inheritdoc IBeraPawForge
    function setBribeBackFee(uint256 _bribeBackFee) public onlyRole(ROLE_ADMIN) {
        require(_bribeBackFee <= ONE_HUNDRED_PERCENT, InvalidInput());
        bribeBackFee = _bribeBackFee;
        emit BribeBackFeeSet(_bribeBackFee);
    }

    /// @inheritdoc IBeraPawForge
    function setBribeBack(address _rewardVault, BribeBack calldata _bribeBack) public onlyRole(ROLE_ADMIN) {
        require(_bribeBack.percentual <= ONE_HUNDRED_PERCENT, InvalidInput());
        require(
            (_bribeBack.percentual > 0 && _bribeBack.recipient != address(0))
                || (_bribeBack.percentual == 0 && _bribeBack.recipient == address(0)),
            ZeroAddress()
        );
        bribeBack[_rewardVault] = BribeBack(_bribeBack.recipient, _bribeBack.percentual);
        emit BribeBackSet(_rewardVault, _bribeBack.recipient, _bribeBack.percentual);
    }

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                     USER FUNCTIONS                         */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    /// @inheritdoc IBeraPawForge
    function setManager(address rewardVault, address manager) external {
        address sender = _msgSender();
        lbgtManager[sender][rewardVault] = manager;
        emit ManagerSet(sender, rewardVault, manager);
    }

    /// @inheritdoc IBeraPawForge
    function setManagerMulti(address[] calldata rewardVaults, address[] calldata managers) external {
        require(rewardVaults.length == managers.length, InvalidInput());
        require(rewardVaults.length > 0, InvalidInput());
        address sender = _msgSender();
        for (uint256 i = 0; i < rewardVaults.length; i++) {
            address rewardVault = rewardVaults[i];
            address manager = managers[i];
            lbgtManager[sender][rewardVault] = manager;
            emit ManagerSet(sender, rewardVault, manager);
        }
    }

    /// @inheritdoc IBeraPawForge
    function mint(
        address user,
        address rewardVault,
        address recipient
    )
        external
        nonReentrant
        whenNotPaused
        returns (uint256)
    {
        return _mintLbgtTo(rewardVault, user, recipient);
    }

    /// @inheritdoc IBeraPawForge
    function mintMulti(
        address[] calldata users,
        address[] calldata rewardVaults,
        address[] calldata recipients
    )
        external
        nonReentrant
        whenNotPaused
        returns (uint256)
    {
        require(rewardVaults.length == users.length && users.length == recipients.length, InvalidInput());

        uint256 totalAmount;
        uint256 vaultLength = rewardVaults.length;
        for (uint256 index = 0; index < vaultLength;) {
            totalAmount += _mintLbgtTo(rewardVaults[index], users[index], recipients[index]);

            unchecked {
                ++index;
            }
        }
        return totalAmount;
    }

    /// @inheritdoc IBeraPawForge
    function mintReferred(
        address user,
        address rewardVault,
        address recipient,
        bytes32 referrer
    )
        external
        nonReentrant
        whenNotPaused
        returns (uint256)
    {
        uint256 amount = _mintLbgtTo(rewardVault, user, recipient);
        emit Referred(user, referrer, amount);
        return amount;
    }

    /// @inheritdoc IBeraPawForge
    function queueRedeem(uint128 amount) external whenNotPaused {
        require(amount >= minimumRedeemAmount, InvalidInput());
        address sender = _msgSender();
        RedeemPosition storage position = redeemPosition[sender];
        // Prevent duplicate queue entries for the same user
        require(position.queued == 0, AlreadyQueued());

        unchecked {
            position.queued += amount;
            totalRedeemQueue += amount;
        }

        // Unsafely cast block number to uint96, should never overflow.
        redeemQueue.push(RedeemQueue(sender, uint96(block.number)));

        // Transfer LBGT to contract as a precondition
        SafeERC20.safeTransferFrom(lbgt, sender, address(this), amount);

        emit RedeemQueued(sender, amount);
    }

    /// @inheritdoc IBeraPawForge
    function redeem(uint128 amount, address recipient) external whenNotPaused {
        require(recipient != address(0), ZeroAddress());
        require(amount > 0, ZeroAmount());
        address sender = _msgSender();
        RedeemPosition storage position = redeemPosition[sender];
        require(amount <= position.available, RedeemNotAvailable(amount));
        unchecked {
            position.available -= amount;
        }
        payable(recipient).transfer(amount);
        emit Redeemed(sender, recipient, amount);
    }

    /// @inheritdoc IBeraPawForge
    function processRedemptions(uint128 maxBatchSize, address recipient) external payable whenNotPaused {
        require(isProcessRedemptionsOpen || hasRole(ROLE_REDEMPTIONS_PROCESSOR, _msgSender()), NotAuthorized());
        uint128 queuePosition = redeemQueueIndex;
        uint128 maxQueuePosition =
            uint128(Math.min(uint256(queuePosition + maxBatchSize), uint256(redeemQueue.length - 1)));
        uint256 beraRemaining = msg.value;

        uint96 blockDelay = queueDelay;
        uint256 feePercentual = processingFee;

        uint256 lbgtToTransfer;
        uint256 lbgtToBurn;
        uint128 lbgtUnqueued;

        while (queuePosition <= maxQueuePosition) {
            RedeemQueue memory queueRequest = redeemQueue[queuePosition];
            RedeemPosition memory position = redeemPosition[queueRequest.account];

            if (position.queued == 0) {
                // Nothing to do here, skip to the next position in queue.
                ++queuePosition;
                continue;
            }
            // The fee is discounted from the solver payment.
            uint256 fee = _getSplit(position.queued, feePercentual);
            uint256 amount = position.queued - fee;

            if (beraRemaining >= amount) {
                unchecked {
                    redeemPosition[queueRequest.account] =
                        RedeemPosition(0, position.available + SafeCast.toUint128(amount));
                    beraRemaining = beraRemaining - amount;
                    lbgtToTransfer += position.queued;
                }
            } else if (block.number >= queueRequest.blockNumber + blockDelay) {
                unchecked {
                    redeemPosition[queueRequest.account] =
                        RedeemPosition(0, position.available + SafeCast.toUint128(amount));
                    lbgtToBurn += amount - beraRemaining; // amount > beraRemaining
                    lbgtToTransfer += fee + beraRemaining;
                    beraRemaining = 0;
                }
            } else {
                // Nothing to do here, no bera to be paid for the lbgt and not enough time for redeem have passed.
                break;
            }

            lbgtUnqueued += position.queued;
            // Recover some gas
            delete redeemQueue[queuePosition];

            emit RedeemProcessed(queueRequest.account, recipient, amount);
            // Move to next user in queue
            unchecked {
                ++queuePosition;
            }
        }

        redeemQueueIndex = queuePosition;
        totalRedeemQueue -= lbgtUnqueued;

        if (lbgtToBurn > 0) {
            _burn(address(this), lbgtToBurn);
            bgt.redeem(address(this), lbgtToBurn);
        }

        if (beraRemaining > 0) {
            SafeTransferLib.safeTransferETH(_msgSender(), beraRemaining); // Give back bera not used + fee.
        }

        if (lbgtToTransfer > 0) {
            SafeERC20.safeTransfer(lbgt, recipient, lbgtToTransfer);
        }
    }

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                    REWARDS FUNCTIONS                       */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    /// @inheritdoc IBeraPawForge
    function collectStakerReward(address to) external onlyRole(ROLE_REWARD_COLLECTOR) returns (uint256) {
        uint256 amount = bgtStaker.getReward();
        honey.safeTransfer(to, amount);
        emit StakerRewardCollected(msg.sender, to, amount);
        return amount;
    }

    function collectIncentives(address token, address to, uint256 amount) external onlyRole(ROLE_REWARD_COLLECTOR) {
        if (token == lbgtAddress()) {
            require(amount <= lbgtIncentiveBalance(), AmountExceedsIncentives(amount));
        }
        IERC20(token).safeTransfer(to, amount);
        emit IncentivesCollected(token, to, amount);
    }

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                    BOOSTER FUNCTIONS                       */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    /// @inheritdoc IBeraPawForge
    function queueBoost(bytes calldata pubkey, uint128 amount) external onlyRole(ROLE_BOOSTER) {
        return bgt.queueBoost(pubkey, amount);
    }

    /// @inheritdoc IBeraPawForge
    function cancelBoost(bytes calldata pubkey, uint128 amount) external onlyRole(ROLE_BOOSTER) {
        return bgt.cancelBoost(pubkey, amount);
    }

    /// @inheritdoc IBeraPawForge
    function activateBoost(bytes calldata pubkey) external onlyRole(ROLE_BOOSTER) returns (bool) {
        return bgt.activateBoost(address(this), pubkey);
    }

    /// @inheritdoc IBeraPawForge
    function queueDropBoost(bytes calldata pubkey, uint128 amount) external onlyRole(ROLE_BOOSTER) {
        return bgt.queueDropBoost(pubkey, amount);
    }

    /// @inheritdoc IBeraPawForge
    function cancelDropBoost(bytes calldata pubkey, uint128 amount) external onlyRole(ROLE_BOOSTER) {
        return bgt.cancelDropBoost(pubkey, amount);
    }

    /// @inheritdoc IBeraPawForge
    function dropBoost(bytes calldata pubkey) external onlyRole(ROLE_BOOSTER) returns (bool) {
        return bgt.dropBoost(address(this), pubkey);
    }

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                       VIEW FUNCTIONS                       */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    /// @inheritdoc IBeraPawForge
    function lbgtAddress() public pure returns (address) {
        return address(lbgt);
    }

    /// @inheritdoc IBeraPawForge
    function getBGTOperator(address rewardVault, address account) public view returns (address) {
        return IRewardVault(rewardVault).operator(account);
    }

    /// @inheritdoc IBeraPawForge
    function boostableBGT() public view returns (uint256) {
        return bgt.balanceOf(address(this)) - totalRedeemQueue;
    }

    /// @inheritdoc IBeraPawForge
    function lbgtIncentiveBalance() public view returns (uint256) {
        return lbgt.balanceOf(address(this)) - totalRedeemQueue;
    }

    /// @inheritdoc IBeraPawForge
    function incentiveBalance(address token) public view returns (uint256) {
        if (token == lbgtAddress()) {
            return lbgtIncentiveBalance();
        }
        return IERC20(token).balanceOf(address(this));
    }

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                    INTERNAL FUNCTIONS                      */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    function _authorizeUpgrade(address newImplementation) internal override onlyRole(ROLE_GOD) { }

    function _mintLbgtTo(
        address _rewardVault,
        address _user,
        address _recipient
    )
        internal
        onlyUserOrManager(_user, _rewardVault)
        returns (uint256)
    {
        require(_rewardVault != address(0), ZeroAddress());
        require(_recipient != address(0), ZeroAddress());
        require(_user != address(0), ZeroAddress());

        // We have to break checks effects interactions pattern because we can only know the reward
        // after calling the vault, the vault cannot be assumed to be trustworthy so we need to check
        // for reentrancy on all external functions that use this. Checks are done after the call to
        // the vault in order to make sure we are not cheated on the reward amount.
        uint256 bgtBalanceBefore = bgt.balanceOf(address(this));
        IRewardVault(_rewardVault).getReward(_user, address(this)); // dont trust amount returned
        uint256 bgtBalanceAfter = bgt.balanceOf(address(this));

        require(bgtBalanceAfter > bgtBalanceBefore, IncorrectBGTReward());

        uint256 amount;
        unchecked {
            amount = bgtBalanceAfter - bgtBalanceBefore;
        }

        BribeBack memory vaultBribeBack = bribeBack[_rewardVault];

        if (vaultBribeBack.percentual == 0) {
            _mint(_recipient, amount);
            emit LBGTMinted(_user, _rewardVault, _recipient, amount);

            return amount;
        }

        uint256 bribeBackAmount = _getSplit(amount, vaultBribeBack.percentual);
        uint256 bribeBackFeeAmount;

        if (vaultBribeBack.recipient != bribeBackFeeRecipient && bribeBackFee != 0) {
            bribeBackFeeAmount = _getSplit(bribeBackAmount, bribeBackFee);
            _mint(bribeBackFeeRecipient, bribeBackFeeAmount);
            emit LBGTMinted(_user, _rewardVault, bribeBackFeeRecipient, bribeBackFeeAmount);
        }

        _mint(_recipient, amount - bribeBackAmount);
        emit LBGTMinted(_user, _rewardVault, _recipient, amount - bribeBackAmount);

        _mint(vaultBribeBack.recipient, bribeBackAmount - bribeBackFeeAmount);
        emit LBGTMinted(_user, _rewardVault, vaultBribeBack.recipient, bribeBackAmount - bribeBackFeeAmount);

        amount -= bribeBackAmount;

        return amount;
    }

    function _getSplit(uint256 amount, uint256 percentual) internal pure returns (uint256) {
        return Math.mulDiv(amount, percentual, ONE_HUNDRED_PERCENT);
    }

    function _mint(address to, uint256 amount) internal {
        lbgt.mint(to, amount);
    }

    function _burn(address from, uint256 amount) internal {
        lbgt.burn(from, amount);
    }

    receive() external payable { }

    fallback() external payable { }
}
