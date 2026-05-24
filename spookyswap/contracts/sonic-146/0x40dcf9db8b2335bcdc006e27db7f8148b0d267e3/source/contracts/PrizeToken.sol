// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.28;

import {Ownable2StepUpgradeable} from "@openzeppelin/contracts-upgradeable/access/Ownable2StepUpgradeable.sol";
import {UUPSUpgradeable} from "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import {ERC20BurnableUpgradeable} from "@openzeppelin/contracts-upgradeable/token/ERC20/extensions/ERC20BurnableUpgradeable.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";

/// ERC-20 token representing a prize in the Tic-Tac-Toe demo game.
/// @custom:security-contact security@fantom.foundation
contract PrizeToken is ERC20BurnableUpgradeable, Ownable2StepUpgradeable, UUPSUpgradeable {

    address public minter;

    error NotMinter();

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    /// @dev Initialize contract after the deployment.
    function initialize(address _owner, address _minter) external initializer {
        __ERC20_init("Tic-Tac-Toe prize", "TTT");
        __ERC20Burnable_init();
        __Ownable_init(_owner);
        __UUPSUpgradeable_init();
        minter = _minter;
    }

    /// @notice Create an amount of tokens and assigns them to the account. Callable by the token minter only.
    function mint(address account, uint256 amount) external returns (bool) {
        if (msg.sender != minter) {
            revert NotMinter();
        }
        _mint(account, amount);
        return true;
    }

    /// @notice Number of decimals used to get a user representation of the token amount.
    function decimals() public pure override returns (uint8) {
        return 0;
    }

    /// @dev See {IERC20-transfer}.
    function transfer(address to, uint256 value) public override returns (bool) {
        if (to == address(this)) {
            revert ERC20InvalidReceiver(address(this));
        }
        // zero recipient already checked in the parent
        return super.transfer(to, value);
    }

    /// @dev See {IERC20-transferFrom}.
    function transferFrom(address from, address to, uint256 value) public override returns (bool) {
        if (to == address(this)) {
            revert ERC20InvalidReceiver(address(this));
        }
        // zero from/to already checked in the parent
        return super.transferFrom(from, to, value);
    }

    /// @dev Authorize the token owner to do a contract upgrade.
    function _authorizeUpgrade(address newImplementation) internal override onlyOwner {}
}
