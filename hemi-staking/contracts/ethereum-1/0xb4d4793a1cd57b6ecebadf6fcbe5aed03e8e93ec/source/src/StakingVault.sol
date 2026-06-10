// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {IERC4626} from "@openzeppelin/contracts/interfaces/IERC4626.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {IRewardVault} from "./interfaces/IRewardVault.sol";
import {IStakingVault, RewardParams} from "./interfaces/IStakingVault.sol";
import {ERC4626Upgradeable} from "@openzeppelin/contracts-upgradeable/token/ERC20/extensions/ERC4626Upgradeable.sol";
import {OwnableUpgradeable} from "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import {PausableUpgradeable} from "@openzeppelin/contracts-upgradeable/utils/PausableUpgradeable.sol";
import {UUPSUpgradeable} from "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";
import "./Events.sol";

/// @title StakingVault
/// @notice A vault that allows users to deposit underlying assets and earn rewards
/// @dev Implements ERC4626 standard with additional reward distribution functionality
contract StakingVault is IStakingVault, ERC4626Upgradeable, OwnableUpgradeable, PausableUpgradeable, UUPSUpgradeable {
    using Math for uint256;

    /// @inheritdoc IStakingVault
    string public constant SHARE_NAME = "satUSD_plus";
    /// @inheritdoc IStakingVault
    string public constant SHARE_SYMBOL = "satUSD+";
    /// @inheritdoc IStakingVault
    uint256 public constant INITIAL_DEPOSIT_LIMIT = 1e18;
    /// @inheritdoc IStakingVault
    IERC20 public UNDERLYING;
    /// @inheritdoc IStakingVault
    IRewardVault public rewardVault;

    /// @inheritdoc IStakingVault
    uint32 public lastUpdate;

    /// @inheritdoc IStakingVault
    address[] public emissionList;

    /// @dev asset => account => reward integral
    mapping(address => mapping(address => uint256)) internal _rewardIntegralFor;

    /// @dev Accumulated rewards that haven't been claimed yet
    /// @dev asset => account => pending reward
    mapping(address => mapping(address => uint256)) internal _storedPendingReward;

    /// @dev reward token => reward params
    mapping(address => RewardParams) internal _rewardParamsMap;

    constructor() {
        _disableInitializers();
    }

    /// @notice Override the _authorizeUpgrade function inherited from UUPSUpgradeable contract
    // solhint-disable-next-line no-empty-blocks
    function _authorizeUpgrade(address newImplementation) internal view override onlyOwner {
        // No additional authorization logic is needed for this contract
    }

    /// @inheritdoc IStakingVault
    function initialize(address _underlying, address _rewardVault) external initializer {
        __ERC4626_init(IERC20(_underlying));
        __ERC20_init(SHARE_NAME, SHARE_SYMBOL);
        __Ownable_init(msg.sender);
        __Pausable_init();
        __UUPSUpgradeable_init();

        UNDERLYING = IERC20(_underlying);
        rewardVault = IRewardVault(_rewardVault);

        // add underlying to emission list
        addAssetToEmissionList(_underlying);
        // initial deposit limit to avoid 4626 inflation attack
        deposit(INITIAL_DEPOSIT_LIMIT, msg.sender);

        emit RewardVaultSetting(_rewardVault);
    }

    // --- onlyOwner functions ---

    /// @inheritdoc IStakingVault
    function pause() external onlyOwner {
        _pause();
    }

    /// inheritdoc IStakingVault
    function resume() external onlyOwner {
        _unpause();
    }

    /// inheritdoc IStakingVault
    function paused() public view override(PausableUpgradeable, IStakingVault) returns (bool) {
        return super.paused();
    }

    /// @inheritdoc IStakingVault
    function addAssetToEmissionList(address asset_) public onlyOwner {
        // check if the asset is already in the list
        for (uint256 i = 0; i < emissionList.length; i++) {
            require(emissionList[i] != asset_, "Asset already in emission list");
        }

        emissionList.push(asset_);

        emit AssetAddedToEmissionList(asset_);
    }

    /// @inheritdoc IStakingVault
    function removeAssetFromEmissionList(address asset_) external onlyOwner {
        // reset reward rate to 0
        _setRewardParams(asset_, 0, type(uint32).max);
        for (uint256 i = 0; i < emissionList.length; i++) {
            if (emissionList[i] == asset_) {
                emissionList[i] = emissionList[emissionList.length - 1];
                emissionList.pop();
                break;
            }
        }

        emit AssetRemovedFromEmissionList(asset_);
    }

    /// @inheritdoc IStakingVault
    function setRewardParams(address token, uint256 rewardRate, uint32 claimStartTime) external onlyOwner {
        _setRewardParams(token, rewardRate, claimStartTime);
    }

    /// @inheritdoc IStakingVault
    function setRewardVault(address _rewardVault) external onlyOwner {
        rewardVault = IRewardVault(_rewardVault);

        emit RewardVaultSetting(_rewardVault);
    }

    // --- public functions ---

    /// @inheritdoc IERC4626
    function deposit(uint256 assets, address receiver)
        public
        override(ERC4626Upgradeable, IERC4626)
        whenNotPaused
        returns (uint256)
    {
        uint256 balance = balanceOf(receiver);
        uint256 supply = totalSupply();
        _updateIntegrals(receiver, balance, supply);
        return super.deposit(assets, receiver);
    }

    /// @inheritdoc IERC4626
    function mint(uint256 shares, address receiver)
        public
        override(ERC4626Upgradeable, IERC4626)
        whenNotPaused
        returns (uint256)
    {
        uint256 balance = balanceOf(receiver);
        uint256 supply = totalSupply();
        _updateIntegrals(receiver, balance, supply);
        return super.mint(shares, receiver);
    }

    /// @inheritdoc IERC4626
    function redeem(uint256 shares, address receiver, address owner)
        public
        override(ERC4626Upgradeable, IERC4626)
        whenNotPaused
        returns (uint256)
    {
        uint256 balance = balanceOf(owner);
        uint256 supply = totalSupply();
        _updateIntegrals(owner, balance, supply);
        return super.redeem(shares, receiver, owner);
    }

    /// @inheritdoc IERC4626
    function withdraw(uint256 assets, address receiver, address owner)
        public
        override(ERC4626Upgradeable, IERC4626)
        whenNotPaused
        returns (uint256)
    {
        uint256 balance = balanceOf(owner);
        uint256 supply = totalSupply();
        _updateIntegrals(owner, balance, supply);
        return super.withdraw(assets, receiver, owner);
    }

    /// @inheritdoc IStakingVault
    function claimReward() external whenNotPaused {
        _updateIntegrals(msg.sender, balanceOf(msg.sender), totalSupply());
        for (uint256 i; i < emissionList.length; i++) {
            address token = emissionList[i];
            if (!isClaimStart(token) || token == address(UNDERLYING)) continue;
            uint256 amount = _storedPendingReward[token][msg.sender];
            if (amount != 0) {
                _storedPendingReward[token][msg.sender] = 0;
                rewardVault.transferAllocatedTokens(token, msg.sender, amount);
            }
            emit RewardClaimed(token, msg.sender, amount);
        }
    }

    /// @inheritdoc IStakingVault
    function claimableReward(address token, address account) external view returns (uint256) {
        if (token == address(UNDERLYING)) return 0;

        // previously calculated rewards
        uint256 amount = _storedPendingReward[token][account];
        uint256 duration = block.timestamp - lastUpdate;
        uint256 integral = _rewardParamsMap[token].rewardIntegral;
        if (duration > 0) {
            uint256 supply = totalSupply();
            if (supply > 0) {
                uint256 releasedToken = duration * _rewardParamsMap[token].rewardRate;
                uint256 allocatedToken = rewardVault.allocated(token, address(this));
                // check the allocated token in community rewardVault
                if (releasedToken > allocatedToken) {
                    releasedToken = allocatedToken;
                }
                integral += releasedToken.mulDiv(1e18, supply);
            }
        }
        uint256 integralFor = _rewardIntegralFor[token][account];

        if (integral > integralFor) {
            amount += balanceOf(account).mulDiv(integral - integralFor, 1e18);
        }

        return amount;
    }

    /// @inheritdoc IStakingVault
    function isClaimStart(address token) public view returns (bool) {
        return _rewardParamsMap[token].claimStartTime <= uint32(block.timestamp);
    }

    /// @inheritdoc IStakingVault
    function emissionListLength() external view returns (uint256) {
        return emissionList.length;
    }

    /// @inheritdoc IStakingVault
    function simulateDeposit(uint256 assets) external view returns (uint256) {
        return _convertToExpectedShares(assets, Math.Rounding.Floor);
    }

    /// @inheritdoc IStakingVault
    function simulateMint(uint256 shares) external view returns (uint256) {
        return _convertToExpectedAssets(shares, Math.Rounding.Ceil);
    }

    /// @inheritdoc IStakingVault
    function simulateWithdraw(uint256 assets) external view returns (uint256) {
        return _convertToExpectedShares(assets, Math.Rounding.Ceil);
    }

    /// @inheritdoc IStakingVault
    function simulateRedeem(uint256 shares) external view returns (uint256) {
        return _convertToExpectedAssets(shares, Math.Rounding.Floor);
    }

    /// @inheritdoc IStakingVault
    function rewardIntegralFor(address token, address account) external view returns (uint256) {
        return _rewardIntegralFor[token][account];
    }

    /// @inheritdoc IStakingVault
    function storedPendingReward(address token, address account) external view returns (uint256) {
        return _storedPendingReward[token][account];
    }

    /// @inheritdoc IStakingVault
    function rewardParamsMap(address token)
        external
        view
        returns (uint256 rewardRate, uint256 rewardIntegral, uint32 claimStartTime)
    {
        RewardParams memory params = _rewardParamsMap[token];
        return (params.rewardRate, params.rewardIntegral, params.claimStartTime);
    }

    // --- internal functions ---

    /// @notice Converts assets to expected shares based on the current state of the vault
    /// @dev Using in customized simulation functions
    /// @param assets The amount of assets to convert
    /// @param rounding The rounding mode to use for the conversion
    /// @return The equivalent amount of shares
    function _convertToExpectedShares(uint256 assets, Math.Rounding rounding) internal view virtual returns (uint256) {
        return assets.mulDiv(totalSupply() + 10 ** _decimalsOffset(), _expectedTotalAssets() + 1, rounding);
    }

    /// @notice Converts shares to expected assets based on the current state of the vault
    /// @dev Using in customized simulation functions
    /// @param shares The amount of shares to convert
    /// @param rounding The rounding mode to use for the conversion
    /// @return The equivalent amount of assets
    function _convertToExpectedAssets(uint256 shares, Math.Rounding rounding) internal view virtual returns (uint256) {
        return shares.mulDiv(_expectedTotalAssets() + 1, totalSupply() + 10 ** _decimalsOffset(), rounding);
    }

    function _expectedTotalAssets() internal view returns (uint256) {
        // compute the total asset during the time interval
        uint256 duration = block.timestamp - lastUpdate;
        uint256 totalAsset = totalAssets();
        if (duration > 0) {
            uint256 supply = totalSupply();
            if (supply > 0) {
                uint256 releasedToken = duration * _rewardParamsMap[address(UNDERLYING)].rewardRate;
                uint256 allocatedToken = rewardVault.allocated(address(UNDERLYING), address(this));
                // check the allocated token in community rewardVault
                if (releasedToken > allocatedToken) {
                    releasedToken = allocatedToken;
                }
                totalAsset += releasedToken;
            }
        }

        return totalAsset;
    }

    function _update(address from, address to, uint256 amount) internal override {
        uint256 supply = totalSupply();
        uint256 fromBalance = balanceOf(from);
        uint256 toBalance = balanceOf(to);
        super._update(from, to, amount);
        _updateIntegrals(from, fromBalance, supply);
        _updateIntegrals(to, toBalance, supply);
    }

    /// @notice Updates reward integrals for an account
    /// @param account The address of the account to update
    /// @param balance The account's balance
    /// @param supply The total supply
    function _updateIntegrals(address account, uint256 balance, uint256 supply) internal {
        for (uint256 i = 0; i < emissionList.length; i++) {
            uint256 integral = _updateRewardIntegral(emissionList[i], supply);
            _updateIntegralForAccount(emissionList[i], account, balance, integral);
        }
        lastUpdate = uint32(block.timestamp);
    }

    function _updateIntegralForAccount(address token, address account, uint256 balance, uint256 currentIntegral)
        internal
    {
        uint256 integralFor = _rewardIntegralFor[token][account];

        if (currentIntegral > integralFor) {
            _storedPendingReward[token][account] += balance.mulDiv(currentIntegral - integralFor, 1e18);
            _rewardIntegralFor[token][account] = currentIntegral;
            emit RewardIntegralForAccountUpdated(account, token, _storedPendingReward[token][account], currentIntegral);
        }
    }

    function _updateRewardIntegral(address token, uint256 supply) internal returns (uint256) {
        require(lastUpdate <= block.timestamp, "Invalid last update");
        uint256 integral; // global integral
        uint256 duration = block.timestamp - lastUpdate;
        integral = _computeIntegral(token, duration, supply);
        emit RewardIntegralUpdated(token, integral);

        return integral;
    }

    /// @notice Computes the reward integral for a specific token
    /// @param token The address of the token
    /// @param duration The time period to compute rewards for
    /// @param supply The total supply
    /// @return The computed integral value
    function _computeIntegral(address token, uint256 duration, uint256 supply) internal returns (uint256) {
        uint256 integral = _rewardParamsMap[token].rewardIntegral;
        if (duration > 0 && supply > 0) {
            uint256 releasedToken = duration * _rewardParamsMap[token].rewardRate;
            uint256 allocatedToken = rewardVault.allocated(token, address(this));
            if (releasedToken > allocatedToken) {
                releasedToken = allocatedToken;
            }

            if (token == address(UNDERLYING)) {
                // trigger the reward vault to transfer the underlying token to this contract
                rewardVault.collectUnderlying(address(UNDERLYING), releasedToken);
            } else {
                rewardVault.collectAllocatedTokens(token, releasedToken);
                integral += releasedToken.mulDiv(1e18, supply);
                _rewardParamsMap[token].rewardIntegral = integral;
            }
        }
        return integral;
    }

    function _setRewardParams(address token, uint256 rewardRate, uint32 claimStartTime) internal {
        _updateRewardIntegral(token, totalSupply());

        uint256 integral = _rewardParamsMap[token].rewardIntegral;
        _rewardParamsMap[token] =
            RewardParams({rewardRate: rewardRate, rewardIntegral: integral, claimStartTime: claimStartTime});

        emit RewardParamsSet(token, rewardRate, integral, claimStartTime);
    }
}
