// SPDX-License-Identifier: UNLICENSED

// Copyright (c) 2023 JonesDAO - All rights reserved
// Jones DAO: https://www.jonesdao.io/

// Check https://docs.jonesdao.io/jones-dao/other/bounty for details on our bounty program.

pragma solidity ^0.8.20;

import {Ownable} from "openzeppelin-contracts/access/Ownable.sol";
import {ERC20Upgradeable} from "openzeppelin-contracts-upgradeable/token/ERC20/ERC20Upgradeable.sol";
import {ERC4626Upgradeable} from "openzeppelin-contracts-upgradeable/token/ERC20/extensions/ERC4626Upgradeable.sol";
import {IERC20} from "openzeppelin-contracts/interfaces/IERC20.sol";
import {IERC20Metadata} from "openzeppelin-contracts/interfaces/IERC20Metadata.sol";
import {Math} from "openzeppelin-contracts/utils/math/Math.sol";
import {UpgradeableOperableKeepable, UpgradeableGovernable} from "src/common/UpgradeableOperableKeepable.sol";

import {IUnderlyingVault} from "src/interfaces/vaults/IUnderlyingVault.sol";
import {IPayBack} from "src/interfaces/vaults/IPayBack.sol";
import {IRewardTracker} from "src/interfaces/IRewardTracker.sol";
import {IAggregatorV3} from "src/interfaces/vaults/IAggregatorV3.sol";

contract UnderlyingVault is IUnderlyingVault, ERC4626Upgradeable, UpgradeableOperableKeepable {
    /* -------------------------------------------------------------------------- */
    /*                                  VARIABLES                                 */
    /* -------------------------------------------------------------------------- */

    bytes32 public constant STRATEGY = bytes32("STRATEGY");

    uint256 public constant BASIS_POINTS = 1e12;

    mapping(address => uint256) public loanedTo;
    uint256 public totalLoaned;

    IPayBack public enforceHub;
    IRewardTracker public tracker;
    IAggregatorV3 public oracle;

    /**
     * @notice Modifier if msg.sender has not Operator role revert.
     */
    modifier onlyStrategy() {
        if (!hasRole(STRATEGY, msg.sender)) {
            revert CallerIsNotStrategy();
        }

        _;
    }

    /* -------------------------------------------------------------------------- */
    /*                                 INITIALIZE                                 */
    /* -------------------------------------------------------------------------- */

    function initialize(
        address _asset,
        address _tracker,
        address _enforceHub,
        string memory _name,
        string memory _symbol
    ) external initializer {
        __Governable_init(msg.sender);
        __ERC4626_init_unchained(IERC20(_asset));
        __ERC20_init(_name, _symbol);

        enforceHub = IPayBack(_enforceHub);
        tracker = IRewardTracker(_tracker);
        oracle = IAggregatorV3(0x50834F3163758fcC1Df9973b6e91f0F0F0434aD3);
    }

    /* -------------------------------------------------------------------------- */
    /*                                    PUBLIC                                  */
    /* -------------------------------------------------------------------------- */

    /**
     * @dev TVL 18 decimals.
     */
    function tvl() external view returns (uint256) {
        return _toUsdValue(totalAssets());
    }

    /**
     * @dev See {IERC4626-redeem}.
     */
    function totalAssets() public view override(IUnderlyingVault, ERC4626Upgradeable) returns (uint256) {
        return super.totalAssets() + totalLoaned;
    }

    function balanceOf(address account)
        public
        view
        override(IUnderlyingVault, IERC20, ERC20Upgradeable)
        returns (uint256)
    {
        return super.balanceOf(account);
    }

    function transfer(address to, uint256 amount)
        public
        override(IUnderlyingVault, IERC20, ERC20Upgradeable)
        returns (bool)
    {
        return super.transfer(to, amount);
    }

    function previewRedeem(uint256 shares)
        public
        view
        override(IUnderlyingVault, ERC4626Upgradeable)
        returns (uint256)
    {
        return super._convertToAssets(shares, Math.Rounding.Floor);
    }

    function previewDeposit(uint256 assets)
        public
        view
        override(IUnderlyingVault, ERC4626Upgradeable)
        returns (uint256)
    {
        return super._convertToShares(assets, Math.Rounding.Floor);
    }

    function retentionRefund(uint256 amount, bytes memory enforceData) external view returns (uint256) {
        return enforceHub.retentionRefund(amount, enforceData);
    }

    /* -------------------------------------------------------------------------- */
    /*                                   OPERATOR                                 */
    /* -------------------------------------------------------------------------- */

    /**
     * @notice Burn Vault shares of account address.
     * @param account Shares owner to be burned.
     * @param shares Amount of shares to be burned.
     */
    function burn(address account, uint256 shares) public onlyOperator {
        _burn(account, shares);
    }

    /**
     * @notice Mint Vault shares to account address.
     * @param shares Shares owner to be burned.
     * @param receiver Amount of shares to be burned.
     */
    function mint(uint256 shares, address receiver)
        public
        override(IUnderlyingVault, ERC4626Upgradeable)
        onlyOperator
        returns (uint256)
    {
        _mint(receiver, shares);
    }

    function deposit(uint256 assets, address receiver) public override onlyOperator returns (uint256) {}

    function redeem(uint256 shares, address receiver, address owner) public override onlyOperator returns (uint256) {}

    function withdraw(uint256 assets, address receiver, address /*owner*/ )
        public
        override(IUnderlyingVault, ERC4626Upgradeable)
        onlyOperator
        returns (uint256)
    {
        IERC20(asset()).transfer(receiver, assets);
        return assets;
    }

    function borrowTo(uint256 amount, address to) external onlyStrategy {
        IERC20(asset()).transfer(to, amount);
        loanedTo[msg.sender] = loanedTo[msg.sender] + amount;
        totalLoaned = totalLoaned + amount;
    }

    function payBack(uint256 amount, uint256 incentives) external onlyStrategy {
        IERC20(asset()).transferFrom(msg.sender, address(this), amount);
        uint256 debt = loanedTo[msg.sender];
        uint256 virtualPayment = amount + incentives;
        if (virtualPayment < debt) {
            loanedTo[msg.sender] = debt - virtualPayment;
        } else {
            loanedTo[msg.sender] = 0;
        }
        uint256 totalDebt = totalLoaned;
        if (virtualPayment < totalDebt) {
            totalLoaned = totalDebt - virtualPayment;
        } else {
            totalLoaned = 0;
        }
        uint256 excess;
        if (totalAssets() > totalSupply()) {
            excess = totalAssets() - totalSupply();
            IERC20(asset()).approve(address(tracker), excess);
            tracker.depositRewards(excess);
        }
    }

    /* -------------------------------------------------------------------------- */
    /*                                    KEEPER                                  */
    /* -------------------------------------------------------------------------- */

    function enforcePayBack(uint256 amount, bytes memory enforceData) external onlyOperatorOrKeeper returns (uint256) {
        uint256 _totalAssets = super.totalAssets();
        uint256 _totalLoaned = totalLoaned;
        uint256 retention = enforceHub.payBack(amount, enforceData);
        if (super.totalAssets() < _totalAssets + amount - retention) {
            revert NotEnoughFunds();
        }
        if (totalLoaned != 0 && totalLoaned > _totalLoaned - amount) {
            revert NotEnoughFunds();
        }

        return retention;
    }

    /* -------------------------------------------------------------------------- */
    /*                                   GOVERNOR                                 */
    /* -------------------------------------------------------------------------- */

    /**
     * @notice Update enforce hub contract
     */
    function updateEnforce(address _enforceHub) external onlyGovernor {
        enforceHub = IPayBack(_enforceHub);
    }

    /**
     * @notice Update Reward Tracker
     */
    function updateTracker(address _tracker) external onlyGovernor {
        tracker = IRewardTracker(_tracker);
    }

    /**
     * @notice Update Oracle
     */
    function updateOracle(address _oracle) external onlyGovernor {
        oracle = IAggregatorV3(_oracle);
    }

    /**
     * @notice Grant Operator role to _newOperator.
     */
    function addStrategy(address _newOperator) external onlyGovernor {
        _grantRole(STRATEGY, _newOperator);

        emit OperatorAdded(_newOperator);
    }

    /**
     * @notice Moves assets from the strategy to `_to`
     * @param _assets An array of IERC20 compatible tokens to move out from the strategy
     * @param _withdrawNative `true` if we want to move the native asset from the strategy
     */
    function emergencyWithdraw(address _to, address[] memory _assets, bool _withdrawNative) external onlyGovernor {
        uint256 assetsLength = _assets.length;
        for (uint256 i = 0; i < assetsLength; i++) {
            IERC20 asset_ = IERC20(_assets[i]);
            uint256 assetBalance = asset_.balanceOf(address(this));

            if (assetBalance > 0) {
                // Transfer the ERC20 tokens
                asset_.transfer(_to, assetBalance);
            }

            unchecked {
                ++i;
            }
        }

        uint256 nativeBalance = address(this).balance;

        // Nothing else to do
        if (_withdrawNative && nativeBalance > 0) {
            // Transfer the native currency
            (bool sent,) = payable(_to).call{value: nativeBalance}("");
            if (!sent) {
                revert FailSendETH();
            }
        }

        emit EmergencyWithdrawal(msg.sender, _to, _assets, _withdrawNative ? nativeBalance : 0);
    }

    /* -------------------------------------------------------------------------- */
    /*                                   PRIVATE                                  */
    /* -------------------------------------------------------------------------- */

    function _toUsdValue(uint256 _value) internal view returns (uint256) {
        (, int256 currentPrice,,,) = oracle.latestRoundData();

        uint8 totalDecimals = IERC20Metadata(asset()).decimals() + oracle.decimals();
        uint8 targetDecimals = 18;

        return totalDecimals > targetDecimals
            ? (_value * uint256(currentPrice)) / 10 ** (totalDecimals - targetDecimals)
            : (_value * uint256(currentPrice)) * 10 ** (targetDecimals - totalDecimals);
    }

    /* -------------------------------------------------------------------------- */
    /*                                   EVENTS                                   */
    /* -------------------------------------------------------------------------- */

    event EmergencyWithdrawal(address indexed caller, address indexed receiver, address[] tokens, uint256 nativeBalanc);

    /* -------------------------------------------------------------------------- */
    /*                                    ERRORS                                   */
    /* -------------------------------------------------------------------------- */

    error NotEnoughFunds();
    error CallerIsNotStrategy();
    error FailSendETH();
}
