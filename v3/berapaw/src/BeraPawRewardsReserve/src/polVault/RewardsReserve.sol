// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.28;

import { AccessControlUpgradeable } from "@openzeppelin-contracts-upgradeable-5.1.0/access/AccessControlUpgradeable.sol";
import { Initializable } from "@openzeppelin-contracts-upgradeable-5.1.0/proxy/utils/Initializable.sol";
import { UUPSUpgradeable } from "@openzeppelin-contracts-upgradeable-5.1.0/proxy/utils/UUPSUpgradeable.sol";
import { PausableUpgradeable } from "@openzeppelin-contracts-upgradeable-5.1.0/utils/PausableUpgradeable.sol";
import { ReentrancyGuardUpgradeable } from
    "@openzeppelin-contracts-upgradeable-5.1.0/utils/ReentrancyGuardUpgradeable.sol";
import { IERC20 } from "@openzeppelin-contracts-5.1.0/token/ERC20/IERC20.sol";
import { Math } from "@openzeppelin-contracts-5.1.0/utils/math/Math.sol";
import { SafeCast } from "@openzeppelin-contracts-5.1.0/utils/math/SafeCast.sol";
import { SafeERC20 } from "@openzeppelin-contracts-5.1.0/token/ERC20/utils/SafeERC20.sol";

import { IRewardVault } from "berachain-contracts-latest/src/pol/interfaces/IRewardVault.sol";
import { IRewardVaultFactory } from "berachain-contracts-latest/src/pol/interfaces/IRewardVaultFactory.sol";

import { IBeraPawRewardsReserve } from "./interfaces/IRewardsReserve.sol";
import { IBeraPawForge } from "../core/interfaces/IBeraPawForge.sol";
import { RewardVaultStakingToken } from "./RewardVaultStakingToken.sol";
import { Constants } from "../Constants.sol";

contract BeraPawRewardsReserve is 
    IBeraPawRewardsReserve,
    Initializable,
    AccessControlUpgradeable,
    PausableUpgradeable,
    ReentrancyGuardUpgradeable,
    UUPSUpgradeable
{
    using Math for uint256;
    using SafeERC20 for IERC20;

    /* ´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /* CONSTANTS */
    /* .•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    uint256 constant REWARD_VAULT_STAKING_TOKEN_SUPPLY = 1;
    uint16 constant BPS = 10_000;

    bytes32 public constant ROLE_GOD = Constants.ROLE_GOD;
    bytes32 public constant ROLE_ADMIN = Constants.ROLE_ADMIN;
    bytes32 public constant ROLE_REWARDS_DISTRIBUTOR = Constants.ROLE_REWARDS_DISTRIBUTOR;

    IRewardVaultFactory constant REWARD_VAULT_FACTORY = IRewardVaultFactory(Constants.REWARD_VAULT_FACTORY);

    IBeraPawForge public constant berapawForge = IBeraPawForge(Constants.BERAPAW_FORGE);
    IERC20 public constant lbgt = IERC20(Constants.LBGT);

    /* ´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /* STORAGE */
    /* .•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    RewardVaultStakingToken public rewardVaultStakingToken;
    IRewardVault public rewardVault;
    uint16 public bribeBack;
    address public bribeManager;

    /* ´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /* INITIALIZATION */
    /* .•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function initialize(address _owner) public initializer {
        __AccessControl_init();
        __Pausable_init();
        __ReentrancyGuard_init();
        __UUPSUpgradeable_init();

        rewardVaultStakingToken = new RewardVaultStakingToken(
            string.concat("BeraPaw Rewards"),
            string.concat("BeraPaw Rewards"),
            REWARD_VAULT_STAKING_TOKEN_SUPPLY
        );
        rewardVault = IRewardVault(REWARD_VAULT_FACTORY.createRewardVault(address(rewardVaultStakingToken)));
        _rewardVaultConnect();

        _setRoleAdmin(ROLE_GOD, ROLE_GOD);
        _setRoleAdmin(ROLE_ADMIN, ROLE_GOD);
        _setRoleAdmin(ROLE_REWARDS_DISTRIBUTOR, ROLE_GOD);

        _grantRole(ROLE_GOD, _owner);
        _grantRole(ROLE_ADMIN, _owner);
    }

    /* ´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /* ADMIN FUNCTIONS */
    /* .•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    function recoverERC20(address tokenAddress, address to, uint256 tokenAmount) external onlyRole(ROLE_GOD) {
        require(tokenAddress != address(lbgt), InvalidInput());
        IERC20(tokenAddress).safeTransfer(msg.sender, tokenAmount);
        emit Recovered(tokenAddress, to, tokenAmount);
    }

    function setBribeManager(address _bribeManager) external onlyRole(ROLE_GOD) {
        bribeManager = _bribeManager;
    }

    function setBribeBack(uint16 _bribeBack) external onlyRole(ROLE_ADMIN) {
        require(_bribeBack <= BPS, InvalidInput());
        bribeBack = _bribeBack;
    }

    function collectRewards(address to, uint256 amount) external onlyRole(ROLE_REWARDS_DISTRIBUTOR) {
        harvest();
        lbgt.safeTransfer(to, amount);
    }

    /* ´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /* PUBLIC FUNCTIONS */
    /* .•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    function harvest() public returns (uint256) {
        uint256 lbgtAmount = _mintLbgt(address(this));
        uint256 bribeBackAmount = _getBribeBackSplit(lbgtAmount);
        if (bribeBackAmount > 0) {
            lbgt.safeTransfer(bribeManager, bribeBackAmount);
        }
        emit Harvested(lbgtAmount);
        return lbgtAmount;
    }

    /* ´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /* PUBLIC VIEWS */
    /* .•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    function rewardVaultLbgtEarned() public view returns (uint256) {
        return berapawForge.previewMint(address(rewardVault), address(this));
    }

    function rewardVaultEarned() public view returns (uint256) {
        return rewardVault.earned(address(this));
    }

    /* ´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /* INTERNAL FUNCTIONS */
    /* .•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    function _authorizeUpgrade(address newImplementation) internal override onlyRole(ROLE_GOD) { }

    function _mintLbgt(address recipient) internal virtual returns (uint256) {
        return berapawForge.mint(address(this), address(rewardVault), recipient);
    }

    function _rewardVaultConnect() internal {
        // Stake the token to the reward vault
        rewardVaultStakingToken.approve(address(rewardVault), REWARD_VAULT_STAKING_TOKEN_SUPPLY);
        rewardVault.stake(REWARD_VAULT_STAKING_TOKEN_SUPPLY);
        rewardVault.setOperator(address(berapawForge));
        emit RewardVaultSet(address(rewardVault));
    }

    function _getBribeBackSplit(uint256 amount) internal view returns (uint256 bribeBackAmount) {
        if (bribeBack > 0 && bribeManager != address(0)) {
            bribeBackAmount = amount.mulDiv(bribeBack, BPS);
        }
    }

}
