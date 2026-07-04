// SPDX-License-Identifier: MIT
pragma solidity 0.8.33;

import {IERC20} from "openzeppelin-contracts/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {ReentrancyGuardTransient} from "@openzeppelin/contracts/utils/ReentrancyGuardTransient.sol";
import {
    AccessControlUpgradeable
} from "openzeppelin-contracts-upgradeable/contracts/access/AccessControlUpgradeable.sol";
import {MulticallUpgradeable} from "openzeppelin-contracts-upgradeable/contracts/utils/MulticallUpgradeable.sol";

import {IUSDai} from "usdai-contracts/src/interfaces/IUSDai.sol";

import {ISyToken} from "./interfaces/external/ISyToken.sol";
import {IYieldToken} from "./interfaces/external/IYieldToken.sol";
import {IAirdropVault} from "./interfaces/IAirdropVault.sol";

/**
 * @title AirdropVault
 * @author Permian Labs
 */
contract AirdropVault is AccessControlUpgradeable, ReentrancyGuardTransient, MulticallUpgradeable, IAirdropVault {
    using SafeERC20 for IERC20;

    /*------------------------------------------------------------------------*/
    /* Constants                                                              */
    /*------------------------------------------------------------------------*/

    /**
     * @notice Implementation version
     */
    string public constant IMPLEMENTATION_VERSION = "1.2";

    /**
     * @notice Yield admin role
     */
    bytes32 internal constant YIELD_ADMIN_ROLE = keccak256("YIELD_ADMIN_ROLE");

    /**
     * @notice Config storage location
     * @dev keccak256(abi.encode(uint256(keccak256("airdropVault.config")) - 1)) & ~bytes32(uint256(0xff));
     */
    bytes32 internal constant CONFIG_STORAGE_LOCATION =
        0xf3acc288a726f9745609a3eb423b6df13cd965a113ead67c6c5b45f6a937b800;

    /**
     * @notice Deposits storage location
     * @dev keccak256(abi.encode(uint256(keccak256("airdropVault.deposits")) - 1)) & ~bytes32(uint256(0xff));
     */
    bytes32 internal constant DEPOSITS_STORAGE_LOCATION =
        0x1cdb5578cca67f98d3b9b473350a6c4238eddb9ba31c0a4b5db5afacd8fba300;

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
     * @custom:storage-location erc7201:airdropVault.config
     */
    struct Config {
        string vaultName;
        address yieldToken1;
        address yieldToken2;
    }

    /**
     * @custom:storage-location erc7201:airdropVault.deposits
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

    /*------------------------------------------------------------------------*/
    /* Constructor                                                            */
    /*------------------------------------------------------------------------*/

    /**
     * @notice Constructor
     * @param usdai_ Address of USDai token
     * @param windowStart_ Window start timestamp
     * @param windowDuration_ Window duration
     */
    constructor(
        address usdai_,
        uint64 windowStart_,
        uint64 windowDuration_
    ) {
        _disableInitializers();

        _usdai = usdai_;
        _windowStart = windowStart_;
        _windowEnd = windowStart_ + windowDuration_;
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
     * @inheritdoc IAirdropVault
     */
    function VAULT_NAME() external view returns (string memory) {
        return _getConfigStorage().vaultName;
    }

    /**
     * @inheritdoc IAirdropVault
     */
    function yieldTokens() external view returns (address, address) {
        return (_getConfigStorage().yieldToken1, _getConfigStorage().yieldToken2);
    }

    /**
     * @inheritdoc IAirdropVault
     */
    function window() external view returns (uint64, uint64) {
        return (_windowStart, _windowEnd);
    }

    /**
     * @inheritdoc IAirdropVault
     */
    function totalYieldTokenAmounts() external view returns (uint256, uint256) {
        return (_getDepositsStorage().totalYieldToken1Amount, _getDepositsStorage().totalYieldToken2Amount);
    }

    /**
     * @inheritdoc IAirdropVault
     */
    function yieldTokenAmounts(
        address depositor
    ) external view returns (uint256, uint256) {
        return (
            _getDepositsStorage().yieldTokens[depositor].token1Amount,
            _getDepositsStorage().yieldTokens[depositor].token2Amount
        );
    }

    /*------------------------------------------------------------------------*/
    /* Public API                                                             */
    /*------------------------------------------------------------------------*/

    /**
     * @inheritdoc IAirdropVault
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

    /*------------------------------------------------------------------------*/
    /* Permissioned API                                                       */
    /*------------------------------------------------------------------------*/

    /**
     * @inheritdoc IAirdropVault
     */
    function claimYield(
        address recipient
    ) external nonReentrant onlyRole(YIELD_ADMIN_ROLE) {
        _claimYield(_getConfigStorage().yieldToken1, recipient);
        _claimYield(_getConfigStorage().yieldToken2, recipient);
    }
}
