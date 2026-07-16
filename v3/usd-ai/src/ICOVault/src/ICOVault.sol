// SPDX-License-Identifier: MIT
pragma solidity 0.8.33;

import {IERC20} from "openzeppelin-contracts/contracts/token/ERC20/IERC20.sol";
import {IERC20Metadata} from "openzeppelin-contracts/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import {SafeERC20} from "openzeppelin-contracts/contracts/token/ERC20/utils/SafeERC20.sol";
import {ReentrancyGuardTransient} from "@openzeppelin/contracts/utils/ReentrancyGuardTransient.sol";
import {
    AccessControlUpgradeable
} from "openzeppelin-contracts-upgradeable/contracts/access/AccessControlUpgradeable.sol";
import {MulticallUpgradeable} from "openzeppelin-contracts-upgradeable/contracts/utils/MulticallUpgradeable.sol";
import {Math} from "openzeppelin-contracts/contracts/utils/math/Math.sol";

import {IUSDai} from "usdai-contracts/src/interfaces/IUSDai.sol";

import {ISyToken} from "./interfaces/external/ISyToken.sol";
import {IYieldToken} from "./interfaces/external/IYieldToken.sol";
import {IICOVault} from "./interfaces/IICOVault.sol";
import {IChipReceiptToken} from "./interfaces/IChipReceiptToken.sol";
import {IChipClaim} from "./interfaces/IChipClaim.sol";

/**
 * @title ICO Vault
 * @author USD.AI Foundation
 */
contract ICOVault is AccessControlUpgradeable, ReentrancyGuardTransient, MulticallUpgradeable, IICOVault {
    using SafeERC20 for IERC20;

    /*------------------------------------------------------------------------*/
    /* Constants                                                              */
    /*------------------------------------------------------------------------*/

    /**
     * @notice Implementation version
     */
    string public constant IMPLEMENTATION_VERSION = "1.3";

    /**
     * @notice Basis point scale
     */
    uint256 internal constant BASIS_POINT_SCALE = 10_000;

    /**
     * @notice Refund ratio (priced at $0.03 per token)
     */
    uint256 internal constant REFUND_RATIO = 300;

    /**
     * @notice Yield admin role
     */
    bytes32 internal constant YIELD_ADMIN_ROLE = keccak256("YIELD_ADMIN_ROLE");

    /**
     * @notice Config storage location
     * @dev keccak256(abi.encode(uint256(keccak256("icoVault.config")) - 1)) & ~bytes32(uint256(0xff));
     */
    bytes32 internal constant CONFIG_STORAGE_LOCATION =
        0x8a16e9dc30194e3445ca9828ddbea8dc6ebf1f11c07657b6377fa7227acdcd00;

    /**
     * @notice Deposits storage location
     * @dev keccak256(abi.encode(uint256(keccak256("icoVault.deposits")) - 1)) & ~bytes32(uint256(0xff));
     */
    bytes32 internal constant DEPOSITS_STORAGE_LOCATION =
        0x35e04c33f848f9fe6f92b56646fc655e28d336bbac0bf7031aca7804bb9c0e00;

    /*------------------------------------------------------------------------*/
    /* Structures                                                             */
    /*------------------------------------------------------------------------*/

    /**
     * @notice Yield token amounts
     * @param token1Amount Yield token 1 amount
     * @param token2Amount Yield token 2 amount
     */
    struct YieldTokenAmounts {
        uint256 token1Amount;
        uint256 token2Amount;
    }

    /**
     * @custom:storage-location erc7201:icoVault.config
     */
    struct Config {
        string vaultName;
        address yieldToken1;
        address yieldToken2;
    }

    /**
     * @custom:storage-location erc7201:icoVault.deposits
     */
    struct Deposits {
        uint256 totalYieldToken1Amount;
        uint256 totalYieldToken2Amount;
        mapping(address => YieldTokenAmounts) yieldTokens;
    }

    /*------------------------------------------------------------------------*/
    /* Immutables                                                             */
    /*------------------------------------------------------------------------*/

    /**
     * @notice USDai token
     */
    address internal immutable _usdai;

    /**
     * @notice Window start
     */
    uint64 internal immutable _windowStart;

    /**
     * @notice Window end
     */
    uint64 internal immutable _windowEnd;

    /**
     * @notice Chip token
     */
    address internal immutable _chip;

    /**
     * @notice Chip claim
     */
    address internal immutable _chipClaim;

    /**
     * @notice Chip receipt token
     */
    address internal immutable _chipReceiptToken;

    /**
     * @notice Reward token
     */
    address internal immutable _rewardToken;

    /**
     * @notice Reward ratio
     */
    uint256 internal immutable _rewardRatio;

    /**
     * @notice Chip refund recipient
     */
    address internal immutable _chipRefundRecipient;

    /*------------------------------------------------------------------------*/
    /* Constructor                                                            */
    /*------------------------------------------------------------------------*/

    /**
     * @notice Constructor
     * @param usdai_ Address of USDai token
     * @param windowStart_ Window start timestamp
     * @param windowDuration_ Window duration
     * @param chip_ Address of chip token
     * @param chipClaim_ Address of chip claim contract
     * @param chipReceiptToken_ Address of chip receipt token
     * @param rewardToken_ Address of reward token
     * @param rewardRatio_ Reward ratio
     * @param chipRefundRecipient_ Address of chip refund recipient
     */
    constructor(
        address usdai_,
        uint64 windowStart_,
        uint64 windowDuration_,
        address chip_,
        address chipClaim_,
        address chipReceiptToken_,
        address rewardToken_,
        uint256 rewardRatio_,
        address chipRefundRecipient_
    ) {
        _disableInitializers();

        /* Validate token decimals */
        if (IERC20Metadata(chip_).decimals() != 18) revert InvalidDecimals();
        if (IERC20Metadata(chipReceiptToken_).decimals() != 18) revert InvalidDecimals();
        if (IERC20Metadata(rewardToken_).decimals() != 6) revert InvalidDecimals();

        _usdai = usdai_;
        _windowStart = windowStart_;
        _windowEnd = windowStart_ + windowDuration_;
        _chip = chip_;
        _chipClaim = chipClaim_;
        _chipReceiptToken = chipReceiptToken_;
        _rewardToken = rewardToken_;
        _rewardRatio = rewardRatio_;
        _chipRefundRecipient = chipRefundRecipient_;
    }

    /*------------------------------------------------------------------------*/
    /* Initializer                                                            */
    /*------------------------------------------------------------------------*/

    /**
     * @notice Vault initializer
     * @param vaultName Vault name
     * @param yieldToken1 Address of yield token 1
     * @param yieldToken2 Address of yield token 2
     * @param admin Admin address
     */
    function initialize(
        string memory vaultName,
        address yieldToken1,
        address yieldToken2,
        address admin
    ) external initializer {
        __Multicall_init();
        __AccessControl_init();

        /* Validate yield token expiries */
        if (IYieldToken(yieldToken1).expiry() != IYieldToken(yieldToken2).expiry()) revert InvalidExpiry();

        /* Set vault name */
        _getConfigStorage().vaultName = vaultName;
        _getConfigStorage().yieldToken1 = yieldToken1;
        _getConfigStorage().yieldToken2 = yieldToken2;

        /* Grant default admin role to admin */
        _grantRole(DEFAULT_ADMIN_ROLE, admin);
    }

    /*------------------------------------------------------------------------*/
    /* Modifiers                                                              */
    /*------------------------------------------------------------------------*/

    /**
     * @notice Modifier to check if the caller is not blacklisted
     * @param account Account to check
     */
    modifier notBlacklisted(
        address account
    ) {
        if (IUSDai(_usdai).isBlacklisted(account)) revert BlacklistedAddress(account);
        _;
    }

    /*------------------------------------------------------------------------*/
    /* Internal helpers                                                       */
    /*------------------------------------------------------------------------*/

    /**
     * @notice Helper function to get config storage
     * @return $ Config storage
     */
    function _getConfigStorage() internal pure returns (Config storage $) {
        assembly {
            $.slot := CONFIG_STORAGE_LOCATION
        }
    }

    /**
     * @notice Helper function to get deposits storage
     * @return $ Deposits storage
     */
    function _getDepositsStorage() internal pure returns (Deposits storage $) {
        assembly {
            $.slot := DEPOSITS_STORAGE_LOCATION
        }
    }

    /**
     * @notice Helper function to claim yield
     * @param yieldToken_ Yield token address
     * @param recipient Recipient of the claimed yield
     */
    function _claimYield(
        address yieldToken_,
        address recipient
    ) internal {
        /* Lookup tokens */
        IYieldToken yieldToken = IYieldToken(yieldToken_);
        ISyToken syToken = ISyToken(yieldToken.SY());
        address interestToken = syToken.yieldToken();

        /* Claim SY tokens */
        yieldToken.redeemDueInterestAndRewards(address(this), true, false);

        /* Get balance of SY tokens */
        uint256 syAmount = IERC20(address(syToken)).balanceOf(address(this));

        /* If no SY tokens, return */
        if (syAmount == 0) return;

        /* Redeem SY tokens to underlying interest token and transfer to recipient */
        uint256 amountOut = syToken.redeem(recipient, syAmount, interestToken, syAmount, false);

        /* Emit yield claimed event */
        emit YieldClaimed(recipient, address(yieldToken), interestToken, amountOut);
    }

    /*------------------------------------------------------------------------*/
    /* Getters                                                                */
    /*------------------------------------------------------------------------*/

    /**
     * @inheritdoc IICOVault
     */
    function VAULT_NAME() external view returns (string memory) {
        return _getConfigStorage().vaultName;
    }

    /**
     * @inheritdoc IICOVault
     */
    function yieldTokens() external view returns (address, address) {
        return (_getConfigStorage().yieldToken1, _getConfigStorage().yieldToken2);
    }

    /**
     * @inheritdoc IICOVault
     */
    function rewardToken() external view returns (address) {
        return _rewardToken;
    }

    /**
     * @inheritdoc IICOVault
     */
    function window() external view returns (uint64, uint64) {
        return (_windowStart, _windowEnd);
    }

    /**
     * @inheritdoc IICOVault
     */
    function expiry() public view returns (uint256) {
        return IYieldToken(_getConfigStorage().yieldToken1).expiry();
    }

    /**
     * @inheritdoc IICOVault
     */
    function totalYieldTokenAmounts() external view returns (uint256, uint256) {
        return (_getDepositsStorage().totalYieldToken1Amount, _getDepositsStorage().totalYieldToken2Amount);
    }

    /**
     * @inheritdoc IICOVault
     */
    function yieldTokenAmounts(
        address depositor
    ) external view returns (uint256, uint256) {
        return (
            _getDepositsStorage().yieldTokens[depositor].token1Amount,
            _getDepositsStorage().yieldTokens[depositor].token2Amount
        );
    }

    /**
     * @inheritdoc IICOVault
     */
    function rewardRatio() external view returns (uint256) {
        return _rewardRatio;
    }

    /*------------------------------------------------------------------------*/
    /* Public API                                                             */
    /*------------------------------------------------------------------------*/

    /**
     * @inheritdoc IICOVault
     */
    function deposit(
        address yieldToken,
        uint256 amount
    ) external nonReentrant notBlacklisted(msg.sender) {
        /* Validate deposit amount */
        if (amount == 0) revert InvalidAmount();

        /* Validate deposit window */
        if (block.timestamp < _windowStart || block.timestamp > _windowEnd) {
            revert InvalidWindow();
        }

        /* Update deposit info */
        if (yieldToken == _getConfigStorage().yieldToken1) {
            _getDepositsStorage().yieldTokens[msg.sender].token1Amount += amount;
            _getDepositsStorage().totalYieldToken1Amount += amount;
        } else if (yieldToken == _getConfigStorage().yieldToken2) {
            _getDepositsStorage().yieldTokens[msg.sender].token2Amount += amount;
            _getDepositsStorage().totalYieldToken2Amount += amount;
        } else {
            revert InvalidYieldToken();
        }

        /* Transfer deposit token from caller to this contract */
        IERC20(yieldToken).safeTransferFrom(msg.sender, address(this), amount);

        /* Emit deposited event */
        emit Deposited(msg.sender, yieldToken, amount);
    }

    /**
     * @inheritdoc IICOVault
     * @dev Claim availability is checked in the claim contract
     */
    function claim(
        bytes32[] calldata merkleProof,
        uint256 amount
    ) external nonReentrant notBlacklisted(msg.sender) {
        /* Mint CHIP receipt to caller */
        IChipReceiptToken(_chipReceiptToken).mint(msg.sender, amount);

        /* Claim CHIP */
        IChipClaim(_chipClaim).claimByVault(merkleProof, msg.sender, amount);

        /* Emit claimed event */
        emit Claimed(msg.sender, amount);
    }

    /**
     * @inheritdoc IICOVault
     */
    function withdrawRefund() external nonReentrant notBlacklisted(msg.sender) returns (uint256, uint256) {
        /* Validate expiry */
        if (block.timestamp > expiry()) revert InvalidExpiry();

        /* Get caller's balance of receipt token */
        uint256 balance = IERC20(_chipReceiptToken).balanceOf(msg.sender);

        /* If balance is 0, return */
        if (balance == 0) revert InvalidAmount();

        /* Burn receipt token from caller */
        IChipReceiptToken(_chipReceiptToken).burn(msg.sender, balance);

        /* Compute refund amount in reward token decimals (6 decimals) */
        uint256 refundAmount = Math.mulDiv(balance, REFUND_RATIO, BASIS_POINT_SCALE) / 1e12;

        /* Transfer refund token this contract to caller */
        IERC20(_rewardToken).safeTransfer(msg.sender, refundAmount);

        /* Transfer CHIP from this contract to CHIP refund recipient */
        IERC20(_chip).safeTransfer(_chipRefundRecipient, balance);

        /* Emit refund withdrawn event */
        emit RefundWithdrawn(msg.sender, balance, refundAmount);

        return (balance, refundAmount);
    }

    /**
     * @inheritdoc IICOVault
     */
    function withdrawChip() external nonReentrant notBlacklisted(msg.sender) returns (uint256) {
        /* Validate expiry */
        if (block.timestamp > expiry()) revert InvalidExpiry();

        /* Get caller's balance of receipt token */
        uint256 balance = IERC20(_chipReceiptToken).balanceOf(msg.sender);

        /* If balance is 0, return */
        if (balance == 0) revert InvalidAmount();

        /* Burn receipt token from caller */
        IChipReceiptToken(_chipReceiptToken).burn(msg.sender, balance);

        /* Transfer CHIP from this contract to caller */
        IERC20(_chip).safeTransfer(msg.sender, balance);

        /* Emit chip withdrawn event */
        emit ChipWithdrawn(msg.sender, balance);

        return balance;
    }

    /**
     * @inheritdoc IICOVault
     */
    function withdrawChipAndReward() external nonReentrant notBlacklisted(msg.sender) returns (uint256, uint256) {
        /* Validate expiry */
        if (block.timestamp <= expiry()) revert InvalidExpiry();

        /* Get caller's balance of receipt token */
        uint256 balance = IERC20(_chipReceiptToken).balanceOf(msg.sender);

        /* If balance is 0, return */
        if (balance == 0) revert InvalidAmount();

        /* Burn receipt token from caller */
        IChipReceiptToken(_chipReceiptToken).burn(msg.sender, balance);

        /* Compute reward amount in reward token decimals (6 decimals) */
        uint256 rewardAmount = Math.mulDiv(balance, _rewardRatio, BASIS_POINT_SCALE) / 1e12;

        /* Transfer reward token from this contract to caller */
        IERC20(_rewardToken).safeTransfer(msg.sender, rewardAmount);

        /* Transfer CHIP from this contract to caller */
        IERC20(_chip).safeTransfer(msg.sender, balance);

        /* Emit chip and reward withdrawn event */
        emit ChipAndRewardWithdrawn(msg.sender, balance, rewardAmount);

        return (balance, rewardAmount);
    }

    /*------------------------------------------------------------------------*/
    /* Permissioned API                                                       */
    /*------------------------------------------------------------------------*/

    /**
     * @inheritdoc IICOVault
     */
    function claimYield(
        address recipient
    ) external nonReentrant onlyRole(YIELD_ADMIN_ROLE) {
        _claimYield(_getConfigStorage().yieldToken1, recipient);
        _claimYield(_getConfigStorage().yieldToken2, recipient);
    }

    /**
     * @inheritdoc IICOVault
     */
    function depositReward(
        uint256 amount
    ) external onlyRole(DEFAULT_ADMIN_ROLE) {
        /* Validate deposit amount */
        if (amount == 0) revert InvalidAmount();

        /* Transfer reward token to this contract */
        IERC20(_rewardToken).safeTransferFrom(msg.sender, address(this), amount);

        /* Emit reward deposited event */
        emit RewardDeposited(amount);
    }

    /**
     * @inheritdoc IICOVault
     */
    function withdrawReward(
        uint256 amount
    ) external onlyRole(DEFAULT_ADMIN_ROLE) {
        /* Validate withdraw amount */
        if (amount == 0) revert InvalidAmount();

        /* Transfer reward token to admin */
        IERC20(_rewardToken).safeTransfer(msg.sender, amount);

        /* Emit reward withdrawn event */
        emit RewardWithdrawn(amount);
    }
}
