// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.17;

import {ERC20, IERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {ReentrancyGuard} from "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import {ERC4626} from "@openzeppelin/contracts/token/ERC20/extensions/ERC4626.sol";
import {Transferer} from "../../Transferer.sol";

contract hToken is Transferer, ERC4626, Ownable {
    address public externalAction;
    address public hinkalAddress;

    event RewardAdded(uint256 assets);

    uint256 private _totalAssets = 0;

    error MustBeExternalAction();
    error NoShares();

    constructor(
        string memory name_,
        string memory symbol_,
        IERC20 _baseToken,
        address _hinkalAddress,
        address _externalAction
    ) ERC4626(_baseToken) ERC20(name_, symbol_) {
        externalAction = _externalAction;
        hinkalAddress = _hinkalAddress;
    }

    modifier onlyExternalAction(address caller) {
        if (caller != externalAction) revert MustBeExternalAction();
        _;
    }

    function setHinkalAddress(address _hinkalAddress) external onlyOwner {
        hinkalAddress = _hinkalAddress;
    }

    function setExternalAction(address _externalAction) external onlyOwner {
        externalAction = _externalAction;
    }

    function _deposit(
        address caller,
        address receiver,
        uint256 assets,
        uint256 shares
    ) internal virtual override onlyExternalAction(caller) {
        _mint(receiver, shares);

        emit Deposit(caller, receiver, assets, shares);
        _totalAssets += assets;
    }

    function _withdraw(
        address caller,
        address receiver,
        address owner,
        uint256 assets,
        uint256 shares
    ) internal virtual override onlyExternalAction(caller) {
        if (caller != owner) {
            _spendAllowance(owner, caller, shares);
        }
        _burn(owner, shares);

        emit Withdraw(caller, receiver, owner, assets, shares);
        _totalAssets -= assets;
    }

    function totalAssets() public view override returns (uint256) {
        return _totalAssets;
    }

    function addReward(uint256 assets) external payable onlyOwner {
        if (totalSupply() == 0) revert NoShares();
        _totalAssets += assets;
        transferTokenFrom(asset(), msg.sender, hinkalAddress, assets, 0);
        emit RewardAdded(assets);
    }
}
