// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;

import {ISize} from "@size/src/market/interfaces/ISize.sol";
import {Errors} from "@size/src/market/libraries/Errors.sol";
import {ISizeFactory} from "@size/src/factory/interfaces/ISizeFactory.sol";
import {Ownable2Step} from "@openzeppelin/contracts/access/Ownable2Step.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {PausableUpgradeable} from "@openzeppelin/contracts-upgradeable/utils/PausableUpgradeable.sol";

contract PauseAll is Ownable2Step {
    ISizeFactory public immutable sizeFactory;

    event SizeFactorySet(ISizeFactory indexed sizeFactory);

    constructor(ISizeFactory _sizeFactory, address _owner) Ownable(_owner) {
        if(_sizeFactory == ISizeFactory(address(0))) {
            revert Errors.NULL_ADDRESS();
        }
        sizeFactory = _sizeFactory;
        emit SizeFactorySet(_sizeFactory);
    }

    function pauseAll() external onlyOwner {
        ISize[] memory markets = sizeFactory.getMarkets();
        for (uint256 i = 0; i < markets.length; i++) {
            if(!PausableUpgradeable(address(markets[i])).paused()) {
                markets[i].pause();
            }
        }
    }
}
