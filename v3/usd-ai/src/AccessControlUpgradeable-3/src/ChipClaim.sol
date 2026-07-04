// SPDX-License-Identifier: MIT
pragma solidity 0.8.33;

import {IERC20} from "openzeppelin-contracts/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "openzeppelin-contracts/contracts/token/ERC20/utils/SafeERC20.sol";
import {ReentrancyGuardTransient} from "@openzeppelin/contracts/utils/ReentrancyGuardTransient.sol";
import {
    AccessControlUpgradeable
} from "openzeppelin-contracts-upgradeable/contracts/access/AccessControlUpgradeable.sol";
import {MulticallUpgradeable} from "openzeppelin-contracts-upgradeable/contracts/utils/MulticallUpgradeable.sol";
import {MerkleProof} from "@openzeppelin/contracts/utils/cryptography/MerkleProof.sol";

import {IUSDai} from "usdai-contracts/src/interfaces/IUSDai.sol";

import {IChipClaim} from "./interfaces/IChipClaim.sol";

/**
 * @title Chip Claim
 * @author USD.AI Foundation
 */
contract ChipClaim is AccessControlUpgradeable, MulticallUpgradeable, ReentrancyGuardTransient, IChipClaim {
    using SafeERC20 for IERC20;

    /*------------------------------------------------------------------------*/
    /* Constants                                                              */
    /*------------------------------------------------------------------------*/

    /**
     * @notice Implementation version
     */
    string public constant IMPLEMENTATION_VERSION = "1.0";

    /**
     * @notice Config storage location
     * @dev keccak256(abi.encode(uint256(keccak256("chipClaim.config")) - 1)) & ~bytes32(uint256(0xff));
     */
    bytes32 internal constant CONFIG_STORAGE_LOCATION =
        0x291e852b21e7dc73c7b1db27bce4796ea3daa8acf9d15c991824dd6751160400;

    /**
     * @notice Claims storage location
     * @dev keccak256(abi.encode(uint256(keccak256("chipClaim.claims")) - 1)) & ~bytes32(uint256(0xff));
     */
    bytes32 internal constant CLAIMS_STORAGE_LOCATION =
        0xebe4c7d8afdf313833ec999151bbb74cfd041250001675b505fc6b2fc3afa200;

    /*------------------------------------------------------------------------*/
    /* Immutables                                                             */
    /*------------------------------------------------------------------------*/

    /**
     * @notice USDai token
     */
    address internal immutable _usdai;

    /**
     * @notice CHIP token
     */
    address internal immutable _chip;

    /*------------------------------------------------------------------------*/
    /* Constructor                                                            */
    /*------------------------------------------------------------------------*/

    /**
     * @notice Constructor
     * @param usdai_ Address of USDai token
     * @param chip_ Address of CHIP token
     */
    constructor(
        address usdai_,
        address chip_
    ) {
        _disableInitializers();

        _usdai = usdai_;
        _chip = chip_;
    }

    /*------------------------------------------------------------------------*/
    /* Initializer                                                            */
    /*------------------------------------------------------------------------*/

    /**
     * @notice Vault initializer
     * @param admin Admin address
     */
    function initialize(
        address admin
    ) external initializer {
        __AccessControl_init();
        __Multicall_init();

        _grantRole(DEFAULT_ADMIN_ROLE, admin);
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
     * @notice Helper function to get claims storage
     * @return $ Claims storage
     */
    function _getClaimsStorage() internal pure returns (Claims storage $) {
        assembly {
            $.slot := CLAIMS_STORAGE_LOCATION
        }
    }

    /**
     * @notice Helper function to claim tokens
     * @param merkleProof Merkle proof
     * @param account Account claiming tokens
     * @param vault Vault claiming tokens
     * @param amount Amount of tokens to claim
     */
    function _claim(
        bytes32[] calldata merkleProof,
        address account,
        address vault,
        uint256 amount
    ) internal nonReentrant {
        /* Validate claimable */
        if (!_getConfigStorage().claimable || _getConfigStorage().merkleRoot == bytes32(0)) revert InvalidClaim();

        /* Validate deposit amount */
        if (amount == 0 || amount > IERC20(_chip).balanceOf(address(this))) revert InvalidAmount();

        /* Validate caller is not blacklisted */
        if (IUSDai(_usdai).isBlacklisted(account)) revert BlacklistedAddress(account);

        /* Compute claim hash */
        bytes32 claimHash = keccak256(abi.encode(account, vault, amount));

        /* Validate claim is not already claimed */
        if (_getClaimsStorage().claimed[claimHash]) revert InvalidClaim();

        /* Validate merkle proof */
        if (!MerkleProof.verify(merkleProof, _getConfigStorage().merkleRoot, claimHash)) revert InvalidMerkleProof();

        /* Set claim as claimed */
        _getClaimsStorage().claimed[claimHash] = true;

        /* Transfer CHIP to sender */
        IERC20(_chip).safeTransfer(msg.sender, amount);

        /* Emit claimed event */
        emit Claimed(account, vault, amount);
    }

    /*------------------------------------------------------------------------*/
    /* Getters                                                                */
    /*------------------------------------------------------------------------*/

    /**
     * @inheritdoc IChipClaim
     */
    function merkleRoot() external view returns (bytes32) {
        return _getConfigStorage().merkleRoot;
    }

    /**
     * @inheritdoc IChipClaim
     */
    function claimable() external view returns (bool) {
        return _getConfigStorage().claimable;
    }

    /**
     * @inheritdoc IChipClaim
     */
    function claimed(
        address account,
        address vault,
        uint256 amount
    ) external view returns (bool) {
        bytes32 claimHash = keccak256(abi.encode(account, vault, amount));
        return _getClaimsStorage().claimed[claimHash];
    }

    /*------------------------------------------------------------------------*/
    /* Public API                                                             */
    /*------------------------------------------------------------------------*/

    /**
     * @inheritdoc IChipClaim
     */
    function claim(
        bytes32[] calldata merkleProof,
        uint256 amount
    ) external {
        _claim(merkleProof, msg.sender, address(0), amount);
    }

    /**
     * @inheritdoc IChipClaim
     */
    function claimByVault(
        bytes32[] calldata merkleProof,
        address account,
        uint256 amount
    ) external {
        _claim(merkleProof, account, msg.sender, amount);
    }

    /*------------------------------------------------------------------------*/
    /* Permissioned API                                                       */
    /*------------------------------------------------------------------------*/

    /**
     * @inheritdoc IChipClaim
     */
    function setClaimable(
        bool claimable_
    ) external onlyRole(DEFAULT_ADMIN_ROLE) {
        _getConfigStorage().claimable = claimable_;

        /* Emit claimable set event */
        emit ClaimableSet(claimable_);
    }

    /**
     * @inheritdoc IChipClaim
     */
    function setMerkleRoot(
        bytes32 merkleRoot_
    ) external onlyRole(DEFAULT_ADMIN_ROLE) {
        _getConfigStorage().merkleRoot = merkleRoot_;

        /* Emit merkle root set event */
        emit MerkleRootSet(merkleRoot_);
    }

    /**
     * @inheritdoc IChipClaim
     */
    function deposit(
        uint256 amount
    ) external onlyRole(DEFAULT_ADMIN_ROLE) {
        /* Validate deposit amount */
        if (amount == 0) revert InvalidAmount();

        /* Transfer CHIP to this contract */
        IERC20(_chip).safeTransferFrom(msg.sender, address(this), amount);

        /* Emit deposited event */
        emit Deposited(amount);
    }

    /**
     * @inheritdoc IChipClaim
     */
    function withdraw(
        uint256 amount
    ) external onlyRole(DEFAULT_ADMIN_ROLE) {
        /* Validate withdraw amount */
        if (amount == 0) revert InvalidAmount();

        /* Transfer CHIP to admin */
        IERC20(_chip).safeTransfer(msg.sender, amount);

        /* Emit withdrawn event */
        emit Withdrawn(amount);
    }
}
