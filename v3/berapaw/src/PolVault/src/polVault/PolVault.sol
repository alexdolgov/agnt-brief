// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.28;

import { AccessControl } from "@openzeppelin-contracts-5.1.0/access/AccessControl.sol";
import { Pausable } from "@openzeppelin-contracts-5.1.0/utils/Pausable.sol";
import { ReentrancyGuard } from "@openzeppelin-contracts-5.1.0/utils/ReentrancyGuard.sol";
import { IERC20 } from "@openzeppelin-contracts-5.1.0/token/ERC20/IERC20.sol";
import { Math } from "@openzeppelin-contracts-5.1.0/utils/math/Math.sol";
import { SafeCast } from "@openzeppelin-contracts-5.1.0/utils/math/SafeCast.sol";
import { SafeERC20 } from "@openzeppelin-contracts-5.1.0/token/ERC20/utils/SafeERC20.sol";
import { ERC4626 } from "@openzeppelin-contracts-5.1.0/token/ERC20/extensions/ERC4626.sol";
import { ERC20 } from "@openzeppelin-contracts-5.1.0/token/ERC20/ERC20.sol";

import { IRewardVault } from "berachain-contracts-latest/src/pol/interfaces/IRewardVault.sol";
import { IRewardVaultFactory } from "berachain-contracts-latest/src/pol/interfaces/IRewardVaultFactory.sol";

import { IBeraPawForge } from "../core/interfaces/IBeraPawForge.sol";
import { RewardVaultStakingToken } from "./RewardVaultStakingToken.sol";
import { IPolVault } from "./interfaces/IPolVault.sol";
import { IHarvestModule } from "./interfaces/IHarvestModule.sol";
import { Constants } from "../Constants.sol";

contract PolVault is IPolVault, ERC4626, AccessControl, Pausable, ReentrancyGuard {
    using Math for uint256;

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                        CONSTANTS                           */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    uint16 constant BASIS_POINT_SCALE = 1e4;
    uint16 constant MAX_FEE = BASIS_POINT_SCALE / 10; // 10%
    uint256 constant REWARD_VAULT_STAKING_TOKEN_SUPPLY = 1;

    bytes32 public constant ROLE_GOD = Constants.ROLE_GOD;
    bytes32 public constant ROLE_ADMIN = Constants.ROLE_ADMIN;
    bytes32 public constant ROLE_CURATOR = Constants.ROLE_CURATOR;

    IRewardVaultFactory constant REWARD_VAULT_FACTORY = IRewardVaultFactory(Constants.REWARD_VAULT_FACTORY);

    IBeraPawForge public constant berapawForge = IBeraPawForge(Constants.BERAPAW_FORGE);
    IERC20 public constant lbgt = IERC20(Constants.LBGT);

    RewardVaultStakingToken public immutable rewardVaultStakingToken;
    IRewardVault public immutable rewardVault;

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                          STORAGE                           */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    uint256 public entryFee; // e.g., in basis points (bps), 1% = 100 bps
    uint256 public exitFee;
    uint256 public performanceFee;

    bool public dead; // When a vault is dead, you can't deposit assets anymore
    address public feeCollector;

    IHarvestModule public harvestModule;

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                         MODIFIERS                          */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    modifier whenNotDead() {
        require(!dead, VaultDead());
        _;
    }

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                      INITIALIZATION                        */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    constructor(
        ERC20 _stakingToken,
        address _feeCollector,
        uint256 _entryFee,
        uint256 _exitFee,
        uint256 _performanceFee,
        address _owner
    )
        ERC4626(_stakingToken)
        ERC20(string.concat("BeraPawPolVault-", _stakingToken.name()), string.concat("BPPV-", _stakingToken.symbol()))
    {
        require(_feeCollector != address(0), ZeroAddress());
        feeCollector = _feeCollector;
        emit FeeCollectorSet(feeCollector);

        require(_entryFee <= MAX_FEE, InvalidFee(_entryFee));
        entryFee = _entryFee;
        emit EntryFeeSet(entryFee);

        require(_exitFee <= MAX_FEE, InvalidFee(_exitFee));
        exitFee = _exitFee;
        emit ExitFeeSet(exitFee);

        require(_performanceFee <= MAX_FEE, InvalidFee(_performanceFee));
        performanceFee = _performanceFee;
        emit PerformanceFeeSet(performanceFee);

        rewardVaultStakingToken = new RewardVaultStakingToken(
            string.concat("BeraPaw-RewardVaultStakingToken-", _stakingToken.name()),
            string.concat("Bpaw-RVST-", _stakingToken.symbol()),
            REWARD_VAULT_STAKING_TOKEN_SUPPLY
        );
        rewardVault = IRewardVault(REWARD_VAULT_FACTORY.createRewardVault(address(rewardVaultStakingToken)));
        _rewardVaultConnect();

        _setRoleAdmin(ROLE_GOD, ROLE_GOD);
        _setRoleAdmin(ROLE_ADMIN, ROLE_GOD);
        _setRoleAdmin(ROLE_CURATOR, ROLE_ADMIN);

        _grantRole(ROLE_GOD, _owner);
        _grantRole(ROLE_ADMIN, _owner);
    }

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                       ADMIN FUNCTIONS                      */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    function setFeeCollector(address _feeCollector) public onlyRole(ROLE_ADMIN) {
        require(_feeCollector != address(0), ZeroAddress());
        feeCollector = _feeCollector;
        emit FeeCollectorSet(feeCollector);
    }

    function setEntryFee(uint256 _entryFee) public onlyRole(ROLE_ADMIN) {
        require(_entryFee <= MAX_FEE, InvalidFee(_entryFee));
        entryFee = _entryFee;
        emit EntryFeeSet(entryFee);
    }

    function setExitFee(uint256 _exitFee) public onlyRole(ROLE_ADMIN) {
        require(_exitFee <= MAX_FEE, InvalidFee(_exitFee));
        exitFee = _exitFee;
        emit ExitFeeSet(exitFee);
    }

    function setPerformanceFee(uint256 _performanceFee) public onlyRole(ROLE_ADMIN) {
        require(_performanceFee <= MAX_FEE, InvalidFee(_performanceFee));
        performanceFee = _performanceFee;
        emit PerformanceFeeSet(performanceFee);
    }

    function setHarvestModule(address _harvestModule) public onlyRole(ROLE_ADMIN) {
        require(_harvestModule != address(0), ZeroAddress());
        harvestModule = IHarvestModule(_harvestModule);
        emit HarvestModuleSet(_harvestModule);
    }

    function pause() public onlyRole(ROLE_CURATOR) {
        _pause();
    }

    function unpause() public onlyRole(ROLE_ADMIN) {
        _unpause();
    }

    function kill() public onlyRole(ROLE_ADMIN) {
        dead = true;
    }

    function revive() public onlyRole(ROLE_ADMIN) {
        dead = false;
    }

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                    PUBLIC FUNCTIONS                        */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    function deposit(
        uint256 assets,
        address receiver
    )
        public
        override(ERC4626, IPolVault)
        whenNotPaused
        whenNotDead
        returns (uint256)
    {
        return super.deposit(assets, receiver);
    }

    function mint(
        uint256 shares,
        address owner
    )
        public
        override(ERC4626, IPolVault)
        whenNotPaused
        whenNotDead
        returns (uint256)
    {
        return super.mint(shares, owner);
    }

    function withdraw(
        uint256 shares,
        address receiver,
        address owner
    )
        public
        override(ERC4626, IPolVault)
        whenNotPaused
        returns (uint256)
    {
        return super.withdraw(shares, receiver, owner);
    }

    function redeem(
        uint256 shares,
        address receiver,
        address owner
    )
        public
        override(ERC4626, IPolVault)
        whenNotPaused
        returns (uint256)
    {
        return super.redeem(shares, receiver, owner);
    }

    function harvest() public virtual whenNotPaused nonReentrant returns (uint256) {
        require(address(harvestModule) != address(0), NoHarvestModule());
        uint256 lbgtAmount = _mintLbgt(address(this));
        uint256 fee = _feeOnRaw(lbgtAmount, _performanceFeeBasisPoints());
        _collectFee(fee, address(lbgt));
        uint256 harvestedAmount = lbgtAmount - fee;
        SafeERC20.safeTransfer(lbgt, address(harvestModule), harvestedAmount);
        harvestModule.harvestCallback(harvestedAmount);
        emit Harvested(harvestedAmount);
        return harvestedAmount;
    }

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                       PUBLIC VIEWS                         */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    function rewardVaultEarned() public view returns (uint256) {
        return rewardVault.earned(address(this));
    }

    function previewDeposit(uint256 assets) public view virtual override(ERC4626, IPolVault) returns (uint256) {
        uint256 fee = _feeOnTotal(assets, _entryFeeBasisPoints());
        return super.previewDeposit(assets - fee);
    }

    function previewMint(uint256 shares) public view virtual override(ERC4626, IPolVault) returns (uint256) {
        uint256 assets = super.previewMint(shares);
        return assets + _feeOnRaw(assets, _entryFeeBasisPoints());
    }

    function previewWithdraw(uint256 assets) public view virtual override(ERC4626, IPolVault) returns (uint256) {
        uint256 fee = _feeOnRaw(assets, _exitFeeBasisPoints());
        return super.previewWithdraw(assets + fee);
    }

    function previewRedeem(uint256 shares) public view virtual override(ERC4626, IPolVault) returns (uint256) {
        uint256 assets = super.previewRedeem(shares);
        return assets - _feeOnTotal(assets, _exitFeeBasisPoints());
    }

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                        OVERRIDES                           */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    function _deposit(address caller, address receiver, uint256 assets, uint256 shares) internal virtual override {
        uint256 fee = _feeOnTotal(assets, _entryFeeBasisPoints());

        // If _asset is ERC-777, `transferFrom` can trigger a reentrancy BEFORE the transfer happens through the
        // `tokensToSend` hook. On the other hand, the `tokenReceived` hook, that is triggered after the transfer,
        // calls the vault, which is assumed not malicious.
        //
        // Conclusion: we need to do the transfer before we mint so that any reentrancy would happen before the
        // assets are transferred and before the shares are minted, which is a valid state.
        // slither-disable-next-line reentrancy-no-eth
        if (caller != address(this)) {
            SafeERC20.safeTransferFrom(IERC20(asset()), caller, address(this), assets);
        }
        _mint(receiver, shares);

        _collectFee(fee, asset());
        emit Deposit(caller, receiver, assets, shares);
    }

    function _withdraw(
        address caller,
        address receiver,
        address owner,
        uint256 assets,
        uint256 shares
    )
        internal
        virtual
        override
    {
        uint256 fee = _feeOnRaw(assets, _exitFeeBasisPoints());

        if (caller != owner) {
            _spendAllowance(owner, caller, shares);
        }

        // If _asset is ERC-777, `transfer` can trigger a reentrancy AFTER the transfer happens through the
        // `tokensReceived` hook. On the other hand, the `tokensToSend` hook, that is triggered before the transfer,
        // calls the vault, which is assumed not malicious.
        //
        // Conclusion: we need to do the transfer after the burn so that any reentrancy would happen after the
        // shares are burned and after the assets are transferred, which is a valid state.
        _burn(owner, shares);
        SafeERC20.safeTransfer(IERC20(asset()), receiver, assets);

        _collectFee(fee, asset());
        emit Withdraw(caller, receiver, owner, assets, shares);
    }

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                  INTERNAL FUNCTIONS                        */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    function _entryFeeBasisPoints() internal view virtual returns (uint256) {
        return entryFee;
    }

    function _exitFeeBasisPoints() internal view virtual returns (uint256) {
        return exitFee;
    }

    function _performanceFeeBasisPoints() internal view virtual returns (uint256) {
        return performanceFee;
    }

    function _feeRecipient() internal view virtual returns (address) {
        return feeCollector;
    }

    function _feeOnRaw(uint256 assets, uint256 feeBasisPoints) private pure returns (uint256) {
        return assets.mulDiv(feeBasisPoints, BASIS_POINT_SCALE, Math.Rounding.Ceil);
    }

    function _feeOnTotal(uint256 assets, uint256 feeBasisPoints) private pure returns (uint256) {
        return assets.mulDiv(feeBasisPoints, feeBasisPoints + BASIS_POINT_SCALE, Math.Rounding.Ceil);
    }

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

    function _collectFee(uint256 fee, address token) internal {
        address feeRecipient = feeCollector;
        if (fee > 0 && feeRecipient != address(this)) {
            SafeERC20.safeTransfer(IERC20(token), feeRecipient, fee);
            emit FeeCollected(feeRecipient, token, fee);
        }
    }
}
