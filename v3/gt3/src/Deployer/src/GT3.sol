// SPDX-License-Identifier: Unlicense
pragma solidity 0.8.24;

import {PausableUpgradeable} from "@openzeppelin/contracts-upgradeable/utils/PausableUpgradeable.sol";
import {ERC20Upgradeable} from "@openzeppelin/contracts-upgradeable/token/ERC20/ERC20Upgradeable.sol";
import {ERC20CappedUpgradeable} from
    "@openzeppelin/contracts-upgradeable/token/ERC20/extensions/ERC20CappedUpgradeable.sol";
import {ERC20PermitUpgradeable} from
    "@openzeppelin/contracts-upgradeable/token/ERC20/extensions/ERC20PermitUpgradeable.sol";
import {UUPSOwnable2Step} from "src/proxy/UUPSOwnable2Step.sol";
import {IGT3} from "src/interfaces/IGT3.sol";

/// @title GT3 Token Contract
/// @author gt3.finance
/// @notice This contract implements the GT3 token with permit, cap, and pause functionality
/// @dev Inherits from various OpenZeppelin upgradeable contracts and implements UUPS pattern
contract GT3 is
    IGT3,
    ERC20Upgradeable,
    ERC20CappedUpgradeable,
    ERC20PermitUpgradeable,
    PausableUpgradeable,
    UUPSOwnable2Step
{
    /// @inheritdoc IGT3
    address public minter;

    /// @dev Prevents implementation contract from being initialized
    constructor() {
        _disableInitializers();
    }

    /// @inheritdoc IGT3
    function initialize(address owner_) public initializer {
        uint256 cap_ = 200_000_000 ether;
        string memory name_ = "GT3 finance";
        __ERC20_init(name_, "GT3");
        __ERC20Capped_init(cap_);
        __ERC20Permit_init(name_);
        __Ownable_init(owner_);
        __Ownable2Step_init();
        __Pausable_init();
        __UUPSUpgradeable_init();
        __UUPSOwnable2Step_init();
    }

    /// @inheritdoc IGT3
    function setMinter(address minter_) external {
        if (minter != address(0)) revert GT3MinterAlreadySetted();
        _updateMinter(minter_);
    }

    /// @inheritdoc IGT3
    function updateMinter(address minter_) external onlyOwner {
        _updateMinter(minter_);
    }

    /// @inheritdoc IGT3
    function pause() public onlyOwner {
        _pause();
        emit Pause();
    }

    /// @inheritdoc IGT3
    function unpause() public onlyOwner {
        _unpause();
        emit Unpause();
    }

    /// @inheritdoc IGT3
    function mint(address account_, uint256 amount_) external {
        if (msg.sender != minter && minter != address(0)) {
            revert GT3OnlyMinter(msg.sender);
        }
        _mint(account_, amount_);
    }

    /// @notice Updates token balances
    /// @dev Overrides ERC20 _update to add pause functionality
    /// @param from_ Address tokens are transferred from
    /// @param to_ Address tokens are transferred to
    /// @param amount_ Amount of tokens transferred
    function _update(address from_, address to_, uint256 amount_)
        internal
        override(ERC20CappedUpgradeable, ERC20Upgradeable)
        whenNotPaused
    {
        super._update(from_, to_, amount_);
    }

    /// @dev Internal function to update minter address
    /// @param minter_ New minter address
    function _updateMinter(address minter_) private {
        if (minter_ == address(0)) revert GT3ZeroAddress();
        minter = minter_;
        emit UpdateMinter(minter);
    }
}
