// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.25;

import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";
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

    uint256 public constant VERSION = 1;
    bool public depositHalted;

    modifier whenDepositNotHalted() {
        if (depositHalted) {
            revert CustomErrors.DepositHalted();
        }
        _;
    }

    event DepositHalted();
    event DepositResumed();

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
        virtual
        override
        nonReentrant
        whenNotPaused
        whenPriceUpdated
        whenDepositNotHalted
        returns (uint256 shares_)
    {
        if (_assets == type(uint256).max) {
            _assets = IERC20(_token).balanceOf(msg.sender);
        }
        if (!tokens.contains(_token)) revert CustomErrors.UnsupportedToken();
        IERC20(_token).safeTransferFrom(msg.sender, address(this), _assets);
        shares_ = optionalDepositDeal(_assets, _receiver);
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
}
