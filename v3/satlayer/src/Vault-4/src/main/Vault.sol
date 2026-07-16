// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.25;

import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";
import "../interfaces/kelp/ILRTWithdrawalManager.sol";
import "../interfaces/kelp/ILRTDepositPool.sol";
import "../interfaces/weth/IWETH.sol";
import "../interfaces/lido/IWstETH.sol";
import "../interfaces/renzo/IRenzoOracle.sol";
import "../interfaces/renzo/IRestakeManager.sol";
import "../interfaces/stader/IStaderStakePoolManager.sol";
import "./common/Constants.sol";
import "./vault/VaultYieldBasic.sol";

/**
 * @title Vault contract
 * @author Naturelab
 * @dev This contract is the logical implementation of the vault,
 * and its main purpose is to provide users with a gateway for depositing
 * and withdrawing funds and to manage user shares.
 */
contract Vault is VaultYieldBasic, Constants {
    using SafeERC20 for IERC20;
    using EnumerableSet for EnumerableSet.AddressSet;

    ILRTDepositPool internal constant KELP_POOL = ILRTDepositPool(0x036676389e48133B63a802f8635AD39E752D375D);
    ILRTWithdrawalManager internal constant kelpWithdrawal =
        ILRTWithdrawalManager(0x62De59c08eB5dAE4b7E6F7a8cAd3006d6965ec16);
    address internal constant RENZO_ORACLE = 0x5a12796f7e7EBbbc8a402667d266d2e65A814042;
    address internal constant RENZO_RESTAKE_MANAGER = 0x74a09653A083691711cF8215a6ab074BB4e99ef5;
    address internal constant STADER_STAKE_POOL = 0xcf5EA1b38380f6aF39068375516Daf40Ed70D299;

    bytes32 public requestId;

    uint256 public constant VERSION = 1;
    bool public depositHalted;

    modifier whenDepositNotHalted() {
        if (depositHalted) {
            revert Errors.DepositHalted();
        }
        _;
    }

    event DepositHalted();
    event DepositResumed();
    event Unstake(uint256 amount);
    event ConfirmUnstake();

    constructor(uint8 _decimals) VaultYieldBasic(_decimals) {}

    function haltDeposit() external onlyOwner {
        depositHalted = true;
        emit DepositHalted();
    }

    function resumeDeposit() external onlyOwner {
        depositHalted = false;
        emit DepositResumed();
    }

    /**
     * @dev Redemption operation executed by the redeemOperator. Currently, only fBTC redemptions are supported.
     * @param _token The address of the token to be redeemed.
     * @param _shares The amount of share tokens to be redeemed.
     * @param _cutPercentage The percentage of the rebalancing loss incurred.
     * @param _receiver The address of the receiver of the assets.
     * @param _owner The owner address of the shares.
     * @return assets_ The amount of assets obtained.
     */
    function optionalRedeem(address _token, uint256 _shares, uint256 _cutPercentage, address _receiver, address _owner)
        public
        override
        nonReentrant
        whenNotPaused
        returns (uint256 assets_)
    {
        if (msg.sender != vaultParams.redeemOperator) revert Errors.UnSupportedOperation();

        if (_shares == type(uint256).max) {
            _shares = maxRedeem(_owner);
        } else {
            require(_shares <= maxRedeem(_owner), "ERC4626: redeem more than max");
        }

        if (msg.sender != _owner) {
            _spendAllowance(_owner, msg.sender, _shares);
        }

        assets_ = previewRedeem(_shares);
        _burn(_owner, _shares);
        IERC20(asset()).safeTransfer(_receiver, assets_);

        emit OptionalRedeem(asset(), _shares, _receiver, _owner);
    }

    /**
     * @dev Internal function to calculate the shares issued for a deposit.
     * @param _assets The amount of assets to deposit.
     * @param _receiver The address of the receiver of the shares.
     * @return shares_ The amount of shares issued.
     */
    function optionalDepositDeal(uint256 _assets, address _receiver) internal returns (uint256 shares_) {
        uint256 maxAssets = maxDeposit(_receiver);
        if (_assets > maxAssets) {
            revert ERC4626ExceededMaxDeposit(_receiver, _assets, maxAssets);
        }
        shares_ = previewDeposit(_assets);

        emit Deposit(msg.sender, _receiver, _assets, shares_);
    }

    function optionalDeposit(address _token, uint256 _assets, address _receiver, address _referral)
        public
        payable
        virtual
        override
        nonReentrant
        whenNotPaused
        whenPriceUpdated
        whenDepositNotHalted
        returns (uint256 shares_)
    {
        if (_assets == type(uint256).max) {
            _assets = IERC20(asset()).balanceOf(msg.sender);
        }
        // support eth _steth _wsteth _ethx _ezeth _rseth

        // 不要转换代币，但share开采以steth计价
        uint256 tokenGet_ = 0;
        if (_token == STETH) {
            IERC20(_token).safeTransferFrom(msg.sender, address(this), _assets);
            tokenGet_ = _assets;
        } else if (_token == wstETH) {
            // unwrap wsteth to steth
            IERC20(_token).safeTransferFrom(msg.sender, address(this), _assets);
            tokenGet_ = IWstETH(wstETH).getStETHByWstETH(_assets);
        } else if (_token == RSETH) {
            IERC20(_token).safeTransferFrom(msg.sender, address(this), _assets);
            tokenGet_ = kelpWithdrawal.getExpectedAssetAmount(STETH, _assets);
        } else if (_token == EZETH) {
            IERC20(_token).safeTransferFrom(msg.sender, address(this), _assets);
            tokenGet_ = getETHByEzETH(_assets);
        } else if (_token == ETH) {
            tokenGet_ = msg.value;
        } else if (_token == ETHx) {
            IERC20(_token).safeTransferFrom(msg.sender, address(this), _assets);
            tokenGet_ = IStaderStakePoolManager(STADER_STAKE_POOL).convertToAssets(_assets);
        }
        shares_ = optionalDepositDeal(tokenGet_, _receiver);
        _mint(_receiver, shares_);

        emit OptionalDeposit(msg.sender, _token, _assets, _receiver, _referral);
    }

    function deposit(uint256 _assets, address _receiver)
        public
        virtual
        override
        nonReentrant
        whenNotPaused
        whenPriceUpdated
        whenDepositNotHalted
        returns (uint256 shares_)
    {
        if (_assets == type(uint256).max) {
            _assets = IERC20(asset()).balanceOf(msg.sender);
        }
        shares_ = ERC4626Upgradeable.deposit(_assets, _receiver);
    }

    function mint(uint256 _shares, address _receiver)
        public
        virtual
        override
        nonReentrant
        whenNotPaused
        whenPriceUpdated
        whenDepositNotHalted
        returns (uint256 assets_)
    {
        assets_ = ERC4626Upgradeable.mint(_shares, _receiver);
    }

    function getETHByEzETH(uint256 _ezethAmount) public view returns (uint256) {
        (,, uint256 totalTVL) = IRestakeManager(RENZO_RESTAKE_MANAGER).calculateTVLs();
        uint256 ethToEzeth_ =
            IRenzoOracle(RENZO_ORACLE).calculateMintAmount(totalTVL, 1 ether, IERC20(EZETH).totalSupply());
        return _ezethAmount * 1 ether / ethToEzeth_;
    }

    function underlyingTvl() public override returns (uint256) {
        uint256 totalBal_;
        address token_;

        for (uint256 i = 0; i < tokens.length(); i++) {
            token_ = tokens.at(i);

            uint256 tokenBal_;

            if (token_ == STETH) {
                tokenBal_ = IERC20(token_).balanceOf(address(this));
            } else if (token_ == wstETH) {
                tokenBal_ = IERC20(token_).balanceOf(address(this));
                tokenBal_ = IWstETH(wstETH).getStETHByWstETH(tokenBal_);
            } else if (token_ == RSETH) {
                tokenBal_ = IERC20(token_).balanceOf(address(this));
                tokenBal_ = kelpWithdrawal.getExpectedAssetAmount(STETH, tokenBal_);
            } else if (token_ == EZETH) {
                tokenBal_ = IERC20(token_).balanceOf(address(this));
                tokenBal_ = getETHByEzETH(tokenBal_);
            } else if (token_ == ETH) {
                tokenBal_ = address(this).balance;
            } else if (token_ == ETHx) {
                tokenBal_ = IERC20(token_).balanceOf(address(this));
                tokenBal_ = IStaderStakePoolManager(STADER_STAKE_POOL).convertToAssets(tokenBal_);
            }

            totalBal_ += tokenBal_;
        }

        uint256 totalStrategy_ = totalStrategiesAssets();
        return totalStrategy_ + totalBal_ - vaultState.revenue;
    }
}
