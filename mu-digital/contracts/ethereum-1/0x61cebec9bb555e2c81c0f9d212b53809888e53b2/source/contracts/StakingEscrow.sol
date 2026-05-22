// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {IERC4626} from "@openzeppelin/contracts/interfaces/IERC4626.sol";
import {ContractBaseUpgradeable} from "./commons/ContractBaseUpgradeable.sol";
import {IAccessManager} from "./interfaces/IAccessManager.sol";
import {IStakingEscrow} from "./interfaces/IStakingEscrow.sol";
import {ILoAZND} from "./interfaces/ILoAZND.sol";
import {Errors} from "./commons/Errors.sol";

/**
 * @title StakingEscrow
 * @author Mu Digital
 * @notice Manages staking and redemption of tokens with cooldown periods
 */
contract StakingEscrow is ContractBaseUpgradeable, IStakingEscrow {
    using SafeERC20 for IERC20;
    /**
     * @notice Maximum number of pending redeem requests per (account, tokenVault)
     */
    uint256 public constant MAX_PENDING_REDEEM_REQUESTS = 1000;

    /**
     * @notice Cooldown period for redeem requests in seconds
     */
    uint256 public coolDownPeriod;

    /**
     * @notice Mapping from token address to its corresponding vault address
     */
    mapping(address => address) public vault;
    /**
     * @notice Mapping from account to token vault to their redeem requests
     */
    mapping(address => mapping(address => RedeemRequest[])) public redeemRequests; // account => tokenVault => redeemRequests
    /**
     * @notice Mapping to check if an address is whitelisted
     */
    mapping(address => bool) public isAddressInWhiteList;

    /**
     * @notice Initialize the contract
     * @param manager The address of the access manager contract
     * @param coolDown The cool down period for redeem requests
     */
    function initialize(address manager, uint256 coolDown) external initializer {
        if (manager == address(0)) revert Errors.ZeroAddress();
        if (coolDown == 0) revert Errors.InvalidAmount();
        _initContractBaseUpgradeable();
        accessManager = manager;
        coolDownPeriod = coolDown;
    }

    /**
     * @dev Modifier to restrict access to certain functions to the admin(MANAGER_STAKING_ESCROW) role.
     **/
    modifier onlyAdmin() override {
        if (!IAccessManager(accessManager).hasRole(keccak256("MANAGER_STAKING_ESCROW"), _msgSender()))
            revert Errors.NotAuthorized();
        _;
    }

    /**
     * @notice Set the vault address for a specific token
     * @param token The address of the token
     * @param vault_ The address of the vault
     */
    function setVault(address token, address vault_) external onlyAdmin {
        if (token == address(0)) revert Errors.ZeroAddress();
        if (vault_ == address(0)) revert Errors.ZeroAddress();
        if (vault[token] != address(0)) revert Errors.VaultAlreadySet();
        address assetVault = IERC4626(vault_).asset();
        if (assetVault != token) revert Errors.InvalidVault();
        vault[token] = vault_;
        emit VaultUpdated(token, vault_);
    }

    /**
     * @notice Set the cool down period for redeem requests
     * @param coolDown The new cool down period in seconds
     */
    function setCoolDownPeriod(uint256 coolDown) external onlyAdmin {
        if (coolDown == 0) revert Errors.InvalidAmount();
        coolDownPeriod = coolDown;
        emit CoolDownPeriodUpdated(coolDown);
    }

    /**
     * @notice Add addresses to the whitelist
     * @param listAddresses The addresses to add to the white list
     */
    function addWhiteList(address[] calldata listAddresses) external onlyAdmin {
        uint256 listLength = listAddresses.length;
        if (listLength == 0) revert Errors.InvalidArray();
        
        for (uint256 i = 0; i < listLength; ++i) {
            address addressToAdd = listAddresses[i];
            if (addressToAdd == address(0)) revert Errors.ZeroAddress();
            if (!isAddressInWhiteList[addressToAdd]) {
                isAddressInWhiteList[addressToAdd] = true;
                emit WhiteListAdded(addressToAdd);
            }
        }
    }

    /**
     * @notice Remove addresses from the whitelist
     * @param listAddresses The addresses to remove from the white list
     */
    function removeWhiteList(address[] calldata listAddresses) external onlyAdmin {
        uint256 listLength = listAddresses.length;
        if (listLength == 0) revert Errors.InvalidArray();

        for (uint256 i = 0; i < listLength; ++i) {
            address addressToRemove = listAddresses[i];
            if (addressToRemove == address(0)) revert Errors.ZeroAddress();

            if (isAddressInWhiteList[addressToRemove]) {
                // Mark as not whitelisted
                isAddressInWhiteList[addressToRemove] = false;
                emit WhiteListRemoved(addressToRemove);
            }
        }
    }

    /**
     * @notice Stake tokens in the specified vault
     * @param token The address of the token to stake
     * @param amount The amount of tokens to stake
     * @return The amount of vault tokens received
     */
    function stake(address token, uint256 amount) external whenNotPaused nonReentrant returns (uint256) {
        address sender = _msgSender();
        address tokenVault = vault[token];
        if (amount == 0) revert Errors.InvalidAmount();
        if (token == address(0)) revert Errors.ZeroAddress();
        if (tokenVault == address(0)) revert Errors.InvalidVault();

        // Use balance-before and balance-after pattern to handle fee-on-transfer tokens
        uint256 balanceBefore = IERC20(token).balanceOf(address(this));
        IERC20(token).safeTransferFrom(sender, address(this), amount);
        uint256 balanceAfter = IERC20(token).balanceOf(address(this));
        uint256 actualAmount = balanceAfter - balanceBefore;

        uint256 allowanceAmount = IERC20(token).allowance(address(this), tokenVault);
        IERC20(token).safeIncreaseAllowance(tokenVault, actualAmount - allowanceAmount);
        uint256 amountOut = ILoAZND(tokenVault).deposit(actualAmount, sender);
        emit Staked(sender, token, tokenVault, actualAmount);
        return amountOut;
    }

    /**
     * @notice Initiate a redeem request for the specified token vault
     * @param tokenVault The address of the token vault to redeem from
     * @param amount The amount of tokens to redeem
     * @return The amount of underlying tokens to be received
     */
    function redeem(address tokenVault, uint256 amount) external whenNotPaused nonReentrant returns (uint256) {
        address spender = _msgSender();
        if (amount == 0) revert Errors.InvalidAmount();
        if (tokenVault == address(0)) revert Errors.ZeroAddress();

        // Validate tokenVault is registered in the vault mapping
        address asset = IERC4626(tokenVault).asset();
        if (vault[asset] != tokenVault) revert Errors.InvalidVault();

        // Enforce a limit on redeem requests per (account, tokenVault)
        if (redeemRequests[spender][tokenVault].length == MAX_PENDING_REDEEM_REQUESTS)
            revert Errors.PendingRedeemRequestsExceedsLimit();

        bool isClaimed = isAddressInWhiteList[spender];
        uint256 unlockTime = isClaimed ? block.timestamp : block.timestamp + coolDownPeriod;
        address receiver = isClaimed ? spender : address(this);

        // Use balance-before and balance-after pattern to verify actual tokens received
        uint256 balanceBefore = IERC20(asset).balanceOf(receiver);

        IERC20(tokenVault).safeTransferFrom(spender, address(this), amount);
        ILoAZND(tokenVault).redeem(amount, receiver, address(this));

        uint256 actualAmountReceived = IERC20(asset).balanceOf(receiver) - balanceBefore;

        // Verify actually received tokens
        if (actualAmountReceived == 0) revert Errors.InvalidAmount();

        emit RedeemInitiated(spender, tokenVault, asset, amount, actualAmountReceived, unlockTime);
        if (isClaimed) {
            emit RedeemClaimed(
                spender,
                tokenVault,
                asset,
                redeemRequests[spender][tokenVault].length,
                amount,
                actualAmountReceived
            );
        } else {
            redeemRequests[spender][tokenVault].push(RedeemRequest(asset, amount, actualAmountReceived, unlockTime));
        }
        return actualAmountReceived;
    }

    /**
     * @notice Claim the redeemed tokens after the unlock time
     * @param tokenVault The address of the token vault to claim from
     * @param requestId The ID of the redeem request to claim
     * @return The amount of tokens claimed
     */
    function claimRedeem(address tokenVault, uint256 requestId) external whenNotPaused nonReentrant returns (uint256) {
        address receiver = _msgSender();
        if (tokenVault == address(0)) revert Errors.ZeroAddress();
        RedeemRequest[] storage requests = redeemRequests[receiver][tokenVault];
        if (requests.length == 0 || requestId > requests.length - 1) revert Errors.InvalidRequestId();
        RedeemRequest memory request = requests[requestId];
        if (block.timestamp < request.unlockTime) revert Errors.CooldownTooShort();
        uint256 amount = request.assetAmount;
        IERC20(request.asset).safeTransfer(receiver, amount);

        // Remove the redeemed request by swap-pop to keep gas predictable
        uint256 lastIndex = requests.length - 1;
        if (requestId != lastIndex) {
            // Move last element into the slot being removed
            requests[requestId] = requests[lastIndex];
        }
        requests.pop();

        emit RedeemClaimed(receiver, tokenVault, request.asset, requestId, request.vaultAmount, amount);
        return amount;
    }

    /**
     * @notice Get redeem requests for a specific account and token vault
     * @param account The address of the account
     * @param tokenVault The address of the token vault
     * @return redeemRequest An array of redeem requests for the specified account and token vault
     */
    function getRedeemRequests(address account, address tokenVault) external view returns (RedeemRequest[] memory) {
        return redeemRequests[account][tokenVault];
    }
}
