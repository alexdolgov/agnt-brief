// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "@openzeppelin/contracts-upgradeable/token/ERC20/IERC20Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC20/ERC20Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/utils/math/SafeMathUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";

// This contract handles swapping to and from vdfyn, dfyn's staking token.
contract DfynChest is Initializable, ERC20Upgradeable, AccessControlUpgradeable, UUPSUpgradeable {
    using SafeMathUpgradeable for uint256;
    IERC20Upgradeable public dfyn;

    function initialize(IERC20Upgradeable _dfyn) external initializer {
        __AccessControl_init();
        __ERC20_init("DFYN CHEST", "VDFYN");
        _setupRole(DEFAULT_ADMIN_ROLE, _msgSender());
        dfyn = _dfyn;
    }

    function _authorizeUpgrade(address newImplementation) internal override onlyRole(DEFAULT_ADMIN_ROLE) {}

    // Enter the chest. Pay some dfyn's. Earn some shares.
    // Locks dfyn and mints vdfyn
    function enter(uint256 _amount) public {
        // Gets the amount of dfyn locked in the contract
        uint256 totalDfyn = dfyn.balanceOf(address(this));
        // Gets the amount of vdfyn in existence
        uint256 totalShares = totalSupply();
        // If no vdfyn exists, mint it 1:1 to the amount put in
        if (totalShares == 0 || totalDfyn == 0) {
            _mint(msg.sender, _amount);
        }
        // Calculate and mint the amount of vDfyn the dfyn is worth. The ratio will change overtime, as vdfyn is burned/minted and dfyn deposited + gained from fees / withdrawn.
        else {
            uint256 what = _amount.mul(totalShares).div(totalDfyn);
            _mint(msg.sender, what);
        }
        // Lock the dfyn in the contract
        dfyn.transferFrom(msg.sender, address(this), _amount);
    }

    // Leave the chest. Claim back your dfyns.
    // Unlocks the staked + gained dfyn and burns vdfyn
    function leave(uint256 _share) public {
        // Gets the amount of vDfyn in existence
        uint256 totalShares = totalSupply();
        // Calculates the amount of Dfyn the vDfyn is worth
        uint256 what = _share.mul(dfyn.balanceOf(address(this))).div(totalShares);
        _burn(msg.sender, _share);
        dfyn.transfer(msg.sender, what);
    }

    //read-only
    function ratio() external view returns (uint256 dfynAmount_) {
        uint256 totalShares = totalSupply();
        dfynAmount_ = dfyn.balanceOf(address(this)).div(totalShares);
    }

    //returns how much dfyn someone gets for depositing vdfyn
    function vdfynForDfyn(uint256 _vdfynAmount) external view returns (uint256 dfynAmount_) {
        uint256 totalShares = totalSupply();
        dfynAmount_ = _vdfynAmount.mul(dfyn.balanceOf(address(this))).div(totalShares);
    }

    //returns how much vdfyn someone gets for depositing dfyn
    function dfynForVdfyn(uint256 _dfynAmount) external view returns (uint256 vdfynAmount_) {
        uint256 totalDfyn = dfyn.balanceOf(address(this));
        uint256 totalVdfyn = totalSupply();
        if (totalVdfyn == 0 || totalDfyn == 0) {
            vdfynAmount_ = _dfynAmount;
        } else {
            vdfynAmount_ = _dfynAmount.mul(totalVdfyn).div(totalDfyn);
        }
    }
}
