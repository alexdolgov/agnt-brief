// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {MerkleProof} from "@openzeppelin/contracts/utils/cryptography/MerkleProof.sol";
import {ContractBaseUpgradeable} from "./commons/ContractBaseUpgradeable.sol";
import {IAccessManager} from "./interfaces/IAccessManager.sol";
import {IPreDeposit} from "./interfaces/IPreDeposit.sol";
import {Errors} from "./commons/Errors.sol";

/**
 * @title PreDeposit
 * @author Mu Digital
 * @notice A contract for managing pre-deposits with whitelist, cap, and vault transfer functionality
 * @dev Inherits from ContractBaseUpgradeable for upgradability, access control, pausability, and reentrancy protection
 */
contract PreDeposit is ContractBaseUpgradeable, IPreDeposit {
    using SafeERC20 for IERC20;

    /// @notice Default deposit cap (500,000 USDC with 6 decimals)
    uint256 public constant DEFAULT_DEPOSIT_CAP = 500_000 * 10 ** 6;

    /// @notice USDC token contract
    IERC20 public usdcToken;

    /// @notice Address of the vault where funds are transferred
    address public vaultAddress;

    /// @notice Current deposit cap
    uint256 public depositCap;

    /// @notice Total amount deposited by users
    uint256 public totalDeposited;

    /// @notice Merkle root for whitelist verification
    bytes32 public merkleRoot;

    /// @notice Flag to enable or disable whitelist checking
    bool public whitelistIsEnabled;

    /**
     * @notice Initialize the PreDeposit contract
     * @param _accessManager Address of the access manager contract
     * @param _usdcToken Address of the USDC token contract
     * @param _vaultAddress Address of the vault for fund transfers
     */
    function initialize(address _accessManager, address _usdcToken, address _vaultAddress) external initializer {
        if (_accessManager == address(0) || _usdcToken == address(0) || _vaultAddress == address(0))
            revert Errors.ZeroAddress();

        _initContractBaseUpgradeable();

        accessManager = _accessManager;
        usdcToken = IERC20(_usdcToken);
        vaultAddress = _vaultAddress;
        depositCap = DEFAULT_DEPOSIT_CAP;
        whitelistIsEnabled = true;
    }

    /**
     * @dev Modifier to restrict access to certain functions to the admin(MANAGER_PRE_DEPOSIT) role.
     **/
    modifier onlyManager() {
        if (!IAccessManager(accessManager).hasRole(keccak256("MANAGER_PRE_DEPOSIT"), _msgSender()))
            revert Errors.NotAuthorized();
        _;
    }

    /**
     * @dev Modifier to restrict access to certain functions to the whitelist addresses.
     **/
    modifier onlyWhiteList(bytes32[] calldata proof) {
        if (whitelistIsEnabled) {
            bytes32 leaf = keccak256(abi.encodePacked(_msgSender()));
            if (!MerkleProof.verify(proof, merkleRoot, leaf)) revert Errors.NotInWhitelist();
        }
        _;
    }

    /**
     * @notice Update the Merkle root for whitelist (bulk update)
     * @param newRoot The new Merkle root
     * @dev This allows for efficient bulk whitelist updates
     */
    function updateMerkleRoot(bytes32 newRoot) external onlyManager {
        if (newRoot == bytes32(0)) revert Errors.InvalidAmount();

        merkleRoot = newRoot;
        emit MerkleRootUpdated(newRoot, _msgSender());
    }

    /**
     * @notice Enable or disable whitelist checking
     * @param enabled True to enable whitelist, false to disable
     */
    function setWhitelistEnabled(bool enabled) external onlyManager {
        if (whitelistIsEnabled == enabled) revert Errors.NoChange();
        whitelistIsEnabled = enabled;
        emit WhitelistStatusUpdated(enabled);
    }

    /**
     * @notice Update the deposit cap (unit: USDC with 6 decimals, e.g. 500000000000 = 500,000 USDC)
     * @param newCap The new deposit cap
     */
    function setDepositCap(uint256 newCap) external onlyOwner {
        if (newCap == 0) revert Errors.InvalidAmount();
        depositCap = newCap;

        if (paused()) {
            _unpause();
        }

        emit DepositCapUpdated(newCap);
    }

    /**
     * @notice Update the vault address
     * @param newVault The new vault address
     */
    function updateVaultAddress(address newVault) external onlyOwner {
        if (newVault == address(0)) revert Errors.ZeroAddress();
        vaultAddress = newVault;

        emit VaultAddressUpdated(newVault);
    }

    /**
     * @notice Pause the contract
     */
    function pause() external onlyOwner {
        _pause();
    }

    /**
     * @notice Unpause the contract
     */
    function unpause() external onlyOwner {
        _unpause();
    }

    /**
     * @notice Make a deposit to the contract
     * @param amount The amount to deposit
     * @param proof The proof of the address in the whitelist
     * @dev Only whitelisted addresses can deposit, and deposits are subject to cap restrictions
     */
    function deposit(
        uint256 amount,
        bytes32[] calldata proof
    ) external onlyWhiteList(proof) whenNotPaused nonReentrant {
        if (amount == 0) revert Errors.InvalidAmount();

        if (totalDeposited + amount > depositCap) {
            revert Errors.DepositCapExceeded();
        }

        // Update total deposited
        totalDeposited += amount;

        // Auto-pause if cap is reached
        if (totalDeposited == depositCap) {
            _pause();
        }

        // Transfer USDC from user to this contract
        usdcToken.safeTransferFrom(_msgSender(), address(this), amount);

        emit Deposited(_msgSender(), amount, totalDeposited);
    }

    /**
     * @notice Transfer funds to the vault
     * @param amount The amount to transfer
     * @dev Protected against reentrancy and restricted
     */
    function transferToVault(uint256 amount) external onlyOwner nonReentrant {
        if (amount == 0) revert Errors.InvalidAmount();
        if (usdcToken.balanceOf(address(this)) < amount) revert Errors.InsufficientBalance();

        usdcToken.safeTransfer(vaultAddress, amount);

        emit TransferredToVault(vaultAddress, amount, block.timestamp);
    }
}
