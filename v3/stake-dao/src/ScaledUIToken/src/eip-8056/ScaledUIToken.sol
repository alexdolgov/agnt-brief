// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {IScaledUIAmount} from "./interfaces/IScaledUIAmount.sol";

contract ScaledUIToken is ERC20, IScaledUIAmount, Ownable {
    uint256 private constant MULTIPLIER_DECIMALS = 1e18;
    uint256 private _uiMultiplier = MULTIPLIER_DECIMALS; // Initially 1.0
    uint256 public _nextUiMultiplier = MULTIPLIER_DECIMALS;
    uint256 public _nextUiMultiplierEffectiveAt = 0;
    uint256 public MAX_MINT_AMOUNT = 1000000 ether;

    event MaxMintAmountUpdated(uint256 oldAmount, uint256 newAmount);

    constructor(string memory name, string memory symbol) ERC20(name, symbol) Ownable(msg.sender) {}

    function mint(address to, uint256 amount) external {
        if (amount > MAX_MINT_AMOUNT) {
            revert();
        }
        _mint(to, amount);
    }

    function burn(address from, uint256 amount) external {
        _burn(from, amount);
    }

    function uiMultiplier() public view override returns (uint256) {
        uint256 currentTime = block.timestamp;
        if (currentTime >= _nextUiMultiplierEffectiveAt) {
            return _nextUiMultiplier;
        } else {
            return _uiMultiplier;
        }
    }

    function toUIAmount(uint256 rawAmount) public view override returns (uint256) {
        uint256 currentTime = block.timestamp;
        if (currentTime >= _nextUiMultiplierEffectiveAt) {
            return (rawAmount * _nextUiMultiplier) / MULTIPLIER_DECIMALS;
        } else {
            return (rawAmount * _uiMultiplier) / MULTIPLIER_DECIMALS;
        }
    }

    function fromUIAmount(uint256 uiAmount) public view override returns (uint256) {
        uint256 currentTime = block.timestamp;
        if (currentTime >= _nextUiMultiplierEffectiveAt) return (uiAmount * MULTIPLIER_DECIMALS) / _nextUiMultiplier;
        else return (uiAmount * MULTIPLIER_DECIMALS) / _uiMultiplier;
    }

    function balanceOfUI(address account) public view override returns (uint256) {
        return toUIAmount(balanceOf(account));
    }

    function setUIMultiplier(uint256 newMultiplier, uint256 effectiveAtTimestamp) external override onlyOwner {
        require(newMultiplier > 0, "Multiplier must be positive");

        uint256 currentTime = block.timestamp;
        require(effectiveAtTimestamp > currentTime, "Effective At must be in the future");

        if (currentTime > _nextUiMultiplierEffectiveAt) {
            uint256 oldMultiplier = _nextUiMultiplier;
            _uiMultiplier = oldMultiplier;
            _nextUiMultiplier = newMultiplier;
            _nextUiMultiplierEffectiveAt = effectiveAtTimestamp;
            emit UIMultiplierUpdated(oldMultiplier, newMultiplier, block.timestamp, effectiveAtTimestamp);
        } else {
            uint256 oldMultiplier = _uiMultiplier;
            _nextUiMultiplier = newMultiplier;
            _nextUiMultiplierEffectiveAt = effectiveAtTimestamp;
            emit UIMultiplierUpdated(oldMultiplier, newMultiplier, block.timestamp, effectiveAtTimestamp);
        }
    }

    function setMaxMintAmount(uint256 newMaxMintAmount) external onlyOwner {
        uint256 oldAmount = MAX_MINT_AMOUNT;
        MAX_MINT_AMOUNT = newMaxMintAmount;
        emit MaxMintAmountUpdated(oldAmount, newMaxMintAmount);
    }
}
